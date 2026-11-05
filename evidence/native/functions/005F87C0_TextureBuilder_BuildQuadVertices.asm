# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x005f87c0 (TextureBuilder_BuildQuadVertices)
Paired actual Ghidra pseudocode: 005F87C0_TextureBuilder_BuildQuadVertices.c
Envelope [0x005f87c0,0x005f9197); 2519 bytes; exact owned ranges: [0x005f87c0,0x005f9015),[0x005f9020,0x005f9197)
Owned: 2508 original bytes / 555 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
005f87c0 <original>:
  5f87c0:	55                                              	push   ebp
  5f87c1:	8b ec                                           	mov    ebp,esp
  5f87c3:	83 e4 f0                                        	and    esp,0xfffffff0
  5f87c6:	81 ec 14 01 00 00                               	sub    esp,0x114
  5f87cc:	f6 05 40 fa 1c 01 01                            	test   BYTE PTR ds:0x11cfa40,0x1
  5f87d3:	53                                              	push   ebx
  5f87d4:	56                                              	push   esi
  5f87d5:	57                                              	push   edi
  5f87d6:	8b f9                                           	mov    edi,ecx
  5f87d8:	75 07                                           	jne    0x5f87e1
  5f87da:	83 0d 40 fa 1c 01 01                            	or     DWORD PTR ds:0x11cfa40,0x1
  5f87e1:	8b 35 30 85 1d 01                               	mov    esi,DWORD PTR ds:0x11d8530
  5f87e7:	6a 02                                           	push   0x2
  5f87e9:	6a 0c                                           	push   0xc
  5f87eb:	68 c4 71 fe 00                                  	push   0xfe71c4
  5f87f0:	8b ce                                           	mov    ecx,esi
  5f87f2:	e8 39 1d 1a 00                                  	call   0x79a530
  5f87f7:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  5f87fa:	73 18                                           	jae    0x5f8814
  5f87fc:	c1 e0 04                                        	shl    eax,0x4
  5f87ff:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  5f8802:	83 00 01                                        	add    DWORD PTR [eax],0x1
  5f8805:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  5f8809:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  5f880d:	c7 40 0c 80 f9 1c 01                            	mov    DWORD PTR [eax+0xc],0x11cf980
  5f8814:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  5f8817:	8b d0                                           	mov    edx,eax
  5f8819:	c1 ea 10                                        	shr    edx,0x10
  5f881c:	81 e2 ff 00 00 00                               	and    edx,0xff
  5f8822:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  5f8826:	db 44 24 2c                                     	fild   DWORD PTR [esp+0x2c]
  5f882a:	8b c8                                           	mov    ecx,eax
  5f882c:	d9 05 64 e5 fa 00                               	fld    DWORD PTR ds:0xfae564
  5f8832:	c1 e9 08                                        	shr    ecx,0x8
  5f8835:	81 e1 ff 00 00 00                               	and    ecx,0xff
  5f883b:	dc c9                                           	fmul   st(1),st
  5f883d:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  5f8841:	d9 c9                                           	fxch   st(1)
  5f8843:	0f b6 d0                                        	movzx  edx,al
  5f8846:	c1 e8 18                                        	shr    eax,0x18
  5f8849:	85 c0                                           	test   eax,eax
  5f884b:	d9 9c 24 b0 00 00 00                            	fstp   DWORD PTR [esp+0xb0]
  5f8852:	db 44 24 2c                                     	fild   DWORD PTR [esp+0x2c]
  5f8856:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  5f885a:	89 44 24 7c                                     	mov    DWORD PTR [esp+0x7c],eax
  5f885e:	d8 c9                                           	fmul   st,st(1)
  5f8860:	d9 9c 24 b4 00 00 00                            	fstp   DWORD PTR [esp+0xb4]
  5f8867:	db 44 24 2c                                     	fild   DWORD PTR [esp+0x2c]
  5f886b:	d8 c9                                           	fmul   st,st(1)
  5f886d:	d9 9c 24 a4 00 00 00                            	fstp   DWORD PTR [esp+0xa4]
  5f8874:	db 44 24 7c                                     	fild   DWORD PTR [esp+0x7c]
  5f8878:	7d 06                                           	jge    0x5f8880
  5f887a:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  5f8880:	0f 57 c0                                        	xorps  xmm0,xmm0
  5f8883:	de c9                                           	fmulp  st(1),st
  5f8885:	f3 0f 10 2d f8 98 f9 00                         	movss  xmm5,DWORD PTR ds:0xf998f8
  5f888d:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  5f8890:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  5f8895:	d9 5c 24 7c                                     	fstp   DWORD PTR [esp+0x7c]
  5f8899:	8a 5d 24                                        	mov    bl,BYTE PTR [ebp+0x24]
  5f889c:	84 db                                           	test   bl,bl
  5f889e:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  5f88a4:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  5f88aa:	f3 0f 11 6c 24 38                               	movss  DWORD PTR [esp+0x38],xmm5
  5f88b0:	f3 0f 11 6c 24 34                               	movss  DWORD PTR [esp+0x34],xmm5
  5f88b6:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
  5f88bb:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  5f88c1:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  5f88c7:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  5f88cb:	f3 0f 11 6c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm5
  5f88d1:	f3 0f 11 6c 24 38                               	movss  DWORD PTR [esp+0x38],xmm5
  5f88d7:	0f 28 5c 24 30                                  	movaps xmm3,XMMWORD PTR [esp+0x30]
  5f88dc:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  5f88e2:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  5f88e8:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  5f88ee:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  5f88f3:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  5f88f9:	0f 28 7c 24 30                                  	movaps xmm7,XMMWORD PTR [esp+0x30]
  5f88fe:	f3 0f 10 40 0c                                  	movss  xmm0,DWORD PTR [eax+0xc]
  5f8903:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  5f8909:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  5f890f:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  5f8915:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [esp+0x30],xmm1
  5f891b:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  5f8920:	0f 29 94 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm2
  5f8928:	0f 29 9c 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm3
  5f8930:	0f 29 bc 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm7
  5f8938:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  5f8940:	74 16                                           	je     0x5f8958
  5f8942:	0f 28 fa                                        	movaps xmm7,xmm2
  5f8945:	0f 28 c3                                        	movaps xmm0,xmm3
  5f8948:	0f 29 bc 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm7
  5f8950:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  5f8958:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  5f895b:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  5f895e:	d9 c0                                           	fld    st(0)
  5f8960:	8b 4f 70                                        	mov    ecx,DWORD PTR [edi+0x70]
  5f8963:	d9 fe                                           	fsin
  5f8965:	f3 0f 10 72 08                                  	movss  xmm6,DWORD PTR [edx+0x8]
  5f896a:	f3 0f 10 0d c8 f8 06 01                         	movss  xmm1,DWORD PTR ds:0x106f8c8
  5f8972:	f3 0f 10 25 18 b2 fa 00                         	movss  xmm4,DWORD PTR ds:0xfab218
  5f897a:	f3 0f 10 12                                     	movss  xmm2,DWORD PTR [edx]
  5f897e:	8d 0c 49                                        	lea    ecx,[ecx+ecx*2]
  5f8981:	f3 0f 11 b4 24 b8 00 00 00                      	movss  DWORD PTR [esp+0xb8],xmm6
  5f898a:	f3 0f 11 74 24 68                               	movss  DWORD PTR [esp+0x68],xmm6
  5f8990:	f3 0f 10 72 0c                                  	movss  xmm6,DWORD PTR [edx+0xc]
  5f8995:	c1 e1 05                                        	shl    ecx,0x5
  5f8998:	03 4f 60                                        	add    ecx,DWORD PTR [edi+0x60]
  5f899b:	f3 0f 11 4c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm1
  5f89a1:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  5f89a7:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  5f89ad:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [esp+0x30],xmm1
  5f89b3:	0f 28 5c 24 30                                  	movaps xmm3,XMMWORD PTR [esp+0x30]
  5f89b8:	f3 0f 10 4a 04                                  	movss  xmm1,DWORD PTR [edx+0x4]
  5f89bd:	f3 0f 11 b4 24 ac 00 00 00                      	movss  DWORD PTR [esp+0xac],xmm6
  5f89c6:	f3 0f 11 74 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm6
  5f89cc:	f3 0f 10 74 24 68                               	movss  xmm6,DWORD PTR [esp+0x68]
  5f89d2:	0f 2f d6                                        	comiss xmm2,xmm6
  5f89d5:	f3 0f 11 64 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm4
  5f89db:	f3 0f 11 64 24 38                               	movss  DWORD PTR [esp+0x38],xmm4
  5f89e1:	f3 0f 11 64 24 34                               	movss  DWORD PTR [esp+0x34],xmm4
  5f89e7:	f3 0f 11 64 24 30                               	movss  DWORD PTR [esp+0x30],xmm4
  5f89ed:	f3 0f 11 ac 24 9c 00 00 00                      	movss  DWORD PTR [esp+0x9c],xmm5
  5f89f6:	f3 0f 11 ac 24 98 00 00 00                      	movss  DWORD PTR [esp+0x98],xmm5
  5f89ff:	f3 0f 11 ac 24 94 00 00 00                      	movss  DWORD PTR [esp+0x94],xmm5
  5f8a08:	f3 0f 11 ac 24 90 00 00 00                      	movss  DWORD PTR [esp+0x90],xmm5
  5f8a11:	f3 0f 11 94 24 a0 00 00 00                      	movss  DWORD PTR [esp+0xa0],xmm2
  5f8a1a:	f3 0f 11 8c 24 bc 00 00 00                      	movss  DWORD PTR [esp+0xbc],xmm1
  5f8a23:	d9 5c 24 5c                                     	fstp   DWORD PTR [esp+0x5c]
  5f8a27:	d9 ff                                           	fcos
  5f8a29:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
  5f8a2d:	76 1b                                           	jbe    0x5f8a4a
  5f8a2f:	f3 0f 11 94 24 a8 00 00 00                      	movss  DWORD PTR [esp+0xa8],xmm2
  5f8a38:	0f 28 d6                                        	movaps xmm2,xmm6
  5f8a3b:	f3 0f 10 b4 24 a8 00 00 00                      	movss  xmm6,DWORD PTR [esp+0xa8]
  5f8a44:	f3 0f 11 74 24 68                               	movss  DWORD PTR [esp+0x68],xmm6
  5f8a4a:	0f 2f 4c 24 6c                                  	comiss xmm1,DWORD PTR [esp+0x6c]
  5f8a4f:	76 0f                                           	jbe    0x5f8a60
  5f8a51:	0f 28 f1                                        	movaps xmm6,xmm1
  5f8a54:	f3 0f 10 4c 24 6c                               	movss  xmm1,DWORD PTR [esp+0x6c]
  5f8a5a:	f3 0f 11 74 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm6
  5f8a60:	80 7d 18 00                                     	cmp    BYTE PTR [ebp+0x18],0x0
  5f8a64:	f3 0f 10 74 24 68                               	movss  xmm6,DWORD PTR [esp+0x68]
  5f8a6a:	f3 0f 11 54 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm2
  5f8a70:	f3 0f 11 54 24 10                               	movss  DWORD PTR [esp+0x10],xmm2
  5f8a76:	f3 0f 10 54 24 6c                               	movss  xmm2,DWORD PTR [esp+0x6c]
  5f8a7c:	f3 0f 11 74 24 18                               	movss  DWORD PTR [esp+0x18],xmm6
  5f8a82:	f3 0f 11 74 24 14                               	movss  DWORD PTR [esp+0x14],xmm6
  5f8a88:	0f 28 74 24 10                                  	movaps xmm6,XMMWORD PTR [esp+0x10]
  5f8a8d:	f3 0f 11 54 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm2
  5f8a93:	f3 0f 11 54 24 18                               	movss  DWORD PTR [esp+0x18],xmm2
  5f8a99:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5f8a9f:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
  5f8aa5:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  5f8aaa:	0f 29 b4 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm6
  5f8ab2:	0f 29 54 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm2
  5f8ab7:	0f 84 3e 01 00 00                               	je     0x5f8bfb
  5f8abd:	80 7d 1c 00                                     	cmp    BYTE PTR [ebp+0x1c],0x0
  5f8ac1:	0f 28 4c 24 30                                  	movaps xmm1,XMMWORD PTR [esp+0x30]
  5f8ac6:	0f 29 7c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm7
  5f8acb:	0f 29 4c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm1
  5f8ad0:	f3 0f 10 54 24 40                               	movss  xmm2,DWORD PTR [esp+0x40]
  5f8ad6:	f3 0f 11 54 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm2
  5f8adc:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  5f8ae1:	0f 29 54 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm2
  5f8ae6:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  5f8aea:	0f 29 54 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm2
  5f8aef:	0f 28 94 24 90 00 00 00                         	movaps xmm2,XMMWORD PTR [esp+0x90]
  5f8af7:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  5f8afb:	0f 28 5c 24 10                                  	movaps xmm3,XMMWORD PTR [esp+0x10]
  5f8b00:	0f 29 5c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm3
  5f8b05:	0f 29 54 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm2
  5f8b0a:	f3 0f 10 5c 24 40                               	movss  xmm3,DWORD PTR [esp+0x40]
  5f8b10:	f3 0f 11 5c 24 18                               	movss  DWORD PTR [esp+0x18],xmm3
  5f8b16:	0f 28 5c 24 10                                  	movaps xmm3,XMMWORD PTR [esp+0x10]
  5f8b1b:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
  5f8b20:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  5f8b24:	0f 29 5c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm3
  5f8b29:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5f8b2d:	0f 28 5c 24 10                                  	movaps xmm3,XMMWORD PTR [esp+0x10]
  5f8b32:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  5f8b37:	0f 29 54 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm2
  5f8b3c:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  5f8b42:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  5f8b48:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5f8b4d:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  5f8b52:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  5f8b56:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  5f8b5b:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  5f8b5f:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5f8b64:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  5f8b69:	0f 29 4c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm1
  5f8b6e:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [esp+0x40]
  5f8b74:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5f8b7a:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5f8b7f:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  5f8b84:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  5f8b88:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  5f8b8d:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  5f8b91:	0f 28 7c 24 10                                  	movaps xmm7,XMMWORD PTR [esp+0x10]
  5f8b96:	0f 29 9c 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm3
  5f8b9e:	0f 29 bc 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm7
  5f8ba6:	0f 84 19 04 00 00                               	je     0x5f8fc5
  5f8bac:	f3 0f 10 41 50                                  	movss  xmm0,DWORD PTR [ecx+0x50]
  5f8bb1:	f3 0f 10 49 40                                  	movss  xmm1,DWORD PTR [ecx+0x40]
  5f8bb6:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  5f8bba:	0f 58 84 24 d0 00 00 00                         	addps  xmm0,XMMWORD PTR [esp+0xd0]
  5f8bc2:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8bc6:	0f 5e c1                                        	divps  xmm0,xmm1
  5f8bc9:	f3 0f 10 49 44                                  	movss  xmm1,DWORD PTR [ecx+0x44]
  5f8bce:	0f 29 84 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm0
  5f8bd6:	f3 0f 10 41 54                                  	movss  xmm0,DWORD PTR [ecx+0x54]
  5f8bdb:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  5f8bdf:	0f 58 84 24 f0 00 00 00                         	addps  xmm0,XMMWORD PTR [esp+0xf0]
  5f8be7:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8beb:	0f 5e c1                                        	divps  xmm0,xmm1
  5f8bee:	0f 29 84 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm0
  5f8bf6:	e9 ca 03 00 00                                  	jmp    0x5f8fc5
  5f8bfb:	80 7d 1c 00                                     	cmp    BYTE PTR [ebp+0x1c],0x0
  5f8bff:	0f 84 cc 02 00 00                               	je     0x5f8ed1
  5f8c05:	84 db                                           	test   bl,bl
  5f8c07:	0f 84 6c 01 00 00                               	je     0x5f8d79
  5f8c0d:	f3 0f 10 60 08                                  	movss  xmm4,DWORD PTR [eax+0x8]
  5f8c12:	f3 0f 10 3d b4 b5 f9 00                         	movss  xmm7,DWORD PTR ds:0xf9b5b4
  5f8c1a:	f3 0f 10 68 0c                                  	movss  xmm5,DWORD PTR [eax+0xc]
  5f8c1f:	0f 28 c2                                        	movaps xmm0,xmm2
  5f8c22:	0f 59 c3                                        	mulps  xmm0,xmm3
  5f8c25:	0f 28 c8                                        	movaps xmm1,xmm0
  5f8c28:	0f c6 c8 0e                                     	shufps xmm1,xmm0,0xe
  5f8c2c:	0f 58 c8                                        	addps  xmm1,xmm0
  5f8c2f:	0f 28 c1                                        	movaps xmm0,xmm1
  5f8c32:	0f c6 c1 01                                     	shufps xmm0,xmm1,0x1
  5f8c36:	0f 58 c1                                        	addps  xmm0,xmm1
  5f8c39:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  5f8c3d:	0f 28 ce                                        	movaps xmm1,xmm6
  5f8c40:	0f 59 cb                                        	mulps  xmm1,xmm3
  5f8c43:	0f 28 d9                                        	movaps xmm3,xmm1
  5f8c46:	0f c6 d9 0e                                     	shufps xmm3,xmm1,0xe
  5f8c4a:	0f 58 d9                                        	addps  xmm3,xmm1
  5f8c4d:	0f 28 cb                                        	movaps xmm1,xmm3
  5f8c50:	0f c6 cb 01                                     	shufps xmm1,xmm3,0x1
  5f8c54:	0f 58 cb                                        	addps  xmm1,xmm3
  5f8c57:	f3 0f 10 58 04                                  	movss  xmm3,DWORD PTR [eax+0x4]
  5f8c5c:	f3 0f 58 dd                                     	addss  xmm3,xmm5
  5f8c60:	f3 0f 59 df                                     	mulss  xmm3,xmm7
  5f8c64:	f3 0f 11 5c 24 14                               	movss  DWORD PTR [esp+0x14],xmm3
  5f8c6a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8c6e:	0f c6 c8 10                                     	shufps xmm1,xmm0,0x10
  5f8c72:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  5f8c76:	f3 0f 58 c4                                     	addss  xmm0,xmm4
  5f8c7a:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  5f8c7e:	f3 0f 10 7c 24 2c                               	movss  xmm7,DWORD PTR [esp+0x2c]
  5f8c84:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5f8c8a:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  5f8c90:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5f8c96:	0f 28 5c 24 10                                  	movaps xmm3,XMMWORD PTR [esp+0x10]
  5f8c9b:	0f 28 c3                                        	movaps xmm0,xmm3
  5f8c9e:	0f c6 c3 00                                     	shufps xmm0,xmm3,0x0
  5f8ca2:	0f 5c f0                                        	subps  xmm6,xmm0
  5f8ca5:	0f c6 db 55                                     	shufps xmm3,xmm3,0x55
  5f8ca9:	0f 5c d3                                        	subps  xmm2,xmm3
  5f8cac:	f3 0f 10 5c 24 5c                               	movss  xmm3,DWORD PTR [esp+0x5c]
  5f8cb2:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  5f8cb6:	0f 28 c6                                        	movaps xmm0,xmm6
  5f8cb9:	0f c6 ff 00                                     	shufps xmm7,xmm7,0x0
  5f8cbd:	0f 29 7c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm7
  5f8cc2:	0f 57 f6                                        	xorps  xmm6,xmm6
  5f8cc5:	0f 5c f0                                        	subps  xmm6,xmm0
  5f8cc8:	0f 59 c7                                        	mulps  xmm0,xmm7
  5f8ccb:	0f 59 f3                                        	mulps  xmm6,xmm3
  5f8cce:	0f 28 fa                                        	movaps xmm7,xmm2
  5f8cd1:	0f 59 54 24 40                                  	mulps  xmm2,XMMWORD PTR [esp+0x40]
  5f8cd6:	0f 59 fb                                        	mulps  xmm7,xmm3
  5f8cd9:	f3 0f 10 9c 24 b8 00 00 00                      	movss  xmm3,DWORD PTR [esp+0xb8]
  5f8ce2:	f3 0f 5c 9c 24 a0 00 00 00                      	subss  xmm3,DWORD PTR [esp+0xa0]
  5f8ceb:	0f 58 c7                                        	addps  xmm0,xmm7
  5f8cee:	f3 0f 10 38                                     	movss  xmm7,DWORD PTR [eax]
  5f8cf2:	f3 0f 5c e7                                     	subss  xmm4,xmm7
  5f8cf6:	0f 28 bc 24 80 00 00 00                         	movaps xmm7,XMMWORD PTR [esp+0x80]
  5f8cfe:	f3 0f 5e dc                                     	divss  xmm3,xmm4
  5f8d02:	f3 0f 10 25 18 b2 fa 00                         	movss  xmm4,DWORD PTR ds:0xfab218
  5f8d0a:	f3 0f 10 db                                     	movss  xmm3,xmm3
  5f8d0e:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  5f8d12:	0f 59 c3                                        	mulps  xmm0,xmm3
  5f8d15:	0f c6 c9 08                                     	shufps xmm1,xmm1,0x8
  5f8d19:	0f 28 d9                                        	movaps xmm3,xmm1
  5f8d1c:	0f c6 d9 00                                     	shufps xmm3,xmm1,0x0
  5f8d20:	0f 58 c3                                        	addps  xmm0,xmm3
  5f8d23:	f3 0f 10 58 04                                  	movss  xmm3,DWORD PTR [eax+0x4]
  5f8d28:	0f 29 84 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm0
  5f8d30:	f3 0f 10 84 24 ac 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xac]
  5f8d39:	f3 0f 5c 84 24 bc 00 00 00                      	subss  xmm0,DWORD PTR [esp+0xbc]
  5f8d42:	f3 0f 5c eb                                     	subss  xmm5,xmm3
  5f8d46:	f3 0f 5e c5                                     	divss  xmm0,xmm5
  5f8d4a:	f3 0f 10 2d f8 98 f9 00                         	movss  xmm5,DWORD PTR ds:0xf998f8
  5f8d52:	f3 0f 10 c0                                     	movss  xmm0,xmm0
  5f8d56:	0f 58 d6                                        	addps  xmm2,xmm6
  5f8d59:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  5f8d5d:	0f 59 d0                                        	mulps  xmm2,xmm0
  5f8d60:	0f 28 84 24 c0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xc0]
  5f8d68:	0f c6 c9 55                                     	shufps xmm1,xmm1,0x55
  5f8d6c:	0f 58 d1                                        	addps  xmm2,xmm1
  5f8d6f:	0f 29 54 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm2
  5f8d74:	e9 1a 01 00 00                                  	jmp    0x5f8e93
  5f8d79:	80 7d 20 00                                     	cmp    BYTE PTR [ebp+0x20],0x0
  5f8d7d:	74 5e                                           	je     0x5f8ddd
  5f8d7f:	f3 0f 10 4c 24 5c                               	movss  xmm1,DWORD PTR [esp+0x5c]
  5f8d85:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8d89:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
  5f8d8e:	f3 0f 10 4c 24 2c                               	movss  xmm1,DWORD PTR [esp+0x2c]
  5f8d94:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8d98:	0f 28 de                                        	movaps xmm3,xmm6
  5f8d9b:	0f 59 74 24 10                                  	mulps  xmm6,XMMWORD PTR [esp+0x10]
  5f8da0:	0f 59 d9                                        	mulps  xmm3,xmm1
  5f8da3:	0f 29 5c 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm3
  5f8da8:	0f 29 8c 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm1
  5f8db0:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
  5f8db5:	0f 28 da                                        	movaps xmm3,xmm2
  5f8db8:	0f 59 5c 24 10                                  	mulps  xmm3,XMMWORD PTR [esp+0x10]
  5f8dbd:	0f 59 94 24 e0 00 00 00                         	mulps  xmm2,XMMWORD PTR [esp+0xe0]
  5f8dc5:	0f 5c cb                                        	subps  xmm1,xmm3
  5f8dc8:	0f 58 d6                                        	addps  xmm2,xmm6
  5f8dcb:	0f 29 54 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm2
  5f8dd0:	0f 29 8c 24 00 01 00 00                         	movaps XMMWORD PTR [esp+0x100],xmm1
  5f8dd8:	e9 a6 00 00 00                                  	jmp    0x5f8e83
  5f8ddd:	0f 28 cb                                        	movaps xmm1,xmm3
  5f8de0:	0f 59 c8                                        	mulps  xmm1,xmm0
  5f8de3:	0f 28 d1                                        	movaps xmm2,xmm1
  5f8de6:	0f c6 d1 0e                                     	shufps xmm2,xmm1,0xe
  5f8dea:	0f 58 d1                                        	addps  xmm2,xmm1
  5f8ded:	0f 28 ca                                        	movaps xmm1,xmm2
  5f8df0:	0f c6 ca 01                                     	shufps xmm1,xmm2,0x1
  5f8df4:	0f 58 ca                                        	addps  xmm1,xmm2
  5f8df7:	0f 59 df                                        	mulps  xmm3,xmm7
  5f8dfa:	0f 28 e3                                        	movaps xmm4,xmm3
  5f8dfd:	0f c6 e3 0e                                     	shufps xmm4,xmm3,0xe
  5f8e01:	0f 58 e3                                        	addps  xmm4,xmm3
  5f8e04:	0f 28 d4                                        	movaps xmm2,xmm4
  5f8e07:	0f c6 d4 01                                     	shufps xmm2,xmm4,0x1
  5f8e0b:	0f 58 d4                                        	addps  xmm2,xmm4
  5f8e0e:	f3 0f 10 64 24 5c                               	movss  xmm4,DWORD PTR [esp+0x5c]
  5f8e14:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  5f8e18:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8e1c:	0f c6 d1 10                                     	shufps xmm2,xmm1,0x10
  5f8e20:	0f c6 d2 08                                     	shufps xmm2,xmm2,0x8
  5f8e24:	0f 28 da                                        	movaps xmm3,xmm2
  5f8e27:	0f c6 da 00                                     	shufps xmm3,xmm2,0x0
  5f8e2b:	0f 28 cf                                        	movaps xmm1,xmm7
  5f8e2e:	0f c6 d2 55                                     	shufps xmm2,xmm2,0x55
  5f8e32:	0f 5c c2                                        	subps  xmm0,xmm2
  5f8e35:	0f 29 54 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm2
  5f8e3a:	f3 0f 10 54 24 2c                               	movss  xmm2,DWORD PTR [esp+0x2c]
  5f8e40:	0f 28 f0                                        	movaps xmm6,xmm0
  5f8e43:	0f 5c cb                                        	subps  xmm1,xmm3
  5f8e46:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
  5f8e4a:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  5f8e4e:	0f 28 f9                                        	movaps xmm7,xmm1
  5f8e51:	0f 59 f4                                        	mulps  xmm6,xmm4
  5f8e54:	0f 59 fa                                        	mulps  xmm7,xmm2
  5f8e57:	0f 59 c2                                        	mulps  xmm0,xmm2
  5f8e5a:	0f 59 cc                                        	mulps  xmm1,xmm4
  5f8e5d:	f3 0f 10 25 18 b2 fa 00                         	movss  xmm4,DWORD PTR ds:0xfab218
  5f8e65:	0f 5c fe                                        	subps  xmm7,xmm6
  5f8e68:	0f 58 c1                                        	addps  xmm0,xmm1
  5f8e6b:	0f 58 44 24 40                                  	addps  xmm0,XMMWORD PTR [esp+0x40]
  5f8e70:	0f 58 fb                                        	addps  xmm7,xmm3
  5f8e73:	0f 29 bc 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm7
  5f8e7b:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
  5f8e83:	0f 29 bc 24 d0 00 00 00                         	movaps XMMWORD PTR [esp+0xd0],xmm7
  5f8e8b:	0f 29 84 24 f0 00 00 00                         	movaps XMMWORD PTR [esp+0xf0],xmm0
  5f8e93:	f3 0f 10 49 40                                  	movss  xmm1,DWORD PTR [ecx+0x40]
  5f8e98:	f3 0f 10 51 50                                  	movss  xmm2,DWORD PTR [ecx+0x50]
  5f8e9d:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8ea1:	0f 59 cf                                        	mulps  xmm1,xmm7
  5f8ea4:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  5f8ea8:	0f 5c ca                                        	subps  xmm1,xmm2
  5f8eab:	0f 28 f9                                        	movaps xmm7,xmm1
  5f8eae:	0f 29 bc 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm7
  5f8eb6:	f3 0f 10 49 44                                  	movss  xmm1,DWORD PTR [ecx+0x44]
  5f8ebb:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8ebf:	0f 59 c8                                        	mulps  xmm1,xmm0
  5f8ec2:	f3 0f 10 41 54                                  	movss  xmm0,DWORD PTR [ecx+0x54]
  5f8ec7:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  5f8ecb:	0f 5c c8                                        	subps  xmm1,xmm0
  5f8ece:	0f 28 c1                                        	movaps xmm0,xmm1
  5f8ed1:	84 db                                           	test   bl,bl
  5f8ed3:	f3 0f 10 0d 88 fd 03 01                         	movss  xmm1,DWORD PTR ds:0x103fd88
  5f8edb:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f8edf:	0f 59 f9                                        	mulps  xmm7,xmm1
  5f8ee2:	f3 0f 10 d5                                     	movss  xmm2,xmm5
  5f8ee6:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  5f8eea:	0f 5c fa                                        	subps  xmm7,xmm2
  5f8eed:	0f 29 bc 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm7
  5f8ef5:	0f 59 c1                                        	mulps  xmm0,xmm1
  5f8ef8:	0f 5c c2                                        	subps  xmm0,xmm2
  5f8efb:	0f 57 ff                                        	xorps  xmm7,xmm7
  5f8efe:	0f 5c f8                                        	subps  xmm7,xmm0
  5f8f01:	0f 85 b6 00 00 00                               	jne    0x5f8fbd
  5f8f07:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
  5f8f0c:	0f 28 9c 24 90 00 00 00                         	movaps xmm3,XMMWORD PTR [esp+0x90]
  5f8f14:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
  5f8f1c:	0f 5f c2                                        	maxps  xmm0,xmm2
  5f8f1f:	0f 5d c3                                        	minps  xmm0,xmm3
  5f8f22:	0f 28 cf                                        	movaps xmm1,xmm7
  5f8f25:	0f 5f ca                                        	maxps  xmm1,xmm2
  5f8f28:	0f 28 f0                                        	movaps xmm6,xmm0
  5f8f2b:	0f 5c f2                                        	subps  xmm6,xmm2
  5f8f2e:	f3 0f 10 d4                                     	movss  xmm2,xmm4
  5f8f32:	0f 5d cb                                        	minps  xmm1,xmm3
  5f8f35:	f3 0f 10 1d cc 70 fe 00                         	movss  xmm3,DWORD PTR ds:0xfe70cc
  5f8f3d:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  5f8f41:	0f 28 e6                                        	movaps xmm4,xmm6
  5f8f44:	0f 59 e2                                        	mulps  xmm4,xmm2
  5f8f47:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
  5f8f4b:	0f 5f e6                                        	maxps  xmm4,xmm6
  5f8f4e:	0f c2 e3 02                                     	cmpleps xmm4,xmm3
  5f8f52:	0f 50 c4                                        	movmskps eax,xmm4
  5f8f55:	83 f8 0f                                        	cmp    eax,0xf
  5f8f58:	74 58                                           	je     0x5f8fb2
  5f8f5a:	0f 28 a4 24 90 00 00 00                         	movaps xmm4,XMMWORD PTR [esp+0x90]
  5f8f62:	0f 5c c4                                        	subps  xmm0,xmm4
  5f8f65:	0f 28 f0                                        	movaps xmm6,xmm0
  5f8f68:	0f 59 f2                                        	mulps  xmm6,xmm2
  5f8f6b:	0f 5f f0                                        	maxps  xmm6,xmm0
  5f8f6e:	0f c2 f3 02                                     	cmpleps xmm6,xmm3
  5f8f72:	0f 50 ce                                        	movmskps ecx,xmm6
  5f8f75:	83 f9 0f                                        	cmp    ecx,0xf
  5f8f78:	74 38                                           	je     0x5f8fb2
  5f8f7a:	0f 28 74 24 30                                  	movaps xmm6,XMMWORD PTR [esp+0x30]
  5f8f7f:	0f 28 c1                                        	movaps xmm0,xmm1
  5f8f82:	0f 5c c6                                        	subps  xmm0,xmm6
  5f8f85:	0f 28 f0                                        	movaps xmm6,xmm0
  5f8f88:	0f 59 f2                                        	mulps  xmm6,xmm2
  5f8f8b:	0f 5f f0                                        	maxps  xmm6,xmm0
  5f8f8e:	0f c2 f3 02                                     	cmpleps xmm6,xmm3
  5f8f92:	0f 50 d6                                        	movmskps edx,xmm6
  5f8f95:	83 fa 0f                                        	cmp    edx,0xf
  5f8f98:	74 18                                           	je     0x5f8fb2
  5f8f9a:	0f 5c cc                                        	subps  xmm1,xmm4
  5f8f9d:	0f 28 c1                                        	movaps xmm0,xmm1
  5f8fa0:	0f 59 c2                                        	mulps  xmm0,xmm2
  5f8fa3:	0f 5f c1                                        	maxps  xmm0,xmm1
  5f8fa6:	0f c2 c3 02                                     	cmpleps xmm0,xmm3
  5f8faa:	0f 50 c0                                        	movmskps eax,xmm0
  5f8fad:	83 f8 0f                                        	cmp    eax,0xf
  5f8fb0:	75 0b                                           	jne    0x5f8fbd
  5f8fb2:	32 c0                                           	xor    al,al
  5f8fb4:	5f                                              	pop    edi
  5f8fb5:	5e                                              	pop    esi
  5f8fb6:	5b                                              	pop    ebx
  5f8fb7:	8b e5                                           	mov    esp,ebp
  5f8fb9:	5d                                              	pop    ebp
  5f8fba:	c2 20 00                                        	ret    0x20
  5f8fbd:	0f 28 9c 24 80 00 00 00                         	movaps xmm3,XMMWORD PTR [esp+0x80]
  5f8fc5:	f3 0f 2a 4f 08                                  	cvtsi2ss xmm1,DWORD PTR [edi+0x8]
  5f8fca:	f3 0f 10 a4 24 b4 00 00 00                      	movss  xmm4,DWORD PTR [esp+0xb4]
  5f8fd3:	f3 0f 10 b4 24 a4 00 00 00                      	movss  xmm6,DWORD PTR [esp+0xa4]
  5f8fdc:	0f 28 c5                                        	movaps xmm0,xmm5
  5f8fdf:	f3 0f 5e c1                                     	divss  xmm0,xmm1
  5f8fe3:	b8 80 f9 1c 01                                  	mov    eax,0x11cf980
  5f8fe8:	33 c9                                           	xor    ecx,ecx
  5f8fea:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  5f8fee:	0f 5c d8                                        	subps  xmm3,xmm0
  5f8ff1:	0f 58 f8                                        	addps  xmm7,xmm0
  5f8ff4:	0f 29 9c 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm3
  5f8ffc:	f3 0f 10 9c 24 b0 00 00 00                      	movss  xmm3,DWORD PTR [esp+0xb0]
  5f9005:	0f 29 bc 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm7
  5f900d:	f3 0f 10 7c 24 7c                               	movss  xmm7,DWORD PTR [esp+0x7c]
  5f9013:	eb 0b                                           	jmp    0x5f9020
  5f9015:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  5f901c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  5f9020:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
  5f9023:	f3 0f 10 8c 0c 80 00 00 00                      	movss  xmm1,DWORD PTR [esp+ecx*1+0x80]
  5f902c:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f9030:	0f 28 c2                                        	movaps xmm0,xmm2
  5f9033:	0f c6 c1 05                                     	shufps xmm0,xmm1,0x5
  5f9037:	0f c6 c2 e2                                     	shufps xmm0,xmm2,0xe2
  5f903b:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f903e:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
  5f9041:	f3 0f 10 8c 0c c0 00 00 00                      	movss  xmm1,DWORD PTR [esp+ecx*1+0xc0]
  5f904a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f904e:	0f 28 c2                                        	movaps xmm0,xmm2
  5f9051:	0f c6 c1 00                                     	shufps xmm0,xmm1,0x0
  5f9055:	0f c6 c2 e8                                     	shufps xmm0,xmm2,0xe8
  5f9059:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f905c:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  5f905f:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  5f9064:	0f 57 c0                                        	xorps  xmm0,xmm0
  5f9067:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  5f906d:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5f9072:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f9075:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  5f9078:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  5f907d:	83 c0 10                                        	add    eax,0x10
  5f9080:	f3 0f 11 6c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm5
  5f9086:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  5f908b:	0f 29 40 f0                                     	movaps XMMWORD PTR [eax-0x10],xmm0
  5f908f:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  5f9092:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
  5f909a:	f3 0f 11 9c 24 90 00 00 00                      	movss  DWORD PTR [esp+0x90],xmm3
  5f90a3:	0f 28 84 24 90 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x90]
  5f90ab:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f90ae:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  5f90b1:	0f 29 84 24 10 01 00 00                         	movaps XMMWORD PTR [esp+0x110],xmm0
  5f90b9:	f3 0f 11 a4 24 14 01 00 00                      	movss  DWORD PTR [esp+0x114],xmm4
  5f90c2:	0f 28 84 24 10 01 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x110]
  5f90ca:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f90cd:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  5f90d0:	0f 29 84 24 e0 00 00 00                         	movaps XMMWORD PTR [esp+0xe0],xmm0
  5f90d8:	83 c0 10                                        	add    eax,0x10
  5f90db:	f3 0f 11 b4 24 e8 00 00 00                      	movss  DWORD PTR [esp+0xe8],xmm6
  5f90e4:	0f 28 84 24 e0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xe0]
  5f90ec:	0f 29 40 f0                                     	movaps XMMWORD PTR [eax-0x10],xmm0
  5f90f0:	0f 28 40 f0                                     	movaps xmm0,XMMWORD PTR [eax-0x10]
  5f90f4:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  5f90f9:	f3 0f 11 7c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm7
  5f90ff:	0f 28 44 24 40                                  	movaps xmm0,XMMWORD PTR [esp+0x40]
  5f9104:	0f 29 40 f0                                     	movaps XMMWORD PTR [eax-0x10],xmm0
  5f9108:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
  5f910b:	f3 0f 10 8c 0c 00 01 00 00                      	movss  xmm1,DWORD PTR [esp+ecx*1+0x100]
  5f9114:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f9118:	0f 28 c2                                        	movaps xmm0,xmm2
  5f911b:	0f c6 c1 05                                     	shufps xmm0,xmm1,0x5
  5f911f:	0f c6 c2 e2                                     	shufps xmm0,xmm2,0xe2
  5f9123:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f9126:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
  5f9129:	f3 0f 10 4c 0c 60                               	movss  xmm1,DWORD PTR [esp+ecx*1+0x60]
  5f912f:	0f 28 c2                                        	movaps xmm0,xmm2
  5f9132:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f9136:	0f c6 c1 00                                     	shufps xmm0,xmm1,0x0
  5f913a:	0f c6 c2 e8                                     	shufps xmm0,xmm2,0xe8
  5f913e:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f9141:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  5f9144:	f3 0f 10 8c 0c d0 00 00 00                      	movss  xmm1,DWORD PTR [esp+ecx*1+0xd0]
  5f914d:	0f 28 d0                                        	movaps xmm2,xmm0
  5f9150:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f9154:	0f c6 d1 0f                                     	shufps xmm2,xmm1,0xf
  5f9158:	0f c6 c2 24                                     	shufps xmm0,xmm2,0x24
  5f915c:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f915f:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  5f9162:	f3 0f 10 8c 0c f0 00 00 00                      	movss  xmm1,DWORD PTR [esp+ecx*1+0xf0]
  5f916b:	0f 28 d0                                        	movaps xmm2,xmm0
  5f916e:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  5f9172:	0f c6 d1 0a                                     	shufps xmm2,xmm1,0xa
  5f9176:	0f c6 c2 84                                     	shufps xmm0,xmm2,0x84
  5f917a:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  5f917d:	83 c1 04                                        	add    ecx,0x4
  5f9180:	83 c0 10                                        	add    eax,0x10
  5f9183:	83 f9 10                                        	cmp    ecx,0x10
  5f9186:	0f 8c 94 fe ff ff                               	jl     0x5f9020
  5f918c:	5f                                              	pop    edi
  5f918d:	5e                                              	pop    esi
  5f918e:	b0 01                                           	mov    al,0x1
  5f9190:	5b                                              	pop    ebx
  5f9191:	8b e5                                           	mov    esp,ebp
  5f9193:	5d                                              	pop    ebp
  5f9194:	c2 20 00                                        	ret    0x20
