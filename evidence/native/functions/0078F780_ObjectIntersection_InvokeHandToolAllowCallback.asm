# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0078f780, 0x0078fa98); analyst name ObjectIntersection_InvokeHandToolAllowCallback.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078f780 <.text+0x38e780>:
  78f780:	55                   	push   ebp
  78f781:	8b ec                	mov    ebp,esp
  78f783:	83 e4 f0             	and    esp,0xfffffff0
  78f786:	81 ec 54 01 00 00    	sub    esp,0x154
  78f78c:	53                   	push   ebx
  78f78d:	56                   	push   esi
  78f78e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  78f791:	57                   	push   edi
  78f792:	33 ff                	xor    edi,edi
  78f794:	3b f7                	cmp    esi,edi
  78f796:	74 35                	je     0x78f7cd
  78f798:	8b 4d 1c             	mov    ecx,DWORD PTR [ebp+0x1c]
  78f79b:	57                   	push   edi
  78f79c:	8d 44 24 14          	lea    eax,[esp+0x14]
  78f7a0:	50                   	push   eax
  78f7a1:	51                   	push   ecx
  78f7a2:	56                   	push   esi
  78f7a3:	e8 18 d0 34 00       	call   0xadc7c0
  78f7a8:	d9 45 20             	fld    DWORD PTR [ebp+0x20]
  78f7ab:	83 c4 10             	add    esp,0x10
  78f7ae:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  78f7b5:	52                   	push   edx
  78f7b6:	8d 44 24 14          	lea    eax,[esp+0x14]
  78f7ba:	50                   	push   eax
  78f7bb:	51                   	push   ecx
  78f7bc:	d9 1c 24             	fstp   DWORD PTR [esp]
  78f7bf:	56                   	push   esi
  78f7c0:	e8 cb 63 37 00       	call   0xb05b90
  78f7c5:	83 c4 10             	add    esp,0x10
  78f7c8:	e9 01 01 00 00       	jmp    0x78f8ce
  78f7cd:	e8 9e 7d 1a 00       	call   0x937570
  78f7d2:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  78f7d5:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  78f7d8:	51                   	push   ecx
  78f7d9:	52                   	push   edx
  78f7da:	8b c8                	mov    ecx,eax
  78f7dc:	e8 9f 87 1a 00       	call   0x937f80
  78f7e1:	3b c7                	cmp    eax,edi
  78f7e3:	74 4a                	je     0x78f82f
  78f7e5:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  78f7eb:	51                   	push   ecx
  78f7ec:	8b c8                	mov    ecx,eax
  78f7ee:	e8 6d 4a 1a 00       	call   0x934260
  78f7f3:	3b c7                	cmp    eax,edi
  78f7f5:	74 38                	je     0x78f82f
  78f7f7:	8d 54 24 10          	lea    edx,[esp+0x10]
  78f7fb:	52                   	push   edx
  78f7fc:	8b c8                	mov    ecx,eax
  78f7fe:	e8 8d 82 1c 00       	call   0x957a90
  78f803:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  78f806:	0f 29 84 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  78f80e:	0f 28 40 10          	movaps xmm0,XMMWORD PTR [eax+0x10]
  78f812:	0f 29 84 24 90 00 00 00 	movaps XMMWORD PTR [esp+0x90],xmm0
  78f81a:	0f 28 40 20          	movaps xmm0,XMMWORD PTR [eax+0x20]
  78f81e:	0f 29 84 24 a0 00 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm0
  78f826:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  78f82a:	e9 97 00 00 00       	jmp    0x78f8c6
  78f82f:	0f 57 c0             	xorps  xmm0,xmm0
  78f832:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  78f83a:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  78f840:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  78f846:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  78f84c:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  78f852:	0f 28 54 24 10       	movaps xmm2,XMMWORD PTR [esp+0x10]
  78f857:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  78f85d:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  78f863:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  78f869:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  78f86f:	0f 28 5c 24 10       	movaps xmm3,XMMWORD PTR [esp+0x10]
  78f874:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  78f87a:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  78f880:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  78f886:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  78f88c:	0f 28 64 24 10       	movaps xmm4,XMMWORD PTR [esp+0x10]
  78f891:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  78f897:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  78f89d:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  78f8a3:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  78f8a9:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  78f8ae:	0f 29 94 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm2
  78f8b6:	0f 29 9c 24 90 00 00 00 	movaps XMMWORD PTR [esp+0x90],xmm3
  78f8be:	0f 29 a4 24 a0 00 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm4
  78f8c6:	0f 29 84 24 b0 00 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  78f8ce:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  78f8d5:	50                   	push   eax
  78f8d6:	8d 8c 24 24 01 00 00 	lea    ecx,[esp+0x124]
  78f8dd:	51                   	push   ecx
  78f8de:	e8 3d c9 fd ff       	call   0x76c220
  78f8e3:	83 c4 08             	add    esp,0x8
  78f8e6:	8d 55 0c             	lea    edx,[ebp+0xc]
  78f8e9:	bb f4 a6 fb 00       	mov    ebx,0xfba6f4
  78f8ee:	52                   	push   edx
  78f8ef:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  78f8f3:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  78f8f7:	66 89 7c 24 1c       	mov    WORD PTR [esp+0x1c],di
  78f8fc:	66 89 7c 24 1e       	mov    WORD PTR [esp+0x1e],di
  78f901:	e8 1a 67 d6 ff       	call   0x4f6020
  78f906:	8d 44 24 10          	lea    eax,[esp+0x10]
  78f90a:	50                   	push   eax
  78f90b:	8d 8c 24 c4 00 00 00 	lea    ecx,[esp+0xc4]
  78f912:	89 9c 24 c4 00 00 00 	mov    DWORD PTR [esp+0xc4],ebx
  78f919:	66 89 bc 24 cc 00 00 00 	mov    WORD PTR [esp+0xcc],di
  78f921:	66 89 bc 24 ce 00 00 00 	mov    WORD PTR [esp+0xce],di
  78f929:	e8 82 6b d6 ff       	call   0x4f64b0
  78f92e:	f6 44 24 18 04       	test   BYTE PTR [esp+0x18],0x4
  78f933:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  78f937:	74 0a                	je     0x78f943
  78f939:	57                   	push   edi
  78f93a:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  78f93e:	e8 1d 5e d6 ff       	call   0x4f5760
  78f943:	8d 4d 14             	lea    ecx,[ebp+0x14]
  78f946:	51                   	push   ecx
  78f947:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  78f94b:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  78f94f:	66 89 7c 24 1c       	mov    WORD PTR [esp+0x1c],di
  78f954:	66 89 7c 24 1e       	mov    WORD PTR [esp+0x1e],di
  78f959:	e8 c2 66 d6 ff       	call   0x4f6020
  78f95e:	8d 54 24 10          	lea    edx,[esp+0x10]
  78f962:	52                   	push   edx
  78f963:	8d 8c 24 e4 00 00 00 	lea    ecx,[esp+0xe4]
  78f96a:	89 9c 24 e4 00 00 00 	mov    DWORD PTR [esp+0xe4],ebx
  78f971:	66 89 bc 24 ec 00 00 00 	mov    WORD PTR [esp+0xec],di
  78f979:	66 89 bc 24 ee 00 00 00 	mov    WORD PTR [esp+0xee],di
  78f981:	e8 2a 6b d6 ff       	call   0x4f64b0
  78f986:	f6 44 24 18 04       	test   BYTE PTR [esp+0x18],0x4
  78f98b:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  78f98f:	74 0a                	je     0x78f99b
  78f991:	57                   	push   edi
  78f992:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  78f996:	e8 c5 5d d6 ff       	call   0x4f5760
  78f99b:	6a 01                	push   0x1
  78f99d:	6a 40                	push   0x40
  78f99f:	8d 84 24 28 01 00 00 	lea    eax,[esp+0x128]
  78f9a6:	50                   	push   eax
  78f9a7:	57                   	push   edi
  78f9a8:	68 91 00 00 00       	push   0x91
  78f9ad:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  78f9b1:	89 5c 24 24          	mov    DWORD PTR [esp+0x24],ebx
  78f9b5:	66 89 7c 24 2c       	mov    WORD PTR [esp+0x2c],di
  78f9ba:	66 89 7c 24 2e       	mov    WORD PTR [esp+0x2e],di
  78f9bf:	e8 fc 5f d6 ff       	call   0x4f59c0
  78f9c4:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  78f9c8:	51                   	push   ecx
  78f9c9:	8d 8c 24 04 01 00 00 	lea    ecx,[esp+0x104]
  78f9d0:	89 9c 24 04 01 00 00 	mov    DWORD PTR [esp+0x104],ebx
  78f9d7:	66 89 bc 24 0c 01 00 00 	mov    WORD PTR [esp+0x10c],di
  78f9df:	66 89 bc 24 0e 01 00 00 	mov    WORD PTR [esp+0x10e],di
  78f9e7:	e8 c4 6a d6 ff       	call   0x4f64b0
  78f9ec:	f6 44 24 18 04       	test   BYTE PTR [esp+0x18],0x4
  78f9f1:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  78f9f5:	74 0a                	je     0x78fa01
  78f9f7:	57                   	push   edi
  78f9f8:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  78f9fc:	e8 5f 5d d6 ff       	call   0x4f5760
  78fa01:	6a 03                	push   0x3
  78fa03:	8d 94 24 c4 00 00 00 	lea    edx,[esp+0xc4]
  78fa0a:	52                   	push   edx
  78fa0b:	8d 44 24 18          	lea    eax,[esp+0x18]
  78fa0f:	6a 18                	push   0x18
  78fa11:	50                   	push   eax
  78fa12:	89 5c 24 70          	mov    DWORD PTR [esp+0x70],ebx
  78fa16:	66 89 7c 24 78       	mov    WORD PTR [esp+0x78],di
  78fa1b:	66 89 7c 24 7a       	mov    WORD PTR [esp+0x7a],di
  78fa20:	e8 4b fc ff ff       	call   0x78f670
  78fa25:	83 c4 10             	add    esp,0x10
  78fa28:	50                   	push   eax
  78fa29:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  78fa2d:	e8 7e 6a d6 ff       	call   0x4f64b0
  78fa32:	f6 44 24 18 04       	test   BYTE PTR [esp+0x18],0x4
  78fa37:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  78fa3b:	74 0a                	je     0x78fa47
  78fa3d:	57                   	push   edi
  78fa3e:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  78fa42:	e8 19 5d d6 ff       	call   0x4f5760
  78fa47:	f6 44 24 68 04       	test   BYTE PTR [esp+0x68],0x4
  78fa4c:	8a 4c 24 70          	mov    cl,BYTE PTR [esp+0x70]
  78fa50:	88 4c 24 0f          	mov    BYTE PTR [esp+0xf],cl
  78fa54:	89 5c 24 60          	mov    DWORD PTR [esp+0x60],ebx
  78fa58:	74 0a                	je     0x78fa64
  78fa5a:	57                   	push   edi
  78fa5b:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  78fa5f:	e8 fc 5c d6 ff       	call   0x4f5760
  78fa64:	8d b4 24 20 01 00 00 	lea    esi,[esp+0x120]
  78fa6b:	c7 44 24 5c 02 00 00 00 	mov    DWORD PTR [esp+0x5c],0x2
  78fa73:	83 ee 20             	sub    esi,0x20
  78fa76:	f6 46 08 04          	test   BYTE PTR [esi+0x8],0x4
  78fa7a:	89 1e                	mov    DWORD PTR [esi],ebx
  78fa7c:	74 08                	je     0x78fa86
  78fa7e:	57                   	push   edi
  78fa7f:	8b ce                	mov    ecx,esi
  78fa81:	e8 da 5c d6 ff       	call   0x4f5760
  78fa86:	83 6c 24 5c 01       	sub    DWORD PTR [esp+0x5c],0x1
  78fa8b:	79 e6                	jns    0x78fa73
  78fa8d:	8a 44 24 0f          	mov    al,BYTE PTR [esp+0xf]
  78fa91:	5f                   	pop    edi
  78fa92:	5e                   	pop    esi
  78fa93:	5b                   	pop    ebx
  78fa94:	8b e5                	mov    esp,ebp
  78fa96:	5d                   	pop    ebp
  78fa97:	c3                   	ret
