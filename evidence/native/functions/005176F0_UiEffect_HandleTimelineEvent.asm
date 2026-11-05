# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function-body envelope.
Annotated entry: 0x005176f0 (UiEffect_HandleTimelineEvent)
Paired actual Ghidra pseudocode: 005176F0_UiEffect_HandleTimelineEvent.c
Envelope [0x005176f0,0x00517d74); 1668 pristine bytes.
Owned: 1668 original bytes / 599 actual saved Listing instructions; no body gaps.
Saved body: [[005176f0, 00517d73]]; inclusive ranges above, exclusive envelope end.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
005176f0 <original>:
  005176f0:	83 ec 08                                       	SUB ESP,0x8
  005176f3:	53                                             	PUSH EBX
  005176f4:	55                                             	PUSH EBP
  005176f5:	56                                             	PUSH ESI
  005176f6:	57                                             	PUSH EDI
  005176f7:	8b 7c 24 20                                    	MOV EDI,dword ptr [ESP + 0x20]
  005176fb:	8b 47 08                                       	MOV EAX,dword ptr [EDI + 0x8]
  005176fe:	83 f8 22                                       	CMP EAX,0x22
  00517701:	8b f1                                          	MOV ESI,ECX
  00517703:	0f 87 18 06 00 00                              	JA 0x00517d21
  00517709:	0f 84 ca 05 00 00                              	JZ 0x00517cd9
  0051770f:	83 e8 0a                                       	SUB EAX,0xa
  00517712:	83 f8 0a                                       	CMP EAX,0xa
  00517715:	0f 87 4d 06 00 00                              	JA 0x00517d68
  0051771b:	ff 24 85 74 7d 51 00                           	JMP dword ptr [EAX*0x4 + 0x517d74]
  00517722:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  00517726:	89 7e 14                                       	MOV dword ptr [ESI + 0x14],EDI
  00517729:	e8 72 f5 ff ff                                 	CALL 0x00516ca0
  0051772e:	d9 46 50                                       	FLD float ptr [ESI + 0x50]
  00517731:	8b 46 2c                                       	MOV EAX,dword ptr [ESI + 0x2c]
  00517734:	d9 5e 40                                       	FSTP float ptr [ESI + 0x40]
  00517737:	83 f8 0b                                       	CMP EAX,0xb
  0051773a:	77 61                                          	JA 0x0051779d
  0051773c:	ff 24 85 a0 7d 51 00                           	JMP dword ptr [EAX*0x4 + 0x517da0]
  00517743:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517745:	8b 50 28                                       	MOV EDX,dword ptr [EAX + 0x28]
  00517748:	8b cf                                          	MOV ECX,EDI
  0051774a:	ff d2                                          	CALL EDX
  0051774c:	a8 01                                          	TEST AL,0x1
  0051774e:	74 4d                                          	JZ 0x0051779d
  00517750:	eb 45                                          	JMP 0x00517797
  00517752:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517754:	8b 50 28                                       	MOV EDX,dword ptr [EAX + 0x28]
  00517757:	8b cf                                          	MOV ECX,EDI
  00517759:	ff d2                                          	CALL EDX
  0051775b:	a8 01                                          	TEST AL,0x1
  0051775d:	eb 36                                          	JMP 0x00517795
  0051775f:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517761:	8b 50 28                                       	MOV EDX,dword ptr [EAX + 0x28]
  00517764:	8b cf                                          	MOV ECX,EDI
  00517766:	ff d2                                          	CALL EDX
  00517768:	a8 02                                          	TEST AL,0x2
  0051776a:	74 31                                          	JZ 0x0051779d
  0051776c:	eb 29                                          	JMP 0x00517797
  0051776e:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517770:	8b 50 28                                       	MOV EDX,dword ptr [EAX + 0x28]
  00517773:	8b cf                                          	MOV ECX,EDI
  00517775:	ff d2                                          	CALL EDX
  00517777:	a8 02                                          	TEST AL,0x2
  00517779:	eb 1a                                          	JMP 0x00517795
  0051777b:	8b 07                                          	MOV EAX,dword ptr [EDI]
  0051777d:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  00517780:	8b cf                                          	MOV ECX,EDI
  00517782:	ff d2                                          	CALL EDX
  00517784:	a8 04                                          	TEST AL,0x4
  00517786:	74 15                                          	JZ 0x0051779d
  00517788:	eb 0d                                          	JMP 0x00517797
  0051778a:	8b 07                                          	MOV EAX,dword ptr [EDI]
  0051778c:	8b 50 2c                                       	MOV EDX,dword ptr [EAX + 0x2c]
  0051778f:	8b cf                                          	MOV ECX,EDI
  00517791:	ff d2                                          	CALL EDX
  00517793:	a8 04                                          	TEST AL,0x4
  00517795:	75 06                                          	JNZ 0x0051779d
  00517797:	d9 46 4c                                       	FLD float ptr [ESI + 0x4c]
  0051779a:	d9 5e 40                                       	FSTP float ptr [ESI + 0x40]
  0051779d:	f3 0f 10 46 40                                 	MOVSS XMM0,dword ptr [ESI + 0x40]
  005177a2:	0f 2f 05 cc 4c 0f 01                           	COMISS XMM0,dword ptr [0x010f4ccc]
  005177a9:	f3 0f 11 44 24 1c                              	MOVSS dword ptr [ESP + 0x1c],XMM0
  005177af:	f3 0f 11 46 44                                 	MOVSS dword ptr [ESI + 0x44],XMM0
  005177b4:	f3 0f 11 46 48                                 	MOVSS dword ptr [ESI + 0x48],XMM0
  005177b9:	0f 82 a9 05 00 00                              	JC 0x00517d68
  005177bf:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  005177c7:	0f 2f c8                                       	COMISS XMM1,XMM0
  005177ca:	0f 82 98 05 00 00                              	JC 0x00517d68
  005177d0:	d9 44 24 1c                                    	FLD float ptr [ESP + 0x1c]
  005177d4:	8b 16                                          	MOV EDX,dword ptr [ESI]
  005177d6:	51                                             	PUSH ECX
  005177d7:	8b ce                                          	MOV ECX,ESI
  005177d9:	d9 1c 24                                       	FSTP float ptr [ESP]
  005177dc:	e8 5f f7 ff ff                                 	CALL 0x00516f40
  005177e1:	8b 82 9c 00 00 00                              	MOV EAX,dword ptr [EDX + 0x9c]
  005177e7:	51                                             	PUSH ECX
  005177e8:	d9 1c 24                                       	FSTP float ptr [ESP]
  005177eb:	57                                             	PUSH EDI
  005177ec:	ff d0                                          	CALL EAX
  005177ee:	5f                                             	POP EDI
  005177ef:	5e                                             	POP ESI
  005177f0:	5d                                             	POP EBP
  005177f1:	32 c0                                          	XOR AL,AL
  005177f3:	5b                                             	POP EBX
  005177f4:	83 c4 08                                       	ADD ESP,0x8
  005177f7:	c2 08 00                                       	RET 0x8
  005177fa:	5f                                             	POP EDI
  005177fb:	c7 46 14 00 00 00 00                           	MOV dword ptr [ESI + 0x14],0x0
  00517802:	5e                                             	POP ESI
  00517803:	5d                                             	POP EBP
  00517804:	32 c0                                          	XOR AL,AL
  00517806:	5b                                             	POP EBX
  00517807:	83 c4 08                                       	ADD ESP,0x8
  0051780a:	c2 08 00                                       	RET 0x8
  0051780d:	8b 46 2c                                       	MOV EAX,dword ptr [ESI + 0x2c]
  00517810:	83 f8 0a                                       	CMP EAX,0xa
  00517813:	75 2a                                          	JNZ 0x0051783f
  00517815:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  00517819:	8b 17                                          	MOV EDX,dword ptr [EDI]
  0051781b:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  0051781e:	8b cf                                          	MOV ECX,EDI
  00517820:	ff d0                                          	CALL EAX
  00517822:	c1 e8 02                                       	SHR EAX,0x2
  00517825:	25 01 ff ff ff                                 	AND EAX,0xffffff01
  0051782a:	50                                             	PUSH EAX
  0051782b:	57                                             	PUSH EDI
  0051782c:	8b ce                                          	MOV ECX,ESI
  0051782e:	e8 6d fd ff ff                                 	CALL 0x005175a0
  00517833:	5f                                             	POP EDI
  00517834:	5e                                             	POP ESI
  00517835:	5d                                             	POP EBP
  00517836:	32 c0                                          	XOR AL,AL
  00517838:	5b                                             	POP EBX
  00517839:	83 c4 08                                       	ADD ESP,0x8
  0051783c:	c2 08 00                                       	RET 0x8
  0051783f:	83 f8 0b                                       	CMP EAX,0xb
  00517842:	0f 85 20 05 00 00                              	JNZ 0x00517d68
  00517848:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  0051784c:	8b 17                                          	MOV EDX,dword ptr [EDI]
  0051784e:	8b 42 2c                                       	MOV EAX,dword ptr [EDX + 0x2c]
  00517851:	8b cf                                          	MOV ECX,EDI
  00517853:	ff d0                                          	CALL EAX
  00517855:	c1 e8 02                                       	SHR EAX,0x2
  00517858:	f6 d0                                          	NOT AL
  0051785a:	25 01 ff ff ff                                 	AND EAX,0xffffff01
  0051785f:	50                                             	PUSH EAX
  00517860:	57                                             	PUSH EDI
  00517861:	8b ce                                          	MOV ECX,ESI
  00517863:	e8 38 fd ff ff                                 	CALL 0x005175a0
  00517868:	5f                                             	POP EDI
  00517869:	5e                                             	POP ESI
  0051786a:	5d                                             	POP EBP
  0051786b:	32 c0                                          	XOR AL,AL
  0051786d:	5b                                             	POP EBX
  0051786e:	83 c4 08                                       	ADD ESP,0x8
  00517871:	c2 08 00                                       	RET 0x8
  00517874:	8b 46 2c                                       	MOV EAX,dword ptr [ESI + 0x2c]
  00517877:	83 f8 04                                       	CMP EAX,0x4
  0051787a:	75 06                                          	JNZ 0x00517882
  0051787c:	83 7f 0c 01                                    	CMP dword ptr [EDI + 0xc],0x1
  00517880:	74 21                                          	JZ 0x005178a3
  00517882:	83 f8 05                                       	CMP EAX,0x5
  00517885:	75 06                                          	JNZ 0x0051788d
  00517887:	83 7f 0c 00                                    	CMP dword ptr [EDI + 0xc],0x0
  0051788b:	74 16                                          	JZ 0x005178a3
  0051788d:	83 f8 07                                       	CMP EAX,0x7
  00517890:	75 06                                          	JNZ 0x00517898
  00517892:	83 7f 0c 01                                    	CMP dword ptr [EDI + 0xc],0x1
  00517896:	75 0b                                          	JNZ 0x005178a3
  00517898:	83 f8 08                                       	CMP EAX,0x8
  0051789b:	75 25                                          	JNZ 0x005178c2
  0051789d:	83 7f 0c 00                                    	CMP dword ptr [EDI + 0xc],0x0
  005178a1:	74 1f                                          	JZ 0x005178c2
  005178a3:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  005178a7:	39 47 18                                       	CMP dword ptr [EDI + 0x18],EAX
  005178aa:	0f 94 c1                                       	SETZ CL
  005178ad:	51                                             	PUSH ECX
  005178ae:	50                                             	PUSH EAX
  005178af:	8b ce                                          	MOV ECX,ESI
  005178b1:	e8 ea fc ff ff                                 	CALL 0x005175a0
  005178b6:	5f                                             	POP EDI
  005178b7:	5e                                             	POP ESI
  005178b8:	5d                                             	POP EBP
  005178b9:	32 c0                                          	XOR AL,AL
  005178bb:	5b                                             	POP EBX
  005178bc:	83 c4 08                                       	ADD ESP,0x8
  005178bf:	c2 08 00                                       	RET 0x8
  005178c2:	83 f8 06                                       	CMP EAX,0x6
  005178c5:	75 31                                          	JNZ 0x005178f8
  005178c7:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  005178cb:	8b 17                                          	MOV EDX,dword ptr [EDI]
  005178cd:	8b 42 14                                       	MOV EAX,dword ptr [EDX + 0x14]
  005178d0:	8b cf                                          	MOV ECX,EDI
  005178d2:	ff d0                                          	CALL EAX
  005178d4:	8b 10                                          	MOV EDX,dword ptr [EAX]
  005178d6:	8b c8                                          	MOV ECX,EAX
  005178d8:	8b 42 5c                                       	MOV EAX,dword ptr [EDX + 0x5c]
  005178db:	57                                             	PUSH EDI
  005178dc:	ff d0                                          	CALL EAX
  005178de:	85 c0                                          	TEST EAX,EAX
  005178e0:	0f 95 c1                                       	SETNZ CL
  005178e3:	51                                             	PUSH ECX
  005178e4:	57                                             	PUSH EDI
  005178e5:	8b ce                                          	MOV ECX,ESI
  005178e7:	e8 b4 fc ff ff                                 	CALL 0x005175a0
  005178ec:	5f                                             	POP EDI
  005178ed:	5e                                             	POP ESI
  005178ee:	5d                                             	POP EBP
  005178ef:	32 c0                                          	XOR AL,AL
  005178f1:	5b                                             	POP EBX
  005178f2:	83 c4 08                                       	ADD ESP,0x8
  005178f5:	c2 08 00                                       	RET 0x8
  005178f8:	83 f8 09                                       	CMP EAX,0x9
  005178fb:	0f 85 67 04 00 00                              	JNZ 0x00517d68
  00517901:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  00517905:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00517907:	8b 42 14                                       	MOV EAX,dword ptr [EDX + 0x14]
  0051790a:	8b cf                                          	MOV ECX,EDI
  0051790c:	ff d0                                          	CALL EAX
  0051790e:	8b 10                                          	MOV EDX,dword ptr [EAX]
  00517910:	8b c8                                          	MOV ECX,EAX
  00517912:	8b 42 5c                                       	MOV EAX,dword ptr [EDX + 0x5c]
  00517915:	57                                             	PUSH EDI
  00517916:	ff d0                                          	CALL EAX
  00517918:	85 c0                                          	TEST EAX,EAX
  0051791a:	0f 94 c1                                       	SETZ CL
  0051791d:	51                                             	PUSH ECX
  0051791e:	57                                             	PUSH EDI
  0051791f:	8b ce                                          	MOV ECX,ESI
  00517921:	e8 7a fc ff ff                                 	CALL 0x005175a0
  00517926:	5f                                             	POP EDI
  00517927:	5e                                             	POP ESI
  00517928:	5d                                             	POP EBP
  00517929:	32 c0                                          	XOR AL,AL
  0051792b:	5b                                             	POP EBX
  0051792c:	83 c4 08                                       	ADD ESP,0x8
  0051792f:	c2 08 00                                       	RET 0x8
  00517932:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  00517936:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00517938:	8b 42 28                                       	MOV EAX,dword ptr [EDX + 0x28]
  0051793b:	8b cf                                          	MOV ECX,EDI
  0051793d:	ff d0                                          	CALL EAX
  0051793f:	8b 4e 2c                                       	MOV ECX,dword ptr [ESI + 0x2c]
  00517942:	85 c9                                          	TEST ECX,ECX
  00517944:	74 21                                          	JZ 0x00517967
  00517946:	83 f9 01                                       	CMP ECX,0x1
  00517949:	74 1c                                          	JZ 0x00517967
  0051794b:	83 f9 02                                       	CMP ECX,0x2
  0051794e:	75 07                                          	JNZ 0x00517957
  00517950:	d1 e8                                          	SHR EAX,0x1
  00517952:	e9 03 ff ff ff                                 	JMP 0x0051785a
  00517957:	83 f9 03                                       	CMP ECX,0x3
  0051795a:	0f 85 08 04 00 00                              	JNZ 0x00517d68
  00517960:	d1 e8                                          	SHR EAX,0x1
  00517962:	e9 f1 fe ff ff                                 	JMP 0x00517858
  00517967:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00517969:	24 01                                          	AND AL,0x1
  0051796b:	8a d8                                          	MOV BL,AL
  0051796d:	8b 82 1c 01 00 00                              	MOV EAX,dword ptr [EDX + 0x11c]
  00517973:	8b cf                                          	MOV ECX,EDI
  00517975:	88 5c 24 1c                                    	MOV byte ptr [ESP + 0x1c],BL
  00517979:	ff d0                                          	CALL EAX
  0051797b:	84 c0                                          	TEST AL,AL
  0051797d:	74 43                                          	JZ 0x005179c2
  0051797f:	8b 46 2c                                       	MOV EAX,dword ptr [ESI + 0x2c]
  00517982:	85 c0                                          	TEST EAX,EAX
  00517984:	75 19                                          	JNZ 0x0051799f
  00517986:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  0051798a:	51                                             	PUSH ECX
  0051798b:	57                                             	PUSH EDI
  0051798c:	8b ce                                          	MOV ECX,ESI
  0051798e:	e8 0d fc ff ff                                 	CALL 0x005175a0
  00517993:	5f                                             	POP EDI
  00517994:	5e                                             	POP ESI
  00517995:	5d                                             	POP EBP
  00517996:	32 c0                                          	XOR AL,AL
  00517998:	5b                                             	POP EBX
  00517999:	83 c4 08                                       	ADD ESP,0x8
  0051799c:	c2 08 00                                       	RET 0x8
  0051799f:	83 f8 01                                       	CMP EAX,0x1
  005179a2:	0f 85 c0 03 00 00                              	JNZ 0x00517d68
  005179a8:	84 db                                          	TEST BL,BL
  005179aa:	0f 94 c2                                       	SETZ DL
  005179ad:	8b ce                                          	MOV ECX,ESI
  005179af:	52                                             	PUSH EDX
  005179b0:	57                                             	PUSH EDI
  005179b1:	e8 ea fb ff ff                                 	CALL 0x005175a0
  005179b6:	5f                                             	POP EDI
  005179b7:	5e                                             	POP ESI
  005179b8:	5d                                             	POP EBP
  005179b9:	32 c0                                          	XOR AL,AL
  005179bb:	5b                                             	POP EBX
  005179bc:	83 c4 08                                       	ADD ESP,0x8
  005179bf:	c2 08 00                                       	RET 0x8
  005179c2:	83 7e 2c 00                                    	CMP dword ptr [ESI + 0x2c],0x0
  005179c6:	75 7b                                          	JNZ 0x00517a43
  005179c8:	84 db                                          	TEST BL,BL
  005179ca:	74 7b                                          	JZ 0x00517a47
  005179cc:	f3 0f 10 46 4c                                 	MOVSS XMM0,dword ptr [ESI + 0x4c]
  005179d1:	0f 2f 05 cc 4c 0f 01                           	COMISS XMM0,dword ptr [0x010f4ccc]
  005179d8:	f3 0f 11 46 40                                 	MOVSS dword ptr [ESI + 0x40],XMM0
  005179dd:	f3 0f 11 46 48                                 	MOVSS dword ptr [ESI + 0x48],XMM0
  005179e2:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  005179e8:	0f 82 7a 03 00 00                              	JC 0x00517d68
  005179ee:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  005179f6:	0f 2f c8                                       	COMISS XMM1,XMM0
  005179f9:	0f 82 69 03 00 00                              	JC 0x00517d68
  005179ff:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00517a01:	d9 44 24 20                                    	FLD float ptr [ESP + 0x20]
  00517a05:	8b 90 9c 00 00 00                              	MOV EDX,dword ptr [EAX + 0x9c]
  00517a0b:	51                                             	PUSH ECX
  00517a0c:	d9 1c 24                                       	FSTP float ptr [ESP]
  00517a0f:	57                                             	PUSH EDI
  00517a10:	8b ce                                          	MOV ECX,ESI
  00517a12:	ff d2                                          	CALL EDX
  00517a14:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00517a16:	8b 50 14                                       	MOV EDX,dword ptr [EAX + 0x14]
  00517a19:	8b ce                                          	MOV ECX,ESI
  00517a1b:	ff d2                                          	CALL EDX
  00517a1d:	a9 00 02 00 00                                 	TEST EAX,0x200
  00517a22:	74 0c                                          	JZ 0x00517a30
  00517a24:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517a26:	8b 90 98 00 00 00                              	MOV EDX,dword ptr [EAX + 0x98]
  00517a2c:	8b cf                                          	MOV ECX,EDI
  00517a2e:	ff d2                                          	CALL EDX
  00517a30:	8b ce                                          	MOV ECX,ESI
  00517a32:	e8 b9 fa ff ff                                 	CALL 0x005174f0
  00517a37:	5f                                             	POP EDI
  00517a38:	5e                                             	POP ESI
  00517a39:	5d                                             	POP EBP
  00517a3a:	32 c0                                          	XOR AL,AL
  00517a3c:	5b                                             	POP EBX
  00517a3d:	83 c4 08                                       	ADD ESP,0x8
  00517a40:	c2 08 00                                       	RET 0x8
  00517a43:	84 db                                          	TEST BL,BL
  00517a45:	74 85                                          	JZ 0x005179cc
  00517a47:	f3 0f 10 46 50                                 	MOVSS XMM0,dword ptr [ESI + 0x50]
  00517a4c:	eb 83                                          	JMP 0x005179d1
  00517a4e:	f3 0f 10 46 48                                 	MOVSS XMM0,dword ptr [ESI + 0x48]
  00517a53:	f3 0f 10 56 40                                 	MOVSS XMM2,dword ptr [ESI + 0x40]
  00517a58:	f3 0f 10 0d 88 e0 1c 01                        	MOVSS XMM1,dword ptr [0x011ce088]
  00517a60:	f3 0f 5c 4e 58                                 	SUBSS XMM1,dword ptr [ESI + 0x58]
  00517a65:	8d 6e 40                                       	LEA EBP,[ESI + 0x40]
  00517a68:	32 db                                          	XOR BL,BL
  00517a6a:	0f 2e c2                                       	UCOMISS XMM0,XMM2
  00517a6d:	9f                                             	LAHF
  00517a6e:	f6 c4 44                                       	TEST AH,0x44
  00517a71:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  00517a77:	0f 28 d8                                       	MOVAPS XMM3,XMM0
  00517a7a:	f3 0f 11 54 24 14                              	MOVSS dword ptr [ESP + 0x14],XMM2
  00517a80:	7b 50                                          	JNP 0x00517ad2
  00517a82:	0f 2f 4e 20                                    	COMISS XMM1,dword ptr [ESI + 0x20]
  00517a86:	76 07                                          	JBE 0x00517a8f
  00517a88:	f3 0f 11 56 48                                 	MOVSS dword ptr [ESI + 0x48],XMM2
  00517a8d:	eb 33                                          	JMP 0x00517ac2
  00517a8f:	0f 2f d0                                       	COMISS XMM2,XMM0
  00517a92:	f3 0f 5e 4e 18                                 	DIVSS XMM1,dword ptr [ESI + 0x18]
  00517a97:	8b c5                                          	MOV EAX,EBP
  00517a99:	76 0a                                          	JBE 0x00517aa5
  00517a9b:	f3 0f 58 c1                                    	ADDSS XMM0,XMM1
  00517a9f:	0f 2f 45 00                                    	COMISS XMM0,dword ptr [EBP]
  00517aa3:	eb 0c                                          	JMP 0x00517ab1
  00517aa5:	f3 0f 5c c1                                    	SUBSS XMM0,XMM1
  00517aa9:	f3 0f 10 4d 00                                 	MOVSS XMM1,dword ptr [EBP]
  00517aae:	0f 2f c8                                       	COMISS XMM1,XMM0
  00517ab1:	f3 0f 11 44 24 10                              	MOVSS dword ptr [ESP + 0x10],XMM0
  00517ab7:	77 04                                          	JA 0x00517abd
  00517ab9:	8d 44 24 10                                    	LEA EAX,[ESP + 0x10]
  00517abd:	d9 00                                          	FLD float ptr [EAX]
  00517abf:	d9 5e 48                                       	FSTP float ptr [ESI + 0x48]
  00517ac2:	f3 0f 10 46 48                                 	MOVSS XMM0,dword ptr [ESI + 0x48]
  00517ac7:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  00517acd:	f3 0f 11 46 44                                 	MOVSS dword ptr [ESI + 0x44],XMM0
  00517ad2:	d9 44 24 20                                    	FLD float ptr [ESP + 0x20]
  00517ad6:	d9 c0                                          	FLD ST0
  00517ad8:	d8 66 44                                       	FSUB float ptr [ESI + 0x44]
  00517adb:	d9 e1                                          	FABS
  00517add:	d9 c9                                          	FXCH
  00517adf:	d8 64 24 14                                    	FSUB float ptr [ESP + 0x14]
  00517ae3:	d9 e1                                          	FABS
  00517ae5:	de c1                                          	FADDP
  00517ae7:	d9 05 b4 35 fb 00                              	FLD float ptr [0x00fb35b4]
  00517aed:	df f1                                          	FCOMIP ST0,ST1
  00517aef:	dd d8                                          	FSTP ST0
  00517af1:	76 10                                          	JBE 0x00517b03
  00517af3:	b3 01                                          	MOV BL,0x1
  00517af5:	c6 46 65 00                                    	MOV byte ptr [ESI + 0x65],0x0
  00517af9:	f3 0f 11 56 44                                 	MOVSS dword ptr [ESI + 0x44],XMM2
  00517afe:	f3 0f 11 56 48                                 	MOVSS dword ptr [ESI + 0x48],XMM2
  00517b03:	f3 0f 10 46 48                                 	MOVSS XMM0,dword ptr [ESI + 0x48]
  00517b08:	0f 57 d2                                       	XORPS XMM2,XMM2
  00517b0b:	0f 2f c2                                       	COMISS XMM0,XMM2
  00517b0e:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  00517b12:	f3 0f 10 0d f8 98 f9 00                        	MOVSS XMM1,dword ptr [0x00f998f8]
  00517b1a:	f3 0f 11 44 24 20                              	MOVSS dword ptr [ESP + 0x20],XMM0
  00517b20:	72 05                                          	JC 0x00517b27
  00517b22:	0f 2f c8                                       	COMISS XMM1,XMM0
  00517b25:	73 0c                                          	JNC 0x00517b33
  00517b27:	83 7e 30 02                                    	CMP dword ptr [ESI + 0x30],0x2
  00517b2b:	75 17                                          	JNZ 0x00517b44
  00517b2d:	80 7e 65 00                                    	CMP byte ptr [ESI + 0x65],0x0
  00517b31:	74 11                                          	JZ 0x00517b44
  00517b33:	d9 44 24 20                                    	FLD float ptr [ESP + 0x20]
  00517b37:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00517b39:	51                                             	PUSH ECX
  00517b3a:	d9 1c 24                                       	FSTP float ptr [ESP]
  00517b3d:	e8 fe f3 ff ff                                 	CALL 0x00516f40
  00517b42:	eb 1c                                          	JMP 0x00517b60
  00517b44:	0f 2f cb                                       	COMISS XMM1,XMM3
  00517b47:	76 09                                          	JBE 0x00517b52
  00517b49:	0f 2f c1                                       	COMISS XMM0,XMM1
  00517b4c:	72 04                                          	JC 0x00517b52
  00517b4e:	d9 e8                                          	FLD1
  00517b50:	eb 0c                                          	JMP 0x00517b5e
  00517b52:	0f 2f da                                       	COMISS XMM3,XMM2
  00517b55:	76 16                                          	JBE 0x00517b6d
  00517b57:	0f 2f d0                                       	COMISS XMM2,XMM0
  00517b5a:	72 11                                          	JC 0x00517b6d
  00517b5c:	d9 ee                                          	FLDZ
  00517b5e:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00517b60:	8b 82 9c 00 00 00                              	MOV EAX,dword ptr [EDX + 0x9c]
  00517b66:	51                                             	PUSH ECX
  00517b67:	d9 1c 24                                       	FSTP float ptr [ESP]
  00517b6a:	57                                             	PUSH EDI
  00517b6b:	ff d0                                          	CALL EAX
  00517b6d:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00517b6f:	8b 42 14                                       	MOV EAX,dword ptr [EDX + 0x14]
  00517b72:	8b ce                                          	MOV ECX,ESI
  00517b74:	ff d0                                          	CALL EAX
  00517b76:	a9 00 02 00 00                                 	TEST EAX,0x200
  00517b7b:	74 0c                                          	JZ 0x00517b89
  00517b7d:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00517b7f:	8b 82 98 00 00 00                              	MOV EAX,dword ptr [EDX + 0x98]
  00517b85:	8b cf                                          	MOV ECX,EDI
  00517b87:	ff d0                                          	CALL EAX
  00517b89:	84 db                                          	TEST BL,BL
  00517b8b:	74 5a                                          	JZ 0x00517be7
  00517b8d:	8a 4e 61                                       	MOV CL,byte ptr [ESI + 0x61]
  00517b90:	84 c9                                          	TEST CL,CL
  00517b92:	0f 84 8d 00 00 00                              	JZ 0x00517c25
  00517b98:	80 7e 62 00                                    	CMP byte ptr [ESI + 0x62],0x0
  00517b9c:	75 0f                                          	JNZ 0x00517bad
  00517b9e:	f3 0f 10 45 00                                 	MOVSS XMM0,dword ptr [EBP]
  00517ba3:	0f 2e 46 4c                                    	UCOMISS XMM0,dword ptr [ESI + 0x4c]
  00517ba7:	9f                                             	LAHF
  00517ba8:	f6 c4 44                                       	TEST AH,0x44
  00517bab:	7a 57                                          	JP 0x00517c04
  00517bad:	8b 46 5c                                       	MOV EAX,dword ptr [ESI + 0x5c]
  00517bb0:	85 c0                                          	TEST EAX,EAX
  00517bb2:	75 1f                                          	JNZ 0x00517bd3
  00517bb4:	f3 0f 10 46 4c                                 	MOVSS XMM0,dword ptr [ESI + 0x4c]
  00517bb9:	f3 0f 10 4d 00                                 	MOVSS XMM1,dword ptr [EBP]
  00517bbe:	0f 2e c8                                       	UCOMISS XMM1,XMM0
  00517bc1:	9f                                             	LAHF
  00517bc2:	f6 c4 44                                       	TEST AH,0x44
  00517bc5:	7a 05                                          	JP 0x00517bcc
  00517bc7:	f3 0f 10 46 50                                 	MOVSS XMM0,dword ptr [ESI + 0x50]
  00517bcc:	f3 0f 11 45 00                                 	MOVSS dword ptr [EBP],XMM0
  00517bd1:	eb 14                                          	JMP 0x00517be7
  00517bd3:	83 f8 01                                       	CMP EAX,0x1
  00517bd6:	75 0f                                          	JNZ 0x00517be7
  00517bd8:	f3 0f 10 46 50                                 	MOVSS XMM0,dword ptr [ESI + 0x50]
  00517bdd:	f3 0f 11 46 48                                 	MOVSS dword ptr [ESI + 0x48],XMM0
  00517be2:	f3 0f 11 46 44                                 	MOVSS dword ptr [ESI + 0x44],XMM0
  00517be7:	c6 46 64 01                                    	MOV byte ptr [ESI + 0x64],0x1
  00517beb:	f3 0f 10 05 88 e0 1c 01                        	MOVSS XMM0,dword ptr [0x011ce088]
  00517bf3:	5f                                             	POP EDI
  00517bf4:	f3 0f 11 46 58                                 	MOVSS dword ptr [ESI + 0x58],XMM0
  00517bf9:	5e                                             	POP ESI
  00517bfa:	5d                                             	POP EBP
  00517bfb:	32 c0                                          	XOR AL,AL
  00517bfd:	5b                                             	POP EBX
  00517bfe:	83 c4 08                                       	ADD ESP,0x8
  00517c01:	c2 08 00                                       	RET 0x8
  00517c04:	84 c9                                          	TEST CL,CL
  00517c06:	74 1d                                          	JZ 0x00517c25
  00517c08:	80 7e 62 00                                    	CMP byte ptr [ESI + 0x62],0x0
  00517c0c:	0f 85 56 01 00 00                              	JNZ 0x00517d68
  00517c12:	f3 0f 10 45 00                                 	MOVSS XMM0,dword ptr [EBP]
  00517c17:	0f 2e 46 50                                    	UCOMISS XMM0,dword ptr [ESI + 0x50]
  00517c1b:	9f                                             	LAHF
  00517c1c:	f6 c4 44                                       	TEST AH,0x44
  00517c1f:	0f 8a 43 01 00 00                              	JP 0x00517d68
  00517c25:	8a 5e 64                                       	MOV BL,byte ptr [ESI + 0x64]
  00517c28:	c6 46 64 00                                    	MOV byte ptr [ESI + 0x64],0x0
  00517c2c:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00517c2e:	8b 82 08 01 00 00                              	MOV EAX,dword ptr [EDX + 0x108]
  00517c34:	56                                             	PUSH ESI
  00517c35:	8b cf                                          	MOV ECX,EDI
  00517c37:	ff d0                                          	CALL EAX
  00517c39:	84 db                                          	TEST BL,BL
  00517c3b:	0f 84 27 01 00 00                              	JZ 0x00517d68
  00517c41:	8b ce                                          	MOV ECX,ESI
  00517c43:	e8 a8 f8 ff ff                                 	CALL 0x005174f0
  00517c48:	5f                                             	POP EDI
  00517c49:	5e                                             	POP ESI
  00517c4a:	5d                                             	POP EBP
  00517c4b:	32 c0                                          	XOR AL,AL
  00517c4d:	5b                                             	POP EBX
  00517c4e:	83 c4 08                                       	ADD ESP,0x8
  00517c51:	c2 08 00                                       	RET 0x8
  00517c54:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00517c56:	8b 42 14                                       	MOV EAX,dword ptr [EDX + 0x14]
  00517c59:	ff d0                                          	CALL EAX
  00517c5b:	a9 00 02 00 00                                 	TEST EAX,0x200
  00517c60:	0f 84 02 01 00 00                              	JZ 0x00517d68
  00517c66:	f3 0f 10 46 48                                 	MOVSS XMM0,dword ptr [ESI + 0x48]
  00517c6b:	0f 57 c9                                       	XORPS XMM1,XMM1
  00517c6e:	0f 2f c1                                       	COMISS XMM0,XMM1
  00517c71:	8b 7f 18                                       	MOV EDI,dword ptr [EDI + 0x18]
  00517c74:	73 3f                                          	JNC 0x00517cb5
  00517c76:	83 7e 30 02                                    	CMP dword ptr [ESI + 0x30],0x2
  00517c7a:	75 06                                          	JNZ 0x00517c82
  00517c7c:	80 7e 65 00                                    	CMP byte ptr [ESI + 0x65],0x0
  00517c80:	75 33                                          	JNZ 0x00517cb5
  00517c82:	f3 0f 10 56 54                                 	MOVSS XMM2,dword ptr [ESI + 0x54]
  00517c87:	0f 2f d1                                       	COMISS XMM2,XMM1
  00517c8a:	76 3b                                          	JBE 0x00517cc7
  00517c8c:	0f 2f c8                                       	COMISS XMM1,XMM0
  00517c8f:	76 36                                          	JBE 0x00517cc7
  00517c91:	8b 16                                          	MOV EDX,dword ptr [ESI]
  00517c93:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00517c97:	8b 92 a0 00 00 00                              	MOV EDX,dword ptr [EDX + 0xa0]
  00517c9d:	57                                             	PUSH EDI
  00517c9e:	50                                             	PUSH EAX
  00517c9f:	8b ce                                          	MOV ECX,ESI
  00517ca1:	ff d2                                          	CALL EDX
  00517ca3:	d9 46 48                                       	FLD float ptr [ESI + 0x48]
  00517ca6:	5f                                             	POP EDI
  00517ca7:	d9 5e 54                                       	FSTP float ptr [ESI + 0x54]
  00517caa:	5e                                             	POP ESI
  00517cab:	5d                                             	POP EBP
  00517cac:	32 c0                                          	XOR AL,AL
  00517cae:	5b                                             	POP EBX
  00517caf:	83 c4 08                                       	ADD ESP,0x8
  00517cb2:	c2 08 00                                       	RET 0x8
  00517cb5:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00517cb9:	8b 06                                          	MOV EAX,dword ptr [ESI]
  00517cbb:	8b 90 a0 00 00 00                              	MOV EDX,dword ptr [EAX + 0xa0]
  00517cc1:	57                                             	PUSH EDI
  00517cc2:	51                                             	PUSH ECX
  00517cc3:	8b ce                                          	MOV ECX,ESI
  00517cc5:	ff d2                                          	CALL EDX
  00517cc7:	d9 46 48                                       	FLD float ptr [ESI + 0x48]
  00517cca:	5f                                             	POP EDI
  00517ccb:	d9 5e 54                                       	FSTP float ptr [ESI + 0x54]
  00517cce:	5e                                             	POP ESI
  00517ccf:	5d                                             	POP EBP
  00517cd0:	32 c0                                          	XOR AL,AL
  00517cd2:	5b                                             	POP EBX
  00517cd3:	83 c4 08                                       	ADD ESP,0x8
  00517cd6:	c2 08 00                                       	RET 0x8
  00517cd9:	8b 7c 24 1c                                    	MOV EDI,dword ptr [ESP + 0x1c]
  00517cdd:	8b 07                                          	MOV EAX,dword ptr [EDI]
  00517cdf:	8b 90 1c 01 00 00                              	MOV EDX,dword ptr [EAX + 0x11c]
  00517ce5:	8b cf                                          	MOV ECX,EDI
  00517ce7:	ff d2                                          	CALL EDX
  00517ce9:	3a 46 63                                       	CMP AL,byte ptr [ESI + 0x63]
  00517cec:	88 44 24 1c                                    	MOV byte ptr [ESP + 0x1c],AL
  00517cf0:	74 76                                          	JZ 0x00517d68
  00517cf2:	83 7e 2c 00                                    	CMP dword ptr [ESI + 0x2c],0x0
  00517cf6:	88 46 63                                       	MOV byte ptr [ESI + 0x63],AL
  00517cf9:	75 6d                                          	JNZ 0x00517d68
  00517cfb:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  00517cff:	50                                             	PUSH EAX
  00517d00:	57                                             	PUSH EDI
  00517d01:	8b ce                                          	MOV ECX,ESI
  00517d03:	e8 98 f8 ff ff                                 	CALL 0x005175a0
  00517d08:	8b 17                                          	MOV EDX,dword ptr [EDI]
  00517d0a:	8b 82 08 01 00 00                              	MOV EAX,dword ptr [EDX + 0x108]
  00517d10:	56                                             	PUSH ESI
  00517d11:	8b cf                                          	MOV ECX,EDI
  00517d13:	ff d0                                          	CALL EAX
  00517d15:	5f                                             	POP EDI
  00517d16:	5e                                             	POP ESI
  00517d17:	5d                                             	POP EBP
  00517d18:	32 c0                                          	XOR AL,AL
  00517d1a:	5b                                             	POP EBX
  00517d1b:	83 c4 08                                       	ADD ESP,0x8
  00517d1e:	c2 08 00                                       	RET 0x8
  00517d21:	3d 01 00 01 00                                 	CMP EAX,0x10001
  00517d26:	75 40                                          	JNZ 0x00517d68
  00517d28:	83 7f 0c 00                                    	CMP dword ptr [EDI + 0xc],0x0
  00517d2c:	74 24                                          	JZ 0x00517d52
  00517d2e:	80 7e 60 00                                    	CMP byte ptr [ESI + 0x60],0x0
  00517d32:	75 34                                          	JNZ 0x00517d68
  00517d34:	8b 4c 24 1c                                    	MOV ECX,dword ptr [ESP + 0x1c]
  00517d38:	6a 01                                          	PUSH 0x1
  00517d3a:	51                                             	PUSH ECX
  00517d3b:	8b ce                                          	MOV ECX,ESI
  00517d3d:	c6 46 60 01                                    	MOV byte ptr [ESI + 0x60],0x1
  00517d41:	e8 5a f8 ff ff                                 	CALL 0x005175a0
  00517d46:	5f                                             	POP EDI
  00517d47:	5e                                             	POP ESI
  00517d48:	5d                                             	POP EBP
  00517d49:	32 c0                                          	XOR AL,AL
  00517d4b:	5b                                             	POP EBX
  00517d4c:	83 c4 08                                       	ADD ESP,0x8
  00517d4f:	c2 08 00                                       	RET 0x8
  00517d52:	80 7e 60 00                                    	CMP byte ptr [ESI + 0x60],0x0
  00517d56:	74 10                                          	JZ 0x00517d68
  00517d58:	8b 54 24 1c                                    	MOV EDX,dword ptr [ESP + 0x1c]
  00517d5c:	6a 00                                          	PUSH 0x0
  00517d5e:	52                                             	PUSH EDX
  00517d5f:	e8 3c f8 ff ff                                 	CALL 0x005175a0
  00517d64:	c6 46 60 00                                    	MOV byte ptr [ESI + 0x60],0x0
  00517d68:	5f                                             	POP EDI
  00517d69:	5e                                             	POP ESI
  00517d6a:	5d                                             	POP EBP
  00517d6b:	32 c0                                          	XOR AL,AL
  00517d6d:	5b                                             	POP EBX
  00517d6e:	83 c4 08                                       	ADD ESP,0x8
  00517d71:	c2 08 00                                       	RET 0x8
