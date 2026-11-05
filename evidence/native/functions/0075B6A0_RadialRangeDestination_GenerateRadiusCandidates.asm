# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0075b6a0, 0x0075beea); analyst name RadialRangeDestination_GenerateRadiusCandidates.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0075b6a0 <.text+0x35a6a0>:
  75b6a0:	55                   	push   ebp
  75b6a1:	8b ec                	mov    ebp,esp
  75b6a3:	83 e4 f0             	and    esp,0xfffffff0
  75b6a6:	81 ec 74 02 00 00    	sub    esp,0x274
  75b6ac:	a1 a4 5b 1d 01       	mov    eax,ds:0x11d5ba4
  75b6b1:	a8 01                	test   al,0x1
  75b6b3:	53                   	push   ebx
  75b6b4:	8b d1                	mov    edx,ecx
  75b6b6:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  75b6bc:	56                   	push   esi
  75b6bd:	57                   	push   edi
  75b6be:	89 94 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],edx
  75b6c5:	89 4c 24 3c          	mov    DWORD PTR [esp+0x3c],ecx
  75b6c9:	75 18                	jne    0x75b6e3
  75b6cb:	f3 0f 10 05 20 24 fc 00 	movss  xmm0,DWORD PTR ds:0xfc2420
  75b6d3:	83 c8 01             	or     eax,0x1
  75b6d6:	a3 a4 5b 1d 01       	mov    ds:0x11d5ba4,eax
  75b6db:	f3 0f 11 05 a0 5b 1d 01 	movss  DWORD PTR ds:0x11d5ba0,xmm0
  75b6e3:	a8 02                	test   al,0x2
  75b6e5:	0f 57 c0             	xorps  xmm0,xmm0
  75b6e8:	75 34                	jne    0x75b71e
  75b6ea:	f3 0f 10 0d b4 b5 f9 00 	movss  xmm1,DWORD PTR ds:0xf9b5b4
  75b6f2:	83 c8 02             	or     eax,0x2
  75b6f5:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  75b6fb:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  75b701:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  75b707:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  75b70d:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  75b712:	a3 a4 5b 1d 01       	mov    ds:0x11d5ba4,eax
  75b717:	0f 29 0d 90 5b 1d 01 	movaps XMMWORD PTR ds:0x11d5b90,xmm1
  75b71e:	d9 45 24             	fld    DWORD PTR [ebp+0x24]
  75b721:	c7 84 24 98 00 00 00 01 00 00 00 	mov    DWORD PTR [esp+0x98],0x1
  75b72c:	d8 65 20             	fsub   DWORD PTR [ebp+0x20]
  75b72f:	d9 05 a0 5b 1d 01    	fld    DWORD PTR ds:0x11d5ba0
  75b735:	d9 7c 24 1c          	fnstcw WORD PTR [esp+0x1c]
  75b739:	d8 c9                	fmul   st,st(1)
  75b73b:	0f b7 44 24 1c       	movzx  eax,WORD PTR [esp+0x1c]
  75b740:	0d 00 0c 00 00       	or     eax,0xc00
  75b745:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  75b749:	d8 4d 18             	fmul   DWORD PTR [ebp+0x18]
  75b74c:	d8 0d a8 51 00 01    	fmul   DWORD PTR ds:0x10051a8
  75b752:	d8 72 6c             	fdiv   DWORD PTR [edx+0x6c]
  75b755:	d8 05 b4 b5 f9 00    	fadd   DWORD PTR ds:0xf9b5b4
  75b75b:	d9 6c 24 34          	fldcw  WORD PTR [esp+0x34]
  75b75f:	df 7c 24 48          	fistp  QWORD PTR [esp+0x48]
  75b763:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  75b767:	89 84 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],eax
  75b76e:	83 f8 01             	cmp    eax,0x1
  75b771:	d9 6c 24 1c          	fldcw  WORD PTR [esp+0x1c]
  75b775:	8d 84 24 9c 00 00 00 	lea    eax,[esp+0x9c]
  75b77c:	77 07                	ja     0x75b785
  75b77e:	8d 84 24 98 00 00 00 	lea    eax,[esp+0x98]
  75b785:	8b 00                	mov    eax,DWORD PTR [eax]
  75b787:	83 f8 01             	cmp    eax,0x1
  75b78a:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  75b78e:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  75b794:	76 1d                	jbe    0x75b7b3
  75b796:	8d 50 ff             	lea    edx,[eax-0x1]
  75b799:	85 d2                	test   edx,edx
  75b79b:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  75b79f:	db 44 24 48          	fild   DWORD PTR [esp+0x48]
  75b7a3:	7d 06                	jge    0x75b7ab
  75b7a5:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  75b7ab:	de f9                	fdivp  st(1),st
  75b7ad:	d9 5c 24 40          	fstp   DWORD PTR [esp+0x40]
  75b7b1:	eb 02                	jmp    0x75b7b5
  75b7b3:	dd d8                	fstp   st(0)
  75b7b5:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  75b7bd:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  75b7c0:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  75b7c6:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  75b7cc:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  75b7d2:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  75b7d8:	0f 28 54 24 20       	movaps xmm2,XMMWORD PTR [esp+0x20]
  75b7dd:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  75b7e3:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  75b7e9:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  75b7ef:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  75b7f5:	0f 29 94 24 b0 01 00 00 	movaps XMMWORD PTR [esp+0x1b0],xmm2
  75b7fd:	0f 28 54 24 20       	movaps xmm2,XMMWORD PTR [esp+0x20]
  75b802:	33 ff                	xor    edi,edi
  75b804:	3b c7                	cmp    eax,edi
  75b806:	0f 29 94 24 f0 00 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm2
  75b80e:	0f 28 12             	movaps xmm2,XMMWORD PTR [edx]
  75b811:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  75b814:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  75b81a:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  75b820:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  75b826:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  75b82c:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  75b831:	0f 29 94 24 20 02 00 00 	movaps XMMWORD PTR [esp+0x220],xmm2
  75b839:	0f 29 84 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  75b841:	0f 29 84 24 30 02 00 00 	movaps XMMWORD PTR [esp+0x230],xmm0
  75b849:	f3 0f 11 8c 24 40 02 00 00 	movss  DWORD PTR [esp+0x240],xmm1
  75b852:	89 94 24 44 02 00 00 	mov    DWORD PTR [esp+0x244],edx
  75b859:	89 bc 24 48 02 00 00 	mov    DWORD PTR [esp+0x248],edi
  75b860:	89 bc 24 4c 02 00 00 	mov    DWORD PTR [esp+0x24c],edi
  75b867:	89 bc 24 50 02 00 00 	mov    DWORD PTR [esp+0x250],edi
  75b86e:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  75b872:	0f 86 69 06 00 00    	jbe    0x75bee1
  75b878:	f3 0f 10 55 18       	movss  xmm2,DWORD PTR [ebp+0x18]
  75b87d:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  75b881:	0f 29 94 24 60 02 00 00 	movaps XMMWORD PTR [esp+0x260],xmm2
  75b889:	eb 21                	jmp    0x75b8ac
  75b88b:	eb 03                	jmp    0x75b890
  75b88d:	8d 49 00             	lea    ecx,[ecx+0x0]
  75b890:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  75b898:	0f 28 84 24 10 01 00 00 	movaps xmm0,XMMWORD PTR [esp+0x110]
  75b8a0:	0f 28 94 24 60 02 00 00 	movaps xmm2,XMMWORD PTR [esp+0x260]
  75b8a8:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  75b8ac:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  75b8b0:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
  75b8b4:	85 d2                	test   edx,edx
  75b8b6:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  75b8b9:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  75b8be:	f3 0f 11 4c 24 70    	movss  DWORD PTR [esp+0x70],xmm1
  75b8c4:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  75b8c8:	89 7c 24 78          	mov    DWORD PTR [esp+0x78],edi
  75b8cc:	89 7c 24 7c          	mov    DWORD PTR [esp+0x7c],edi
  75b8d0:	89 bc 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edi
  75b8d7:	7d 06                	jge    0x75b8df
  75b8d9:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  75b8df:	3b cf                	cmp    ecx,edi
  75b8e1:	d8 4c 24 40          	fmul   DWORD PTR [esp+0x40]
  75b8e5:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  75b8e8:	d8 45 20             	fadd   DWORD PTR [ebp+0x20]
  75b8eb:	d9 c0                	fld    st(0)
  75b8ed:	d9 fe                	fsin
  75b8ef:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  75b8f3:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  75b8f9:	d9 ff                	fcos
  75b8fb:	0f 28 8c 24 f0 00 00 00 	movaps xmm1,XMMWORD PTR [esp+0xf0]
  75b903:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75b907:	0f 59 c1             	mulps  xmm0,xmm1
  75b90a:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  75b90e:	f3 0f 10 4c 24 18    	movss  xmm1,DWORD PTR [esp+0x18]
  75b914:	0f 28 9c 24 b0 01 00 00 	movaps xmm3,XMMWORD PTR [esp+0x1b0]
  75b91c:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75b920:	0f 59 cb             	mulps  xmm1,xmm3
  75b923:	0f 58 c1             	addps  xmm0,xmm1
  75b926:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  75b929:	0f 59 c2             	mulps  xmm0,xmm2
  75b92c:	0f 58 c1             	addps  xmm0,xmm1
  75b92f:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  75b934:	0f 84 5f 01 00 00    	je     0x75ba99
  75b93a:	0f 29 84 24 30 01 00 00 	movaps XMMWORD PTR [esp+0x130],xmm0
  75b942:	d9 84 24 38 01 00 00 	fld    DWORD PTR [esp+0x138]
  75b949:	83 ec 08             	sub    esp,0x8
  75b94c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75b950:	0f 29 84 24 08 02 00 00 	movaps XMMWORD PTR [esp+0x208],xmm0
  75b958:	d9 84 24 08 02 00 00 	fld    DWORD PTR [esp+0x208]
  75b95f:	d9 1c 24             	fstp   DWORD PTR [esp]
  75b962:	e8 69 ce 50 00       	call   0xc687d0
  75b967:	8b f0                	mov    esi,eax
  75b969:	3b f7                	cmp    esi,edi
  75b96b:	0f 84 23 01 00 00    	je     0x75ba94
  75b971:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  75b979:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  75b97d:	51                   	push   ecx
  75b97e:	8d 54 24 54          	lea    edx,[esp+0x54]
  75b982:	52                   	push   edx
  75b983:	56                   	push   esi
  75b984:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  75b98a:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  75b990:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  75b994:	e8 27 0f 38 00       	call   0xadc8c0
  75b999:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  75b99d:	83 c4 0c             	add    esp,0xc
  75b9a0:	3b c7                	cmp    eax,edi
  75b9a2:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  75b9a6:	7d 16                	jge    0x75b9be
  75b9a8:	8d 44 24 20          	lea    eax,[esp+0x20]
  75b9ac:	50                   	push   eax
  75b9ad:	56                   	push   esi
  75b9ae:	e8 3d 42 3a 00       	call   0xaffbf0
  75b9b3:	83 c4 08             	add    esp,0x8
  75b9b6:	84 c0                	test   al,al
  75b9b8:	74 04                	je     0x75b9be
  75b9ba:	b3 01                	mov    bl,0x1
  75b9bc:	eb 02                	jmp    0x75b9c0
  75b9be:	32 db                	xor    bl,bl
  75b9c0:	6a 01                	push   0x1
  75b9c2:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  75b9c6:	51                   	push   ecx
  75b9c7:	56                   	push   esi
  75b9c8:	e8 d3 3c 3a 00       	call   0xaff6a0
  75b9cd:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  75b9d4:	83 c4 0c             	add    esp,0xc
  75b9d7:	3b cf                	cmp    ecx,edi
  75b9d9:	7d 0e                	jge    0x75b9e9
  75b9db:	84 db                	test   bl,bl
  75b9dd:	75 0a                	jne    0x75b9e9
  75b9df:	84 c0                	test   al,al
  75b9e1:	75 06                	jne    0x75b9e9
  75b9e3:	33 c9                	xor    ecx,ecx
  75b9e5:	89 4c 24 74          	mov    DWORD PTR [esp+0x74],ecx
  75b9e9:	83 be 08 04 00 00 01 	cmp    DWORD PTR [esi+0x408],0x1
  75b9f0:	75 0d                	jne    0x75b9ff
  75b9f2:	83 be 0c 04 00 00 50 	cmp    DWORD PTR [esi+0x40c],0x50
  75b9f9:	75 04                	jne    0x75b9ff
  75b9fb:	3b cf                	cmp    ecx,edi
  75b9fd:	74 0f                	je     0x75ba0e
  75b9ff:	84 db                	test   bl,bl
  75ba01:	74 04                	je     0x75ba07
  75ba03:	84 c0                	test   al,al
  75ba05:	74 07                	je     0x75ba0e
  75ba07:	c6 44 24 44 01       	mov    BYTE PTR [esp+0x44],0x1
  75ba0c:	eb 05                	jmp    0x75ba13
  75ba0e:	c6 44 24 44 00       	mov    BYTE PTR [esp+0x44],0x0
  75ba13:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  75ba18:	0f 29 84 24 50 01 00 00 	movaps XMMWORD PTR [esp+0x150],xmm0
  75ba20:	0f 29 84 24 d0 01 00 00 	movaps XMMWORD PTR [esp+0x1d0],xmm0
  75ba28:	8b f1                	mov    esi,ecx
  75ba2a:	e8 c1 d2 0c 00       	call   0x828cf0
  75ba2f:	3b c7                	cmp    eax,edi
  75ba31:	74 33                	je     0x75ba66
  75ba33:	8b 54 24 44          	mov    edx,DWORD PTR [esp+0x44]
  75ba37:	d9 84 24 58 01 00 00 	fld    DWORD PTR [esp+0x158]
  75ba3e:	52                   	push   edx
  75ba3f:	6a 01                	push   0x1
  75ba41:	56                   	push   esi
  75ba42:	83 ec 08             	sub    esp,0x8
  75ba45:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75ba49:	8b c8                	mov    ecx,eax
  75ba4b:	d9 84 24 e4 01 00 00 	fld    DWORD PTR [esp+0x1e4]
  75ba52:	d9 1c 24             	fstp   DWORD PTR [esp]
  75ba55:	e8 36 d4 0c 00       	call   0x828e90
  75ba5a:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  75ba5e:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  75ba64:	eb 03                	jmp    0x75ba69
  75ba66:	0f 57 c0             	xorps  xmm0,xmm0
  75ba69:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  75ba6e:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  75ba71:	0f 29 8c 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm1
  75ba79:	f3 0f 11 84 24 e4 00 00 00 	movss  DWORD PTR [esp+0xe4],xmm0
  75ba82:	0f 28 b4 24 e0 00 00 00 	movaps xmm6,XMMWORD PTR [esp+0xe0]
  75ba8a:	0f 29 74 24 50       	movaps XMMWORD PTR [esp+0x50],xmm6
  75ba8f:	e9 c7 01 00 00       	jmp    0x75bc5b
  75ba94:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  75ba99:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  75ba9c:	6a 01                	push   0x1
  75ba9e:	57                   	push   edi
  75ba9f:	6a 01                	push   0x1
  75baa1:	8b cb                	mov    ecx,ebx
  75baa3:	89 bc 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],edi
  75baaa:	0f 29 84 24 7c 01 00 00 	movaps XMMWORD PTR [esp+0x17c],xmm0
  75bab2:	0f 29 84 24 1c 02 00 00 	movaps XMMWORD PTR [esp+0x21c],xmm0
  75baba:	e8 21 0a 0c 00       	call   0x81c4e0
  75babf:	84 c0                	test   al,al
  75bac1:	0f 94 c0             	sete   al
  75bac4:	88 44 24 48          	mov    BYTE PTR [esp+0x48],al
  75bac8:	e8 23 d2 0c 00       	call   0x828cf0
  75bacd:	3b c7                	cmp    eax,edi
  75bacf:	74 33                	je     0x75bb04
  75bad1:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  75bad5:	d9 84 24 78 01 00 00 	fld    DWORD PTR [esp+0x178]
  75badc:	6a 01                	push   0x1
  75bade:	51                   	push   ecx
  75badf:	57                   	push   edi
  75bae0:	83 ec 08             	sub    esp,0x8
  75bae3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75bae7:	8b c8                	mov    ecx,eax
  75bae9:	d9 84 24 24 02 00 00 	fld    DWORD PTR [esp+0x224]
  75baf0:	d9 1c 24             	fstp   DWORD PTR [esp]
  75baf3:	e8 98 d3 0c 00       	call   0x828e90
  75baf8:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  75bafc:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  75bb02:	eb 03                	jmp    0x75bb07
  75bb04:	0f 57 c0             	xorps  xmm0,xmm0
  75bb07:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  75bb0c:	6a 01                	push   0x1
  75bb0e:	0f 29 8c 24 a4 00 00 00 	movaps XMMWORD PTR [esp+0xa4],xmm1
  75bb16:	57                   	push   edi
  75bb17:	f3 0f 11 84 24 ac 00 00 00 	movss  DWORD PTR [esp+0xac],xmm0
  75bb20:	0f 28 84 24 a8 00 00 00 	movaps xmm0,XMMWORD PTR [esp+0xa8]
  75bb28:	6a 01                	push   0x1
  75bb2a:	8b cb                	mov    ecx,ebx
  75bb2c:	0f 29 44 24 5c       	movaps XMMWORD PTR [esp+0x5c],xmm0
  75bb31:	e8 aa 09 0c 00       	call   0x81c4e0
  75bb36:	84 c0                	test   al,al
  75bb38:	0f 85 18 01 00 00    	jne    0x75bc56
  75bb3e:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  75bb41:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  75bb44:	f3 0f 10 0d 9c 2b fa 00 	movss  xmm1,DWORD PTR ds:0xfa2b9c
  75bb4c:	0f 28 74 24 50       	movaps xmm6,XMMWORD PTR [esp+0x50]
  75bb51:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75bb55:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  75bb59:	0f 58 c1             	addps  xmm0,xmm1
  75bb5c:	0f 28 ce             	movaps xmm1,xmm6
  75bb5f:	0f c6 ce 55          	shufps xmm1,xmm6,0x55
  75bb63:	f3 0f 11 84 24 f0 01 00 00 	movss  DWORD PTR [esp+0x1f0],xmm0
  75bb6c:	0f 29 84 24 70 02 00 00 	movaps XMMWORD PTR [esp+0x270],xmm0
  75bb74:	f3 0f 11 8c 24 90 01 00 00 	movss  DWORD PTR [esp+0x190],xmm1
  75bb7d:	f3 0f 10 84 24 90 01 00 00 	movss  xmm0,DWORD PTR [esp+0x190]
  75bb86:	0f 2f 84 24 f0 01 00 00 	comiss xmm0,DWORD PTR [esp+0x1f0]
  75bb8e:	0f 86 c7 00 00 00    	jbe    0x75bc5b
  75bb94:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  75bb98:	e8 f3 54 50 00       	call   0xc61090
  75bb9d:	d8 25 f8 98 f9 00    	fsub   DWORD PTR ds:0xf998f8
  75bba3:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  75bba6:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  75bbaa:	f3 0f 11 84 24 00 01 00 00 	movss  DWORD PTR [esp+0x100],xmm0
  75bbb3:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  75bbb7:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  75bbbd:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75bbc1:	f3 0f 11 84 24 20 01 00 00 	movss  DWORD PTR [esp+0x120],xmm0
  75bbca:	f3 0f 10 84 24 00 01 00 00 	movss  xmm0,DWORD PTR [esp+0x100]
  75bbd3:	0f 2f 84 24 20 01 00 00 	comiss xmm0,DWORD PTR [esp+0x120]
  75bbdb:	76 79                	jbe    0x75bc56
  75bbdd:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  75bbe2:	8b 74 24 74          	mov    esi,DWORD PTR [esp+0x74]
  75bbe6:	0f 29 84 24 40 01 00 00 	movaps XMMWORD PTR [esp+0x140],xmm0
  75bbee:	0f 29 84 24 60 01 00 00 	movaps XMMWORD PTR [esp+0x160],xmm0
  75bbf6:	e8 f5 d0 0c 00       	call   0x828cf0
  75bbfb:	3b c7                	cmp    eax,edi
  75bbfd:	74 2f                	je     0x75bc2e
  75bbff:	d9 84 24 48 01 00 00 	fld    DWORD PTR [esp+0x148]
  75bc06:	6a 01                	push   0x1
  75bc08:	57                   	push   edi
  75bc09:	56                   	push   esi
  75bc0a:	83 ec 08             	sub    esp,0x8
  75bc0d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75bc11:	8b c8                	mov    ecx,eax
  75bc13:	d9 84 24 74 01 00 00 	fld    DWORD PTR [esp+0x174]
  75bc1a:	d9 1c 24             	fstp   DWORD PTR [esp]
  75bc1d:	e8 6e d2 0c 00       	call   0x828e90
  75bc22:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  75bc26:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  75bc2c:	eb 03                	jmp    0x75bc31
  75bc2e:	0f 57 c0             	xorps  xmm0,xmm0
  75bc31:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  75bc36:	0f 29 8c 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm1
  75bc3e:	f3 0f 11 84 24 d4 00 00 00 	movss  DWORD PTR [esp+0xd4],xmm0
  75bc47:	0f 28 b4 24 d0 00 00 00 	movaps xmm6,XMMWORD PTR [esp+0xd0]
  75bc4f:	0f 29 74 24 50       	movaps XMMWORD PTR [esp+0x50],xmm6
  75bc54:	eb 05                	jmp    0x75bc5b
  75bc56:	0f 28 74 24 50       	movaps xmm6,XMMWORD PTR [esp+0x50]
  75bc5b:	8b b4 24 94 00 00 00 	mov    esi,DWORD PTR [esp+0x94]
  75bc62:	8b 46 58             	mov    eax,DWORD PTR [esi+0x58]
  75bc65:	83 e8 01             	sub    eax,0x1
  75bc68:	74 7c                	je     0x75bce6
  75bc6a:	83 e8 01             	sub    eax,0x1
  75bc6d:	0f 85 51 01 00 00    	jne    0x75bdc4
  75bc73:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  75bc76:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  75bc79:	0f 57 d2             	xorps  xmm2,xmm2
  75bc7c:	0f 28 ce             	movaps xmm1,xmm6
  75bc7f:	0f 5c c8             	subps  xmm1,xmm0
  75bc82:	0f 29 8c 24 b0 00 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm1
  75bc8a:	f3 0f 11 94 24 b4 00 00 00 	movss  DWORD PTR [esp+0xb4],xmm2
  75bc93:	0f 28 ac 24 b0 00 00 00 	movaps xmm5,XMMWORD PTR [esp+0xb0]
  75bc9b:	0f 28 c5             	movaps xmm0,xmm5
  75bc9e:	0f 59 c5             	mulps  xmm0,xmm5
  75bca1:	0f 28 c8             	movaps xmm1,xmm0
  75bca4:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  75bca8:	0f 28 d8             	movaps xmm3,xmm0
  75bcab:	0f c6 d8 01          	shufps xmm3,xmm0,0x1
  75bcaf:	0f 58 cb             	addps  xmm1,xmm3
  75bcb2:	0f 58 c8             	addps  xmm1,xmm0
  75bcb5:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75bcb9:	f3 0f 11 8c 24 80 01 00 00 	movss  DWORD PTR [esp+0x180],xmm1
  75bcc2:	f3 0f 10 ca          	movss  xmm1,xmm2
  75bcc6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75bcca:	f3 0f 11 8c 24 a0 01 00 00 	movss  DWORD PTR [esp+0x1a0],xmm1
  75bcd3:	f3 0f 10 8c 24 80 01 00 00 	movss  xmm1,DWORD PTR [esp+0x180]
  75bcdc:	0f 2f 8c 24 a0 01 00 00 	comiss xmm1,DWORD PTR [esp+0x1a0]
  75bce4:	eb 6e                	jmp    0x75bd54
  75bce6:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  75bce9:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  75bcec:	0f 57 d2             	xorps  xmm2,xmm2
  75bcef:	0f 5c c6             	subps  xmm0,xmm6
  75bcf2:	0f 29 84 24 c0 00 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm0
  75bcfa:	f3 0f 11 94 24 c4 00 00 00 	movss  DWORD PTR [esp+0xc4],xmm2
  75bd03:	0f 28 ac 24 c0 00 00 00 	movaps xmm5,XMMWORD PTR [esp+0xc0]
  75bd0b:	0f 28 c5             	movaps xmm0,xmm5
  75bd0e:	0f 59 c5             	mulps  xmm0,xmm5
  75bd11:	0f 28 c8             	movaps xmm1,xmm0
  75bd14:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  75bd18:	0f 28 d8             	movaps xmm3,xmm0
  75bd1b:	0f c6 d8 01          	shufps xmm3,xmm0,0x1
  75bd1f:	0f 58 cb             	addps  xmm1,xmm3
  75bd22:	0f 58 c8             	addps  xmm1,xmm0
  75bd25:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75bd29:	f3 0f 11 8c 24 c0 01 00 00 	movss  DWORD PTR [esp+0x1c0],xmm1
  75bd32:	f3 0f 10 ca          	movss  xmm1,xmm2
  75bd36:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75bd3a:	f3 0f 11 8c 24 e0 01 00 00 	movss  DWORD PTR [esp+0x1e0],xmm1
  75bd43:	f3 0f 10 8c 24 c0 01 00 00 	movss  xmm1,DWORD PTR [esp+0x1c0]
  75bd4c:	0f 2f 8c 24 e0 01 00 00 	comiss xmm1,DWORD PTR [esp+0x1e0]
  75bd54:	76 6e                	jbe    0x75bdc4
  75bd56:	f3 0f 10 25 b4 b5 f9 00 	movss  xmm4,DWORD PTR ds:0xf9b5b4
  75bd5e:	0f 28 c8             	movaps xmm1,xmm0
  75bd61:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  75bd65:	0f 28 d0             	movaps xmm2,xmm0
  75bd68:	0f c6 d0 01          	shufps xmm2,xmm0,0x1
  75bd6c:	0f 58 ca             	addps  xmm1,xmm2
  75bd6f:	0f 58 c8             	addps  xmm1,xmm0
  75bd72:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  75bd7a:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75bd7e:	0f 52 d9             	rsqrtps xmm3,xmm1
  75bd81:	0f 28 fb             	movaps xmm7,xmm3
  75bd84:	0f 59 fb             	mulps  xmm7,xmm3
  75bd87:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  75bd8b:	0f 59 f9             	mulps  xmm7,xmm1
  75bd8e:	0f 28 d0             	movaps xmm2,xmm0
  75bd91:	0f 5c d7             	subps  xmm2,xmm7
  75bd94:	0f 28 fb             	movaps xmm7,xmm3
  75bd97:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  75bd9b:	0f 59 fc             	mulps  xmm7,xmm4
  75bd9e:	0f 59 d7             	mulps  xmm2,xmm7
  75bda1:	0f 58 d3             	addps  xmm2,xmm3
  75bda4:	0f 28 da             	movaps xmm3,xmm2
  75bda7:	0f 59 da             	mulps  xmm3,xmm2
  75bdaa:	0f 59 d9             	mulps  xmm3,xmm1
  75bdad:	0f 5c c3             	subps  xmm0,xmm3
  75bdb0:	0f 28 ca             	movaps xmm1,xmm2
  75bdb3:	0f 59 cc             	mulps  xmm1,xmm4
  75bdb6:	0f 59 c1             	mulps  xmm0,xmm1
  75bdb9:	0f 58 c2             	addps  xmm0,xmm2
  75bdbc:	0f 59 c5             	mulps  xmm0,xmm5
  75bdbf:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  75bdc4:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  75bdc8:	3b c7                	cmp    eax,edi
  75bdca:	75 07                	jne    0x75bdd3
  75bdcc:	83 7c 24 34 01       	cmp    DWORD PTR [esp+0x34],0x1
  75bdd1:	75 0a                	jne    0x75bddd
  75bdd3:	3b c7                	cmp    eax,edi
  75bdd5:	8b 4d 3c             	mov    ecx,DWORD PTR [ebp+0x3c]
  75bdd8:	0f 29 31             	movaps XMMWORD PTR [ecx],xmm6
  75bddb:	75 06                	jne    0x75bde3
  75bddd:	8b 55 38             	mov    edx,DWORD PTR [ebp+0x38]
  75bde0:	0f 29 32             	movaps XMMWORD PTR [edx],xmm6
  75bde3:	8b 4d 34             	mov    ecx,DWORD PTR [ebp+0x34]
  75bde6:	8b 55 30             	mov    edx,DWORD PTR [ebp+0x30]
  75bde9:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  75bdf1:	8d 44 24 38          	lea    eax,[esp+0x38]
  75bdf5:	50                   	push   eax
  75bdf6:	8b 45 2c             	mov    eax,DWORD PTR [ebp+0x2c]
  75bdf9:	51                   	push   ecx
  75bdfa:	52                   	push   edx
  75bdfb:	50                   	push   eax
  75bdfc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  75bdff:	53                   	push   ebx
  75be00:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  75be04:	51                   	push   ecx
  75be05:	8d 94 24 38 02 00 00 	lea    edx,[esp+0x238]
  75be0c:	52                   	push   edx
  75be0d:	50                   	push   eax
  75be0e:	8b ce                	mov    ecx,esi
  75be10:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  75be16:	e8 95 dd ff ff       	call   0x759bb0
  75be1b:	84 c0                	test   al,al
  75be1d:	0f 85 96 00 00 00    	jne    0x75beb9
  75be23:	39 7d 10             	cmp    DWORD PTR [ebp+0x10],edi
  75be26:	76 21                	jbe    0x75be49
  75be28:	d9 46 2c             	fld    DWORD PTR [esi+0x2c]
  75be2b:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  75be2f:	51                   	push   ecx
  75be30:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  75be34:	8b ce                	mov    ecx,esi
  75be36:	e8 65 3c ff ff       	call   0x74faa0
  75be3b:	d8 4c 24 18          	fmul   DWORD PTR [esp+0x18]
  75be3f:	d8 4c 24 38          	fmul   DWORD PTR [esp+0x38]
  75be43:	d9 5c 24 70          	fstp   DWORD PTR [esp+0x70]
  75be47:	eb 11                	jmp    0x75be5a
  75be49:	f3 0f 10 46 2c       	movss  xmm0,DWORD PTR [esi+0x2c]
  75be4e:	f3 0f 59 44 24 38    	mulss  xmm0,DWORD PTR [esp+0x38]
  75be54:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  75be5a:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  75be5d:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  75be60:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  75be63:	73 47                	jae    0x75beac
  75be65:	3b c7                	cmp    eax,edi
  75be67:	8d 50 40             	lea    edx,[eax+0x40]
  75be6a:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  75be6d:	74 5d                	je     0x75becc
  75be6f:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  75be74:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  75be77:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  75be7c:	0f 29 40 10          	movaps XMMWORD PTR [eax+0x10],xmm0
  75be80:	f3 0f 10 44 24 70    	movss  xmm0,DWORD PTR [esp+0x70]
  75be86:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  75be8b:	8b 4c 24 74          	mov    ecx,DWORD PTR [esp+0x74]
  75be8f:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  75be92:	8b 54 24 78          	mov    edx,DWORD PTR [esp+0x78]
  75be96:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  75be99:	8b 4c 24 7c          	mov    ecx,DWORD PTR [esp+0x7c]
  75be9d:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  75bea0:	8b 94 24 80 00 00 00 	mov    edx,DWORD PTR [esp+0x80]
  75bea7:	89 50 30             	mov    DWORD PTR [eax+0x30],edx
  75beaa:	eb 20                	jmp    0x75becc
  75beac:	8d 54 24 50          	lea    edx,[esp+0x50]
  75beb0:	52                   	push   edx
  75beb1:	50                   	push   eax
  75beb2:	e8 b9 81 ef ff       	call   0x654070
  75beb7:	eb 13                	jmp    0x75becc
  75beb9:	8b 4d 40             	mov    ecx,DWORD PTR [ebp+0x40]
  75bebc:	6a 01                	push   0x1
  75bebe:	8d 44 24 54          	lea    eax,[esp+0x54]
  75bec2:	50                   	push   eax
  75bec3:	51                   	push   ecx
  75bec4:	e8 97 09 ff ff       	call   0x74c860
  75bec9:	83 c4 0c             	add    esp,0xc
  75becc:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  75bed0:	83 c0 01             	add    eax,0x1
  75bed3:	3b 44 24 34          	cmp    eax,DWORD PTR [esp+0x34]
  75bed7:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  75bedb:	0f 82 af f9 ff ff    	jb     0x75b890
  75bee1:	5f                   	pop    edi
  75bee2:	5e                   	pop    esi
  75bee3:	5b                   	pop    ebx
  75bee4:	8b e5                	mov    esp,ebp
  75bee6:	5d                   	pop    ebp
  75bee7:	c2 40 00             	ret    0x40
