# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006c97d0 (MaterialShaderBinding_RegisterEntryParameters)
Paired actual Ghidra pseudocode: 006C97D0_MaterialShaderBinding_RegisterEntryParameters.c
Envelope [0x006c97d0,0x006c9863); 147 bytes; exact owned ranges: [0x006c97d0,0x006c9863)
Owned: 147 original bytes / 55 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006c97d0 <original>:
  6c97d0:	51                                              	push   ecx
  6c97d1:	55                                              	push   ebp
  6c97d2:	8b 2d 30 85 1d 01                               	mov    ebp,DWORD PTR ds:0x11d8530
  6c97d8:	56                                              	push   esi
  6c97d9:	8b 71 64                                        	mov    esi,DWORD PTR [ecx+0x64]
  6c97dc:	57                                              	push   edi
  6c97dd:	8b 79 68                                        	mov    edi,DWORD PTR [ecx+0x68]
  6c97e0:	3b f7                                           	cmp    esi,edi
  6c97e2:	74 7a                                           	je     0x6c985e
  6c97e4:	53                                              	push   ebx
  6c97e5:	0f b6 4e 1e                                     	movzx  ecx,BYTE PTR [esi+0x1e]
  6c97e9:	0f b7 46 0a                                     	movzx  eax,WORD PTR [esi+0xa]
  6c97ed:	83 c1 ff                                        	add    ecx,0xffffffff
  6c97f0:	33 db                                           	xor    ebx,ebx
  6c97f2:	83 f9 05                                        	cmp    ecx,0x5
  6c97f5:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  6c97f9:	77 42                                           	ja     0x6c983d
  6c97fb:	ff 24 8d 64 98 6c 00                            	jmp    DWORD PTR [ecx*4+0x6c9864]
  6c9802:	a8 03                                           	test   al,0x3
  6c9804:	74 07                                           	je     0x6c980d
  6c9806:	bb 01 00 00 00                                  	mov    ebx,0x1
  6c980b:	eb 30                                           	jmp    0x6c983d
  6c980d:	c1 e8 02                                        	shr    eax,0x2
  6c9810:	bb 02 00 00 00                                  	mov    ebx,0x2
  6c9815:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  6c9819:	eb 22                                           	jmp    0x6c983d
  6c981b:	c1 e8 02                                        	shr    eax,0x2
  6c981e:	bb 03 00 00 00                                  	mov    ebx,0x3
  6c9823:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  6c9827:	eb 14                                           	jmp    0x6c983d
  6c9829:	03 c0                                           	add    eax,eax
  6c982b:	03 c0                                           	add    eax,eax
  6c982d:	bb 02 00 00 00                                  	mov    ebx,0x2
  6c9832:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  6c9836:	eb 05                                           	jmp    0x6c983d
  6c9838:	bb 05 00 00 00                                  	mov    ebx,0x5
  6c983d:	53                                              	push   ebx
  6c983e:	50                                              	push   eax
  6c983f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  6c9841:	50                                              	push   eax
  6c9842:	8b cd                                           	mov    ecx,ebp
  6c9844:	e8 b7 0c 0d 00                                  	call   0x79a500
  6c9849:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
  6c984d:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  6c9850:	88 4e 08                                        	mov    BYTE PTR [esi+0x8],cl
  6c9853:	88 5e 09                                        	mov    BYTE PTR [esi+0x9],bl
  6c9856:	83 c6 20                                        	add    esi,0x20
  6c9859:	3b f7                                           	cmp    esi,edi
  6c985b:	75 88                                           	jne    0x6c97e5
  6c985d:	5b                                              	pop    ebx
  6c985e:	5f                                              	pop    edi
  6c985f:	5e                                              	pop    esi
  6c9860:	5d                                              	pop    ebp
  6c9861:	59                                              	pop    ecx
  6c9862:	c3                                              	ret
