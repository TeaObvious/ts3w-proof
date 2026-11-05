# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0086e630 <.text+0x46d630>:
  86e630:	55                                              	push   ebp
  86e631:	8b ec                                           	mov    ebp,esp
  86e633:	83 e4 f0                                        	and    esp,0xfffffff0
  86e636:	81 ec 74 01 00 00                               	sub    esp,0x174
  86e63c:	53                                              	push   ebx
  86e63d:	56                                              	push   esi
  86e63e:	57                                              	push   edi
  86e63f:	8b f9                                           	mov    edi,ecx
  86e641:	83 47 24 01                                     	add    DWORD PTR [edi+0x24],0x1
  86e645:	8b 47 24                                        	mov    eax,DWORD PTR [edi+0x24]
  86e648:	99                                              	cdq
  86e649:	f7 7f 28                                        	idiv   DWORD PTR [edi+0x28]
  86e64c:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  86e650:	85 d2                                           	test   edx,edx
  86e652:	0f 85 2a 03 00 00                               	jne    0x86e982
  86e658:	8b 1d c4 db 1e 01                               	mov    ebx,DWORD PTR ds:0x11edbc4
  86e65e:	85 db                                           	test   ebx,ebx
  86e660:	0f 84 1c 03 00 00                               	je     0x86e982
  86e666:	52                                              	push   edx
  86e667:	8b cb                                           	mov    ecx,ebx
  86e669:	e8 f2 0e 3f 00                                  	call   0xc5f560
  86e66e:	52                                              	push   edx
  86e66f:	50                                              	push   eax
  86e670:	8b cb                                           	mov    ecx,ebx
  86e672:	e8 99 41 3f 00                                  	call   0xc62810
  86e677:	85 c0                                           	test   eax,eax
  86e679:	74 21                                           	je     0x86e69c
  86e67b:	83 b8 9c 03 00 00 00                            	cmp    DWORD PTR [eax+0x39c],0x0
  86e682:	7d 18                                           	jge    0x86e69c
  86e684:	8b 07                                           	mov    eax,DWORD PTR [edi]
  86e686:	d9 ee                                           	fldz
  86e688:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  86e68b:	51                                              	push   ecx
  86e68c:	8b cf                                           	mov    ecx,edi
  86e68e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86e691:	ff d2                                           	call   edx
  86e693:	5f                                              	pop    edi
  86e694:	5e                                              	pop    esi
  86e695:	5b                                              	pop    ebx
  86e696:	8b e5                                           	mov    esp,ebp
  86e698:	5d                                              	pop    ebp
  86e699:	c2 08 00                                        	ret    0x8
  86e69c:	e8 5f 17 04 00                                  	call   0x8afe00
  86e6a1:	8b f0                                           	mov    esi,eax
  86e6a3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86e6a5:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  86e6a8:	6a 02                                           	push   0x2
  86e6aa:	8b ce                                           	mov    ecx,esi
  86e6ac:	ff d2                                           	call   edx
  86e6ae:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  86e6b3:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  86e6b7:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  86e6bd:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  86e6c2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86e6c4:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  86e6c7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  86e6cd:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  86e6d3:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  86e6d9:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  86e6de:	6a 01                                           	push   0x1
  86e6e0:	8b ce                                           	mov    ecx,esi
  86e6e2:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
  86e6e7:	ff d2                                           	call   edx
  86e6e9:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
  86e6ee:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  86e6f2:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
  86e6f7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  86e6fd:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  86e703:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  86e709:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
  86e70e:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  86e714:	0f 28 4c 24 10                                  	movaps xmm1,XMMWORD PTR [esp+0x10]
  86e719:	0f 28 c2                                        	movaps xmm0,xmm2
  86e71c:	0f 5c c1                                        	subps  xmm0,xmm1
  86e71f:	0f 59 c0                                        	mulps  xmm0,xmm0
  86e722:	0f 28 c8                                        	movaps xmm1,xmm0
  86e725:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
  86e729:	0f 28 d9                                        	movaps xmm3,xmm1
  86e72c:	0f c6 d9 01                                     	shufps xmm3,xmm1,0x1
  86e730:	0f 58 c3                                        	addps  xmm0,xmm3
  86e733:	0f 58 c1                                        	addps  xmm0,xmm1
  86e736:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86e73a:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  86e73f:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  86e745:	0f 2f 47 30                                     	comiss xmm0,DWORD PTR [edi+0x30]
  86e749:	72 18                                           	jb     0x86e763
  86e74b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  86e74d:	d9 e8                                           	fld1
  86e74f:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  86e752:	51                                              	push   ecx
  86e753:	8b cf                                           	mov    ecx,edi
  86e755:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86e758:	ff d2                                           	call   edx
  86e75a:	5f                                              	pop    edi
  86e75b:	5e                                              	pop    esi
  86e75c:	5b                                              	pop    ebx
  86e75d:	8b e5                                           	mov    esp,ebp
  86e75f:	5d                                              	pop    ebp
  86e760:	c2 08 00                                        	ret    0x8
  86e763:	f3 0f 10 47 2c                                  	movss  xmm0,DWORD PTR [edi+0x2c]
  86e768:	8d 84 24 b0 00 00 00                            	lea    eax,[esp+0xb0]
  86e76f:	8b c8                                           	mov    ecx,eax
  86e771:	89 84 24 a4 00 00 00                            	mov    DWORD PTR [esp+0xa4],eax
  86e778:	8d 84 24 a0 00 00 00                            	lea    eax,[esp+0xa0]
  86e77f:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  86e785:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  86e789:	50                                              	push   eax
  86e78a:	51                                              	push   ecx
  86e78b:	0f 29 54 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm2
  86e790:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86e793:	89 8c 24 a8 00 00 00                            	mov    DWORD PTR [esp+0xa8],ecx
  86e79a:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  86e7a0:	0f 28 44 24 18                                  	movaps xmm0,XMMWORD PTR [esp+0x18]
  86e7a5:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  86e7a9:	8d 94 24 88 01 00 00                            	lea    edx,[esp+0x188]
  86e7b0:	51                                              	push   ecx
  86e7b1:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
  86e7b6:	89 94 24 b4 00 00 00                            	mov    DWORD PTR [esp+0xb4],edx
  86e7bd:	e8 2e fc ff ff                                  	call   0x86e3f0
  86e7c2:	83 c4 0c                                        	add    esp,0xc
  86e7c5:	33 f6                                           	xor    esi,esi
  86e7c7:	56                                              	push   esi
  86e7c8:	8b cb                                           	mov    ecx,ebx
  86e7ca:	e8 d1 9f 3f 00                                  	call   0xc687a0
  86e7cf:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  86e7d7:	8b bc 24 a4 00 00 00                            	mov    edi,DWORD PTR [esp+0xa4]
  86e7de:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  86e7e4:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  86e7ea:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
  86e7ee:	8b 18                                           	mov    ebx,DWORD PTR [eax]
  86e7f0:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  86e7f3:	3b d8                                           	cmp    ebx,eax
  86e7f5:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  86e7f9:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  86e7fd:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  86e801:	0f 84 38 01 00 00                               	je     0x86e93f
  86e807:	eb 07                                           	jmp    0x86e810
  86e809:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  86e810:	8b 33                                           	mov    esi,DWORD PTR [ebx]
  86e812:	8b 86 98 02 00 00                               	mov    eax,DWORD PTR [esi+0x298]
  86e818:	85 c0                                           	test   eax,eax
  86e81a:	89 44 24 38                                     	mov    DWORD PTR [esp+0x38],eax
  86e81e:	0f 84 0a 01 00 00                               	je     0x86e92e
  86e824:	8d 96 30 02 00 00                               	lea    edx,[esi+0x230]
  86e82a:	52                                              	push   edx
  86e82b:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  86e82f:	e8 fc ee e2 ff                                  	call   0x69d730
  86e834:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  86e838:	50                                              	push   eax
  86e839:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  86e83d:	e8 9e f8 ff ff                                  	call   0x86e0e0
  86e842:	84 c0                                           	test   al,al
  86e844:	0f 84 e4 00 00 00                               	je     0x86e92e
  86e84a:	8b 9c 24 a0 00 00 00                            	mov    ebx,DWORD PTR [esp+0xa0]
  86e851:	3b df                                           	cmp    ebx,edi
  86e853:	0f 84 d1 00 00 00                               	je     0x86e92a
  86e859:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  86e860:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  86e864:	51                                              	push   ecx
  86e865:	53                                              	push   ebx
  86e866:	8b ce                                           	mov    ecx,esi
  86e868:	e8 33 89 24 00                                  	call   0xab71a0
  86e86d:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  86e872:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
  86e877:	f3 0f 10 4c 24 70                               	movss  xmm1,DWORD PTR [esp+0x70]
  86e87d:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
  86e885:	0f 57 c0                                        	xorps  xmm0,xmm0
  86e888:	0f 2f c8                                        	comiss xmm1,xmm0
  86e88b:	0f 82 87 00 00 00                               	jb     0x86e918
  86e891:	f3 0f 2a 96 74 01 00 00                         	cvtsi2ss xmm2,DWORD PTR [esi+0x174]
  86e899:	0f 2f d1                                        	comiss xmm2,xmm1
  86e89c:	72 7a                                           	jb     0x86e918
  86e89e:	f3 0f 10 8c 24 98 00 00 00                      	movss  xmm1,DWORD PTR [esp+0x98]
  86e8a7:	0f 2f c8                                        	comiss xmm1,xmm0
  86e8aa:	72 6c                                           	jb     0x86e918
  86e8ac:	f3 0f 2a 86 78 01 00 00                         	cvtsi2ss xmm0,DWORD PTR [esi+0x178]
  86e8b4:	0f 2f c1                                        	comiss xmm0,xmm1
  86e8b7:	72 5f                                           	jb     0x86e918
  86e8b9:	6a 00                                           	push   0x0
  86e8bb:	8d 54 24 54                                     	lea    edx,[esp+0x54]
  86e8bf:	52                                              	push   edx
  86e8c0:	8b ce                                           	mov    ecx,esi
  86e8c2:	e8 e9 78 24 00                                  	call   0xab61b0
  86e8c7:	85 c0                                           	test   eax,eax
  86e8c9:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  86e8ce:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  86e8d3:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [esp+0x60]
  86e8d9:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  86e8e1:	f3 0f 10 84 24 88 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x88]
  86e8ea:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  86e8ee:	f3 0f 11 4c 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm1
  86e8f4:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  86e8fa:	7c 17                                           	jl     0x86e913
  86e8fc:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  86e900:	6a 00                                           	push   0x0
  86e902:	6a 00                                           	push   0x0
  86e904:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  86e908:	50                                              	push   eax
  86e909:	e8 b2 99 2d 00                                  	call   0xb482c0
  86e90e:	66 85 c0                                        	test   ax,ax
  86e911:	74 05                                           	je     0x86e918
  86e913:	83 44 24 0c 01                                  	add    DWORD PTR [esp+0xc],0x1
  86e918:	83 c3 10                                        	add    ebx,0x10
  86e91b:	3b df                                           	cmp    ebx,edi
  86e91d:	0f 85 3d ff ff ff                               	jne    0x86e860
  86e923:	8b bc 24 a4 00 00 00                            	mov    edi,DWORD PTR [esp+0xa4]
  86e92a:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
  86e92e:	83 c3 04                                        	add    ebx,0x4
  86e931:	3b 5c 24 3c                                     	cmp    ebx,DWORD PTR [esp+0x3c]
  86e935:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  86e939:	0f 85 d1 fe ff ff                               	jne    0x86e810
  86e93f:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  86e943:	db 44 24 0c                                     	fild   DWORD PTR [esp+0xc]
  86e947:	85 c0                                           	test   eax,eax
  86e949:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  86e94d:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  86e94f:	7d 06                                           	jge    0x86e957
  86e951:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  86e957:	2b bc 24 a0 00 00 00                            	sub    edi,DWORD PTR [esp+0xa0]
  86e95e:	c1 ff 04                                        	sar    edi,0x4
  86e961:	85 ff                                           	test   edi,edi
  86e963:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  86e967:	db 44 24 24                                     	fild   DWORD PTR [esp+0x24]
  86e96b:	7d 06                                           	jge    0x86e973
  86e96d:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  86e973:	de f9                                           	fdivp  st(1),st
  86e975:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
  86e978:	51                                              	push   ecx
  86e979:	d9 e8                                           	fld1
  86e97b:	de e1                                           	fsubrp st(1),st
  86e97d:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86e980:	ff d2                                           	call   edx
  86e982:	5f                                              	pop    edi
  86e983:	5e                                              	pop    esi
  86e984:	5b                                              	pop    ebx
  86e985:	8b e5                                           	mov    esp,ebp
  86e987:	5d                                              	pop    ebp
  86e988:	c2 08 00                                        	ret    0x8
