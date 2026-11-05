# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f720 (SceneManWrap_AddPackageToScene)
Paired Ghidra pseudocode: 1098F720_SceneManWrap_AddPackageToScene.c
Window: [0x1098f720, 0x1098f8b0) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f8b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f720: 55 8b ec 83 e4 f0 81 ec 84 00 00 00 53 56 57 e8
1098f730: 8c 22 b9 ff 8b 4d 0c 8b 10 8b 52 0c 51 8b c8 ff
1098f740: d2 33 ff 3b c7 74 56 8d 4c 24 18 51 89 7c 24 44
1098f750: 89 7c 24 48 89 7c 24 4c c7 44 24 50 40 72 b9 10
1098f760: c7 44 24 1c 24 5a ab 10 c7 44 24 20 33 12 66 01
1098f770: 8b 10 8b 52 30 8d 4c 24 44 51 8b c8 ff d2 8b 5c
1098f780: 24 40 3b 5c 24 44 75 20 3b df c7 44 24 18 7c 3a
1098f790: ab 10 74 09 53 e8 f6 96 f8 ff 83 c4 04 33 c0 33
1098f7a0: d2 5f 5e 5b 8b e5 5d c3 8b 35 98 d9 c8 10 0b 35
1098f7b0: 04 d8 c8 10 e8 77 30 d9 ff 50 8d 4c 24 64 e8 cd
1098f7c0: ce d9 ff 53 68 29 f6 e5 a6 8d 4c 24 68 e8 de d4
1098f7d0: d9 ff 8d 44 24 34 50 8d 4c 24 64 e8 20 d3 d9 ff
1098f7e0: e8 bb a9 d9 ff 57 57 8d 4c 24 58 51 56 8d 54 24
1098f7f0: 44 52 8b c8 89 7c 24 64 89 7c 24 68 89 7c 24 6c
1098f800: 89 7c 24 70 e8 27 c0 d9 ff 8b f0 3b f7 74 1c 8d
1098f810: 46 04 b9 01 00 00 00 f0 0f c1 08 8b 15 98 d9 c8
1098f820: 10 52 8b ce e8 77 75 d9 ff eb 02 33 c0 8d 4c 24
1098f830: 20 51 0f 57 c0 8b c8 0f 29 44 24 24 e8 6f b3 db
1098f840: ff 57 56 6a 0b e8 a6 8a d9 ff 8b 56 0c 8b 5e 08
1098f850: 8d 46 04 89 54 24 30 83 c4 0c 8b c8 83 ca ff f0
1098f860: 0f c1 11 4a 75 11 b9 01 00 00 00 87 08 8b 16 8b
1098f870: 02 6a 01 8b ce ff d0 8d 4c 24 60 e8 a0 0e 74 ff
1098f880: 8b 44 24 40 3b c7 c7 44 24 18 7c 3a ab 10 74 09
1098f890: 50 e8 fa 95 f8 ff 83 c4 04 8b 54 24 24 5f 5e 8b
1098f8a0: c3 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f720 <.text+0x98e720>:
1098f720:	55                                              	push   ebp
1098f721:	8b ec                                           	mov    ebp,esp
1098f723:	83 e4 f0                                        	and    esp,0xfffffff0
1098f726:	81 ec 84 00 00 00                               	sub    esp,0x84
1098f72c:	53                                              	push   ebx
1098f72d:	56                                              	push   esi
1098f72e:	57                                              	push   edi
1098f72f:	e8 8c 22 b9 ff                                  	call   0x105219c0
1098f734:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
1098f737:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098f739:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1098f73c:	51                                              	push   ecx
1098f73d:	8b c8                                           	mov    ecx,eax
1098f73f:	ff d2                                           	call   edx
1098f741:	33 ff                                           	xor    edi,edi
1098f743:	3b c7                                           	cmp    eax,edi
1098f745:	74 56                                           	je     0x1098f79d
1098f747:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098f74b:	51                                              	push   ecx
1098f74c:	89 7c 24 44                                     	mov    DWORD PTR [esp+0x44],edi
1098f750:	89 7c 24 48                                     	mov    DWORD PTR [esp+0x48],edi
1098f754:	89 7c 24 4c                                     	mov    DWORD PTR [esp+0x4c],edi
1098f758:	c7 44 24 50 40 72 b9 10                         	mov    DWORD PTR [esp+0x50],0x10b97240
1098f760:	c7 44 24 1c 24 5a ab 10                         	mov    DWORD PTR [esp+0x1c],0x10ab5a24
1098f768:	c7 44 24 20 33 12 66 01                         	mov    DWORD PTR [esp+0x20],0x1661233
1098f770:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098f772:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
1098f775:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
1098f779:	51                                              	push   ecx
1098f77a:	8b c8                                           	mov    ecx,eax
1098f77c:	ff d2                                           	call   edx
1098f77e:	8b 5c 24 40                                     	mov    ebx,DWORD PTR [esp+0x40]
1098f782:	3b 5c 24 44                                     	cmp    ebx,DWORD PTR [esp+0x44]
1098f786:	75 20                                           	jne    0x1098f7a8
1098f788:	3b df                                           	cmp    ebx,edi
1098f78a:	c7 44 24 18 7c 3a ab 10                         	mov    DWORD PTR [esp+0x18],0x10ab3a7c
1098f792:	74 09                                           	je     0x1098f79d
1098f794:	53                                              	push   ebx
1098f795:	e8 f6 96 f8 ff                                  	call   0x10918e90
1098f79a:	83 c4 04                                        	add    esp,0x4
1098f79d:	33 c0                                           	xor    eax,eax
1098f79f:	33 d2                                           	xor    edx,edx
1098f7a1:	5f                                              	pop    edi
1098f7a2:	5e                                              	pop    esi
1098f7a3:	5b                                              	pop    ebx
1098f7a4:	8b e5                                           	mov    esp,ebp
1098f7a6:	5d                                              	pop    ebp
1098f7a7:	c3                                              	ret
1098f7a8:	8b 35 98 d9 c8 10                               	mov    esi,DWORD PTR ds:0x10c8d998
1098f7ae:	0b 35 04 d8 c8 10                               	or     esi,DWORD PTR ds:0x10c8d804
1098f7b4:	e8 77 30 d9 ff                                  	call   0x10722830
1098f7b9:	50                                              	push   eax
1098f7ba:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1098f7be:	e8 cd ce d9 ff                                  	call   0x1072c690
1098f7c3:	53                                              	push   ebx
1098f7c4:	68 29 f6 e5 a6                                  	push   0xa6e5f629
1098f7c9:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
1098f7cd:	e8 de d4 d9 ff                                  	call   0x1072ccb0
1098f7d2:	8d 44 24 34                                     	lea    eax,[esp+0x34]
1098f7d6:	50                                              	push   eax
1098f7d7:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1098f7db:	e8 20 d3 d9 ff                                  	call   0x1072cb00
1098f7e0:	e8 bb a9 d9 ff                                  	call   0x1072a1a0
1098f7e5:	57                                              	push   edi
1098f7e6:	57                                              	push   edi
1098f7e7:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
1098f7eb:	51                                              	push   ecx
1098f7ec:	56                                              	push   esi
1098f7ed:	8d 54 24 44                                     	lea    edx,[esp+0x44]
1098f7f1:	52                                              	push   edx
1098f7f2:	8b c8                                           	mov    ecx,eax
1098f7f4:	89 7c 24 64                                     	mov    DWORD PTR [esp+0x64],edi
1098f7f8:	89 7c 24 68                                     	mov    DWORD PTR [esp+0x68],edi
1098f7fc:	89 7c 24 6c                                     	mov    DWORD PTR [esp+0x6c],edi
1098f800:	89 7c 24 70                                     	mov    DWORD PTR [esp+0x70],edi
1098f804:	e8 27 c0 d9 ff                                  	call   0x1072b830
1098f809:	8b f0                                           	mov    esi,eax
1098f80b:	3b f7                                           	cmp    esi,edi
1098f80d:	74 1c                                           	je     0x1098f82b
1098f80f:	8d 46 04                                        	lea    eax,[esi+0x4]
1098f812:	b9 01 00 00 00                                  	mov    ecx,0x1
1098f817:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1098f81b:	8b 15 98 d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d998
1098f821:	52                                              	push   edx
1098f822:	8b ce                                           	mov    ecx,esi
1098f824:	e8 77 75 d9 ff                                  	call   0x10726da0
1098f829:	eb 02                                           	jmp    0x1098f82d
1098f82b:	33 c0                                           	xor    eax,eax
1098f82d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1098f831:	51                                              	push   ecx
1098f832:	0f 57 c0                                        	xorps  xmm0,xmm0
1098f835:	8b c8                                           	mov    ecx,eax
1098f837:	0f 29 44 24 24                                  	movaps XMMWORD PTR [esp+0x24],xmm0
1098f83c:	e8 6f b3 db ff                                  	call   0x1074abb0
1098f841:	57                                              	push   edi
1098f842:	56                                              	push   esi
1098f843:	6a 0b                                           	push   0xb
1098f845:	e8 a6 8a d9 ff                                  	call   0x107282f0
1098f84a:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
1098f84d:	8b 5e 08                                        	mov    ebx,DWORD PTR [esi+0x8]
1098f850:	8d 46 04                                        	lea    eax,[esi+0x4]
1098f853:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
1098f857:	83 c4 0c                                        	add    esp,0xc
1098f85a:	8b c8                                           	mov    ecx,eax
1098f85c:	83 ca ff                                        	or     edx,0xffffffff
1098f85f:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1098f863:	4a                                              	dec    edx
1098f864:	75 11                                           	jne    0x1098f877
1098f866:	b9 01 00 00 00                                  	mov    ecx,0x1
1098f86b:	87 08                                           	xchg   DWORD PTR [eax],ecx
1098f86d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098f86f:	8b 02                                           	mov    eax,DWORD PTR [edx]
1098f871:	6a 01                                           	push   0x1
1098f873:	8b ce                                           	mov    ecx,esi
1098f875:	ff d0                                           	call   eax
1098f877:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1098f87b:	e8 a0 0e 74 ff                                  	call   0x100d0720
1098f880:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1098f884:	3b c7                                           	cmp    eax,edi
1098f886:	c7 44 24 18 7c 3a ab 10                         	mov    DWORD PTR [esp+0x18],0x10ab3a7c
1098f88e:	74 09                                           	je     0x1098f899
1098f890:	50                                              	push   eax
1098f891:	e8 fa 95 f8 ff                                  	call   0x10918e90
1098f896:	83 c4 04                                        	add    esp,0x4
1098f899:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1098f89d:	5f                                              	pop    edi
1098f89e:	5e                                              	pop    esi
1098f89f:	8b c3                                           	mov    eax,ebx
1098f8a1:	5b                                              	pop    ebx
1098f8a2:	8b e5                                           	mov    esp,ebp
1098f8a4:	5d                                              	pop    ebp
1098f8a5:	c3                                              	ret
1098f8a6:	cc                                              	int3
1098f8a7:	cc                                              	int3
1098f8a8:	cc                                              	int3
1098f8a9:	cc                                              	int3
1098f8aa:	cc                                              	int3
1098f8ab:	cc                                              	int3
1098f8ac:	cc                                              	int3
1098f8ad:	cc                                              	int3
1098f8ae:	cc                                              	int3
1098f8af:	cc                                              	int3
