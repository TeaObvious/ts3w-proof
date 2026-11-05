# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00586760 <.text+0x185760>:
  586760:	55                   	push   ebp
  586761:	8b ec                	mov    ebp,esp
  586763:	83 e4 f0             	and    esp,0xfffffff0
  586766:	81 ec d4 00 00 00    	sub    esp,0xd4
  58676c:	53                   	push   ebx
  58676d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  586770:	56                   	push   esi
  586771:	57                   	push   edi
  586772:	8b cb                	mov    ecx,ebx
  586774:	e8 17 db fe ff       	call   0x574290
  586779:	d9 7c 24 14          	fnstcw WORD PTR [esp+0x14]
  58677d:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  586780:	f3 0f 10 4f 10       	movss  xmm1,DWORD PTR [edi+0x10]
  586785:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  58678c:	00 
  58678d:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  586791:	8b 43 30             	mov    eax,DWORD PTR [ebx+0x30]
  586794:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  586798:	0f b7 44 24 14       	movzx  eax,WORD PTR [esp+0x14]
  58679d:	0f 28 d0             	movaps xmm2,xmm0
  5867a0:	f3 0f 5e d1          	divss  xmm2,xmm1
  5867a4:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  5867aa:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  5867ae:	0d 00 0c 00 00       	or     eax,0xc00
  5867b3:	d9 c0                	fld    st(0)
  5867b5:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  5867b9:	d9 45 10             	fld    DWORD PTR [ebp+0x10]
  5867bc:	f3 0f 11 4c 24 10    	movss  DWORD PTR [esp+0x10],xmm1
  5867c2:	dc c9                	fmul   st(1),st
  5867c4:	d9 6c 24 0c          	fldcw  WORD PTR [esp+0xc]
  5867c8:	d9 c9                	fxch   st(1)
  5867ca:	df 7c 24 20          	fistp  QWORD PTR [esp+0x20]
  5867ce:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  5867d2:	8b d1                	mov    edx,ecx
  5867d4:	85 d2                	test   edx,edx
  5867d6:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  5867da:	d9 6c 24 14          	fldcw  WORD PTR [esp+0x14]
  5867de:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  5867e2:	db 44 24 20          	fild   DWORD PTR [esp+0x20]
  5867e6:	7d 06                	jge    0x5867ee
  5867e8:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  5867ee:	d8 4c 24 10          	fmul   DWORD PTR [esp+0x10]
  5867f2:	0f 57 c9             	xorps  xmm1,xmm1
  5867f5:	0f 28 d0             	movaps xmm2,xmm0
  5867f8:	de e9                	fsubp  st(1),st
  5867fa:	de c9                	fmulp  st(1),st
  5867fc:	d9 c0                	fld    st(0)
  5867fe:	d9 e0                	fchs
  586800:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  586804:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  586808:	c1 f8 1f             	sar    eax,0x1f
  58680b:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  58680f:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  586813:	8b d0                	mov    edx,eax
  586815:	f7 d2                	not    edx
  586817:	23 f0                	and    esi,eax
  586819:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  58681f:	23 54 24 0c          	and    edx,DWORD PTR [esp+0xc]
  586823:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  586829:	0b d6                	or     edx,esi
  58682b:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  58682f:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  586833:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  586839:	f3 0f 5c d1          	subss  xmm2,xmm1
  58683d:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  586843:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  586847:	c1 f8 1f             	sar    eax,0x1f
  58684a:	8b d0                	mov    edx,eax
  58684c:	f7 d2                	not    edx
  58684e:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  586854:	23 54 24 0c          	and    edx,DWORD PTR [esp+0xc]
  586858:	23 f0                	and    esi,eax
  58685a:	8b 47 20             	mov    eax,DWORD PTR [edi+0x20]
  58685d:	0b d6                	or     edx,esi
  58685f:	83 f8 ff             	cmp    eax,0xffffffff
  586862:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  586866:	75 04                	jne    0x58686c
  586868:	33 f6                	xor    esi,esi
  58686a:	eb 03                	jmp    0x58686f
  58686c:	8d 34 38             	lea    esi,[eax+edi*1]
  58686f:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
  586872:	83 f8 ff             	cmp    eax,0xffffffff
  586875:	75 0a                	jne    0x586881
  586877:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  58687e:	00 
  58687f:	eb 06                	jmp    0x586887
  586881:	03 c7                	add    eax,edi
  586883:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  586887:	33 d2                	xor    edx,edx
  586889:	39 57 18             	cmp    DWORD PTR [edi+0x18],edx
  58688c:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  586890:	0f 86 2f 04 00 00    	jbe    0x586cc5
  586896:	83 c6 04             	add    esi,0x4
  586899:	eb 09                	jmp    0x5868a4
  58689b:	eb 03                	jmp    0x5868a0
  58689d:	8d 49 00             	lea    ecx,[ecx+0x0]
  5868a0:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  5868a4:	8b 06                	mov    eax,DWORD PTR [esi]
  5868a6:	3d ae a8 f0 2a       	cmp    eax,0x2af0a8ae
  5868ab:	0f 84 fa 03 00 00    	je     0x586cab
  5868b1:	80 7e 0f 07          	cmp    BYTE PTR [esi+0xf],0x7
  5868b5:	75 57                	jne    0x58690e
  5868b7:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  5868bb:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  5868bf:	8d 54 24 20          	lea    edx,[esp+0x20]
  5868c3:	52                   	push   edx
  5868c4:	8d 44 24 30          	lea    eax,[esp+0x30]
  5868c8:	50                   	push   eax
  5868c9:	8d 54 24 44          	lea    edx,[esp+0x44]
  5868cd:	52                   	push   edx
  5868ce:	8d 41 01             	lea    eax,[ecx+0x1]
  5868d1:	50                   	push   eax
  5868d2:	51                   	push   ecx
  5868d3:	8d 46 fc             	lea    eax,[esi-0x4]
  5868d6:	50                   	push   eax
  5868d7:	57                   	push   edi
  5868d8:	e8 13 f5 ff ff       	call   0x585df0
  5868dd:	f3 0f 10 44 24 58    	movss  xmm0,DWORD PTR [esp+0x58]
  5868e3:	f3 0f 10 4c 24 48    	movss  xmm1,DWORD PTR [esp+0x48]
  5868e9:	8b 0e                	mov    ecx,DWORD PTR [esi]
  5868eb:	f3 0f 5c c8          	subss  xmm1,xmm0
  5868ef:	f3 0f 59 4c 24 30    	mulss  xmm1,DWORD PTR [esp+0x30]
  5868f5:	83 c4 18             	add    esp,0x18
  5868f8:	f3 0f 58 c8          	addss  xmm1,xmm0
  5868fc:	f3 0f 11 0c 24       	movss  DWORD PTR [esp],xmm1
  586901:	51                   	push   ecx
  586902:	8b cb                	mov    ecx,ebx
  586904:	e8 17 e6 fe ff       	call   0x574f20
  586909:	e9 9d 03 00 00       	jmp    0x586cab
  58690e:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  586911:	85 c9                	test   ecx,ecx
  586913:	74 05                	je     0x58691a
  586915:	8b 1c 91             	mov    ebx,DWORD PTR [ecx+edx*4]
  586918:	eb 0f                	jmp    0x586929
  58691a:	8b 4c 24 4c          	mov    ecx,DWORD PTR [esp+0x4c]
  58691e:	50                   	push   eax
  58691f:	83 c1 28             	add    ecx,0x28
  586922:	e8 59 f3 fe ff       	call   0x575c80
  586927:	8b d8                	mov    ebx,eax
  586929:	85 db                	test   ebx,ebx
  58692b:	0f 8c 7a 03 00 00    	jl     0x586cab
  586931:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  586935:	8d 44 24 20          	lea    eax,[esp+0x20]
  586939:	50                   	push   eax
  58693a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  58693e:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  586942:	51                   	push   ecx
  586943:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  586947:	8d 54 24 44          	lea    edx,[esp+0x44]
  58694b:	52                   	push   edx
  58694c:	83 c0 01             	add    eax,0x1
  58694f:	50                   	push   eax
  586950:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  586954:	50                   	push   eax
  586955:	8d 4e fc             	lea    ecx,[esi-0x4]
  586958:	51                   	push   ecx
  586959:	57                   	push   edi
  58695a:	e8 91 f4 ff ff       	call   0x585df0
  58695f:	0f b6 46 0f          	movzx  eax,BYTE PTR [esi+0xf]
  586963:	83 c4 1c             	add    esp,0x1c
  586966:	83 e8 01             	sub    eax,0x1
  586969:	0f 84 ae 02 00 00    	je     0x586c1d
  58696f:	83 e8 01             	sub    eax,0x1
  586972:	0f 84 ac 00 00 00    	je     0x586a24
  586978:	83 e8 01             	sub    eax,0x1
  58697b:	0f 85 2a 03 00 00    	jne    0x586cab
  586981:	f3 0f 10 44 24 3c    	movss  xmm0,DWORD PTR [esp+0x3c]
  586987:	f3 0f 10 4c 24 44    	movss  xmm1,DWORD PTR [esp+0x44]
  58698d:	f3 0f 10 54 24 34    	movss  xmm2,DWORD PTR [esp+0x34]
  586993:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  586997:	f3 0f 11 94 24 a8 00 	movss  DWORD PTR [esp+0xa8],xmm2
  58699e:	00 00 
  5869a0:	f3 0f 10 54 24 30    	movss  xmm2,DWORD PTR [esp+0x30]
  5869a6:	f3 0f 11 84 24 bc 00 	movss  DWORD PTR [esp+0xbc],xmm0
  5869ad:	00 00 
  5869af:	f3 0f 11 84 24 b0 00 	movss  DWORD PTR [esp+0xb0],xmm0
  5869b6:	00 00 
  5869b8:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  5869be:	f3 0f 11 8c 24 b8 00 	movss  DWORD PTR [esp+0xb8],xmm1
  5869c5:	00 00 
  5869c7:	f3 0f 10 4c 24 40    	movss  xmm1,DWORD PTR [esp+0x40]
  5869cd:	f3 0f 11 94 24 a4 00 	movss  DWORD PTR [esp+0xa4],xmm2
  5869d4:	00 00 
  5869d6:	f3 0f 11 84 24 ac 00 	movss  DWORD PTR [esp+0xac],xmm0
  5869dd:	00 00 
  5869df:	f3 0f 11 84 24 a0 00 	movss  DWORD PTR [esp+0xa0],xmm0
  5869e6:	00 00 
  5869e8:	0f 28 94 24 a0 00 00 	movaps xmm2,XMMWORD PTR [esp+0xa0]
  5869ef:	00 
  5869f0:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  5869f6:	f3 0f 11 8c 24 b4 00 	movss  DWORD PTR [esp+0xb4],xmm1
  5869fd:	00 00 
  5869ff:	0f 28 8c 24 b0 00 00 	movaps xmm1,XMMWORD PTR [esp+0xb0]
  586a06:	00 
  586a07:	0f 5c d1             	subps  xmm2,xmm1
  586a0a:	8d 14 5b             	lea    edx,[ebx+ebx*2]
  586a0d:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  586a11:	0f 59 d0             	mulps  xmm2,xmm0
  586a14:	c1 e2 04             	shl    edx,0x4
  586a17:	0f 58 d1             	addps  xmm2,xmm1
  586a1a:	0f 29 54 02 20       	movaps XMMWORD PTR [edx+eax*1+0x20],xmm2
  586a1f:	e9 87 02 00 00       	jmp    0x586cab
  586a24:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  586a2a:	f3 0f 10 1d 50 cb fc 	movss  xmm3,DWORD PTR ds:0xfccb50
  586a31:	00 
  586a32:	f3 0f 11 84 24 8c 00 	movss  DWORD PTR [esp+0x8c],xmm0
  586a39:	00 00 
  586a3b:	f3 0f 10 44 24 44    	movss  xmm0,DWORD PTR [esp+0x44]
  586a41:	f3 0f 11 84 24 88 00 	movss  DWORD PTR [esp+0x88],xmm0
  586a48:	00 00 
  586a4a:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  586a50:	f3 0f 11 84 24 84 00 	movss  DWORD PTR [esp+0x84],xmm0
  586a57:	00 00 
  586a59:	f3 0f 10 44 24 3c    	movss  xmm0,DWORD PTR [esp+0x3c]
  586a5f:	f3 0f 11 84 24 80 00 	movss  DWORD PTR [esp+0x80],xmm0
  586a66:	00 00 
  586a68:	f3 0f 10 44 24 38    	movss  xmm0,DWORD PTR [esp+0x38]
  586a6e:	0f 28 a4 24 80 00 00 	movaps xmm4,XMMWORD PTR [esp+0x80]
  586a75:	00 
  586a76:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  586a7c:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  586a82:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  586a88:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  586a8e:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  586a94:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  586a9a:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  586aa0:	0f 57 c0             	xorps  xmm0,xmm0
  586aa3:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  586aa8:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  586aae:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  586ab4:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  586aba:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  586ac0:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  586ac7:	00 
  586ac8:	0f 28 6c 24 60       	movaps xmm5,XMMWORD PTR [esp+0x60]
  586acd:	0f 28 d4             	movaps xmm2,xmm4
  586ad0:	0f 5c d5             	subps  xmm2,xmm5
  586ad3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  586ad7:	0f 28 f0             	movaps xmm6,xmm0
  586ada:	0f 59 f2             	mulps  xmm6,xmm2
  586add:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  586ae1:	0f 5f f2             	maxps  xmm6,xmm2
  586ae4:	0f c2 f3 02          	cmpleps xmm6,xmm3
  586ae8:	0f 50 ce             	movmskps ecx,xmm6
  586aeb:	83 f9 0f             	cmp    ecx,0xf
  586aee:	75 53                	jne    0x586b43
  586af0:	0f 28 d1             	movaps xmm2,xmm1
  586af3:	0f 5c d5             	subps  xmm2,xmm5
  586af6:	0f 59 c2             	mulps  xmm0,xmm2
  586af9:	0f 5f c2             	maxps  xmm0,xmm2
  586afc:	0f c2 c3 02          	cmpleps xmm0,xmm3
  586b00:	0f 50 d0             	movmskps edx,xmm0
  586b03:	3b d1                	cmp    edx,ecx
  586b05:	75 3c                	jne    0x586b43
  586b07:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  586b0e:	00 
  586b0f:	0f 29 a4 24 c0 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm4
  586b16:	00 
  586b17:	0f 29 8c 24 d0 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm1
  586b1e:	00 
  586b1f:	f3 0f 11 84 24 cc 00 	movss  DWORD PTR [esp+0xcc],xmm0
  586b26:	00 00 
  586b28:	0f 28 a4 24 c0 00 00 	movaps xmm4,XMMWORD PTR [esp+0xc0]
  586b2f:	00 
  586b30:	f3 0f 11 84 24 dc 00 	movss  DWORD PTR [esp+0xdc],xmm0
  586b37:	00 00 
  586b39:	0f 28 8c 24 d0 00 00 	movaps xmm1,XMMWORD PTR [esp+0xd0]
  586b40:	00 
  586b41:	eb 08                	jmp    0x586b4b
  586b43:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  586b4a:	00 
  586b4b:	f3 0f 10 6c 24 14    	movss  xmm5,DWORD PTR [esp+0x14]
  586b51:	0f 28 d1             	movaps xmm2,xmm1
  586b54:	0f 59 d4             	mulps  xmm2,xmm4
  586b57:	0f 28 f1             	movaps xmm6,xmm1
  586b5a:	0f 5c cc             	subps  xmm1,xmm4
  586b5d:	0f 28 da             	movaps xmm3,xmm2
  586b60:	0f c6 da 0e          	shufps xmm3,xmm2,0xe
  586b64:	0f 58 da             	addps  xmm3,xmm2
  586b67:	0f 28 d3             	movaps xmm2,xmm3
  586b6a:	0f c6 d3 01          	shufps xmm2,xmm3,0x1
  586b6e:	0f 58 d3             	addps  xmm2,xmm3
  586b71:	0f 58 f4             	addps  xmm6,xmm4
  586b74:	0f 57 db             	xorps  xmm3,xmm3
  586b77:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  586b7b:	0f c2 da 01          	cmpltps xmm3,xmm2
  586b7f:	0f 28 d3             	movaps xmm2,xmm3
  586b82:	0f 28 fc             	movaps xmm7,xmm4
  586b85:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  586b89:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  586b8d:	0f 59 cd             	mulps  xmm1,xmm5
  586b90:	0f 58 cc             	addps  xmm1,xmm4
  586b93:	0f 54 cb             	andps  xmm1,xmm3
  586b96:	0f 59 f5             	mulps  xmm6,xmm5
  586b99:	0f 5c fe             	subps  xmm7,xmm6
  586b9c:	0f 55 d7             	andnps xmm2,xmm7
  586b9f:	0f 56 d1             	orps   xmm2,xmm1
  586ba2:	0f 28 ca             	movaps xmm1,xmm2
  586ba5:	0f 59 ca             	mulps  xmm1,xmm2
  586ba8:	0f 28 d9             	movaps xmm3,xmm1
  586bab:	0f c6 d9 0e          	shufps xmm3,xmm1,0xe
  586baf:	0f 58 d9             	addps  xmm3,xmm1
  586bb2:	0f 28 cb             	movaps xmm1,xmm3
  586bb5:	0f c6 cb 01          	shufps xmm1,xmm3,0x1
  586bb9:	0f 58 cb             	addps  xmm1,xmm3
  586bbc:	f3 0f 10 1d b4 b5 f9 	movss  xmm3,DWORD PTR ds:0xf9b5b4
  586bc3:	00 
  586bc4:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  586bc8:	0f 28 e9             	movaps xmm5,xmm1
  586bcb:	0f 52 e5             	rsqrtps xmm4,xmm5
  586bce:	f3 0f 10 c0          	movss  xmm0,xmm0
  586bd2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  586bd6:	0f 28 f4             	movaps xmm6,xmm4
  586bd9:	0f 59 f4             	mulps  xmm6,xmm4
  586bdc:	0f 28 c8             	movaps xmm1,xmm0
  586bdf:	0f 59 f5             	mulps  xmm6,xmm5
  586be2:	0f 5c ce             	subps  xmm1,xmm6
  586be5:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  586be9:	0f 28 f3             	movaps xmm6,xmm3
  586bec:	0f 59 f4             	mulps  xmm6,xmm4
  586bef:	0f 59 ce             	mulps  xmm1,xmm6
  586bf2:	0f 58 cc             	addps  xmm1,xmm4
  586bf5:	0f 28 e1             	movaps xmm4,xmm1
  586bf8:	0f 59 e1             	mulps  xmm4,xmm1
  586bfb:	0f 59 e5             	mulps  xmm4,xmm5
  586bfe:	0f 5c c4             	subps  xmm0,xmm4
  586c01:	0f 59 d9             	mulps  xmm3,xmm1
  586c04:	0f 59 c3             	mulps  xmm0,xmm3
  586c07:	8d 04 5b             	lea    eax,[ebx+ebx*2]
  586c0a:	0f 58 c1             	addps  xmm0,xmm1
  586c0d:	c1 e0 04             	shl    eax,0x4
  586c10:	0f 59 c2             	mulps  xmm0,xmm2
  586c13:	0f 29 44 08 10       	movaps XMMWORD PTR [eax+ecx*1+0x10],xmm0
  586c18:	e9 8e 00 00 00       	jmp    0x586cab
  586c1d:	f3 0f 10 44 24 3c    	movss  xmm0,DWORD PTR [esp+0x3c]
  586c23:	f3 0f 10 4c 24 44    	movss  xmm1,DWORD PTR [esp+0x44]
  586c29:	f3 0f 10 54 24 34    	movss  xmm2,DWORD PTR [esp+0x34]
  586c2f:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  586c33:	f3 0f 11 94 24 98 00 	movss  DWORD PTR [esp+0x98],xmm2
  586c3a:	00 00 
  586c3c:	f3 0f 10 54 24 30    	movss  xmm2,DWORD PTR [esp+0x30]
  586c42:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  586c48:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  586c4e:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  586c54:	f3 0f 11 4c 24 78    	movss  DWORD PTR [esp+0x78],xmm1
  586c5a:	f3 0f 10 4c 24 40    	movss  xmm1,DWORD PTR [esp+0x40]
  586c60:	f3 0f 11 94 24 94 00 	movss  DWORD PTR [esp+0x94],xmm2
  586c67:	00 00 
  586c69:	f3 0f 11 84 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm0
  586c70:	00 00 
  586c72:	f3 0f 11 84 24 90 00 	movss  DWORD PTR [esp+0x90],xmm0
  586c79:	00 00 
  586c7b:	0f 28 94 24 90 00 00 	movaps xmm2,XMMWORD PTR [esp+0x90]
  586c82:	00 
  586c83:	f3 0f 10 44 24 14    	movss  xmm0,DWORD PTR [esp+0x14]
  586c89:	f3 0f 11 4c 24 74    	movss  DWORD PTR [esp+0x74],xmm1
  586c8f:	0f 28 4c 24 70       	movaps xmm1,XMMWORD PTR [esp+0x70]
  586c94:	0f 5c d1             	subps  xmm2,xmm1
  586c97:	8d 14 5b             	lea    edx,[ebx+ebx*2]
  586c9a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  586c9e:	0f 59 d0             	mulps  xmm2,xmm0
  586ca1:	c1 e2 04             	shl    edx,0x4
  586ca4:	0f 58 d1             	addps  xmm2,xmm1
  586ca7:	0f 29 14 02          	movaps XMMWORD PTR [edx+eax*1],xmm2
  586cab:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  586caf:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  586cb2:	83 c2 01             	add    edx,0x1
  586cb5:	83 c6 14             	add    esi,0x14
  586cb8:	3b 57 18             	cmp    edx,DWORD PTR [edi+0x18]
  586cbb:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  586cbf:	0f 82 db fb ff ff    	jb     0x5868a0
  586cc5:	80 7d 18 00          	cmp    BYTE PTR [ebp+0x18],0x0
  586cc9:	74 09                	je     0x586cd4
  586ccb:	53                   	push   ebx
  586ccc:	e8 9f d7 ff ff       	call   0x584470
  586cd1:	83 c4 04             	add    esp,0x4
  586cd4:	5f                   	pop    edi
  586cd5:	5e                   	pop    esi
  586cd6:	b0 01                	mov    al,0x1
  586cd8:	5b                   	pop    ebx
  586cd9:	8b e5                	mov    esp,ebp
  586cdb:	5d                   	pop    ebp
  586cdc:	c3                   	ret
