# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00638710,0x00638bd9); analyst name LotRouteGraph_AddStairPetVariants.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00638710 <.text+0x237710>:
  638710:	55                   	push   ebp
  638711:	8b ec                	mov    ebp,esp
  638713:	83 e4 f0             	and    esp,0xfffffff0
  638716:	81 ec e4 00 00 00    	sub    esp,0xe4
  63871c:	53                   	push   ebx
  63871d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  638720:	85 db                	test   ebx,ebx
  638722:	56                   	push   esi
  638723:	57                   	push   edi
  638724:	8b f9                	mov    edi,ecx
  638726:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  63872a:	0f 84 9e 04 00 00    	je     0x638bce
  638730:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  638733:	85 f6                	test   esi,esi
  638735:	0f 84 93 04 00 00    	je     0x638bce
  63873b:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  63873e:	68 00 02 00 00       	push   0x200
  638743:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  638748:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
  63874b:	e8 50 b6 ee ff       	call   0x523da0
  638750:	84 c0                	test   al,al
  638752:	0f 84 6b 04 00 00    	je     0x638bc3
  638758:	d9 46 20             	fld    DWORD PTR [esi+0x20]
  63875b:	d8 66 14             	fsub   DWORD PTR [esi+0x14]
  63875e:	d9 46 24             	fld    DWORD PTR [esi+0x24]
  638761:	d8 66 18             	fsub   DWORD PTR [esi+0x18]
  638764:	dc c8                	fmul   st(0),st
  638766:	d9 c1                	fld    st(1)
  638768:	de ca                	fmulp  st(2),st
  63876a:	de c1                	faddp  st(1),st
  63876c:	d9 fa                	fsqrt
  63876e:	d8 25 f4 d9 fe 00    	fsub   DWORD PTR ds:0xfed9f4
  638774:	d8 0d 7c 3f fb 00    	fmul   DWORD PTR ds:0xfb3f7c
  63877a:	d9 5c 24 2c          	fstp   DWORD PTR [esp+0x2c]
  63877e:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  638782:	db 5c 24 24          	fistp  DWORD PTR [esp+0x24]
  638786:	83 7c 24 24 01       	cmp    DWORD PTR [esp+0x24],0x1
  63878b:	c7 46 78 ff 07 00 00 	mov    DWORD PTR [esi+0x78],0x7ff
  638792:	c7 46 7c 00 00 00 00 	mov    DWORD PTR [esi+0x7c],0x0
  638799:	0f 85 87 02 00 00    	jne    0x638a26
  63879f:	f3 0f 10 05 f0 d9 fe 00 	movss  xmm0,DWORD PTR ds:0xfed9f0
  6387a7:	f3 0f 10 0d ec d9 fe 00 	movss  xmm1,DWORD PTR ds:0xfed9ec
  6387af:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  6387b5:	f3 0f 10 05 e8 d9 fe 00 	movss  xmm0,DWORD PTR ds:0xfed9e8
  6387bd:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  6387c3:	f3 0f 10 05 e4 d9 fe 00 	movss  xmm0,DWORD PTR ds:0xfed9e4
  6387cb:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  6387d1:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  6387d7:	f3 0f 10 05 e0 d9 fe 00 	movss  xmm0,DWORD PTR ds:0xfed9e0
  6387df:	f3 0f 10 2d b4 b5 f9 00 	movss  xmm5,DWORD PTR ds:0xf9b5b4
  6387e7:	f3 0f 11 4c 24 3c    	movss  DWORD PTR [esp+0x3c],xmm1
  6387ed:	f3 0f 10 0d dc d9 fe 00 	movss  xmm1,DWORD PTR ds:0xfed9dc
  6387f5:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  6387fb:	f3 0f 10 46 14       	movss  xmm0,DWORD PTR [esi+0x14]
  638800:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  638806:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  63880c:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  638812:	f3 0f 10 46 20       	movss  xmm0,DWORD PTR [esi+0x20]
  638817:	f3 0f 11 4c 24 40    	movss  DWORD PTR [esp+0x40],xmm1
  63881d:	f3 0f 10 0d d8 d9 fe 00 	movss  xmm1,DWORD PTR ds:0xfed9d8
  638825:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  63882b:	f3 0f 10 4e 18       	movss  xmm1,DWORD PTR [esi+0x18]
  638830:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  638836:	0f 28 64 24 10       	movaps xmm4,XMMWORD PTR [esp+0x10]
  63883b:	f3 0f 10 4e 24       	movss  xmm1,DWORD PTR [esi+0x24]
  638840:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  638846:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  63884c:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  638852:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  638858:	0f 28 74 24 10       	movaps xmm6,XMMWORD PTR [esp+0x10]
  63885d:	0f 29 74 24 10       	movaps XMMWORD PTR [esp+0x10],xmm6
  638862:	0f 5c f4             	subps  xmm6,xmm4
  638865:	0f 28 c6             	movaps xmm0,xmm6
  638868:	0f 59 c6             	mulps  xmm0,xmm6
  63886b:	0f 28 d0             	movaps xmm2,xmm0
  63886e:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  638872:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  638876:	0f 58 d0             	addps  xmm2,xmm0
  638879:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  638881:	0f 52 da             	rsqrtps xmm3,xmm2
  638884:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  638888:	0f 28 fb             	movaps xmm7,xmm3
  63888b:	0f 59 fb             	mulps  xmm7,xmm3
  63888e:	0f 28 c8             	movaps xmm1,xmm0
  638891:	0f 59 fa             	mulps  xmm7,xmm2
  638894:	0f 5c cf             	subps  xmm1,xmm7
  638897:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  63889b:	0f 28 fd             	movaps xmm7,xmm5
  63889e:	0f 59 fb             	mulps  xmm7,xmm3
  6388a1:	0f 59 cf             	mulps  xmm1,xmm7
  6388a4:	0f 58 cb             	addps  xmm1,xmm3
  6388a7:	0f 28 d9             	movaps xmm3,xmm1
  6388aa:	0f 59 d9             	mulps  xmm3,xmm1
  6388ad:	0f 59 da             	mulps  xmm3,xmm2
  6388b0:	0f 5c c3             	subps  xmm0,xmm3
  6388b3:	0f 59 e9             	mulps  xmm5,xmm1
  6388b6:	0f 59 c5             	mulps  xmm0,xmm5
  6388b9:	0f 58 c1             	addps  xmm0,xmm1
  6388bc:	0f 59 c6             	mulps  xmm0,xmm6
  6388bf:	0f 28 e8             	movaps xmm5,xmm0
  6388c2:	0f 29 a4 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm4
  6388ca:	0f 29 ac 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm5
  6388d2:	33 ff                	xor    edi,edi
  6388d4:	eb 1a                	jmp    0x6388f0
  6388d6:	eb 08                	jmp    0x6388e0
  6388d8:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  6388df:	90                   	nop
  6388e0:	0f 28 ac 24 d0 00 00 00 	movaps xmm5,XMMWORD PTR [esp+0xd0]
  6388e8:	0f 28 a4 24 e0 00 00 00 	movaps xmm4,XMMWORD PTR [esp+0xe0]
  6388f0:	0f 28 5c 24 10       	movaps xmm3,XMMWORD PTR [esp+0x10]
  6388f5:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
  6388f8:	8b c7                	mov    eax,edi
  6388fa:	c1 e0 04             	shl    eax,0x4
  6388fd:	f3 0f 10 4c 04 34    	movss  xmm1,DWORD PTR [esp+eax*1+0x34]
  638903:	f3 0f 10 54 04 38    	movss  xmm2,DWORD PTR [esp+eax*1+0x38]
  638909:	f3 0f 10 44 04 30    	movss  xmm0,DWORD PTR [esp+eax*1+0x30]
  63890f:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  638913:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  638917:	0f 59 d5             	mulps  xmm2,xmm5
  63891a:	0f 59 cd             	mulps  xmm1,xmm5
  63891d:	0f 58 cb             	addps  xmm1,xmm3
  638920:	0f 5c da             	subps  xmm3,xmm2
  638923:	f3 0f 10 54 04 3c    	movss  xmm2,DWORD PTR [esp+eax*1+0x3c]
  638929:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  63892d:	0f 59 c5             	mulps  xmm0,xmm5
  638930:	0f 58 c4             	addps  xmm0,xmm4
  638933:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  638937:	33 c9                	xor    ecx,ecx
  638939:	8b df                	mov    ebx,edi
  63893b:	0f 59 d5             	mulps  xmm2,xmm5
  63893e:	0f 5c e2             	subps  xmm4,xmm2
  638941:	33 c0                	xor    eax,eax
  638943:	2b d9                	sub    ebx,ecx
  638945:	0f 29 84 24 a0 00 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm0
  63894d:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  638952:	0f 29 4c 24 70       	movaps XMMWORD PTR [esp+0x70],xmm1
  638957:	0f 29 8c 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm1
  63895f:	0f 29 9c 24 90 00 00 00 	movaps XMMWORD PTR [esp+0x90],xmm3
  638967:	0f 29 9c 24 c0 00 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm3
  63896f:	0f 29 a4 24 b0 00 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm4
  638977:	0f 29 64 24 60       	movaps XMMWORD PTR [esp+0x60],xmm4
  63897c:	74 0c                	je     0x63898a
  63897e:	83 eb 01             	sub    ebx,0x1
  638981:	75 0e                	jne    0x638991
  638983:	b8 80 07 c3 00       	mov    eax,0xc30780
  638988:	eb 05                	jmp    0x63898f
  63898a:	b8 80 07 18 00       	mov    eax,0x180780
  63898f:	33 c9                	xor    ecx,ecx
  638991:	d9 84 24 b4 00 00 00 	fld    DWORD PTR [esp+0xb4]
  638998:	6a 01                	push   0x1
  63899a:	51                   	push   ecx
  63899b:	50                   	push   eax
  63899c:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  63899f:	52                   	push   edx
  6389a0:	83 ec 08             	sub    esp,0x8
  6389a3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6389a7:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  6389aa:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  6389ae:	d9 1c 24             	fstp   DWORD PTR [esp]
  6389b1:	50                   	push   eax
  6389b2:	d9 84 24 b0 00 00 00 	fld    DWORD PTR [esp+0xb0]
  6389b9:	83 ec 08             	sub    esp,0x8
  6389bc:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6389c0:	d9 84 24 e4 00 00 00 	fld    DWORD PTR [esp+0xe4]
  6389c7:	d9 1c 24             	fstp   DWORD PTR [esp]
  6389ca:	50                   	push   eax
  6389cb:	d9 84 24 9c 00 00 00 	fld    DWORD PTR [esp+0x9c]
  6389d2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6389d5:	83 ec 08             	sub    esp,0x8
  6389d8:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6389dc:	d9 84 24 b0 00 00 00 	fld    DWORD PTR [esp+0xb0]
  6389e3:	d9 1c 24             	fstp   DWORD PTR [esp]
  6389e6:	52                   	push   edx
  6389e7:	d9 84 24 d8 00 00 00 	fld    DWORD PTR [esp+0xd8]
  6389ee:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  6389f1:	83 ec 08             	sub    esp,0x8
  6389f4:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6389f8:	d9 84 24 8c 00 00 00 	fld    DWORD PTR [esp+0x8c]
  6389ff:	d9 1c 24             	fstp   DWORD PTR [esp]
  638a02:	56                   	push   esi
  638a03:	51                   	push   ecx
  638a04:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
  638a08:	52                   	push   edx
  638a09:	50                   	push   eax
  638a0a:	e8 41 fa ff ff       	call   0x638450
  638a0f:	83 c7 01             	add    edi,0x1
  638a12:	83 ff 02             	cmp    edi,0x2
  638a15:	0f 82 c5 fe ff ff    	jb     0x6388e0
  638a1b:	b0 01                	mov    al,0x1
  638a1d:	5f                   	pop    edi
  638a1e:	5e                   	pop    esi
  638a1f:	5b                   	pop    ebx
  638a20:	8b e5                	mov    esp,ebp
  638a22:	5d                   	pop    ebp
  638a23:	c2 08 00             	ret    0x8
  638a26:	f3 0f 10 4e 18       	movss  xmm1,DWORD PTR [esi+0x18]
  638a2b:	f3 0f 10 46 14       	movss  xmm0,DWORD PTR [esi+0x14]
  638a30:	f3 0f 10 56 24       	movss  xmm2,DWORD PTR [esi+0x24]
  638a35:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  638a3b:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  638a41:	f3 0f 10 46 20       	movss  xmm0,DWORD PTR [esi+0x20]
  638a46:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  638a4c:	0f 57 c9             	xorps  xmm1,xmm1
  638a4f:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  638a55:	0f 28 6c 24 10       	movaps xmm5,XMMWORD PTR [esp+0x10]
  638a5a:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  638a60:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  638a66:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  638a6c:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  638a6f:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  638a75:	0f 28 5c 24 10       	movaps xmm3,XMMWORD PTR [esp+0x10]
  638a7a:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  638a7d:	0f 28 e3             	movaps xmm4,xmm3
  638a80:	0f 5c e5             	subps  xmm4,xmm5
  638a83:	0f 28 cc             	movaps xmm1,xmm4
  638a86:	0f 59 cc             	mulps  xmm1,xmm4
  638a89:	0f 28 c1             	movaps xmm0,xmm1
  638a8c:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  638a90:	0f 28 d1             	movaps xmm2,xmm1
  638a93:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  638a97:	0f 58 c2             	addps  xmm0,xmm2
  638a9a:	f3 0f 10 15 b4 b5 f9 00 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  638aa2:	0f 58 c1             	addps  xmm0,xmm1
  638aa5:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  638aa9:	0f 28 c8             	movaps xmm1,xmm0
  638aac:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  638ab4:	0f 52 f1             	rsqrtps xmm6,xmm1
  638ab7:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  638abc:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  638ac0:	0f 28 fe             	movaps xmm7,xmm6
  638ac3:	0f 59 fe             	mulps  xmm7,xmm6
  638ac6:	0f 59 f9             	mulps  xmm7,xmm1
  638ac9:	0f 28 c8             	movaps xmm1,xmm0
  638acc:	0f 5c cf             	subps  xmm1,xmm7
  638acf:	6a 01                	push   0x1
  638ad1:	6a 00                	push   0x0
  638ad3:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  638ad7:	0f 28 fa             	movaps xmm7,xmm2
  638ada:	0f 59 fe             	mulps  xmm7,xmm6
  638add:	0f 59 cf             	mulps  xmm1,xmm7
  638ae0:	0f 58 ce             	addps  xmm1,xmm6
  638ae3:	68 80 07 db 00       	push   0xdb0780
  638ae8:	0f 28 f1             	movaps xmm6,xmm1
  638aeb:	0f 59 f1             	mulps  xmm6,xmm1
  638aee:	0f 59 74 24 5c       	mulps  xmm6,XMMWORD PTR [esp+0x5c]
  638af3:	50                   	push   eax
  638af4:	83 ec 08             	sub    esp,0x8
  638af7:	0f 29 6c 24 68       	movaps XMMWORD PTR [esp+0x68],xmm5
  638afc:	d9 44 24 70          	fld    DWORD PTR [esp+0x70]
  638b00:	0f 29 ac 24 b8 00 00 00 	movaps XMMWORD PTR [esp+0xb8],xmm5
  638b08:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638b0c:	0f 5c c6             	subps  xmm0,xmm6
  638b0f:	d9 84 24 b8 00 00 00 	fld    DWORD PTR [esp+0xb8]
  638b16:	0f 29 9c 24 98 00 00 00 	movaps XMMWORD PTR [esp+0x98],xmm3
  638b1e:	d9 1c 24             	fstp   DWORD PTR [esp]
  638b21:	51                   	push   ecx
  638b22:	d9 84 24 a4 00 00 00 	fld    DWORD PTR [esp+0xa4]
  638b29:	83 ec 08             	sub    esp,0x8
  638b2c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638b30:	0f 59 d1             	mulps  xmm2,xmm1
  638b33:	0f 59 c2             	mulps  xmm0,xmm2
  638b36:	0f 58 c1             	addps  xmm0,xmm1
  638b39:	f3 0f 10 0d d4 d9 fe 00 	movss  xmm1,DWORD PTR ds:0xfed9d4
  638b41:	0f 29 9c 24 94 00 00 00 	movaps XMMWORD PTR [esp+0x94],xmm3
  638b49:	d9 84 24 94 00 00 00 	fld    DWORD PTR [esp+0x94]
  638b50:	0f 59 c4             	mulps  xmm0,xmm4
  638b53:	d9 1c 24             	fstp   DWORD PTR [esp]
  638b56:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  638b5a:	0f 59 c1             	mulps  xmm0,xmm1
  638b5d:	0f 58 c5             	addps  xmm0,xmm5
  638b60:	51                   	push   ecx
  638b61:	0f 29 9c 24 e8 00 00 00 	movaps XMMWORD PTR [esp+0xe8],xmm3
  638b69:	0f 29 9c 24 b8 00 00 00 	movaps XMMWORD PTR [esp+0xb8],xmm3
  638b71:	0f 29 84 24 88 00 00 00 	movaps XMMWORD PTR [esp+0x88],xmm0
  638b79:	0f 29 84 24 d8 00 00 00 	movaps XMMWORD PTR [esp+0xd8],xmm0
  638b81:	83 ec 08             	sub    esp,0x8
  638b84:	d9 84 24 f8 00 00 00 	fld    DWORD PTR [esp+0xf8]
  638b8b:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  638b8e:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  638b91:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638b95:	d9 84 24 c0 00 00 00 	fld    DWORD PTR [esp+0xc0]
  638b9c:	d9 1c 24             	fstp   DWORD PTR [esp]
  638b9f:	50                   	push   eax
  638ba0:	d9 84 24 9c 00 00 00 	fld    DWORD PTR [esp+0x9c]
  638ba7:	83 ec 08             	sub    esp,0x8
  638baa:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  638bae:	d9 84 24 ec 00 00 00 	fld    DWORD PTR [esp+0xec]
  638bb5:	d9 1c 24             	fstp   DWORD PTR [esp]
  638bb8:	56                   	push   esi
  638bb9:	51                   	push   ecx
  638bba:	52                   	push   edx
  638bbb:	53                   	push   ebx
  638bbc:	8b cf                	mov    ecx,edi
  638bbe:	e8 8d f8 ff ff       	call   0x638450
  638bc3:	b0 01                	mov    al,0x1
  638bc5:	5f                   	pop    edi
  638bc6:	5e                   	pop    esi
  638bc7:	5b                   	pop    ebx
  638bc8:	8b e5                	mov    esp,ebp
  638bca:	5d                   	pop    ebp
  638bcb:	c2 08 00             	ret    0x8
  638bce:	5f                   	pop    edi
  638bcf:	5e                   	pop    esi
  638bd0:	32 c0                	xor    al,al
  638bd2:	5b                   	pop    ebx
  638bd3:	8b e5                	mov    esp,ebp
  638bd5:	5d                   	pop    ebp
  638bd6:	c2 08 00             	ret    0x8
