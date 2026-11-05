# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00af7800 (FloorQuarter_EncodeThreeOrientedEdges)
Paired actual Ghidra pseudocode: 00AF7800_FloorQuarter_EncodeThreeOrientedEdges.c
Envelope [0x00af7800,0x00af794c); 332 bytes; exact owned ranges: [0x00af7800,0x00af794c)
Owned: 332 original bytes / 104 actual saved Listing instructions.
Instructions below retain actual saved Ghidra Listing text and pristine PE bytes; this is not GNU objdump output.
Explicit .byte records are unowned envelope alignment, not instructions or part of the defined body.
Stored inferred prototypes are retained; entry annotations distinguish physical ABI/AL observations and unresolved children.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00af7800 <original>:
  00af7800:	8b 44 24 04                                    	MOV EAX,dword ptr [ESP + 0x4]
  00af7804:	8a 48 02                                       	MOV CL,byte ptr [EAX + 0x2]
  00af7807:	53                                             	PUSH EBX
  00af7808:	bb 01 00 00 00                                 	MOV EBX,0x1
  00af780d:	8b d3                                          	MOV EDX,EBX
  00af780f:	d3 e2                                          	SHL EDX,CL
  00af7811:	8d 4a ff                                       	LEA ECX,[EDX + -0x1]
  00af7814:	83 f9 07                                       	CMP ECX,0x7
  00af7817:	0f 87 2d 01 00 00                              	JA 0x00af794a
  00af781d:	56                                             	PUSH ESI
  00af781e:	ff 24 8d 4c 79 af 00                           	JMP dword ptr [ECX*0x4 + 0xaf794c]
  00af7825:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af7828:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00af782c:	89 11                                          	MOV dword ptr [ECX],EDX
  00af782e:	0f be 50 01                                    	MOVSX EDX,byte ptr [EAX + 0x1]
  00af7832:	89 51 04                                       	MOV dword ptr [ECX + 0x4],EDX
  00af7835:	33 d2                                          	XOR EDX,EDX
  00af7837:	89 51 08                                       	MOV dword ptr [ECX + 0x8],EDX
  00af783a:	88 51 0c                                       	MOV byte ptr [ECX + 0xc],DL
  00af783d:	0f be 30                                       	MOVSX ESI,byte ptr [EAX]
  00af7840:	89 71 10                                       	MOV dword ptr [ECX + 0x10],ESI
  00af7843:	0f be 70 01                                    	MOVSX ESI,byte ptr [EAX + 0x1]
  00af7847:	89 71 14                                       	MOV dword ptr [ECX + 0x14],ESI
  00af784a:	c7 41 18 02 00 00 00                           	MOV dword ptr [ECX + 0x18],0x2
  00af7851:	88 51 1c                                       	MOV byte ptr [ECX + 0x1c],DL
  00af7854:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af7857:	89 51 20                                       	MOV dword ptr [ECX + 0x20],EDX
  00af785a:	0f be 40 01                                    	MOVSX EAX,byte ptr [EAX + 0x1]
  00af785e:	5e                                             	POP ESI
  00af785f:	88 59 2c                                       	MOV byte ptr [ECX + 0x2c],BL
  00af7862:	c7 41 28 03 00 00 00                           	MOV dword ptr [ECX + 0x28],0x3
  00af7869:	89 41 24                                       	MOV dword ptr [ECX + 0x24],EAX
  00af786c:	5b                                             	POP EBX
  00af786d:	c3                                             	RET
  00af786e:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af7871:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00af7875:	03 d3                                          	ADD EDX,EBX
  00af7877:	89 11                                          	MOV dword ptr [ECX],EDX
  00af7879:	0f be 50 01                                    	MOVSX EDX,byte ptr [EAX + 0x1]
  00af787d:	89 59 08                                       	MOV dword ptr [ECX + 0x8],EBX
  00af7880:	88 59 0c                                       	MOV byte ptr [ECX + 0xc],BL
  00af7883:	89 51 04                                       	MOV dword ptr [ECX + 0x4],EDX
  00af7886:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af7889:	89 51 10                                       	MOV dword ptr [ECX + 0x10],EDX
  00af788c:	0f be 50 01                                    	MOVSX EDX,byte ptr [EAX + 0x1]
  00af7890:	89 51 14                                       	MOV dword ptr [ECX + 0x14],EDX
  00af7893:	c7 41 18 03 00 00 00                           	MOV dword ptr [ECX + 0x18],0x3
  00af789a:	c6 41 1c 00                                    	MOV byte ptr [ECX + 0x1c],0x0
  00af789e:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af78a1:	89 51 20                                       	MOV dword ptr [ECX + 0x20],EDX
  00af78a4:	0f be 40 01                                    	MOVSX EAX,byte ptr [EAX + 0x1]
  00af78a8:	5e                                             	POP ESI
  00af78a9:	88 59 2c                                       	MOV byte ptr [ECX + 0x2c],BL
  00af78ac:	c7 41 28 04 00 00 00                           	MOV dword ptr [ECX + 0x28],0x4
  00af78b3:	89 41 24                                       	MOV dword ptr [ECX + 0x24],EAX
  00af78b6:	5b                                             	POP EBX
  00af78b7:	c3                                             	RET
  00af78b8:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af78bb:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00af78bf:	89 11                                          	MOV dword ptr [ECX],EDX
  00af78c1:	0f be 50 01                                    	MOVSX EDX,byte ptr [EAX + 0x1]
  00af78c5:	03 d3                                          	ADD EDX,EBX
  00af78c7:	89 51 04                                       	MOV dword ptr [ECX + 0x4],EDX
  00af78ca:	33 d2                                          	XOR EDX,EDX
  00af78cc:	88 59 0c                                       	MOV byte ptr [ECX + 0xc],BL
  00af78cf:	89 51 08                                       	MOV dword ptr [ECX + 0x8],EDX
  00af78d2:	0f be 30                                       	MOVSX ESI,byte ptr [EAX]
  00af78d5:	89 71 10                                       	MOV dword ptr [ECX + 0x10],ESI
  00af78d8:	0f be 70 01                                    	MOVSX ESI,byte ptr [EAX + 0x1]
  00af78dc:	89 71 14                                       	MOV dword ptr [ECX + 0x14],ESI
  00af78df:	c7 41 18 04 00 00 00                           	MOV dword ptr [ECX + 0x18],0x4
  00af78e6:	88 51 1c                                       	MOV byte ptr [ECX + 0x1c],DL
  00af78e9:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af78ec:	89 51 20                                       	MOV dword ptr [ECX + 0x20],EDX
  00af78ef:	0f be 40 01                                    	MOVSX EAX,byte ptr [EAX + 0x1]
  00af78f3:	5e                                             	POP ESI
  00af78f4:	88 59 2c                                       	MOV byte ptr [ECX + 0x2c],BL
  00af78f7:	c7 41 28 05 00 00 00                           	MOV dword ptr [ECX + 0x28],0x5
  00af78fe:	89 41 24                                       	MOV dword ptr [ECX + 0x24],EAX
  00af7901:	5b                                             	POP EBX
  00af7902:	c3                                             	RET
  00af7903:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af7906:	8b 4c 24 10                                    	MOV ECX,dword ptr [ESP + 0x10]
  00af790a:	89 11                                          	MOV dword ptr [ECX],EDX
  00af790c:	0f be 50 01                                    	MOVSX EDX,byte ptr [EAX + 0x1]
  00af7910:	89 51 04                                       	MOV dword ptr [ECX + 0x4],EDX
  00af7913:	33 d2                                          	XOR EDX,EDX
  00af7915:	89 59 08                                       	MOV dword ptr [ECX + 0x8],EBX
  00af7918:	88 51 0c                                       	MOV byte ptr [ECX + 0xc],DL
  00af791b:	0f be 30                                       	MOVSX ESI,byte ptr [EAX]
  00af791e:	89 71 10                                       	MOV dword ptr [ECX + 0x10],ESI
  00af7921:	0f be 70 01                                    	MOVSX ESI,byte ptr [EAX + 0x1]
  00af7925:	89 71 14                                       	MOV dword ptr [ECX + 0x14],ESI
  00af7928:	c7 41 18 05 00 00 00                           	MOV dword ptr [ECX + 0x18],0x5
  00af792f:	88 51 1c                                       	MOV byte ptr [ECX + 0x1c],DL
  00af7932:	0f be 10                                       	MOVSX EDX,byte ptr [EAX]
  00af7935:	89 51 20                                       	MOV dword ptr [ECX + 0x20],EDX
  00af7938:	0f be 40 01                                    	MOVSX EAX,byte ptr [EAX + 0x1]
  00af793c:	c7 41 28 02 00 00 00                           	MOV dword ptr [ECX + 0x28],0x2
  00af7943:	88 59 2c                                       	MOV byte ptr [ECX + 0x2c],BL
  00af7946:	89 41 24                                       	MOV dword ptr [ECX + 0x24],EAX
  00af7949:	5e                                             	POP ESI
  00af794a:	5b                                             	POP EBX
  00af794b:	c3                                             	RET
