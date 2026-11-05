# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x009758d0, 0x00978b1e).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

009758d0 <.text+0x5748d0>:
  9758d0:	55                   	push   ebp
  9758d1:	8b ec                	mov    ebp,esp
  9758d3:	83 e4 f0             	and    esp,0xfffffff0
  9758d6:	81 ec 74 09 00 00    	sub    esp,0x974
  9758dc:	f3 0f 10 1d 18 b2 fa 	movss  xmm3,DWORD PTR ds:0xfab218
  9758e3:	00
  9758e4:	f3 0f 10 0d c8 6c 04 	movss  xmm1,DWORD PTR ds:0x1046cc8
  9758eb:	01
  9758ec:	f3 0f 10 45 08       	movss  xmm0,DWORD PTR [ebp+0x8]
  9758f1:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9758f5:	0f 28 e1             	movaps xmm4,xmm1
  9758f8:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9758fc:	f3 0f 10 d3          	movss  xmm2,xmm3
  975900:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  975904:	0f 28 ca             	movaps xmm1,xmm2
  975907:	0f 59 c8             	mulps  xmm1,xmm0
  97590a:	53                   	push   ebx
  97590b:	0f 5f c8             	maxps  xmm1,xmm0
  97590e:	56                   	push   esi
  97590f:	0f c2 cc 02          	cmpleps xmm1,xmm4
  975913:	0f 50 c1             	movmskps eax,xmm1
  975916:	83 f8 0f             	cmp    eax,0xf
  975919:	57                   	push   edi
  97591a:	8b f1                	mov    esi,ecx
  97591c:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm0
  975923:	00
  975924:	0f 29 94 24 f0 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm2
  97592b:	00
  97592c:	0f 29 a4 24 40 01 00 	movaps XMMWORD PTR [esp+0x140],xmm4
  975933:	00
  975934:	0f 85 83 00 00 00    	jne    0x9759bd
  97593a:	0f 28 86 70 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x770]
  975941:	0f 28 9e 80 07 00 00 	movaps xmm3,XMMWORD PTR [esi+0x780]
  975948:	0f 5c d8             	subps  xmm3,xmm0
  97594b:	0f 28 cb             	movaps xmm1,xmm3
  97594e:	0f 59 cb             	mulps  xmm1,xmm3
  975951:	0f 28 c1             	movaps xmm0,xmm1
  975954:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  975958:	0f 28 e9             	movaps xmm5,xmm1
  97595b:	0f c6 e9 01          	shufps xmm5,xmm1,0x1
  97595f:	0f 58 c5             	addps  xmm0,xmm5
  975962:	0f 58 c1             	addps  xmm0,xmm1
  975965:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  975969:	0f 51 c0             	sqrtps xmm0,xmm0
  97596c:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [esp+0x170],xmm0
  975973:	00
  975974:	f3 0f 10 84 24 70 01 	movss  xmm0,DWORD PTR [esp+0x170]
  97597b:	00 00
  97597d:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  975981:	0f 59 d0             	mulps  xmm2,xmm0
  975984:	0f 5f d0             	maxps  xmm2,xmm0
  975987:	0f c2 d4 02          	cmpleps xmm2,xmm4
  97598b:	0f 50 ca             	movmskps ecx,xmm2
  97598e:	3b c8                	cmp    ecx,eax
  975990:	0f 29 9c 24 90 03 00 	movaps XMMWORD PTR [esp+0x390],xmm3
  975997:	00
  975998:	74 0b                	je     0x9759a5
  97599a:	0f 5e d8             	divps  xmm3,xmm0
  97599d:	0f 29 9c 24 90 03 00 	movaps XMMWORD PTR [esp+0x390],xmm3
  9759a4:	00
  9759a5:	d9 84 24 70 01 00 00 	fld    DWORD PTR [esp+0x170]
  9759ac:	51                   	push   ecx
  9759ad:	8d 94 24 94 03 00 00 	lea    edx,[esp+0x394]
  9759b4:	d9 1c 24             	fstp   DWORD PTR [esp]
  9759b7:	52                   	push   edx
  9759b8:	e9 4a 31 00 00       	jmp    0x978b07
  9759bd:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  9759c1:	75 23                	jne    0x9759e6
  9759c3:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  9759c7:	75 1d                	jne    0x9759e6
  9759c9:	e8 72 a6 ff ff       	call   0x970040
  9759ce:	84 c0                	test   al,al
  9759d0:	75 0c                	jne    0x9759de
  9759d2:	38 86 18 08 00 00    	cmp    BYTE PTR [esi+0x818],al
  9759d8:	0f 84 37 31 00 00    	je     0x978b15
  9759de:	f3 0f 10 1d 18 b2 fa 	movss  xmm3,DWORD PTR ds:0xfab218
  9759e5:	00
  9759e6:	f6 86 80 08 00 00 01 	test   BYTE PTR [esi+0x880],0x1
  9759ed:	0f 57 e4             	xorps  xmm4,xmm4
  9759f0:	f3 0f 10 2d f8 98 f9 	movss  xmm5,DWORD PTR ds:0xf998f8
  9759f7:	00
  9759f8:	74 05                	je     0x9759ff
  9759fa:	0f 28 c5             	movaps xmm0,xmm5
  9759fd:	eb 03                	jmp    0x975a02
  9759ff:	0f 28 c4             	movaps xmm0,xmm4
  975a02:	f3 0f 11 86 d0 03 00 	movss  DWORD PTR [esi+0x3d0],xmm0
  975a09:	00
  975a0a:	f6 86 80 08 00 00 02 	test   BYTE PTR [esi+0x880],0x2
  975a11:	74 05                	je     0x975a18
  975a13:	0f 28 c3             	movaps xmm0,xmm3
  975a16:	eb 03                	jmp    0x975a1b
  975a18:	0f 28 c4             	movaps xmm0,xmm4
  975a1b:	f3 0f 11 86 a0 03 00 	movss  DWORD PTR [esi+0x3a0],xmm0
  975a22:	00
  975a23:	f6 86 80 08 00 00 10 	test   BYTE PTR [esi+0x880],0x10
  975a2a:	74 05                	je     0x975a31
  975a2c:	0f 28 cd             	movaps xmm1,xmm5
  975a2f:	eb 03                	jmp    0x975a34
  975a31:	0f 28 cc             	movaps xmm1,xmm4
  975a34:	0f 28 96 90 03 00 00 	movaps xmm2,XMMWORD PTR [esi+0x390]
  975a3b:	f3 0f 10 c9          	movss  xmm1,xmm1
  975a3f:	0f 28 c2             	movaps xmm0,xmm2
  975a42:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  975a46:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  975a4a:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  975a4e:	0f 29 86 90 03 00 00 	movaps XMMWORD PTR [esi+0x390],xmm0
  975a55:	f6 86 80 08 00 00 20 	test   BYTE PTR [esi+0x880],0x20
  975a5c:	74 05                	je     0x975a63
  975a5e:	0f 28 cb             	movaps xmm1,xmm3
  975a61:	eb 03                	jmp    0x975a66
  975a63:	0f 28 cc             	movaps xmm1,xmm4
  975a66:	0f 28 96 c0 03 00 00 	movaps xmm2,XMMWORD PTR [esi+0x3c0]
  975a6d:	f3 0f 10 c9          	movss  xmm1,xmm1
  975a71:	0f 28 c2             	movaps xmm0,xmm2
  975a74:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  975a78:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  975a7c:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  975a80:	0f 29 86 c0 03 00 00 	movaps XMMWORD PTR [esi+0x3c0],xmm0
  975a87:	f6 86 80 08 00 00 04 	test   BYTE PTR [esi+0x880],0x4
  975a8e:	74 05                	je     0x975a95
  975a90:	0f 28 cb             	movaps xmm1,xmm3
  975a93:	eb 03                	jmp    0x975a98
  975a95:	0f 28 cc             	movaps xmm1,xmm4
  975a98:	0f 28 96 90 03 00 00 	movaps xmm2,XMMWORD PTR [esi+0x390]
  975a9f:	f3 0f 10 c9          	movss  xmm1,xmm1
  975aa3:	0f 28 c2             	movaps xmm0,xmm2
  975aa6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  975aaa:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  975aae:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  975ab2:	0f 29 86 90 03 00 00 	movaps XMMWORD PTR [esi+0x390],xmm0
  975ab9:	f6 86 80 08 00 00 08 	test   BYTE PTR [esi+0x880],0x8
  975ac0:	74 05                	je     0x975ac7
  975ac2:	0f 28 cd             	movaps xmm1,xmm5
  975ac5:	eb 03                	jmp    0x975aca
  975ac7:	0f 28 cc             	movaps xmm1,xmm4
  975aca:	0f 28 96 c0 03 00 00 	movaps xmm2,XMMWORD PTR [esi+0x3c0]
  975ad1:	f3 0f 10 c9          	movss  xmm1,xmm1
  975ad5:	0f 28 c2             	movaps xmm0,xmm2
  975ad8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  975adc:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  975ae0:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  975ae4:	0f 29 86 c0 03 00 00 	movaps XMMWORD PTR [esi+0x3c0],xmm0
  975aeb:	e8 a0 54 b9 ff       	call   0x50af90
  975af0:	8b d8                	mov    ebx,eax
  975af2:	e8 19 8e c9 ff       	call   0x60e910
  975af7:	85 db                	test   ebx,ebx
  975af9:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  975afd:	0f 84 d5 01 00 00    	je     0x975cd8
  975b03:	85 c0                	test   eax,eax
  975b05:	0f 84 cd 01 00 00    	je     0x975cd8
  975b0b:	8b 03                	mov    eax,DWORD PTR [ebx]
  975b0d:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  975b10:	8b cb                	mov    ecx,ebx
  975b12:	ff d2                	call   edx
  975b14:	85 c0                	test   eax,eax
  975b16:	0f 84 bc 01 00 00    	je     0x975cd8
  975b1c:	8b 10                	mov    edx,DWORD PTR [eax]
  975b1e:	8b c8                	mov    ecx,eax
  975b20:	8b 42 38             	mov    eax,DWORD PTR [edx+0x38]
  975b23:	ff d0                	call   eax
  975b25:	8b 4c 24 6c          	mov    ecx,DWORD PTR [esp+0x6c]
  975b29:	8b f8                	mov    edi,eax
  975b2b:	e8 20 93 c9 ff       	call   0x60ee50
  975b30:	84 c0                	test   al,al
  975b32:	0f 85 8f 01 00 00    	jne    0x975cc7
  975b38:	38 86 cc 08 00 00    	cmp    BYTE PTR [esi+0x8cc],al
  975b3e:	0f 84 83 01 00 00    	je     0x975cc7
  975b44:	8d 4e 40             	lea    ecx,[esi+0x40]
  975b47:	e8 04 c4 fe ff       	call   0x961f50
  975b4c:	84 c0                	test   al,al
  975b4e:	0f 85 73 01 00 00    	jne    0x975cc7
  975b54:	8b 13                	mov    edx,DWORD PTR [ebx]
  975b56:	8b 52 48             	mov    edx,DWORD PTR [edx+0x48]
  975b59:	8d 84 24 08 01 00 00 	lea    eax,[esp+0x108]
  975b60:	50                   	push   eax
  975b61:	8b cb                	mov    ecx,ebx
  975b63:	ff d2                	call   edx
  975b65:	d9 e8                	fld1
  975b67:	83 ec 08             	sub    esp,0x8
  975b6a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  975b6e:	d9 84 24 14 01 00 00 	fld    DWORD PTR [esp+0x114]
  975b75:	d9 1c 24             	fstp   DWORD PTR [esp]
  975b78:	e8 e3 e1 b9 ff       	call   0x513d60
  975b7d:	d9 e8                	fld1
  975b7f:	f3 0f 10 47 08       	movss  xmm0,DWORD PTR [edi+0x8]
  975b84:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  975b88:	f3 0f 5c 07          	subss  xmm0,DWORD PTR [edi]
  975b8c:	d9 84 24 10 01 00 00 	fld    DWORD PTR [esp+0x110]
  975b93:	f3 0f 5c 05 f8 98 f9 	subss  xmm0,DWORD PTR ds:0xf998f8
  975b9a:	00
  975b9b:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  975ba0:	51                   	push   ecx
  975ba1:	d9 1c 24             	fstp   DWORD PTR [esp]
  975ba4:	88 44 24 1e          	mov    BYTE PTR [esp+0x1e],al
  975ba8:	e8 33 f0 ca ff       	call   0x624be0
  975bad:	d9 e8                	fld1
  975baf:	f3 0f 10 47 0c       	movss  xmm0,DWORD PTR [edi+0xc]
  975bb4:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  975bb8:	f3 0f 5c 47 04       	subss  xmm0,DWORD PTR [edi+0x4]
  975bbd:	d9 84 24 18 01 00 00 	fld    DWORD PTR [esp+0x118]
  975bc4:	f3 0f 5c 05 f8 98 f9 	subss  xmm0,DWORD PTR ds:0xf998f8
  975bcb:	00
  975bcc:	f3 0f 11 44 24 04    	movss  DWORD PTR [esp+0x4],xmm0
  975bd2:	d9 1c 24             	fstp   DWORD PTR [esp]
  975bd5:	88 44 24 1f          	mov    BYTE PTR [esp+0x1f],al
  975bd9:	e8 02 f0 ca ff       	call   0x624be0
  975bde:	d9 e8                	fld1
  975be0:	83 c4 04             	add    esp,0x4
  975be3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  975be7:	d9 84 24 10 01 00 00 	fld    DWORD PTR [esp+0x110]
  975bee:	8a d8                	mov    bl,al
  975bf0:	d9 1c 24             	fstp   DWORD PTR [esp]
  975bf3:	e8 68 e1 b9 ff       	call   0x513d60
  975bf8:	0f 57 db             	xorps  xmm3,xmm3
  975bfb:	83 c4 08             	add    esp,0x8
  975bfe:	84 c0                	test   al,al
  975c00:	74 0a                	je     0x975c0c
  975c02:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  975c09:	00
  975c0a:	eb 03                	jmp    0x975c0f
  975c0c:	0f 28 cb             	movaps xmm1,xmm3
  975c0f:	84 db                	test   bl,bl
  975c11:	0f 28 96 80 03 00 00 	movaps xmm2,XMMWORD PTR [esi+0x380]
  975c18:	f3 0f 10 c9          	movss  xmm1,xmm1
  975c1c:	0f 28 c2             	movaps xmm0,xmm2
  975c1f:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  975c23:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  975c27:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  975c2b:	0f 29 86 80 03 00 00 	movaps XMMWORD PTR [esi+0x380],xmm0
  975c32:	74 0a                	je     0x975c3e
  975c34:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  975c3b:	00
  975c3c:	eb 03                	jmp    0x975c41
  975c3e:	0f 28 cb             	movaps xmm1,xmm3
  975c41:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  975c46:	0f 28 86 80 03 00 00 	movaps xmm0,XMMWORD PTR [esi+0x380]
  975c4d:	0f 28 d0             	movaps xmm2,xmm0
  975c50:	f3 0f 10 c9          	movss  xmm1,xmm1
  975c54:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  975c58:	0f c6 d1 0f          	shufps xmm2,xmm1,0xf
  975c5c:	0f c6 c2 24          	shufps xmm0,xmm2,0x24
  975c60:	0f 29 86 80 03 00 00 	movaps XMMWORD PTR [esi+0x380],xmm0
  975c67:	74 0a                	je     0x975c73
  975c69:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  975c70:	00
  975c71:	eb 03                	jmp    0x975c76
  975c73:	0f 28 cb             	movaps xmm1,xmm3
  975c76:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  975c7b:	0f 28 96 b0 03 00 00 	movaps xmm2,XMMWORD PTR [esi+0x3b0]
  975c82:	f3 0f 10 c9          	movss  xmm1,xmm1
  975c86:	0f 28 c2             	movaps xmm0,xmm2
  975c89:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  975c8d:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  975c91:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  975c95:	0f 29 86 b0 03 00 00 	movaps XMMWORD PTR [esi+0x3b0],xmm0
  975c9c:	74 0a                	je     0x975ca8
  975c9e:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  975ca5:	00
  975ca6:	eb 03                	jmp    0x975cab
  975ca8:	0f 28 cb             	movaps xmm1,xmm3
  975cab:	0f 28 86 b0 03 00 00 	movaps xmm0,XMMWORD PTR [esi+0x3b0]
  975cb2:	0f 28 d0             	movaps xmm2,xmm0
  975cb5:	f3 0f 10 c9          	movss  xmm1,xmm1
  975cb9:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  975cbd:	0f c6 d1 0f          	shufps xmm2,xmm1,0xf
  975cc1:	0f c6 c2 24          	shufps xmm0,xmm2,0x24
  975cc5:	eb 0a                	jmp    0x975cd1
  975cc7:	0f 57 c0             	xorps  xmm0,xmm0
  975cca:	0f 29 86 80 03 00 00 	movaps XMMWORD PTR [esi+0x380],xmm0
  975cd1:	0f 29 86 b0 03 00 00 	movaps XMMWORD PTR [esi+0x3b0],xmm0
  975cd8:	8d 84 24 90 06 00 00 	lea    eax,[esp+0x690]
  975cdf:	50                   	push   eax
  975ce0:	8d 94 24 c4 06 00 00 	lea    edx,[esp+0x6c4]
  975ce7:	8d 4e 40             	lea    ecx,[esi+0x40]
  975cea:	52                   	push   edx
  975ceb:	e8 a0 cf fe ff       	call   0x962c90
  975cf0:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  975cf3:	83 c0 30             	add    eax,0x30
  975cf6:	50                   	push   eax
  975cf7:	8d 8c 24 c4 06 00 00 	lea    ecx,[esp+0x6c4]
  975cfe:	51                   	push   ecx
  975cff:	8d 94 24 38 04 00 00 	lea    edx,[esp+0x438]
  975d06:	52                   	push   edx
  975d07:	e8 34 7c 00 00       	call   0x97d940
  975d0c:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  975d0f:	83 c0 30             	add    eax,0x30
  975d12:	50                   	push   eax
  975d13:	8d 8c 24 a0 06 00 00 	lea    ecx,[esp+0x6a0]
  975d1a:	51                   	push   ecx
  975d1b:	8d 94 24 d4 03 00 00 	lea    edx,[esp+0x3d4]
  975d22:	52                   	push   edx
  975d23:	e8 18 7c 00 00       	call   0x97d940
  975d28:	0f 28 84 24 d8 00 00 	movaps xmm0,XMMWORD PTR [esp+0xd8]
  975d2f:	00
  975d30:	0f 28 94 24 d8 03 00 	movaps xmm2,XMMWORD PTR [esp+0x3d8]
  975d37:	00
  975d38:	0f 28 8c 24 48 04 00 	movaps xmm1,XMMWORD PTR [esp+0x448]
  975d3f:	00
  975d40:	0f 28 9c 24 08 01 00 	movaps xmm3,XMMWORD PTR [esp+0x108]
  975d47:	00
  975d48:	0f 5e d0             	divps  xmm2,xmm0
  975d4b:	0f 58 d1             	addps  xmm2,xmm1
  975d4e:	0f 28 8c 24 b8 06 00 	movaps xmm1,XMMWORD PTR [esp+0x6b8]
  975d55:	00
  975d56:	0f 5e c8             	divps  xmm1,xmm0
  975d59:	0f 28 84 24 e8 06 00 	movaps xmm0,XMMWORD PTR [esp+0x6e8]
  975d60:	00
  975d61:	0f 58 c8             	addps  xmm1,xmm0
  975d64:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  975d6b:	00
  975d6c:	f3 0f 5e 45 08       	divss  xmm0,DWORD PTR [ebp+0x8]
  975d71:	0f 59 cb             	mulps  xmm1,xmm3
  975d74:	0f 28 e2             	movaps xmm4,xmm2
  975d77:	0f 59 e3             	mulps  xmm4,xmm3
  975d7a:	0f 5f e2             	maxps  xmm4,xmm2
  975d7d:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  975d83:	f3 0f 59 84 24 c8 06 	mulss  xmm0,DWORD PTR [esp+0x6c8]
  975d8a:	00 00
  975d8c:	f3 0f 58 84 24 f8 06 	addss  xmm0,DWORD PTR [esp+0x6f8]
  975d93:	00 00
  975d95:	f3 0f 59 05 18 b2 fa 	mulss  xmm0,DWORD PTR ds:0xfab218
  975d9c:	00
  975d9d:	0f 29 94 24 d8 02 00 	movaps XMMWORD PTR [esp+0x2d8],xmm2
  975da4:	00
  975da5:	0f 28 94 24 58 01 00 	movaps xmm2,XMMWORD PTR [esp+0x158]
  975dac:	00
  975dad:	0f c2 e2 02          	cmpleps xmm4,xmm2
  975db1:	0f 50 c4             	movmskps eax,xmm4
  975db4:	0f 28 e1             	movaps xmm4,xmm1
  975db7:	83 e0 07             	and    eax,0x7
  975dba:	83 c4 18             	add    esp,0x18
  975dbd:	3c 07                	cmp    al,0x7
  975dbf:	0f 59 e3             	mulps  xmm4,xmm3
  975dc2:	0f 5f e1             	maxps  xmm4,xmm1
  975dc5:	0f 29 8c 24 d0 02 00 	movaps XMMWORD PTR [esp+0x2d0],xmm1
  975dcc:	00
  975dcd:	f3 0f 11 84 24 e0 02 	movss  DWORD PTR [esp+0x2e0],xmm0
  975dd4:	00 00
  975dd6:	0f 95 44 24 2b       	setne  BYTE PTR [esp+0x2b]
  975ddb:	0f c2 e2 02          	cmpleps xmm4,xmm2
  975ddf:	f3 0f 10 c0          	movss  xmm0,xmm0
  975de3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  975de7:	0f 50 cc             	movmskps ecx,xmm4
  975dea:	83 e1 07             	and    ecx,0x7
  975ded:	80 f9 07             	cmp    cl,0x7
  975df0:	0f 28 c8             	movaps xmm1,xmm0
  975df3:	0f 59 cb             	mulps  xmm1,xmm3
  975df6:	0f 5f c8             	maxps  xmm1,xmm0
  975df9:	0f c2 ca 02          	cmpleps xmm1,xmm2
  975dfd:	0f 95 44 24 2a       	setne  BYTE PTR [esp+0x2a]
  975e02:	0f 50 d1             	movmskps edx,xmm1
  975e05:	8d 84 24 30 01 00 00 	lea    eax,[esp+0x130]
  975e0c:	83 fa 0f             	cmp    edx,0xf
  975e0f:	50                   	push   eax
  975e10:	8b ce                	mov    ecx,esi
  975e12:	0f 95 44 24 16       	setne  BYTE PTR [esp+0x16]
  975e17:	e8 14 b2 ff ff       	call   0x971030
  975e1c:	84 c0                	test   al,al
  975e1e:	0f 84 85 00 00 00    	je     0x975ea9
  975e24:	8b ce                	mov    ecx,esi
  975e26:	e8 f5 b2 ff ff       	call   0x971120
  975e2b:	8a d8                	mov    bl,al
  975e2d:	3a 9e 19 08 00 00    	cmp    bl,BYTE PTR [esi+0x819]
  975e33:	74 09                	je     0x975e3e
  975e35:	80 be b1 08 00 00 00 	cmp    BYTE PTR [esi+0x8b1],0x0
  975e3c:	74 09                	je     0x975e47
  975e3e:	80 be b5 08 00 00 00 	cmp    BYTE PTR [esi+0x8b5],0x0
  975e45:	74 21                	je     0x975e68
  975e47:	d9 86 ac 09 00 00    	fld    DWORD PTR [esi+0x9ac]
  975e4d:	6a 01                	push   0x1
  975e4f:	6a 00                	push   0x0
  975e51:	6a 00                	push   0x0
  975e53:	6a 01                	push   0x1
  975e55:	51                   	push   ecx
  975e56:	8d 8c 24 44 01 00 00 	lea    ecx,[esp+0x144]
  975e5d:	d9 1c 24             	fstp   DWORD PTR [esp]
  975e60:	51                   	push   ecx
  975e61:	8b ce                	mov    ecx,esi
  975e63:	e8 78 e8 ff ff       	call   0x9746e0
  975e68:	8d 94 24 98 01 00 00 	lea    edx,[esp+0x198]
  975e6f:	52                   	push   edx
  975e70:	8b ce                	mov    ecx,esi
  975e72:	88 9e 19 08 00 00    	mov    BYTE PTR [esi+0x819],bl
  975e78:	e8 03 b3 ff ff       	call   0x971180
  975e7d:	3a 86 30 08 00 00    	cmp    al,BYTE PTR [esi+0x830]
  975e83:	74 24                	je     0x975ea9
  975e85:	84 c0                	test   al,al
  975e87:	74 19                	je     0x975ea2
  975e89:	8b 84 24 9c 01 00 00 	mov    eax,DWORD PTR [esp+0x19c]
  975e90:	8b 8c 24 98 01 00 00 	mov    ecx,DWORD PTR [esp+0x198]
  975e97:	50                   	push   eax
  975e98:	51                   	push   ecx
  975e99:	8b ce                	mov    ecx,esi
  975e9b:	e8 b0 bd ff ff       	call   0x971c50
  975ea0:	eb 07                	jmp    0x975ea9
  975ea2:	8b ce                	mov    ecx,esi
  975ea4:	e8 17 b3 ff ff       	call   0x9711c0
  975ea9:	80 be 30 08 00 00 00 	cmp    BYTE PTR [esi+0x830],0x0
  975eb0:	0f 57 c0             	xorps  xmm0,xmm0
  975eb3:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  975eb8:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm0
  975ebf:	00
  975ec0:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  975ec7:	00
  975ec8:	0f 84 45 06 00 00    	je     0x976513
  975ece:	8b be 34 08 00 00    	mov    edi,DWORD PTR [esi+0x834]
  975ed4:	85 ff                	test   edi,edi
  975ed6:	0f 84 37 06 00 00    	je     0x976513
  975edc:	80 be b9 08 00 00 00 	cmp    BYTE PTR [esi+0x8b9],0x0
  975ee3:	0f 85 ad 03 00 00    	jne    0x976296
  975ee9:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  975eec:	85 c9                	test   ecx,ecx
  975eee:	74 0d                	je     0x975efd
  975ef0:	e8 0b 9f ff ff       	call   0x96fe00
  975ef5:	84 c0                	test   al,al
  975ef7:	0f 85 99 03 00 00    	jne    0x976296
  975efd:	80 be b1 08 00 00 00 	cmp    BYTE PTR [esi+0x8b1],0x0
  975f04:	0f 85 e0 02 00 00    	jne    0x9761ea
  975f0a:	80 be b2 08 00 00 00 	cmp    BYTE PTR [esi+0x8b2],0x0
  975f11:	0f 85 d3 02 00 00    	jne    0x9761ea
  975f17:	80 be b3 08 00 00 00 	cmp    BYTE PTR [esi+0x8b3],0x0
  975f1e:	0f 85 c6 02 00 00    	jne    0x9761ea
  975f24:	80 be b4 08 00 00 00 	cmp    BYTE PTR [esi+0x8b4],0x0
  975f2b:	0f 85 b9 02 00 00    	jne    0x9761ea
  975f31:	0f 28 8e 70 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x770]
  975f38:	0f 28 86 80 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x780]
  975f3f:	0f 5c c1             	subps  xmm0,xmm1
  975f42:	f3 0f 10 1d b4 b5 f9 	movss  xmm3,DWORD PTR ds:0xf9b5b4
  975f49:	00
  975f4a:	0f 29 84 24 f0 02 00 	movaps XMMWORD PTR [esp+0x2f0],xmm0
  975f51:	00
  975f52:	0f 57 c0             	xorps  xmm0,xmm0
  975f55:	f3 0f 11 84 24 f4 02 	movss  DWORD PTR [esp+0x2f4],xmm0
  975f5c:	00 00
  975f5e:	0f 28 ac 24 f0 02 00 	movaps xmm5,XMMWORD PTR [esp+0x2f0]
  975f65:	00
  975f66:	0f 28 cd             	movaps xmm1,xmm5
  975f69:	0f 59 cd             	mulps  xmm1,xmm5
  975f6c:	0f 28 c1             	movaps xmm0,xmm1
  975f6f:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  975f73:	0f 28 d1             	movaps xmm2,xmm1
  975f76:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  975f7a:	0f 58 c2             	addps  xmm0,xmm2
  975f7d:	0f 58 c1             	addps  xmm0,xmm1
  975f80:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  975f84:	0f 28 e0             	movaps xmm4,xmm0
  975f87:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  975f8e:	00
  975f8f:	0f 52 d4             	rsqrtps xmm2,xmm4
  975f92:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  975f96:	0f 28 f2             	movaps xmm6,xmm2
  975f99:	0f 59 f2             	mulps  xmm6,xmm2
  975f9c:	0f 28 c8             	movaps xmm1,xmm0
  975f9f:	0f 59 f4             	mulps  xmm6,xmm4
  975fa2:	0f 5c ce             	subps  xmm1,xmm6
  975fa5:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  975fa9:	0f 28 f3             	movaps xmm6,xmm3
  975fac:	0f 59 f2             	mulps  xmm6,xmm2
  975faf:	0f 59 ce             	mulps  xmm1,xmm6
  975fb2:	0f 58 ca             	addps  xmm1,xmm2
  975fb5:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [esp+0x160],xmm0
  975fbc:	00
  975fbd:	0f 28 d1             	movaps xmm2,xmm1
  975fc0:	0f 59 d1             	mulps  xmm2,xmm1
  975fc3:	0f 29 9c 24 c0 01 00 	movaps XMMWORD PTR [esp+0x1c0],xmm3
  975fca:	00
  975fcb:	0f 59 d4             	mulps  xmm2,xmm4
  975fce:	0f 5c c2             	subps  xmm0,xmm2
  975fd1:	0f 59 d9             	mulps  xmm3,xmm1
  975fd4:	0f 59 c3             	mulps  xmm0,xmm3
  975fd7:	6a 01                	push   0x1
  975fd9:	8d 94 24 94 08 00 00 	lea    edx,[esp+0x894]
  975fe0:	0f 58 c1             	addps  xmm0,xmm1
  975fe3:	0f 59 c5             	mulps  xmm0,xmm5
  975fe6:	52                   	push   edx
  975fe7:	8b cf                	mov    ecx,edi
  975fe9:	0f 29 84 24 b8 00 00 	movaps XMMWORD PTR [esp+0xb8],xmm0
  975ff0:	00
  975ff1:	e8 5a c7 13 00       	call   0xab2750
  975ff6:	0f 28 86 70 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x770]
  975ffd:	0f 28 8c 24 a0 08 00 	movaps xmm1,XMMWORD PTR [esp+0x8a0]
  976004:	00
  976005:	0f 57 e4             	xorps  xmm4,xmm4
  976008:	0f 28 ac 24 b0 00 00 	movaps xmm5,XMMWORD PTR [esp+0xb0]
  97600f:	00
  976010:	0f 5c c8             	subps  xmm1,xmm0
  976013:	0f 29 8c 24 10 03 00 	movaps XMMWORD PTR [esp+0x310],xmm1
  97601a:	00
  97601b:	f3 0f 11 a4 24 14 03 	movss  DWORD PTR [esp+0x314],xmm4
  976022:	00 00
  976024:	0f 28 9c 24 10 03 00 	movaps xmm3,XMMWORD PTR [esp+0x310]
  97602b:	00
  97602c:	0f 28 cb             	movaps xmm1,xmm3
  97602f:	0f 59 cd             	mulps  xmm1,xmm5
  976032:	0f 28 c1             	movaps xmm0,xmm1
  976035:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  976039:	0f 28 d1             	movaps xmm2,xmm1
  97603c:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  976040:	0f 58 c2             	addps  xmm0,xmm2
  976043:	0f 58 c1             	addps  xmm0,xmm1
  976046:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97604a:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  976051:	00
  976052:	f3 0f 10 94 24 b0 00 	movss  xmm2,DWORD PTR [esp+0xb0]
  976059:	00 00
  97605b:	0f 2f d4             	comiss xmm2,xmm4
  97605e:	76 0a                	jbe    0x97606a
  976060:	f3 0f 10 a6 d4 09 00 	movss  xmm4,DWORD PTR [esi+0x9d4]
  976067:	00
  976068:	eb 08                	jmp    0x976072
  97606a:	f3 0f 10 a6 d0 09 00 	movss  xmm4,DWORD PTR [esi+0x9d0]
  976071:	00
  976072:	f3 0f 10 ca          	movss  xmm1,xmm2
  976076:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97607a:	0f 59 cd             	mulps  xmm1,xmm5
  97607d:	0f 28 c3             	movaps xmm0,xmm3
  976080:	0f 5c c1             	subps  xmm0,xmm1
  976083:	0f 59 c0             	mulps  xmm0,xmm0
  976086:	0f 28 c8             	movaps xmm1,xmm0
  976089:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  97608d:	0f 28 e9             	movaps xmm5,xmm1
  976090:	0f c6 e9 01          	shufps xmm5,xmm1,0x1
  976094:	0f 58 c5             	addps  xmm0,xmm5
  976097:	0f 58 c1             	addps  xmm0,xmm1
  97609a:	f3 0f 10 8e d8 09 00 	movss  xmm1,DWORD PTR [esi+0x9d8]
  9760a1:	00
  9760a2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9760a6:	0f 51 c0             	sqrtps xmm0,xmm0
  9760a9:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  9760b0:	00
  9760b1:	f3 0f 10 84 24 b0 00 	movss  xmm0,DWORD PTR [esp+0xb0]
  9760b8:	00 00
  9760ba:	f3 0f 5e d4          	divss  xmm2,xmm4
  9760be:	f3 0f 5e c1          	divss  xmm0,xmm1
  9760c2:	0f 28 e2             	movaps xmm4,xmm2
  9760c5:	f3 0f 59 e2          	mulss  xmm4,xmm2
  9760c9:	f3 0f 10 15 f8 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f8
  9760d0:	00
  9760d1:	f3 0f 59 c0          	mulss  xmm0,xmm0
  9760d5:	f3 0f 58 c4          	addss  xmm0,xmm4
  9760d9:	0f 2f c2             	comiss xmm0,xmm2
  9760dc:	0f 86 08 01 00 00    	jbe    0x9761ea
  9760e2:	f3 0f 5c c2          	subss  xmm0,xmm2
  9760e6:	f3 0f 59 c1          	mulss  xmm0,xmm1
  9760ea:	0f 28 f0             	movaps xmm6,xmm0
  9760ed:	f3 0f 10 86 dc 09 00 	movss  xmm0,DWORD PTR [esi+0x9dc]
  9760f4:	00
  9760f5:	0f 2f f0             	comiss xmm6,xmm0
  9760f8:	0f 87 98 01 00 00    	ja     0x976296
  9760fe:	80 7c 24 2b 00       	cmp    BYTE PTR [esp+0x2b],0x0
  976103:	0f 28 cb             	movaps xmm1,xmm3
  976106:	0f 59 cb             	mulps  xmm1,xmm3
  976109:	0f 28 c1             	movaps xmm0,xmm1
  97610c:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  976110:	0f 28 d1             	movaps xmm2,xmm1
  976113:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  976117:	0f 58 c2             	addps  xmm0,xmm2
  97611a:	0f 28 94 24 60 01 00 	movaps xmm2,XMMWORD PTR [esp+0x160]
  976121:	00
  976122:	0f 58 c1             	addps  xmm0,xmm1
  976125:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976129:	0f 52 e0             	rsqrtps xmm4,xmm0
  97612c:	0f 28 ec             	movaps xmm5,xmm4
  97612f:	0f 59 ec             	mulps  xmm5,xmm4
  976132:	0f 59 e8             	mulps  xmm5,xmm0
  976135:	0f 28 ca             	movaps xmm1,xmm2
  976138:	0f 5c cd             	subps  xmm1,xmm5
  97613b:	0f 28 ac 24 c0 01 00 	movaps xmm5,XMMWORD PTR [esp+0x1c0]
  976142:	00
  976143:	0f 28 fc             	movaps xmm7,xmm4
  976146:	0f 59 fd             	mulps  xmm7,xmm5
  976149:	0f 59 cf             	mulps  xmm1,xmm7
  97614c:	0f 58 cc             	addps  xmm1,xmm4
  97614f:	0f 28 e1             	movaps xmm4,xmm1
  976152:	0f 59 e1             	mulps  xmm4,xmm1
  976155:	0f 59 e0             	mulps  xmm4,xmm0
  976158:	0f 5c d4             	subps  xmm2,xmm4
  97615b:	0f 28 c1             	movaps xmm0,xmm1
  97615e:	0f 59 c5             	mulps  xmm0,xmm5
  976161:	0f 59 d0             	mulps  xmm2,xmm0
  976164:	f3 0f 10 86 e0 09 00 	movss  xmm0,DWORD PTR [esi+0x9e0]
  97616b:	00
  97616c:	0f 58 d1             	addps  xmm2,xmm1
  97616f:	f3 0f 10 8e dc 09 00 	movss  xmm1,DWORD PTR [esi+0x9dc]
  976176:	00
  976177:	f3 0f 5e c1          	divss  xmm0,xmm1
  97617b:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  976180:	0f 59 d3             	mulps  xmm2,xmm3
  976183:	f3 0f 59 c6          	mulss  xmm0,xmm6
  976187:	74 4e                	je     0x9761d7
  976189:	0f 28 9c 24 c0 02 00 	movaps xmm3,XMMWORD PTR [esp+0x2c0]
  976190:	00
  976191:	0f 59 db             	mulps  xmm3,xmm3
  976194:	0f 28 cb             	movaps xmm1,xmm3
  976197:	0f c6 cb 02          	shufps xmm1,xmm3,0x2
  97619b:	0f 28 e3             	movaps xmm4,xmm3
  97619e:	0f c6 e3 01          	shufps xmm4,xmm3,0x1
  9761a2:	0f 58 cc             	addps  xmm1,xmm4
  9761a5:	0f 58 cb             	addps  xmm1,xmm3
  9761a8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9761ac:	0f 51 d9             	sqrtps xmm3,xmm1
  9761af:	f3 0f 10 8e e4 09 00 	movss  xmm1,DWORD PTR [esi+0x9e4]
  9761b6:	00
  9761b7:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9761bb:	0f 59 d9             	mulps  xmm3,xmm1
  9761be:	0f 29 9c 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm3
  9761c5:	00
  9761c6:	f3 0f 10 8c 24 b0 00 	movss  xmm1,DWORD PTR [esp+0xb0]
  9761cd:	00 00
  9761cf:	0f 2f c1             	comiss xmm0,xmm1
  9761d2:	76 03                	jbe    0x9761d7
  9761d4:	0f 28 c1             	movaps xmm0,xmm1
  9761d7:	f3 0f 10 c0          	movss  xmm0,xmm0
  9761db:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9761df:	0f 59 c2             	mulps  xmm0,xmm2
  9761e2:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  9761e9:	00
  9761ea:	8b 8e 34 08 00 00    	mov    ecx,DWORD PTR [esi+0x834]
  9761f0:	6a 01                	push   0x1
  9761f2:	8d 84 24 a4 03 00 00 	lea    eax,[esp+0x3a4]
  9761f9:	50                   	push   eax
  9761fa:	e8 51 c5 13 00       	call   0xab2750
  9761ff:	8d 8c 24 a0 03 00 00 	lea    ecx,[esp+0x3a0]
  976206:	51                   	push   ecx
  976207:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  97620a:	e8 31 9c fe ff       	call   0x95fe40
  97620f:	0f 28 9e 40 08 00 00 	movaps xmm3,XMMWORD PTR [esi+0x840]
  976216:	0f 28 94 24 a0 03 00 	movaps xmm2,XMMWORD PTR [esp+0x3a0]
  97621d:	00
  97621e:	0f 28 a4 24 f0 00 00 	movaps xmm4,XMMWORD PTR [esp+0xf0]
  976225:	00
  976226:	f3 0f 10 0d b4 35 fb 	movss  xmm1,DWORD PTR ds:0xfb35b4
  97622d:	00
  97622e:	0f 28 c2             	movaps xmm0,xmm2
  976231:	0f 5c c3             	subps  xmm0,xmm3
  976234:	0f 28 d8             	movaps xmm3,xmm0
  976237:	0f 59 dc             	mulps  xmm3,xmm4
  97623a:	0f 5f d8             	maxps  xmm3,xmm0
  97623d:	0f 28 84 24 b0 03 00 	movaps xmm0,XMMWORD PTR [esp+0x3b0]
  976244:	00
  976245:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  976249:	0f c2 d9 02          	cmpleps xmm3,xmm1
  97624d:	0f 50 d3             	movmskps edx,xmm3
  976250:	83 fa 0f             	cmp    edx,0xf
  976253:	75 4d                	jne    0x9762a2
  976255:	0f 28 ae 50 08 00 00 	movaps xmm5,XMMWORD PTR [esi+0x850]
  97625c:	0f 28 d8             	movaps xmm3,xmm0
  97625f:	0f 5c dd             	subps  xmm3,xmm5
  976262:	0f 28 eb             	movaps xmm5,xmm3
  976265:	0f 59 ec             	mulps  xmm5,xmm4
  976268:	0f 5f eb             	maxps  xmm5,xmm3
  97626b:	0f c2 e9 02          	cmpleps xmm5,xmm1
  97626f:	0f 50 c5             	movmskps eax,xmm5
  976272:	83 e0 07             	and    eax,0x7
  976275:	3c 07                	cmp    al,0x7
  976277:	75 29                	jne    0x9762a2
  976279:	0f 28 84 24 d0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xd0]
  976280:	00
  976281:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  976288:	00
  976289:	0f 29 84 24 b0 01 00 	movaps XMMWORD PTR [esp+0x1b0],xmm0
  976290:	00
  976291:	e9 7d 02 00 00       	jmp    0x976513
  976296:	8b ce                	mov    ecx,esi
  976298:	e8 23 af ff ff       	call   0x9711c0
  97629d:	e9 71 02 00 00       	jmp    0x976513
  9762a2:	0f 28 8e 50 08 00 00 	movaps xmm1,XMMWORD PTR [esi+0x850]
  9762a9:	0f 5c c1             	subps  xmm0,xmm1
  9762ac:	0f 28 9e 40 08 00 00 	movaps xmm3,XMMWORD PTR [esi+0x840]
  9762b3:	f3 0f 10 25 88 fd 03 	movss  xmm4,DWORD PTR ds:0x103fd88
  9762ba:	01
  9762bb:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  9762c2:	00
  9762c3:	0f 28 c3             	movaps xmm0,xmm3
  9762c6:	0f 59 c3             	mulps  xmm0,xmm3
  9762c9:	0f 28 c8             	movaps xmm1,xmm0
  9762cc:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  9762d0:	0f 58 c8             	addps  xmm1,xmm0
  9762d3:	0f 28 c1             	movaps xmm0,xmm1
  9762d6:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  9762da:	0f 58 c1             	addps  xmm0,xmm1
  9762dd:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9762e1:	0f 53 e8             	rcpps  xmm5,xmm0
  9762e4:	0f 28 f5             	movaps xmm6,xmm5
  9762e7:	0f 59 f0             	mulps  xmm6,xmm0
  9762ea:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  9762ee:	0f 28 cc             	movaps xmm1,xmm4
  9762f1:	0f 5c ce             	subps  xmm1,xmm6
  9762f4:	0f 59 cd             	mulps  xmm1,xmm5
  9762f7:	0f 28 e9             	movaps xmm5,xmm1
  9762fa:	0f 59 e8             	mulps  xmm5,xmm0
  9762fd:	0f 28 c4             	movaps xmm0,xmm4
  976300:	0f 5c c5             	subps  xmm0,xmm5
  976303:	0f 59 c1             	mulps  xmm0,xmm1
  976306:	0f 57 c9             	xorps  xmm1,xmm1
  976309:	f3 0f 11 8c 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm1
  976310:	00 00
  976312:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x80000000
  976319:	80
  97631a:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  976320:	f3 0f 11 8c 24 98 00 	movss  DWORD PTR [esp+0x98],xmm1
  976327:	00 00
  976329:	f3 0f 11 8c 24 94 00 	movss  DWORD PTR [esp+0x94],xmm1
  976330:	00 00
  976332:	f3 0f 11 8c 24 90 00 	movss  DWORD PTR [esp+0x90],xmm1
  976339:	00 00
  97633b:	0f 28 8c 24 90 00 00 	movaps xmm1,XMMWORD PTR [esp+0x90]
  976342:	00
  976343:	0f 57 cb             	xorps  xmm1,xmm3
  976346:	0f 59 c1             	mulps  xmm0,xmm1
  976349:	0f 28 ca             	movaps xmm1,xmm2
  97634c:	0f c6 ca 12          	shufps xmm1,xmm2,0x12
  976350:	0f 28 f0             	movaps xmm6,xmm0
  976353:	0f c6 f0 09          	shufps xmm6,xmm0,0x9
  976357:	0f 59 f1             	mulps  xmm6,xmm1
  97635a:	0f 28 fa             	movaps xmm7,xmm2
  97635d:	0f c6 fa 09          	shufps xmm7,xmm2,0x9
  976361:	0f 28 ea             	movaps xmm5,xmm2
  976364:	0f c6 ea ff          	shufps xmm5,xmm2,0xff
  976368:	0f 28 c8             	movaps xmm1,xmm0
  97636b:	0f c6 c8 12          	shufps xmm1,xmm0,0x12
  97636f:	0f 59 cf             	mulps  xmm1,xmm7
  976372:	0f 28 bc 24 b0 00 00 	movaps xmm7,XMMWORD PTR [esp+0xb0]
  976379:	00
  97637a:	0f 5c ce             	subps  xmm1,xmm6
  97637d:	0f 28 d8             	movaps xmm3,xmm0
  976380:	0f c6 d8 ff          	shufps xmm3,xmm0,0xff
  976384:	0f 28 f5             	movaps xmm6,xmm5
  976387:	0f 59 f0             	mulps  xmm6,xmm0
  97638a:	0f 59 c2             	mulps  xmm0,xmm2
  97638d:	0f 58 ce             	addps  xmm1,xmm6
  976390:	0f 28 f3             	movaps xmm6,xmm3
  976393:	0f 59 f2             	mulps  xmm6,xmm2
  976396:	0f 58 ce             	addps  xmm1,xmm6
  976399:	0f 28 d0             	movaps xmm2,xmm0
  97639c:	0f c6 d0 02          	shufps xmm2,xmm0,0x2
  9763a0:	0f 28 f0             	movaps xmm6,xmm0
  9763a3:	0f c6 f0 01          	shufps xmm6,xmm0,0x1
  9763a7:	0f 58 d6             	addps  xmm2,xmm6
  9763aa:	0f 58 d0             	addps  xmm2,xmm0
  9763ad:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  9763b1:	0f 59 dd             	mulps  xmm3,xmm5
  9763b4:	0f 5c da             	subps  xmm3,xmm2
  9763b7:	0f 28 96 50 08 00 00 	movaps xmm2,XMMWORD PTR [esi+0x850]
  9763be:	0f 28 c1             	movaps xmm0,xmm1
  9763c1:	0f c6 c3 0a          	shufps xmm0,xmm3,0xa
  9763c5:	0f c6 c8 84          	shufps xmm1,xmm0,0x84
  9763c9:	0f 28 86 80 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x780]
  9763d0:	0f 5c c2             	subps  xmm0,xmm2
  9763d3:	0f 28 e9             	movaps xmm5,xmm1
  9763d6:	0f 28 f1             	movaps xmm6,xmm1
  9763d9:	0f 29 8c 24 c0 08 00 	movaps XMMWORD PTR [esp+0x8c0],xmm1
  9763e0:	00
  9763e1:	0f 29 bc 24 d0 08 00 	movaps XMMWORD PTR [esp+0x8d0],xmm7
  9763e8:	00
  9763e9:	0f c6 e9 12          	shufps xmm5,xmm1,0x12
  9763ed:	0f c6 f1 09          	shufps xmm6,xmm1,0x9
  9763f1:	0f 28 d0             	movaps xmm2,xmm0
  9763f4:	0f c6 d0 12          	shufps xmm2,xmm0,0x12
  9763f8:	0f 59 d6             	mulps  xmm2,xmm6
  9763fb:	0f 28 d8             	movaps xmm3,xmm0
  9763fe:	0f c6 d8 09          	shufps xmm3,xmm0,0x9
  976402:	0f 59 dd             	mulps  xmm3,xmm5
  976405:	0f 5c d3             	subps  xmm2,xmm3
  976408:	0f 28 d9             	movaps xmm3,xmm1
  97640b:	0f c6 d9 ff          	shufps xmm3,xmm1,0xff
  97640f:	0f 59 d8             	mulps  xmm3,xmm0
  976412:	0f 58 d3             	addps  xmm2,xmm3
  976415:	0f 28 da             	movaps xmm3,xmm2
  976418:	0f c6 da 12          	shufps xmm3,xmm2,0x12
  97641c:	0f 59 de             	mulps  xmm3,xmm6
  97641f:	0f 28 f2             	movaps xmm6,xmm2
  976422:	0f c6 f2 09          	shufps xmm6,xmm2,0x9
  976426:	f3 0f 10 15 b4 b5 f9 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  97642d:	00
  97642e:	0f 59 f5             	mulps  xmm6,xmm5
  976431:	0f 5c de             	subps  xmm3,xmm6
  976434:	0f 59 dc             	mulps  xmm3,xmm4
  976437:	0f 58 d8             	addps  xmm3,xmm0
  97643a:	0f 58 df             	addps  xmm3,xmm7
  97643d:	0f 5c d8             	subps  xmm3,xmm0
  976440:	f3 0f 10 05 c0 6c 04 	movss  xmm0,DWORD PTR ds:0x1046cc0
  976447:	01
  976448:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97644c:	0f 59 c1             	mulps  xmm0,xmm1
  97644f:	0f 28 8c 24 d0 00 00 	movaps xmm1,XMMWORD PTR [esp+0xd0]
  976456:	00
  976457:	0f 5c c8             	subps  xmm1,xmm0
  97645a:	0f 59 c8             	mulps  xmm1,xmm0
  97645d:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  976461:	0f 58 ca             	addps  xmm1,xmm2
  976464:	0f 29 9c 24 10 01 00 	movaps XMMWORD PTR [esp+0x110],xmm3
  97646b:	00
  97646c:	0f 28 d0             	movaps xmm2,xmm0
  97646f:	0f c6 d0 09          	shufps xmm2,xmm0,0x9
  976473:	0f 28 d8             	movaps xmm3,xmm0
  976476:	0f c6 d8 ff          	shufps xmm3,xmm0,0xff
  97647a:	0f 59 d0             	mulps  xmm2,xmm0
  97647d:	0f c6 c0 12          	shufps xmm0,xmm0,0x12
  976481:	0f 59 d8             	mulps  xmm3,xmm0
  976484:	0f 28 c3             	movaps xmm0,xmm3
  976487:	0f 58 c2             	addps  xmm0,xmm2
  97648a:	0f 5c d3             	subps  xmm2,xmm3
  97648d:	0f 28 d9             	movaps xmm3,xmm1
  976490:	0f c6 d9 09          	shufps xmm3,xmm1,0x9
  976494:	0f 58 d9             	addps  xmm3,xmm1
  976497:	0f 28 cb             	movaps xmm1,xmm3
  97649a:	0f c6 c8 01          	shufps xmm1,xmm0,0x1
  97649e:	0f c6 ca 28          	shufps xmm1,xmm2,0x28
  9764a2:	0f 29 8c 24 60 06 00 	movaps XMMWORD PTR [esp+0x660],xmm1
  9764a9:	00
  9764aa:	0f 28 ca             	movaps xmm1,xmm2
  9764ad:	8d 8c 24 60 06 00 00 	lea    ecx,[esp+0x660]
  9764b4:	0f c6 cb 20          	shufps xmm1,xmm3,0x20
  9764b8:	0f c6 c8 18          	shufps xmm1,xmm0,0x18
  9764bc:	51                   	push   ecx
  9764bd:	8d 94 24 d4 05 00 00 	lea    edx,[esp+0x5d4]
  9764c4:	0f c6 c2 12          	shufps xmm0,xmm2,0x12
  9764c8:	0f c6 c3 08          	shufps xmm0,xmm3,0x8
  9764cc:	52                   	push   edx
  9764cd:	0f 29 8c 24 78 06 00 	movaps XMMWORD PTR [esp+0x678],xmm1
  9764d4:	00
  9764d5:	0f 29 84 24 88 06 00 	movaps XMMWORD PTR [esp+0x688],xmm0
  9764dc:	00
  9764dd:	e8 fe ad ff ff       	call   0x9712e0
  9764e2:	0f 28 84 24 d8 05 00 	movaps xmm0,XMMWORD PTR [esp+0x5d8]
  9764e9:	00
  9764ea:	0f 29 84 24 b8 01 00 	movaps XMMWORD PTR [esp+0x1b8],xmm0
  9764f1:	00
  9764f2:	0f 28 84 24 a8 03 00 	movaps xmm0,XMMWORD PTR [esp+0x3a8]
  9764f9:	00
  9764fa:	0f 29 86 40 08 00 00 	movaps XMMWORD PTR [esi+0x840],xmm0
  976501:	0f 28 84 24 b8 03 00 	movaps xmm0,XMMWORD PTR [esp+0x3b8]
  976508:	00
  976509:	83 c4 08             	add    esp,0x8
  97650c:	0f 29 86 50 08 00 00 	movaps XMMWORD PTR [esi+0x850],xmm0
  976513:	8b 86 f0 05 00 00    	mov    eax,DWORD PTR [esi+0x5f0]
  976519:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  97651c:	8d be f0 05 00 00    	lea    edi,[esi+0x5f0]
  976522:	8b cf                	mov    ecx,edi
  976524:	ff d2                	call   edx
  976526:	84 c0                	test   al,al
  976528:	74 08                	je     0x976532
  97652a:	8b df                	mov    ebx,edi
  97652c:	89 7c 24 4c          	mov    DWORD PTR [esp+0x4c],edi
  976530:	eb 0a                	jmp    0x97653c
  976532:	8d 9e 70 05 00 00    	lea    ebx,[esi+0x570]
  976538:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  97653c:	80 be b6 08 00 00 00 	cmp    BYTE PTR [esi+0x8b6],0x0
  976543:	0f 85 b1 00 00 00    	jne    0x9765fa
  976549:	83 be c0 08 00 00 00 	cmp    DWORD PTR [esi+0x8c0],0x0
  976550:	0f 85 a4 00 00 00    	jne    0x9765fa
  976556:	80 7c 24 2b 00       	cmp    BYTE PTR [esp+0x2b],0x0
  97655b:	74 73                	je     0x9765d0
  97655d:	8b 03                	mov    eax,DWORD PTR [ebx]
  97655f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  976562:	8b cb                	mov    ecx,ebx
  976564:	ff d2                	call   edx
  976566:	84 c0                	test   al,al
  976568:	74 51                	je     0x9765bb
  97656a:	8b 03                	mov    eax,DWORD PTR [ebx]
  97656c:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  97656f:	8d 8c 24 80 05 00 00 	lea    ecx,[esp+0x580]
  976576:	51                   	push   ecx
  976577:	8b cb                	mov    ecx,ebx
  976579:	ff d2                	call   edx
  97657b:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  97657e:	85 c9                	test   ecx,ecx
  976580:	74 39                	je     0x9765bb
  976582:	0f 28 84 24 80 05 00 	movaps xmm0,XMMWORD PTR [esp+0x580]
  976589:	00
  97658a:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  976591:	00
  976592:	d9 84 24 b8 00 00 00 	fld    DWORD PTR [esp+0xb8]
  976599:	83 ec 08             	sub    esp,0x8
  97659c:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  9765a0:	0f 29 84 24 68 01 00 	movaps XMMWORD PTR [esp+0x168],xmm0
  9765a7:	00
  9765a8:	d9 84 24 68 01 00 00 	fld    DWORD PTR [esp+0x168]
  9765af:	d9 1c 24             	fstp   DWORD PTR [esp]
  9765b2:	e8 49 54 2f 00       	call   0xc6ba00
  9765b7:	84 c0                	test   al,al
  9765b9:	74 15                	je     0x9765d0
  9765bb:	8b ce                	mov    ecx,esi
  9765bd:	c6 86 b1 08 00 00 00 	mov    BYTE PTR [esi+0x8b1],0x0
  9765c4:	c6 86 b2 08 00 00 00 	mov    BYTE PTR [esi+0x8b2],0x0
  9765cb:	e8 e0 d7 ff ff       	call   0x973db0
  9765d0:	80 7c 24 2a 00       	cmp    BYTE PTR [esp+0x2a],0x0
  9765d5:	74 0e                	je     0x9765e5
  9765d7:	c6 86 b3 08 00 00 00 	mov    BYTE PTR [esi+0x8b3],0x0
  9765de:	c6 86 b2 08 00 00 00 	mov    BYTE PTR [esi+0x8b2],0x0
  9765e5:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  9765ea:	74 0e                	je     0x9765fa
  9765ec:	c6 86 b4 08 00 00 00 	mov    BYTE PTR [esi+0x8b4],0x0
  9765f3:	c6 86 b2 08 00 00 00 	mov    BYTE PTR [esi+0x8b2],0x0
  9765fa:	80 be b2 08 00 00 00 	cmp    BYTE PTR [esi+0x8b2],0x0
  976601:	75 49                	jne    0x97664c
  976603:	8b 07                	mov    eax,DWORD PTR [edi]
  976605:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  976608:	8b cf                	mov    ecx,edi
  97660a:	ff d2                	call   edx
  97660c:	84 c0                	test   al,al
  97660e:	74 19                	je     0x976629
  976610:	8b ce                	mov    ecx,esi
  976612:	e8 e9 d6 ff ff       	call   0x973d00
  976617:	84 c0                	test   al,al
  976619:	74 0e                	je     0x976629
  97661b:	80 7c 24 2a 00       	cmp    BYTE PTR [esp+0x2a],0x0
  976620:	74 07                	je     0x976629
  976622:	c6 86 b3 08 00 00 00 	mov    BYTE PTR [esi+0x8b3],0x0
  976629:	80 be b1 08 00 00 00 	cmp    BYTE PTR [esi+0x8b1],0x0
  976630:	75 1a                	jne    0x97664c
  976632:	8b 07                	mov    eax,DWORD PTR [edi]
  976634:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  976637:	8b cf                	mov    ecx,edi
  976639:	ff d2                	call   edx
  97663b:	8b 86 70 05 00 00    	mov    eax,DWORD PTR [esi+0x570]
  976641:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  976644:	8d 8e 70 05 00 00    	lea    ecx,[esi+0x570]
  97664a:	ff d2                	call   edx
  97664c:	80 be b3 08 00 00 00 	cmp    BYTE PTR [esi+0x8b3],0x0
  976653:	75 1a                	jne    0x97666f
  976655:	80 be b4 08 00 00 00 	cmp    BYTE PTR [esi+0x8b4],0x0
  97665c:	75 11                	jne    0x97666f
  97665e:	8b 86 b0 06 00 00    	mov    eax,DWORD PTR [esi+0x6b0]
  976664:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  976667:	8d 8e b0 06 00 00    	lea    ecx,[esi+0x6b0]
  97666d:	ff d2                	call   edx
  97666f:	8b 03                	mov    eax,DWORD PTR [ebx]
  976671:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  976674:	8b cb                	mov    ecx,ebx
  976676:	ff d2                	call   edx
  976678:	84 c0                	test   al,al
  97667a:	74 29                	je     0x9766a5
  97667c:	80 be 18 08 00 00 00 	cmp    BYTE PTR [esi+0x818],0x0
  976683:	74 0f                	je     0x976694
  976685:	8d 84 24 30 01 00 00 	lea    eax,[esp+0x130]
  97668c:	50                   	push   eax
  97668d:	8b ce                	mov    ecx,esi
  97668f:	e8 9c d1 ff ff       	call   0x973830
  976694:	8b 13                	mov    edx,DWORD PTR [ebx]
  976696:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  976699:	8b 02                	mov    eax,DWORD PTR [edx]
  97669b:	51                   	push   ecx
  97669c:	8b cb                	mov    ecx,ebx
  97669e:	d9 1c 24             	fstp   DWORD PTR [esp]
  9766a1:	ff d0                	call   eax
  9766a3:	eb 0e                	jmp    0x9766b3
  9766a5:	c6 86 b1 08 00 00 00 	mov    BYTE PTR [esi+0x8b1],0x0
  9766ac:	c6 86 b2 08 00 00 00 	mov    BYTE PTR [esi+0x8b2],0x0
  9766b3:	8b 96 b0 06 00 00    	mov    edx,DWORD PTR [esi+0x6b0]
  9766b9:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  9766bc:	8d 9e b0 06 00 00    	lea    ebx,[esi+0x6b0]
  9766c2:	8b cb                	mov    ecx,ebx
  9766c4:	ff d0                	call   eax
  9766c6:	84 c0                	test   al,al
  9766c8:	74 11                	je     0x9766db
  9766ca:	8b 13                	mov    edx,DWORD PTR [ebx]
  9766cc:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  9766cf:	8b 02                	mov    eax,DWORD PTR [edx]
  9766d1:	51                   	push   ecx
  9766d2:	8b cb                	mov    ecx,ebx
  9766d4:	d9 1c 24             	fstp   DWORD PTR [esp]
  9766d7:	ff d0                	call   eax
  9766d9:	eb 18                	jmp    0x9766f3
  9766db:	c6 86 b3 08 00 00 00 	mov    BYTE PTR [esi+0x8b3],0x0
  9766e2:	c6 86 b4 08 00 00 00 	mov    BYTE PTR [esi+0x8b4],0x0
  9766e9:	c7 86 c0 08 00 00 00 	mov    DWORD PTR [esi+0x8c0],0x0
  9766f0:	00 00 00
  9766f3:	80 be b1 08 00 00 00 	cmp    BYTE PTR [esi+0x8b1],0x0
  9766fa:	75 23                	jne    0x97671f
  9766fc:	80 be b2 08 00 00 00 	cmp    BYTE PTR [esi+0x8b2],0x0
  976703:	75 1a                	jne    0x97671f
  976705:	80 be b3 08 00 00 00 	cmp    BYTE PTR [esi+0x8b3],0x0
  97670c:	75 11                	jne    0x97671f
  97670e:	80 be b4 08 00 00 00 	cmp    BYTE PTR [esi+0x8b4],0x0
  976715:	75 08                	jne    0x97671f
  976717:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  97671a:	e8 f1 96 fe ff       	call   0x95fe10
  97671f:	80 7c 24 2b 00       	cmp    BYTE PTR [esp+0x2b],0x0
  976724:	75 7e                	jne    0x9767a4
  976726:	0f 28 8e e0 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x7e0]
  97672d:	0f 59 c9             	mulps  xmm1,xmm1
  976730:	0f 28 c1             	movaps xmm0,xmm1
  976733:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  976737:	0f 28 d1             	movaps xmm2,xmm1
  97673a:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  97673e:	0f 58 c2             	addps  xmm0,xmm2
  976741:	0f 58 c1             	addps  xmm0,xmm1
  976744:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976748:	0f 51 c0             	sqrtps xmm0,xmm0
  97674b:	f3 0f 11 84 24 c0 05 	movss  DWORD PTR [esp+0x5c0],xmm0
  976752:	00 00
  976754:	f3 0f 10 05 7c 48 04 	movss  xmm0,DWORD PTR ds:0x104487c
  97675b:	01
  97675c:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976760:	f3 0f 11 84 24 00 06 	movss  DWORD PTR [esp+0x600],xmm0
  976767:	00 00
  976769:	f3 0f 10 84 24 c0 05 	movss  xmm0,DWORD PTR [esp+0x5c0]
  976770:	00 00
  976772:	0f 2f 84 24 00 06 00 	comiss xmm0,DWORD PTR [esp+0x600]
  976779:	00
  97677a:	76 28                	jbe    0x9767a4
  97677c:	d9 86 d0 08 00 00    	fld    DWORD PTR [esi+0x8d0]
  976782:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  976785:	e8 4c 90 60 00       	call   0xf7f7d6
  97678a:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  97678e:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  976794:	0f 28 8e e0 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x7e0]
  97679b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97679f:	0f 59 c1             	mulps  xmm0,xmm1
  9767a2:	eb 08                	jmp    0x9767ac
  9767a4:	0f 28 84 24 c0 02 00 	movaps xmm0,XMMWORD PTR [esp+0x2c0]
  9767ab:	00
  9767ac:	80 7c 24 2a 00       	cmp    BYTE PTR [esp+0x2a],0x0
  9767b1:	0f 29 86 e0 07 00 00 	movaps XMMWORD PTR [esi+0x7e0],xmm0
  9767b8:	75 76                	jne    0x976830
  9767ba:	0f 28 86 f0 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x7f0]
  9767c1:	0f 59 c0             	mulps  xmm0,xmm0
  9767c4:	0f 28 c8             	movaps xmm1,xmm0
  9767c7:	8d be f0 07 00 00    	lea    edi,[esi+0x7f0]
  9767cd:	0f c6 c8 55          	shufps xmm1,xmm0,0x55
  9767d1:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9767d5:	0f 58 c8             	addps  xmm1,xmm0
  9767d8:	0f 51 c1             	sqrtps xmm0,xmm1
  9767db:	f3 0f 11 84 24 20 06 	movss  DWORD PTR [esp+0x620],xmm0
  9767e2:	00 00
  9767e4:	f3 0f 10 05 7c 48 04 	movss  xmm0,DWORD PTR ds:0x104487c
  9767eb:	01
  9767ec:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9767f0:	f3 0f 11 84 24 50 05 	movss  DWORD PTR [esp+0x550],xmm0
  9767f7:	00 00
  9767f9:	f3 0f 10 84 24 20 06 	movss  xmm0,DWORD PTR [esp+0x620]
  976800:	00 00
  976802:	0f 2f 84 24 50 05 00 	comiss xmm0,DWORD PTR [esp+0x550]
  976809:	00
  97680a:	76 24                	jbe    0x976830
  97680c:	d9 86 d4 08 00 00    	fld    DWORD PTR [esi+0x8d4]
  976812:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  976815:	e8 bc 8f 60 00       	call   0xf7f7d6
  97681a:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  97681e:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  976824:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  976827:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97682b:	0f 59 c1             	mulps  xmm0,xmm1
  97682e:	eb 0e                	jmp    0x97683e
  976830:	0f 28 84 24 d0 02 00 	movaps xmm0,XMMWORD PTR [esp+0x2d0]
  976837:	00
  976838:	8d be f0 07 00 00    	lea    edi,[esi+0x7f0]
  97683e:	0f 29 07             	movaps XMMWORD PTR [edi],xmm0
  976841:	f3 0f 10 86 00 08 00 	movss  xmm0,DWORD PTR [esi+0x800]
  976848:	00
  976849:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  97684f:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  976853:	81 e1 ff ff ff 7f    	and    ecx,0x7fffffff
  976859:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  97685e:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  976862:	75 6c                	jne    0x9768d0
  976864:	f3 0f 10 4c 24 24    	movss  xmm1,DWORD PTR [esp+0x24]
  97686a:	0f 2f 0d 7c 48 04 01 	comiss xmm1,DWORD PTR ds:0x104487c
  976871:	76 5d                	jbe    0x9768d0
  976873:	0f 57 c9             	xorps  xmm1,xmm1
  976876:	0f 2f c8             	comiss xmm1,xmm0
  976879:	b8 02 00 00 00       	mov    eax,0x2
  97687e:	77 05                	ja     0x976885
  976880:	b8 03 00 00 00       	mov    eax,0x3
  976885:	50                   	push   eax
  976886:	6a 01                	push   0x1
  976888:	8d 4e 40             	lea    ecx,[esi+0x40]
  97688b:	e8 a0 b6 fe ff       	call   0x961f30
  976890:	d9 54 24 0c          	fst    DWORD PTR [esp+0xc]
  976894:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  976898:	df f1                	fcomip st,st(1)
  97689a:	dd d8                	fstp   st(0)
  97689c:	76 16                	jbe    0x9768b4
  97689e:	f3 0f 10 86 00 08 00 	movss  xmm0,DWORD PTR [esi+0x800]
  9768a5:	00
  9768a6:	f3 0f 5e 44 24 24    	divss  xmm0,DWORD PTR [esp+0x24]
  9768ac:	f3 0f 59 44 24 0c    	mulss  xmm0,DWORD PTR [esp+0xc]
  9768b2:	eb 25                	jmp    0x9768d9
  9768b4:	d9 86 d8 08 00 00    	fld    DWORD PTR [esi+0x8d8]
  9768ba:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  9768bd:	e8 14 8f 60 00       	call   0xf7f7d6
  9768c2:	d8 8e 00 08 00 00    	fmul   DWORD PTR [esi+0x800]
  9768c8:	d9 9e 00 08 00 00    	fstp   DWORD PTR [esi+0x800]
  9768ce:	eb 11                	jmp    0x9768e1
  9768d0:	f3 0f 10 84 24 e0 02 	movss  xmm0,DWORD PTR [esp+0x2e0]
  9768d7:	00 00
  9768d9:	f3 0f 11 86 00 08 00 	movss  DWORD PTR [esi+0x800],xmm0
  9768e0:	00
  9768e1:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  9768e6:	0f 84 c9 00 00 00    	je     0x9769b5
  9768ec:	0f 28 8e e0 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x7e0]
  9768f3:	0f 59 c9             	mulps  xmm1,xmm1
  9768f6:	0f 28 c1             	movaps xmm0,xmm1
  9768f9:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  9768fd:	0f 28 d1             	movaps xmm2,xmm1
  976900:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  976904:	0f 58 c2             	addps  xmm0,xmm2
  976907:	0f 58 c1             	addps  xmm0,xmm1
  97690a:	f3 0f 10 0d 7c 48 04 	movss  xmm1,DWORD PTR ds:0x104487c
  976911:	01
  976912:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976916:	0f 51 c0             	sqrtps xmm0,xmm0
  976919:	f3 0f 11 84 24 e0 05 	movss  DWORD PTR [esp+0x5e0],xmm0
  976920:	00 00
  976922:	f3 0f 10 94 24 e0 05 	movss  xmm2,DWORD PTR [esp+0x5e0]
  976929:	00 00
  97692b:	f3 0f 10 c1          	movss  xmm0,xmm1
  97692f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976933:	f3 0f 11 84 24 f0 03 	movss  DWORD PTR [esp+0x3f0],xmm0
  97693a:	00 00
  97693c:	0f 2f 94 24 f0 03 00 	comiss xmm2,DWORD PTR [esp+0x3f0]
  976943:	00
  976944:	76 6f                	jbe    0x9769b5
  976946:	f3 0f 10 96 00 08 00 	movss  xmm2,DWORD PTR [esi+0x800]
  97694d:	00
  97694e:	f3 0f 11 54 24 24    	movss  DWORD PTR [esp+0x24],xmm2
  976954:	81 64 24 24 ff ff ff 	and    DWORD PTR [esp+0x24],0x7fffffff
  97695b:	7f
  97695c:	0f 2f 4c 24 24       	comiss xmm1,DWORD PTR [esp+0x24]
  976961:	76 52                	jbe    0x9769b5
  976963:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  976966:	0f 59 c9             	mulps  xmm1,xmm1
  976969:	0f 28 d1             	movaps xmm2,xmm1
  97696c:	0f c6 d1 55          	shufps xmm2,xmm1,0x55
  976970:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  976974:	0f 58 d1             	addps  xmm2,xmm1
  976977:	0f 51 ca             	sqrtps xmm1,xmm2
  97697a:	f3 0f 11 84 24 30 05 	movss  DWORD PTR [esp+0x530],xmm0
  976981:	00 00
  976983:	f3 0f 10 84 24 30 05 	movss  xmm0,DWORD PTR [esp+0x530]
  97698a:	00 00
  97698c:	f3 0f 11 8c 24 10 04 	movss  DWORD PTR [esp+0x410],xmm1
  976993:	00 00
  976995:	0f 2f 84 24 10 04 00 	comiss xmm0,DWORD PTR [esp+0x410]
  97699c:	00
  97699d:	76 16                	jbe    0x9769b5
  97699f:	0f 28 86 e0 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x7e0]
  9769a6:	0f 58 84 24 e0 00 00 	addps  xmm0,XMMWORD PTR [esp+0xe0]
  9769ad:	00
  9769ae:	0f 29 86 e0 07 00 00 	movaps XMMWORD PTR [esi+0x7e0],xmm0
  9769b5:	0f 28 8c 24 f0 00 00 	movaps xmm1,XMMWORD PTR [esp+0xf0]
  9769bc:	00
  9769bd:	0f 28 86 e0 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x7e0]
  9769c4:	0f 28 94 24 40 01 00 	movaps xmm2,XMMWORD PTR [esp+0x140]
  9769cb:	00
  9769cc:	0f 28 d9             	movaps xmm3,xmm1
  9769cf:	0f 59 d8             	mulps  xmm3,xmm0
  9769d2:	0f 5f d8             	maxps  xmm3,xmm0
  9769d5:	f3 0f 10 86 00 08 00 	movss  xmm0,DWORD PTR [esi+0x800]
  9769dc:	00
  9769dd:	0f c2 da 02          	cmpleps xmm3,xmm2
  9769e1:	0f 50 d3             	movmskps edx,xmm3
  9769e4:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9769e8:	83 e2 07             	and    edx,0x7
  9769eb:	0f 28 d9             	movaps xmm3,xmm1
  9769ee:	0f 59 d8             	mulps  xmm3,xmm0
  9769f1:	0f 5f d8             	maxps  xmm3,xmm0
  9769f4:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  9769f7:	0f c2 da 02          	cmpleps xmm3,xmm2
  9769fb:	0f 50 cb             	movmskps ecx,xmm3
  9769fe:	80 fa 07             	cmp    dl,0x7
  976a01:	0f 95 c0             	setne  al
  976a04:	0f 28 d8             	movaps xmm3,xmm0
  976a07:	0f 59 d9             	mulps  xmm3,xmm1
  976a0a:	83 f9 0f             	cmp    ecx,0xf
  976a0d:	0f 5f d8             	maxps  xmm3,xmm0
  976a10:	0f c2 da 02          	cmpleps xmm3,xmm2
  976a14:	0f 95 44 24 2a       	setne  BYTE PTR [esp+0x2a]
  976a19:	0f 50 d3             	movmskps edx,xmm3
  976a1c:	f6 c2 01             	test   dl,0x1
  976a1f:	89 bc 24 7c 02 00 00 	mov    DWORD PTR [esp+0x27c],edi
  976a26:	74 07                	je     0x976a2f
  976a28:	89 bc 24 54 02 00 00 	mov    DWORD PTR [esp+0x254],edi
  976a2f:	8b cf                	mov    ecx,edi
  976a31:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  976a34:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976a38:	0f 59 c8             	mulps  xmm1,xmm0
  976a3b:	0f 5f c8             	maxps  xmm1,xmm0
  976a3e:	89 8c 24 94 02 00 00 	mov    DWORD PTR [esp+0x294],ecx
  976a45:	0f c2 ca 02          	cmpleps xmm1,xmm2
  976a49:	0f 50 c9             	movmskps ecx,xmm1
  976a4c:	83 f9 0f             	cmp    ecx,0xf
  976a4f:	0f 95 44 24 13       	setne  BYTE PTR [esp+0x13]
  976a54:	84 c0                	test   al,al
  976a56:	74 2a                	je     0x976a82
  976a58:	80 be b9 08 00 00 00 	cmp    BYTE PTR [esi+0x8b9],0x0
  976a5f:	74 21                	je     0x976a82
  976a61:	80 be ba 08 00 00 00 	cmp    BYTE PTR [esi+0x8ba],0x0
  976a68:	75 18                	jne    0x976a82
  976a6a:	f3 0f 10 05 9c 6c 04 	movss  xmm0,DWORD PTR ds:0x1046c9c
  976a71:	01
  976a72:	f3 0f 11 86 c4 08 00 	movss  DWORD PTR [esi+0x8c4],xmm0
  976a79:	00
  976a7a:	f3 0f 11 86 c8 08 00 	movss  DWORD PTR [esi+0x8c8],xmm0
  976a81:	00
  976a82:	0f 28 8e 80 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x780]
  976a89:	0f 28 86 70 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x770]
  976a90:	8b 86 c0 08 00 00    	mov    eax,DWORD PTR [esi+0x8c0]
  976a96:	85 c0                	test   eax,eax
  976a98:	f3 0f 10 be ec 08 00 	movss  xmm7,DWORD PTR [esi+0x8ec]
  976a9f:	00
  976aa0:	0f 5c c1             	subps  xmm0,xmm1
  976aa3:	0f 59 c0             	mulps  xmm0,xmm0
  976aa6:	0f 28 c8             	movaps xmm1,xmm0
  976aa9:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  976aad:	0f 28 d1             	movaps xmm2,xmm1
  976ab0:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  976ab4:	0f 58 c2             	addps  xmm0,xmm2
  976ab7:	0f 58 c1             	addps  xmm0,xmm1
  976aba:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976abe:	0f 51 c0             	sqrtps xmm0,xmm0
  976ac1:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [esp+0x90],xmm0
  976ac8:	00
  976ac9:	f3 0f 10 86 e4 08 00 	movss  xmm0,DWORD PTR [esi+0x8e4]
  976ad0:	00
  976ad1:	f3 0f 10 8c 24 90 00 	movss  xmm1,DWORD PTR [esp+0x90]
  976ad8:	00 00
  976ada:	f3 0f 5c c8          	subss  xmm1,xmm0
  976ade:	f3 0f 59 8e f0 08 00 	mulss  xmm1,DWORD PTR [esi+0x8f0]
  976ae5:	00
  976ae6:	f3 0f 11 4c 24 2c    	movss  DWORD PTR [esp+0x2c],xmm1
  976aec:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  976af2:	f3 0f 11 7c 24 24    	movss  DWORD PTR [esp+0x24],xmm7
  976af8:	74 0a                	je     0x976b04
  976afa:	f3 0f 10 3d a8 6c 04 	movss  xmm7,DWORD PTR ds:0x1046ca8
  976b01:	01
  976b02:	eb 3c                	jmp    0x976b40
  976b04:	80 be b9 08 00 00 00 	cmp    BYTE PTR [esi+0x8b9],0x0
  976b0b:	74 22                	je     0x976b2f
  976b0d:	80 be b8 08 00 00 00 	cmp    BYTE PTR [esi+0x8b8],0x0
  976b14:	75 19                	jne    0x976b2f
  976b16:	80 be ba 08 00 00 00 	cmp    BYTE PTR [esi+0x8ba],0x0
  976b1d:	75 19                	jne    0x976b38
  976b1f:	f3 0f 10 be e8 08 00 	movss  xmm7,DWORD PTR [esi+0x8e8]
  976b26:	00
  976b27:	f3 0f 11 7c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm7
  976b2d:	eb 17                	jmp    0x976b46
  976b2f:	80 be ba 08 00 00 00 	cmp    BYTE PTR [esi+0x8ba],0x0
  976b36:	74 14                	je     0x976b4c
  976b38:	f3 0f 10 be e8 08 00 	movss  xmm7,DWORD PTR [esi+0x8e8]
  976b3f:	00
  976b40:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  976b46:	f3 0f 11 7c 24 24    	movss  DWORD PTR [esp+0x24],xmm7
  976b4c:	80 be b2 08 00 00 00 	cmp    BYTE PTR [esi+0x8b2],0x0
  976b53:	74 6b                	je     0x976bc0
  976b55:	8b 5c 24 4c          	mov    ebx,DWORD PTR [esp+0x4c]
  976b59:	8b 13                	mov    edx,DWORD PTR [ebx]
  976b5b:	8b 52 1c             	mov    edx,DWORD PTR [edx+0x1c]
  976b5e:	8d 84 24 70 08 00 00 	lea    eax,[esp+0x870]
  976b65:	50                   	push   eax
  976b66:	8b cb                	mov    ecx,ebx
  976b68:	ff d2                	call   edx
  976b6a:	8b f8                	mov    edi,eax
  976b6c:	8b 03                	mov    eax,DWORD PTR [ebx]
  976b6e:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  976b71:	8d 8c 24 30 08 00 00 	lea    ecx,[esp+0x830]
  976b78:	51                   	push   ecx
  976b79:	8b cb                	mov    ecx,ebx
  976b7b:	ff d2                	call   edx
  976b7d:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  976b80:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  976b83:	0f 5c c1             	subps  xmm0,xmm1
  976b86:	0f 59 c0             	mulps  xmm0,xmm0
  976b89:	0f 28 c8             	movaps xmm1,xmm0
  976b8c:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  976b90:	0f 28 d1             	movaps xmm2,xmm1
  976b93:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  976b97:	0f 58 c2             	addps  xmm0,xmm2
  976b9a:	0f 58 c1             	addps  xmm0,xmm1
  976b9d:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976ba1:	0f 51 c0             	sqrtps xmm0,xmm0
  976ba4:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  976bab:	00
  976bac:	f3 0f 10 84 24 e0 00 	movss  xmm0,DWORD PTR [esp+0xe0]
  976bb3:	00 00
  976bb5:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  976bbb:	e9 6a 02 00 00       	jmp    0x976e2a
  976bc0:	83 f8 02             	cmp    eax,0x2
  976bc3:	0f 85 7f 01 00 00    	jne    0x976d48
  976bc9:	8b 03                	mov    eax,DWORD PTR [ebx]
  976bcb:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
  976bce:	8b cb                	mov    ecx,ebx
  976bd0:	ff d2                	call   edx
  976bd2:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  976bd6:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  976bdc:	d9 c0                	fld    st(0)
  976bde:	d8 e2                	fsub   st,st(2)
  976be0:	83 ec 14             	sub    esp,0x14
  976be3:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  976be7:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  976beb:	d9 c9                	fxch   st(1)
  976bed:	d9 5c 24 28          	fstp   DWORD PTR [esp+0x28]
  976bf1:	c1 f8 1f             	sar    eax,0x1f
  976bf4:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  976bf8:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  976bfc:	8b c8                	mov    ecx,eax
  976bfe:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  976c02:	f7 d1                	not    ecx
  976c04:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  976c0a:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  976c0e:	23 4c 24 20          	and    ecx,DWORD PTR [esp+0x20]
  976c12:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  976c16:	f3 0f 10 44 24 38    	movss  xmm0,DWORD PTR [esp+0x38]
  976c1c:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  976c20:	d9 84 24 a4 00 00 00 	fld    DWORD PTR [esp+0xa4]
  976c27:	23 d0                	and    edx,eax
  976c29:	0b ca                	or     ecx,edx
  976c2b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  976c2f:	d9 84 24 f4 02 00 00 	fld    DWORD PTR [esp+0x2f4]
  976c36:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  976c3a:	f3 0f 10 4c 24 20    	movss  xmm1,DWORD PTR [esp+0x20]
  976c40:	d9 1c 24             	fstp   DWORD PTR [esp]
  976c43:	0f 28 d0             	movaps xmm2,xmm0
  976c46:	f3 0f 5c d1          	subss  xmm2,xmm1
  976c4a:	f3 0f 11 54 24 20    	movss  DWORD PTR [esp+0x20],xmm2
  976c50:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  976c54:	c1 f8 1f             	sar    eax,0x1f
  976c57:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  976c5d:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  976c61:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  976c67:	8b c8                	mov    ecx,eax
  976c69:	f7 d1                	not    ecx
  976c6b:	23 4c 24 20          	and    ecx,DWORD PTR [esp+0x20]
  976c6f:	23 d0                	and    edx,eax
  976c71:	0b ca                	or     ecx,edx
  976c73:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  976c77:	f3 0f 10 7c 24 20    	movss  xmm7,DWORD PTR [esp+0x20]
  976c7d:	f3 0f 5c bc 24 a4 00 	subss  xmm7,DWORD PTR [esp+0xa4]
  976c84:	00 00
  976c86:	f3 0f 59 7c 24 34    	mulss  xmm7,DWORD PTR [esp+0x34]
  976c8c:	8b ce                	mov    ecx,esi
  976c8e:	e8 3d 94 ff ff       	call   0x9700d0
  976c93:	d9 54 24 20          	fst    DWORD PTR [esp+0x20]
  976c97:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  976c9d:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  976ca1:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  976ca5:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  976cab:	f3 0f 5c c7          	subss  xmm0,xmm7
  976caf:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  976cb5:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  976cb9:	c1 f8 1f             	sar    eax,0x1f
  976cbc:	8b c8                	mov    ecx,eax
  976cbe:	f3 0f 11 7c 24 0c    	movss  DWORD PTR [esp+0xc],xmm7
  976cc4:	f7 d1                	not    ecx
  976cc6:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  976cca:	23 d0                	and    edx,eax
  976ccc:	0b ca                	or     ecx,edx
  976cce:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  976cd2:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  976cd8:	f3 0f 59 45 08       	mulss  xmm0,DWORD PTR [ebp+0x8]
  976cdd:	f3 0f 58 84 24 90 00 	addss  xmm0,DWORD PTR [esp+0x90]
  976ce4:	00 00
  976ce6:	0f 28 d1             	movaps xmm2,xmm1
  976ce9:	f3 0f 5c d0          	subss  xmm2,xmm0
  976ced:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  976cf3:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  976cf7:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  976cfd:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  976d03:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  976d07:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  976d0d:	c1 f8 1f             	sar    eax,0x1f
  976d10:	8b c8                	mov    ecx,eax
  976d12:	f7 d1                	not    ecx
  976d14:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  976d18:	23 d0                	and    edx,eax
  976d1a:	0b ca                	or     ecx,edx
  976d1c:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  976d20:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  976d26:	0f 28 d0             	movaps xmm2,xmm0
  976d29:	f3 0f 5c d1          	subss  xmm2,xmm1
  976d2d:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  976d33:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  976d37:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  976d3d:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  976d43:	e9 cb 00 00 00       	jmp    0x976e13
  976d48:	80 be b4 08 00 00 00 	cmp    BYTE PTR [esi+0x8b4],0x0
  976d4f:	74 29                	je     0x976d7a
  976d51:	8b 03                	mov    eax,DWORD PTR [ebx]
  976d53:	8b 50 2c             	mov    edx,DWORD PTR [eax+0x2c]
  976d56:	8b cb                	mov    ecx,ebx
  976d58:	ff d2                	call   edx
  976d5a:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  976d5e:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  976d64:	d8 e1                	fsub   st,st(1)
  976d66:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  976d6a:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  976d6e:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  976d72:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  976d78:	eb 89                	jmp    0x976d03
  976d7a:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  976d7e:	83 ec 14             	sub    esp,0x14
  976d81:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  976d85:	8b ce                	mov    ecx,esi
  976d87:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  976d8b:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  976d8f:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  976d93:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  976d97:	d9 84 24 a4 00 00 00 	fld    DWORD PTR [esp+0xa4]
  976d9e:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  976da2:	d9 84 24 f4 02 00 00 	fld    DWORD PTR [esp+0x2f4]
  976da9:	d9 1c 24             	fstp   DWORD PTR [esp]
  976dac:	e8 1f 93 ff ff       	call   0x9700d0
  976db1:	d8 4d 08             	fmul   DWORD PTR [ebp+0x8]
  976db4:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  976dba:	0f 28 cf             	movaps xmm1,xmm7
  976dbd:	d8 84 24 90 00 00 00 	fadd   DWORD PTR [esp+0x90]
  976dc4:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  976dc8:	d8 e1                	fsub   st,st(1)
  976dca:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  976dce:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  976dd2:	c1 f8 1f             	sar    eax,0x1f
  976dd5:	d9 5c 24 14          	fstp   DWORD PTR [esp+0x14]
  976dd9:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  976ddd:	8b c8                	mov    ecx,eax
  976ddf:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  976de5:	f7 d1                	not    ecx
  976de7:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  976deb:	23 d0                	and    edx,eax
  976ded:	0b ca                	or     ecx,edx
  976def:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  976df3:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  976df9:	f3 0f 5c c8          	subss  xmm1,xmm0
  976dfd:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  976e03:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  976e07:	f3 0f 11 7c 24 14    	movss  DWORD PTR [esp+0x14],xmm7
  976e0d:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  976e13:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  976e17:	c1 f8 1f             	sar    eax,0x1f
  976e1a:	8b c8                	mov    ecx,eax
  976e1c:	f7 d1                	not    ecx
  976e1e:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  976e22:	23 d0                	and    edx,eax
  976e24:	0b ca                	or     ecx,edx
  976e26:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  976e2a:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  976e30:	f3 0f 10 96 ec 08 00 	movss  xmm2,DWORD PTR [esi+0x8ec]
  976e37:	00
  976e38:	0f 28 9c 24 f0 00 00 	movaps xmm3,XMMWORD PTR [esp+0xf0]
  976e3f:	00
  976e40:	0f 28 c8             	movaps xmm1,xmm0
  976e43:	f3 0f 5c 8e e4 08 00 	subss  xmm1,DWORD PTR [esi+0x8e4]
  976e4a:	00
  976e4b:	f3 0f 59 8e f0 08 00 	mulss  xmm1,DWORD PTR [esi+0x8f0]
  976e52:	00
  976e53:	f3 0f 5c c2          	subss  xmm0,xmm2
  976e57:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  976e5d:	f3 0f 10 8c 24 90 00 	movss  xmm1,DWORD PTR [esp+0x90]
  976e64:	00 00
  976e66:	f3 0f 5c ca          	subss  xmm1,xmm2
  976e6a:	f3 0f 10 15 ec e6 06 	movss  xmm2,DWORD PTR ds:0x106e6ec
  976e71:	01
  976e72:	0f 28 e3             	movaps xmm4,xmm3
  976e75:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  976e79:	0f 59 e0             	mulps  xmm4,xmm0
  976e7c:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  976e80:	f3 0f 10 c9          	movss  xmm1,xmm1
  976e84:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  976e88:	0f 5f e0             	maxps  xmm4,xmm0
  976e8b:	0f c2 e2 02          	cmpleps xmm4,xmm2
  976e8f:	0f 50 c4             	movmskps eax,xmm4
  976e92:	83 f8 0f             	cmp    eax,0xf
  976e95:	0f 59 d9             	mulps  xmm3,xmm1
  976e98:	0f 94 c0             	sete   al
  976e9b:	0f 5f d9             	maxps  xmm3,xmm1
  976e9e:	0f c2 da 02          	cmpleps xmm3,xmm2
  976ea2:	0f 50 cb             	movmskps ecx,xmm3
  976ea5:	83 f9 0f             	cmp    ecx,0xf
  976ea8:	0f 94 c2             	sete   dl
  976eab:	3a d0                	cmp    dl,al
  976ead:	88 84 24 af 00 00 00 	mov    BYTE PTR [esp+0xaf],al
  976eb4:	75 13                	jne    0x976ec9
  976eb6:	84 c0                	test   al,al
  976eb8:	0f 84 99 00 00 00    	je     0x976f57
  976ebe:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  976ec3:	0f 84 8e 00 00 00    	je     0x976f57
  976ec9:	80 be b8 08 00 00 00 	cmp    BYTE PTR [esi+0x8b8],0x0
  976ed0:	0f 85 81 00 00 00    	jne    0x976f57
  976ed6:	88 84 24 20 02 00 00 	mov    BYTE PTR [esp+0x220],al
  976edd:	6a 01                	push   0x1
  976edf:	8d 84 24 14 02 00 00 	lea    eax,[esp+0x214]
  976ee6:	50                   	push   eax
  976ee7:	8d 8c 24 48 06 00 00 	lea    ecx,[esp+0x648]
  976eee:	6a 04                	push   0x4
  976ef0:	bf f4 a6 fb 00       	mov    edi,0xfba6f4
  976ef5:	51                   	push   ecx
  976ef6:	89 bc 24 20 02 00 00 	mov    DWORD PTR [esp+0x220],edi
  976efd:	66 c7 84 24 2a 02 00 	mov    WORD PTR [esp+0x22a],0x1
  976f04:	00 01 00
  976f07:	66 c7 84 24 28 02 00 	mov    WORD PTR [esp+0x228],0x0
  976f0e:	00 00 00
  976f11:	e8 4a 75 dc ff       	call   0x73e460
  976f16:	83 c4 10             	add    esp,0x10
  976f19:	f6 84 24 48 06 00 00 	test   BYTE PTR [esp+0x648],0x4
  976f20:	04
  976f21:	89 bc 24 40 06 00 00 	mov    DWORD PTR [esp+0x640],edi
  976f28:	74 0e                	je     0x976f38
  976f2a:	6a 00                	push   0x0
  976f2c:	8d 8c 24 44 06 00 00 	lea    ecx,[esp+0x644]
  976f33:	e8 28 e8 b7 ff       	call   0x4f5760
  976f38:	f6 84 24 18 02 00 00 	test   BYTE PTR [esp+0x218],0x4
  976f3f:	04
  976f40:	89 bc 24 10 02 00 00 	mov    DWORD PTR [esp+0x210],edi
  976f47:	74 0e                	je     0x976f57
  976f49:	6a 00                	push   0x0
  976f4b:	8d 8c 24 14 02 00 00 	lea    ecx,[esp+0x214]
  976f52:	e8 09 e8 b7 ff       	call   0x4f5760
  976f57:	80 be b1 08 00 00 00 	cmp    BYTE PTR [esi+0x8b1],0x0
  976f5e:	0f 28 86 80 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x780]
  976f65:	0f 29 84 24 80 01 00 	movaps XMMWORD PTR [esp+0x180],xmm0
  976f6c:	00
  976f6d:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  976f72:	0f 84 83 02 00 00    	je     0x9771fb
  976f78:	8b 7c 24 4c          	mov    edi,DWORD PTR [esp+0x4c]
  976f7c:	8b 17                	mov    edx,DWORD PTR [edi]
  976f7e:	8b 52 20             	mov    edx,DWORD PTR [edx+0x20]
  976f81:	8d 84 24 30 03 00 00 	lea    eax,[esp+0x330]
  976f88:	50                   	push   eax
  976f89:	8b cf                	mov    ecx,edi
  976f8b:	ff d2                	call   edx
  976f8d:	80 be b7 08 00 00 00 	cmp    BYTE PTR [esi+0x8b7],0x0
  976f94:	74 3c                	je     0x976fd2
  976f96:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  976f9a:	8b 07                	mov    eax,DWORD PTR [edi]
  976f9c:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  976f9f:	51                   	push   ecx
  976fa0:	8d 8c 24 54 08 00 00 	lea    ecx,[esp+0x854]
  976fa7:	d9 1c 24             	fstp   DWORD PTR [esp]
  976faa:	51                   	push   ecx
  976fab:	8b cf                	mov    ecx,edi
  976fad:	ff d2                	call   edx
  976faf:	50                   	push   eax
  976fb0:	8b ce                	mov    ecx,esi
  976fb2:	e8 f9 b3 ff ff       	call   0x9723b0
  976fb7:	84 c0                	test   al,al
  976fb9:	75 17                	jne    0x976fd2
  976fbb:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  976fbf:	51                   	push   ecx
  976fc0:	8d 84 24 34 03 00 00 	lea    eax,[esp+0x334]
  976fc7:	d9 1c 24             	fstp   DWORD PTR [esp]
  976fca:	50                   	push   eax
  976fcb:	8b ce                	mov    ecx,esi
  976fcd:	e8 7e e7 ff ff       	call   0x975750
  976fd2:	0f 28 84 24 30 03 00 	movaps xmm0,XMMWORD PTR [esp+0x330]
  976fd9:	00
  976fda:	0f 28 8c 24 80 01 00 	movaps xmm1,XMMWORD PTR [esp+0x180]
  976fe1:	00
  976fe2:	8b 17                	mov    edx,DWORD PTR [edi]
  976fe4:	8b 52 28             	mov    edx,DWORD PTR [edx+0x28]
  976fe7:	8d 84 24 60 05 00 00 	lea    eax,[esp+0x560]
  976fee:	0f 5c c1             	subps  xmm0,xmm1
  976ff1:	0f 5e 84 24 c0 00 00 	divps  xmm0,XMMWORD PTR [esp+0xc0]
  976ff8:	00
  976ff9:	50                   	push   eax
  976ffa:	8b cf                	mov    ecx,edi
  976ffc:	0f 29 84 24 94 00 00 	movaps XMMWORD PTR [esp+0x94],xmm0
  977003:	00
  977004:	ff d2                	call   edx
  977006:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  977009:	85 c9                	test   ecx,ecx
  97700b:	74 38                	je     0x977045
  97700d:	0f 28 84 24 60 05 00 	movaps xmm0,XMMWORD PTR [esp+0x560]
  977014:	00
  977015:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  97701c:	00
  97701d:	d9 84 24 e8 00 00 00 	fld    DWORD PTR [esp+0xe8]
  977024:	83 ec 08             	sub    esp,0x8
  977027:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  97702b:	0f 29 44 24 78       	movaps XMMWORD PTR [esp+0x78],xmm0
  977030:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  977034:	d9 1c 24             	fstp   DWORD PTR [esp]
  977037:	e8 c4 49 2f 00       	call   0xc6ba00
  97703c:	84 c0                	test   al,al
  97703e:	74 05                	je     0x977045
  977040:	c6 44 24 12 01       	mov    BYTE PTR [esp+0x12],0x1
  977045:	0f 28 b4 24 90 00 00 	movaps xmm6,XMMWORD PTR [esp+0x90]
  97704c:	00
  97704d:	83 7e 3c 00          	cmp    DWORD PTR [esi+0x3c],0x0
  977051:	0f 84 1a 03 00 00    	je     0x977371
  977057:	0f 28 84 24 f0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xf0]
  97705e:	00
  97705f:	0f 59 c6             	mulps  xmm0,xmm6
  977062:	0f 5f c6             	maxps  xmm0,xmm6
  977065:	0f c2 84 24 40 01 00 	cmpleps xmm0,XMMWORD PTR [esp+0x140]
  97706c:	00 02
  97706e:	0f 50 d0             	movmskps edx,xmm0
  977071:	83 e2 07             	and    edx,0x7
  977074:	80 fa 07             	cmp    dl,0x7
  977077:	0f 84 f4 02 00 00    	je     0x977371
  97707d:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  977082:	0f 85 e9 02 00 00    	jne    0x977371
  977088:	f3 0f 10 2d f8 98 f9 	movss  xmm5,DWORD PTR ds:0xf998f8
  97708f:	00
  977090:	f3 0f 10 1d b4 b5 f9 	movss  xmm3,DWORD PTR ds:0xf9b5b4
  977097:	00
  977098:	0f 28 c6             	movaps xmm0,xmm6
  97709b:	0f 59 c6             	mulps  xmm0,xmm6
  97709e:	0f 28 c8             	movaps xmm1,xmm0
  9770a1:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  9770a5:	0f 28 d0             	movaps xmm2,xmm0
  9770a8:	0f c6 d0 01          	shufps xmm2,xmm0,0x1
  9770ac:	0f 58 ca             	addps  xmm1,xmm2
  9770af:	0f 58 c8             	addps  xmm1,xmm0
  9770b2:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9770b6:	0f 28 d1             	movaps xmm2,xmm1
  9770b9:	0f 52 e2             	rsqrtps xmm4,xmm2
  9770bc:	0f 29 54 24 70       	movaps XMMWORD PTR [esp+0x70],xmm2
  9770c1:	0f 28 fc             	movaps xmm7,xmm4
  9770c4:	0f 59 fc             	mulps  xmm7,xmm4
  9770c7:	0f 59 fa             	mulps  xmm7,xmm2
  9770ca:	f3 0f 10 cd          	movss  xmm1,xmm5
  9770ce:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9770d2:	0f 28 d1             	movaps xmm2,xmm1
  9770d5:	0f 5c d7             	subps  xmm2,xmm7
  9770d8:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  9770dc:	0f 28 fb             	movaps xmm7,xmm3
  9770df:	0f 59 fc             	mulps  xmm7,xmm4
  9770e2:	0f 59 d7             	mulps  xmm2,xmm7
  9770e5:	0f 58 d4             	addps  xmm2,xmm4
  9770e8:	0f 28 e2             	movaps xmm4,xmm2
  9770eb:	0f 59 e2             	mulps  xmm4,xmm2
  9770ee:	0f 59 64 24 70       	mulps  xmm4,XMMWORD PTR [esp+0x70]
  9770f3:	0f 5c cc             	subps  xmm1,xmm4
  9770f6:	0f 59 da             	mulps  xmm3,xmm2
  9770f9:	0f 59 cb             	mulps  xmm1,xmm3
  9770fc:	0f 58 ca             	addps  xmm1,xmm2
  9770ff:	0f 59 ce             	mulps  xmm1,xmm6
  977102:	0f 29 8c 24 e0 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm1
  977109:	00
  97710a:	0f 28 c8             	movaps xmm1,xmm0
  97710d:	0f c6 c8 02          	shufps xmm1,xmm0,0x2
  977111:	0f 28 d0             	movaps xmm2,xmm0
  977114:	0f c6 d0 01          	shufps xmm2,xmm0,0x1
  977118:	0f 58 ca             	addps  xmm1,xmm2
  97711b:	0f 58 c8             	addps  xmm1,xmm0
  97711e:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  977122:	0f 51 c1             	sqrtps xmm0,xmm1
  977125:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  97712a:	f3 0f 10 86 98 09 00 	movss  xmm0,DWORD PTR [esi+0x998]
  977131:	00
  977132:	f3 0f 59 44 24 70    	mulss  xmm0,DWORD PTR [esp+0x70]
  977138:	f3 0f 59 05 b4 b5 f9 	mulss  xmm0,DWORD PTR ds:0xf9b5b4
  97713f:	00
  977140:	0f 28 c8             	movaps xmm1,xmm0
  977143:	f3 0f 5c cd          	subss  xmm1,xmm5
  977147:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  97714d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  977151:	c1 f8 1f             	sar    eax,0x1f
  977154:	8b c8                	mov    ecx,eax
  977156:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  97715c:	f3 0f 11 6c 24 14    	movss  DWORD PTR [esp+0x14],xmm5
  977162:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  977166:	f7 d1                	not    ecx
  977168:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  97716c:	23 d0                	and    edx,eax
  97716e:	0b ca                	or     ecx,edx
  977170:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  977174:	f3 0f 10 4c 24 2c    	movss  xmm1,DWORD PTR [esp+0x2c]
  97717a:	32 db                	xor    bl,bl
  97717c:	0f 2f cd             	comiss xmm1,xmm5
  97717f:	0f 28 c5             	movaps xmm0,xmm5
  977182:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  977188:	0f 82 ea 00 00 00    	jb     0x977278
  97718e:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  977191:	f3 0f 10 c0          	movss  xmm0,xmm0
  977195:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977199:	0f 59 84 24 e0 00 00 	mulps  xmm0,XMMWORD PTR [esp+0xe0]
  9771a0:	00
  9771a1:	0f 58 84 24 80 01 00 	addps  xmm0,XMMWORD PTR [esp+0x180]
  9771a8:	00
  9771a9:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  9771ae:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  9771b2:	83 ec 08             	sub    esp,0x8
  9771b5:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  9771b9:	0f 29 44 24 38       	movaps XMMWORD PTR [esp+0x38],xmm0
  9771be:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  9771c2:	0f 29 84 24 f8 08 00 	movaps XMMWORD PTR [esp+0x8f8],xmm0
  9771c9:	00
  9771ca:	d9 1c 24             	fstp   DWORD PTR [esp]
  9771cd:	e8 2e 48 2f 00       	call   0xc6ba00
  9771d2:	84 c0                	test   al,al
  9771d4:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  9771da:	0f 84 8e 00 00 00    	je     0x97726e
  9771e0:	f3 0f 58 05 f8 98 f9 	addss  xmm0,DWORD PTR ds:0xf998f8
  9771e7:	00
  9771e8:	f3 0f 10 4c 24 2c    	movss  xmm1,DWORD PTR [esp+0x2c]
  9771ee:	0f 2f c8             	comiss xmm1,xmm0
  9771f1:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  9771f7:	73 95                	jae    0x97718e
  9771f9:	eb 75                	jmp    0x977270
  9771fb:	80 be b6 08 00 00 00 	cmp    BYTE PTR [esi+0x8b6],0x0
  977202:	74 15                	je     0x977219
  977204:	0f 28 b4 24 d0 00 00 	movaps xmm6,XMMWORD PTR [esp+0xd0]
  97720b:	00
  97720c:	0f 29 b4 24 90 00 00 	movaps XMMWORD PTR [esp+0x90],xmm6
  977213:	00
  977214:	e9 34 fe ff ff       	jmp    0x97704d
  977219:	80 be b7 08 00 00 00 	cmp    BYTE PTR [esi+0x8b7],0x0
  977220:	74 1e                	je     0x977240
  977222:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  977226:	51                   	push   ecx
  977227:	d9 1c 24             	fstp   DWORD PTR [esp]
  97722a:	8d 84 24 84 01 00 00 	lea    eax,[esp+0x184]
  977231:	50                   	push   eax
  977232:	8d 86 e0 07 00 00    	lea    eax,[esi+0x7e0]
  977238:	50                   	push   eax
  977239:	8b ce                	mov    ecx,esi
  97723b:	e8 d0 e2 ff ff       	call   0x975510
  977240:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  977244:	51                   	push   ecx
  977245:	d9 1c 24             	fstp   DWORD PTR [esp]
  977248:	8d 86 e0 07 00 00    	lea    eax,[esi+0x7e0]
  97724e:	50                   	push   eax
  97724f:	8d 8c 24 38 07 00 00 	lea    ecx,[esp+0x738]
  977256:	51                   	push   ecx
  977257:	8b ce                	mov    ecx,esi
  977259:	e8 82 9d ff ff       	call   0x970fe0
  97725e:	0f 28 30             	movaps xmm6,XMMWORD PTR [eax]
  977261:	0f 29 b4 24 90 00 00 	movaps XMMWORD PTR [esp+0x90],xmm6
  977268:	00
  977269:	e9 df fd ff ff       	jmp    0x97704d
  97726e:	b3 01                	mov    bl,0x1
  977270:	0f 28 b4 24 90 00 00 	movaps xmm6,XMMWORD PTR [esp+0x90]
  977277:	00
  977278:	8a 86 a0 08 00 00    	mov    al,BYTE PTR [esi+0x8a0]
  97727e:	84 c0                	test   al,al
  977280:	75 5a                	jne    0x9772dc
  977282:	84 db                	test   bl,bl
  977284:	74 52                	je     0x9772d8
  977286:	0f 29 b6 90 08 00 00 	movaps XMMWORD PTR [esi+0x890],xmm6
  97728d:	f3 0f 10 8e 98 09 00 	movss  xmm1,DWORD PTR [esi+0x998]
  977294:	00
  977295:	f3 0f 5e 4c 24 2c    	divss  xmm1,DWORD PTR [esp+0x2c]
  97729b:	f3 0f 59 c8          	mulss  xmm1,xmm0
  97729f:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  9772a5:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  9772a9:	f3 0f 11 8e a4 08 00 	movss  DWORD PTR [esi+0x8a4],xmm1
  9772b0:	00
  9772b1:	dd 05 20 11 ff 00    	fld    QWORD PTR ds:0xff1120
  9772b7:	f3 0f 11 8e a8 08 00 	movss  DWORD PTR [esi+0x8a8],xmm1
  9772be:	00
  9772bf:	df f1                	fcomip st,st(1)
  9772c1:	dd d8                	fstp   st(0)
  9772c3:	76 0a                	jbe    0x9772cf
  9772c5:	0f 28 b4 24 d0 00 00 	movaps xmm6,XMMWORD PTR [esp+0xd0]
  9772cc:	00
  9772cd:	eb 11                	jmp    0x9772e0
  9772cf:	c6 86 a0 08 00 00 01 	mov    BYTE PTR [esi+0x8a0],0x1
  9772d6:	eb 0f                	jmp    0x9772e7
  9772d8:	84 c0                	test   al,al
  9772da:	74 0b                	je     0x9772e7
  9772dc:	84 db                	test   bl,bl
  9772de:	75 07                	jne    0x9772e7
  9772e0:	c6 86 a0 08 00 00 00 	mov    BYTE PTR [esi+0x8a0],0x0
  9772e7:	80 be a0 08 00 00 00 	cmp    BYTE PTR [esi+0x8a0],0x0
  9772ee:	0f 84 84 00 00 00    	je     0x977378
  9772f4:	f3 0f 10 86 a8 08 00 	movss  xmm0,DWORD PTR [esi+0x8a8]
  9772fb:	00
  9772fc:	f3 0f 5c 45 08       	subss  xmm0,DWORD PTR [ebp+0x8]
  977301:	0f 28 8e 90 08 00 00 	movaps xmm1,XMMWORD PTR [esi+0x890]
  977308:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  97730e:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  977312:	c1 f8 1f             	sar    eax,0x1f
  977315:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  97731b:	f3 0f 11 86 a8 08 00 	movss  DWORD PTR [esi+0x8a8],xmm0
  977322:	00
  977323:	0f 57 c0             	xorps  xmm0,xmm0
  977326:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  97732c:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  977330:	0f 28 84 24 d0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xd0]
  977337:	00
  977338:	8b c8                	mov    ecx,eax
  97733a:	f7 d1                	not    ecx
  97733c:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  977340:	23 d0                	and    edx,eax
  977342:	0b ca                	or     ecx,edx
  977344:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  977348:	f3 0f 10 74 24 0c    	movss  xmm6,DWORD PTR [esp+0xc]
  97734e:	f3 0f 11 b6 a8 08 00 	movss  DWORD PTR [esi+0x8a8],xmm6
  977355:	00
  977356:	f3 0f 5e b6 a4 08 00 	divss  xmm6,DWORD PTR [esi+0x8a4]
  97735d:	00
  97735e:	f3 0f 10 f6          	movss  xmm6,xmm6
  977362:	0f c6 f6 00          	shufps xmm6,xmm6,0x0
  977366:	0f 5c c8             	subps  xmm1,xmm0
  977369:	0f 59 f1             	mulps  xmm6,xmm1
  97736c:	0f 58 f0             	addps  xmm6,xmm0
  97736f:	eb 07                	jmp    0x977378
  977371:	c6 86 a0 08 00 00 00 	mov    BYTE PTR [esi+0x8a0],0x0
  977378:	80 be 30 08 00 00 00 	cmp    BYTE PTR [esi+0x830],0x0
  97737f:	0f 28 8c 24 c0 00 00 	movaps xmm1,XMMWORD PTR [esp+0xc0]
  977386:	00
  977387:	0f 59 ce             	mulps  xmm1,xmm6
  97738a:	0f 58 8c 24 80 01 00 	addps  xmm1,XMMWORD PTR [esp+0x180]
  977391:	00
  977392:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  977397:	74 34                	je     0x9773cd
  977399:	0f 28 84 24 10 01 00 	movaps xmm0,XMMWORD PTR [esp+0x110]
  9773a0:	00
  9773a1:	0f 28 d0             	movaps xmm2,xmm0
  9773a4:	0f 59 94 24 f0 00 00 	mulps  xmm2,XMMWORD PTR [esp+0xf0]
  9773ab:	00
  9773ac:	0f 5f d0             	maxps  xmm2,xmm0
  9773af:	0f c2 94 24 40 01 00 	cmpleps xmm2,XMMWORD PTR [esp+0x140]
  9773b6:	00 02
  9773b8:	0f 50 c2             	movmskps eax,xmm2
  9773bb:	83 e0 07             	and    eax,0x7
  9773be:	3c 07                	cmp    al,0x7
  9773c0:	74 0b                	je     0x9773cd
  9773c2:	0f 58 c1             	addps  xmm0,xmm1
  9773c5:	0f 28 c8             	movaps xmm1,xmm0
  9773c8:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  9773cd:	80 be b7 08 00 00 00 	cmp    BYTE PTR [esi+0x8b7],0x0
  9773d4:	74 22                	je     0x9773f8
  9773d6:	80 be b1 08 00 00 00 	cmp    BYTE PTR [esi+0x8b1],0x0
  9773dd:	75 19                	jne    0x9773f8
  9773df:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  9773e3:	51                   	push   ecx
  9773e4:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  9773e8:	d9 1c 24             	fstp   DWORD PTR [esp]
  9773eb:	51                   	push   ecx
  9773ec:	8b ce                	mov    ecx,esi
  9773ee:	e8 5d e3 ff ff       	call   0x975750
  9773f3:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  9773f8:	80 be b9 08 00 00 00 	cmp    BYTE PTR [esi+0x8b9],0x0
  9773ff:	0f 85 b0 08 00 00    	jne    0x977cb5
  977405:	8b 3d c4 db 1e 01    	mov    edi,DWORD PTR ds:0x11edbc4
  97740b:	85 ff                	test   edi,edi
  97740d:	0f 84 fb 07 00 00    	je     0x977c0e
  977413:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  977418:	0f 29 4c 24 70       	movaps XMMWORD PTR [esp+0x70],xmm1
  97741d:	e8 fe 8e 13 00       	call   0xab0320
  977422:	83 ec 0c             	sub    esp,0xc
  977425:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  977429:	8b cf                	mov    ecx,edi
  97742b:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  97742f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  977433:	d9 44 24 7c          	fld    DWORD PTR [esp+0x7c]
  977437:	d9 1c 24             	fstp   DWORD PTR [esp]
  97743a:	e8 d1 18 2f 00       	call   0xc68d10
  97743f:	8b c8                	mov    ecx,eax
  977441:	85 c9                	test   ecx,ecx
  977443:	0f 84 c0 07 00 00    	je     0x977c09
  977449:	f3 0f 10 81 b8 04 00 	movss  xmm0,DWORD PTR [ecx+0x4b8]
  977450:	00
  977451:	0f 57 d2             	xorps  xmm2,xmm2
  977454:	0f 2e c2             	ucomiss xmm0,xmm2
  977457:	9f                   	lahf
  977458:	f6 c4 44             	test   ah,0x44
  97745b:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  977461:	0f 8b 49 08 00 00    	jnp    0x977cb0
  977467:	f3 0f 2a 81 74 01 00 	cvtsi2ss xmm0,DWORD PTR [ecx+0x174]
  97746e:	00
  97746f:	f3 0f 10 0d b4 b5 f9 	movss  xmm1,DWORD PTR ds:0xf9b5b4
  977476:	00
  977477:	f3 0f 2a 99 78 01 00 	cvtsi2ss xmm3,DWORD PTR [ecx+0x178]
  97747e:	00
  97747f:	f3 0f 59 c1          	mulss  xmm0,xmm1
  977483:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  97748a:	f3 0f 59 d9          	mulss  xmm3,xmm1
  97748e:	f3 0f 11 84 24 dc 00 	movss  DWORD PTR [esp+0xdc],xmm0
  977495:	00 00
  977497:	f3 0f 11 9c 24 d8 00 	movss  DWORD PTR [esp+0xd8],xmm3
  97749e:	00 00
  9774a0:	f3 0f 11 94 24 d4 00 	movss  DWORD PTR [esp+0xd4],xmm2
  9774a7:	00 00
  9774a9:	f3 0f 11 84 24 d0 00 	movss  DWORD PTR [esp+0xd0],xmm0
  9774b0:	00 00
  9774b2:	0f 28 84 24 d0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xd0]
  9774b9:	00
  9774ba:	52                   	push   edx
  9774bb:	8d 84 24 54 04 00 00 	lea    eax,[esp+0x454]
  9774c2:	50                   	push   eax
  9774c3:	0f 29 84 24 58 04 00 	movaps XMMWORD PTR [esp+0x458],xmm0
  9774ca:	00
  9774cb:	e8 40 fc 13 00       	call   0xab7110
  9774d0:	0f 28 84 24 80 00 00 	movaps xmm0,XMMWORD PTR [esp+0x80]
  9774d7:	00
  9774d8:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  9774dd:	0f 28 d8             	movaps xmm3,xmm0
  9774e0:	0f c6 d9 50          	shufps xmm3,xmm1,0x50
  9774e4:	0f c6 d8 e8          	shufps xmm3,xmm0,0xe8
  9774e8:	0f 28 f3             	movaps xmm6,xmm3
  9774eb:	0f 5c f1             	subps  xmm6,xmm1
  9774ee:	0f 28 d6             	movaps xmm2,xmm6
  9774f1:	0f 59 d6             	mulps  xmm2,xmm6
  9774f4:	0f 28 c2             	movaps xmm0,xmm2
  9774f7:	0f c6 c2 02          	shufps xmm0,xmm2,0x2
  9774fb:	0f 28 e2             	movaps xmm4,xmm2
  9774fe:	0f c6 e2 01          	shufps xmm4,xmm2,0x1
  977502:	0f 58 c4             	addps  xmm0,xmm4
  977505:	0f 58 c2             	addps  xmm0,xmm2
  977508:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97750c:	0f 51 c0             	sqrtps xmm0,xmm0
  97750f:	f3 0f 11 84 24 70 04 	movss  DWORD PTR [esp+0x470],xmm0
  977516:	00 00
  977518:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  97751e:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977522:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  977527:	f3 0f 11 84 24 70 05 	movss  DWORD PTR [esp+0x570],xmm0
  97752e:	00 00
  977530:	f3 0f 10 84 24 70 05 	movss  xmm0,DWORD PTR [esp+0x570]
  977537:	00 00
  977539:	0f 2f 84 24 70 04 00 	comiss xmm0,DWORD PTR [esp+0x470]
  977540:	00
  977541:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  977545:	89 8c 24 5c 02 00 00 	mov    DWORD PTR [esp+0x25c],ecx
  97754c:	0f 29 9c 24 80 00 00 	movaps XMMWORD PTR [esp+0x80],xmm3
  977553:	00
  977554:	0f 86 5b 07 00 00    	jbe    0x977cb5
  97755a:	0f 28 c2             	movaps xmm0,xmm2
  97755d:	0f c6 c2 02          	shufps xmm0,xmm2,0x2
  977561:	0f 28 ca             	movaps xmm1,xmm2
  977564:	0f c6 ca 01          	shufps xmm1,xmm2,0x1
  977568:	0f 58 c1             	addps  xmm0,xmm1
  97756b:	0f 58 c2             	addps  xmm0,xmm2
  97756e:	f3 0f 10 15 b4 b5 f9 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  977575:	00
  977576:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97757a:	0f 28 e8             	movaps xmm5,xmm0
  97757d:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  977584:	00
  977585:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977589:	0f 28 c8             	movaps xmm1,xmm0
  97758c:	0f 52 e5             	rsqrtps xmm4,xmm5
  97758f:	0f 28 fc             	movaps xmm7,xmm4
  977592:	0f 59 fc             	mulps  xmm7,xmm4
  977595:	0f 59 fd             	mulps  xmm7,xmm5
  977598:	0f 5c cf             	subps  xmm1,xmm7
  97759b:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  97759f:	0f 28 fa             	movaps xmm7,xmm2
  9775a2:	0f 59 fc             	mulps  xmm7,xmm4
  9775a5:	0f 59 cf             	mulps  xmm1,xmm7
  9775a8:	0f 58 cc             	addps  xmm1,xmm4
  9775ab:	0f 28 e1             	movaps xmm4,xmm1
  9775ae:	0f 59 e1             	mulps  xmm4,xmm1
  9775b1:	0f 59 e5             	mulps  xmm4,xmm5
  9775b4:	0f 5c c4             	subps  xmm0,xmm4
  9775b7:	f3 0f 10 25 a8 e3 fe 	movss  xmm4,DWORD PTR ds:0xfee3a8
  9775be:	00
  9775bf:	0f 59 d1             	mulps  xmm2,xmm1
  9775c2:	0f 59 c2             	mulps  xmm0,xmm2
  9775c5:	0f 28 94 24 80 01 00 	movaps xmm2,XMMWORD PTR [esp+0x180]
  9775cc:	00
  9775cd:	0f 58 c1             	addps  xmm0,xmm1
  9775d0:	0f 59 c6             	mulps  xmm0,xmm6
  9775d3:	0f 59 44 24 30       	mulps  xmm0,XMMWORD PTR [esp+0x30]
  9775d8:	0f 28 cb             	movaps xmm1,xmm3
  9775db:	0f 5c c8             	subps  xmm1,xmm0
  9775de:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  9775e3:	f3 0f 10 87 b8 00 00 	movss  xmm0,DWORD PTR [edi+0xb8]
  9775ea:	00
  9775eb:	f3 0f 58 c4          	addss  xmm0,xmm4
  9775ef:	0f 28 f0             	movaps xmm6,xmm0
  9775f2:	0f 29 54 24 30       	movaps XMMWORD PTR [esp+0x30],xmm2
  9775f7:	f3 0f 10 6c 24 38    	movss  xmm5,DWORD PTR [esp+0x38]
  9775fd:	f3 0f 5c f5          	subss  xmm6,xmm5
  977601:	f3 0f 11 74 24 0c    	movss  DWORD PTR [esp+0xc],xmm6
  977607:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  97760b:	c1 f8 1f             	sar    eax,0x1f
  97760e:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  977614:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  977618:	f3 0f 10 87 b4 00 00 	movss  xmm0,DWORD PTR [edi+0xb4]
  97761f:	00
  977620:	f3 0f 11 6c 24 0c    	movss  DWORD PTR [esp+0xc],xmm5
  977626:	8b d0                	mov    edx,eax
  977628:	f7 d2                	not    edx
  97762a:	23 54 24 0c          	and    edx,DWORD PTR [esp+0xc]
  97762e:	f3 0f 58 c4          	addss  xmm0,xmm4
  977632:	0f 29 54 24 30       	movaps XMMWORD PTR [esp+0x30],xmm2
  977637:	f3 0f 10 6c 24 30    	movss  xmm5,DWORD PTR [esp+0x30]
  97763d:	23 c8                	and    ecx,eax
  97763f:	0f 28 f0             	movaps xmm6,xmm0
  977642:	f3 0f 5c f5          	subss  xmm6,xmm5
  977646:	0b d1                	or     edx,ecx
  977648:	f3 0f 11 74 24 14    	movss  DWORD PTR [esp+0x14],xmm6
  97764e:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  977652:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  977656:	c1 f8 1f             	sar    eax,0x1f
  977659:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  97765f:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  977663:	f3 0f 10 87 c0 00 00 	movss  xmm0,DWORD PTR [edi+0xc0]
  97766a:	00
  97766b:	f3 0f 11 6c 24 14    	movss  DWORD PTR [esp+0x14],xmm5
  977671:	8b d0                	mov    edx,eax
  977673:	f7 d2                	not    edx
  977675:	23 54 24 14          	and    edx,DWORD PTR [esp+0x14]
  977679:	23 c8                	and    ecx,eax
  97767b:	0f 29 54 24 30       	movaps XMMWORD PTR [esp+0x30],xmm2
  977680:	f3 0f 10 6c 24 38    	movss  xmm5,DWORD PTR [esp+0x38]
  977686:	f3 0f 5c c4          	subss  xmm0,xmm4
  97768a:	0b d1                	or     edx,ecx
  97768c:	0f 28 f0             	movaps xmm6,xmm0
  97768f:	f3 0f 5c f5          	subss  xmm6,xmm5
  977693:	0f 29 4c 24 70       	movaps XMMWORD PTR [esp+0x70],xmm1
  977698:	0f 29 8c 24 10 01 00 	movaps XMMWORD PTR [esp+0x110],xmm1
  97769f:	00
  9776a0:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  9776a4:	f3 0f 11 74 24 14    	movss  DWORD PTR [esp+0x14],xmm6
  9776aa:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  9776ae:	c1 f8 1f             	sar    eax,0x1f
  9776b1:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  9776b7:	f3 0f 10 87 bc 00 00 	movss  xmm0,DWORD PTR [edi+0xbc]
  9776be:	00
  9776bf:	8b d0                	mov    edx,eax
  9776c1:	f7 d2                	not    edx
  9776c3:	23 54 24 14          	and    edx,DWORD PTR [esp+0x14]
  9776c7:	f3 0f 11 6c 24 20    	movss  DWORD PTR [esp+0x20],xmm5
  9776cd:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  9776d1:	f3 0f 10 6c 24 70    	movss  xmm5,DWORD PTR [esp+0x70]
  9776d7:	0f 29 54 24 30       	movaps XMMWORD PTR [esp+0x30],xmm2
  9776dc:	f3 0f 10 54 24 30    	movss  xmm2,DWORD PTR [esp+0x30]
  9776e2:	f3 0f 5c c4          	subss  xmm0,xmm4
  9776e6:	23 c8                	and    ecx,eax
  9776e8:	0b d1                	or     edx,ecx
  9776ea:	0f 28 e0             	movaps xmm4,xmm0
  9776ed:	f3 0f 5c e2          	subss  xmm4,xmm2
  9776f1:	f3 0f 11 64 24 20    	movss  DWORD PTR [esp+0x20],xmm4
  9776f7:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  9776fb:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  9776ff:	c1 f8 1f             	sar    eax,0x1f
  977702:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  977708:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  97770c:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  977712:	8b d0                	mov    edx,eax
  977714:	f7 d2                	not    edx
  977716:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  97771c:	23 54 24 20          	and    edx,DWORD PTR [esp+0x20]
  977720:	23 c8                	and    ecx,eax
  977722:	0b d1                	or     edx,ecx
  977724:	0f 2f d5             	comiss xmm2,xmm5
  977727:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  97772b:	0f 87 90 02 00 00    	ja     0x9779c1
  977731:	f3 0f 10 64 24 1c    	movss  xmm4,DWORD PTR [esp+0x1c]
  977737:	0f 2f ec             	comiss xmm5,xmm4
  97773a:	0f 87 7c 02 00 00    	ja     0x9779bc
  977740:	f3 0f 10 74 24 0c    	movss  xmm6,DWORD PTR [esp+0xc]
  977746:	f3 0f 10 84 24 18 01 	movss  xmm0,DWORD PTR [esp+0x118]
  97774d:	00 00
  97774f:	0f 2f f0             	comiss xmm6,xmm0
  977752:	77 14                	ja     0x977768
  977754:	f3 0f 10 7c 24 14    	movss  xmm7,DWORD PTR [esp+0x14]
  97775a:	0f 2f c7             	comiss xmm0,xmm7
  97775d:	0f 86 52 05 00 00    	jbe    0x977cb5
  977763:	0f 2f f0             	comiss xmm6,xmm0
  977766:	76 54                	jbe    0x9777bc
  977768:	0f 28 c3             	movaps xmm0,xmm3
  97776b:	0f c6 c3 aa          	shufps xmm0,xmm3,0xaa
  97776f:	f3 0f 10 e6          	movss  xmm4,xmm6
  977773:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  977777:	0f 5c c4             	subps  xmm0,xmm4
  97777a:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  97777f:	0f 29 84 24 10 09 00 	movaps XMMWORD PTR [esp+0x910],xmm0
  977786:	00
  977787:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  97778d:	0f 29 8c 24 00 03 00 	movaps XMMWORD PTR [esp+0x300],xmm1
  977794:	00
  977795:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  97779c:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  9777a2:	f3 0f 11 b4 24 08 03 	movss  DWORD PTR [esp+0x308],xmm6
  9777a9:	00 00
  9777ab:	0f 28 84 24 00 03 00 	movaps xmm0,XMMWORD PTR [esp+0x300]
  9777b2:	00
  9777b3:	89 94 24 84 02 00 00 	mov    DWORD PTR [esp+0x284],edx
  9777ba:	eb 52                	jmp    0x97780e
  9777bc:	0f 28 c3             	movaps xmm0,xmm3
  9777bf:	0f c6 c3 aa          	shufps xmm0,xmm3,0xaa
  9777c3:	f3 0f 10 e7          	movss  xmm4,xmm7
  9777c7:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  9777cb:	0f 5c c4             	subps  xmm0,xmm4
  9777ce:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  9777d3:	0f 29 84 24 30 09 00 	movaps XMMWORD PTR [esp+0x930],xmm0
  9777da:	00
  9777db:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  9777e1:	0f 29 8c 24 20 03 00 	movaps XMMWORD PTR [esp+0x320],xmm1
  9777e8:	00
  9777e9:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  9777f0:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  9777f6:	f3 0f 11 bc 24 28 03 	movss  DWORD PTR [esp+0x328],xmm7
  9777fd:	00 00
  9777ff:	0f 28 84 24 20 03 00 	movaps xmm0,XMMWORD PTR [esp+0x320]
  977806:	00
  977807:	89 84 24 64 02 00 00 	mov    DWORD PTR [esp+0x264],eax
  97780e:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  977812:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  977817:	dc c8                	fmul   st(0),st
  977819:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  977820:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  977824:	89 8c 24 b8 02 00 00 	mov    DWORD PTR [esp+0x2b8],ecx
  97782b:	dc c8                	fmul   st(0),st
  97782d:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  977831:	0f 28 e3             	movaps xmm4,xmm3
  977834:	de e9                	fsubp  st(1),st
  977836:	d9 fa                	fsqrt
  977838:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  97783c:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  977842:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977846:	0f 58 e0             	addps  xmm4,xmm0
  977849:	0f 28 cc             	movaps xmm1,xmm4
  97784c:	0f 29 8c 24 50 09 00 	movaps XMMWORD PTR [esp+0x950],xmm1
  977853:	00
  977854:	f3 0f 11 8c 24 10 06 	movss  DWORD PTR [esp+0x610],xmm1
  97785b:	00 00
  97785d:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  977863:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  977867:	f3 0f 11 8c 24 90 04 	movss  DWORD PTR [esp+0x490],xmm1
  97786e:	00 00
  977870:	f3 0f 10 8c 24 10 06 	movss  xmm1,DWORD PTR [esp+0x610]
  977877:	00 00
  977879:	0f 2f 8c 24 90 04 00 	comiss xmm1,DWORD PTR [esp+0x490]
  977880:	00
  977881:	76 2e                	jbe    0x9778b1
  977883:	0f 5c d8             	subps  xmm3,xmm0
  977886:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  97788b:	0f 28 c8             	movaps xmm1,xmm0
  97788e:	8b d1                	mov    edx,ecx
  977890:	0f c6 cb 05          	shufps xmm1,xmm3,0x5
  977894:	0f c6 c8 e2          	shufps xmm1,xmm0,0xe2
  977898:	89 94 24 0c 02 00 00 	mov    DWORD PTR [esp+0x20c],edx
  97789f:	0f 29 9c 24 70 09 00 	movaps XMMWORD PTR [esp+0x970],xmm3
  9778a6:	00
  9778a7:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  9778ac:	e9 04 04 00 00       	jmp    0x977cb5
  9778b1:	0f 28 cb             	movaps xmm1,xmm3
  9778b4:	0f 5c c8             	subps  xmm1,xmm0
  9778b7:	0f 28 c1             	movaps xmm0,xmm1
  9778ba:	f3 0f 11 84 24 b0 04 	movss  DWORD PTR [esp+0x4b0],xmm0
  9778c1:	00 00
  9778c3:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  9778c7:	0f 29 84 24 60 09 00 	movaps XMMWORD PTR [esp+0x960],xmm0
  9778ce:	00
  9778cf:	f3 0f 11 94 24 90 05 	movss  DWORD PTR [esp+0x590],xmm2
  9778d6:	00 00
  9778d8:	f3 0f 10 84 24 90 05 	movss  xmm0,DWORD PTR [esp+0x590]
  9778df:	00 00
  9778e1:	0f 2f 84 24 b0 04 00 	comiss xmm0,DWORD PTR [esp+0x4b0]
  9778e8:	00
  9778e9:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  9778f0:	89 84 24 30 02 00 00 	mov    DWORD PTR [esp+0x230],eax
  9778f7:	76 2e                	jbe    0x977927
  9778f9:	0f 28 54 24 50       	movaps xmm2,XMMWORD PTR [esp+0x50]
  9778fe:	0f 28 c2             	movaps xmm0,xmm2
  977901:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  977905:	8b c8                	mov    ecx,eax
  977907:	0f 29 8c 24 60 07 00 	movaps XMMWORD PTR [esp+0x760],xmm1
  97790e:	00
  97790f:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  977913:	0f 28 c8             	movaps xmm1,xmm0
  977916:	89 8c 24 38 02 00 00 	mov    DWORD PTR [esp+0x238],ecx
  97791d:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  977922:	e9 8e 03 00 00       	jmp    0x977cb5
  977927:	f3 0f 11 9c 24 f0 05 	movss  DWORD PTR [esp+0x5f0],xmm3
  97792e:	00 00
  977930:	f3 0f 10 84 24 f0 05 	movss  xmm0,DWORD PTR [esp+0x5f0]
  977937:	00 00
  977939:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  97793d:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  977944:	f3 0f 11 ac 24 d0 04 	movss  DWORD PTR [esp+0x4d0],xmm5
  97794b:	00 00
  97794d:	0f 2f 84 24 d0 04 00 	comiss xmm0,DWORD PTR [esp+0x4d0]
  977954:	00
  977955:	89 94 24 e0 01 00 00 	mov    DWORD PTR [esp+0x1e0],edx
  97795c:	76 2e                	jbe    0x97798c
  97795e:	0f 28 54 24 50       	movaps xmm2,XMMWORD PTR [esp+0x50]
  977963:	0f 28 c2             	movaps xmm0,xmm2
  977966:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  97796a:	8b c2                	mov    eax,edx
  97796c:	0f 29 8c 24 60 08 00 	movaps XMMWORD PTR [esp+0x860],xmm1
  977973:	00
  977974:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  977978:	0f 28 c8             	movaps xmm1,xmm0
  97797b:	89 84 24 e8 01 00 00 	mov    DWORD PTR [esp+0x1e8],eax
  977982:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  977987:	e9 29 03 00 00       	jmp    0x977cb5
  97798c:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  977991:	0f 28 c8             	movaps xmm1,xmm0
  977994:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  97799b:	0f c6 cc 05          	shufps xmm1,xmm4,0x5
  97799f:	0f c6 c8 e2          	shufps xmm1,xmm0,0xe2
  9779a3:	89 8c 24 08 02 00 00 	mov    DWORD PTR [esp+0x208],ecx
  9779aa:	0f 29 a4 24 80 07 00 	movaps XMMWORD PTR [esp+0x780],xmm4
  9779b1:	00
  9779b2:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  9779b7:	e9 f9 02 00 00       	jmp    0x977cb5
  9779bc:	0f 2f d5             	comiss xmm2,xmm5
  9779bf:	76 54                	jbe    0x977a15
  9779c1:	0f 28 c3             	movaps xmm0,xmm3
  9779c4:	0f c6 c3 00          	shufps xmm0,xmm3,0x0
  9779c8:	f3 0f 10 e2          	movss  xmm4,xmm2
  9779cc:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  9779d0:	0f 5c c4             	subps  xmm0,xmm4
  9779d3:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  9779d8:	0f 29 84 24 00 09 00 	movaps XMMWORD PTR [esp+0x900],xmm0
  9779df:	00
  9779e0:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  9779e6:	0f 29 8c 24 40 03 00 	movaps XMMWORD PTR [esp+0x340],xmm1
  9779ed:	00
  9779ee:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  9779f5:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  9779fb:	f3 0f 11 94 24 40 03 	movss  DWORD PTR [esp+0x340],xmm2
  977a02:	00 00
  977a04:	0f 28 84 24 40 03 00 	movaps xmm0,XMMWORD PTR [esp+0x340]
  977a0b:	00
  977a0c:	89 94 24 60 02 00 00 	mov    DWORD PTR [esp+0x260],edx
  977a13:	eb 52                	jmp    0x977a67
  977a15:	0f 28 c3             	movaps xmm0,xmm3
  977a18:	0f c6 c3 00          	shufps xmm0,xmm3,0x0
  977a1c:	f3 0f 10 d4          	movss  xmm2,xmm4
  977a20:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  977a24:	0f 5c c2             	subps  xmm0,xmm2
  977a27:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  977a2c:	0f 29 84 24 a0 07 00 	movaps XMMWORD PTR [esp+0x7a0],xmm0
  977a33:	00
  977a34:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  977a3a:	0f 29 8c 24 60 03 00 	movaps XMMWORD PTR [esp+0x360],xmm1
  977a41:	00
  977a42:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  977a49:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  977a4f:	f3 0f 11 a4 24 60 03 	movss  DWORD PTR [esp+0x360],xmm4
  977a56:	00 00
  977a58:	0f 28 84 24 60 03 00 	movaps xmm0,XMMWORD PTR [esp+0x360]
  977a5f:	00
  977a60:	89 84 24 68 02 00 00 	mov    DWORD PTR [esp+0x268],eax
  977a67:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  977a6b:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  977a70:	dc c8                	fmul   st(0),st
  977a72:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  977a79:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  977a7d:	89 8c 24 70 02 00 00 	mov    DWORD PTR [esp+0x270],ecx
  977a84:	dc c8                	fmul   st(0),st
  977a86:	0f c6 db aa          	shufps xmm3,xmm3,0xaa
  977a8a:	0f 28 d3             	movaps xmm2,xmm3
  977a8d:	de e9                	fsubp  st(1),st
  977a8f:	d9 fa                	fsqrt
  977a91:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  977a95:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  977a9b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977a9f:	0f 58 d0             	addps  xmm2,xmm0
  977aa2:	0f 28 ca             	movaps xmm1,xmm2
  977aa5:	0f 29 8c 24 80 08 00 	movaps XMMWORD PTR [esp+0x880],xmm1
  977aac:	00
  977aad:	f3 0f 11 8c 24 b0 05 	movss  DWORD PTR [esp+0x5b0],xmm1
  977ab4:	00 00
  977ab6:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  977abc:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  977ac0:	f3 0f 11 8c 24 f0 04 	movss  DWORD PTR [esp+0x4f0],xmm1
  977ac7:	00 00
  977ac9:	f3 0f 10 8c 24 b0 05 	movss  xmm1,DWORD PTR [esp+0x5b0]
  977ad0:	00 00
  977ad2:	0f 2f 8c 24 f0 04 00 	comiss xmm1,DWORD PTR [esp+0x4f0]
  977ad9:	00
  977ada:	76 2e                	jbe    0x977b0a
  977adc:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  977ae1:	0f 5c d8             	subps  xmm3,xmm0
  977ae4:	0f 28 c1             	movaps xmm0,xmm1
  977ae7:	8b d1                	mov    edx,ecx
  977ae9:	0f c6 c3 af          	shufps xmm0,xmm3,0xaf
  977aed:	0f c6 c8 24          	shufps xmm1,xmm0,0x24
  977af1:	89 94 24 78 02 00 00 	mov    DWORD PTR [esp+0x278],edx
  977af8:	0f 29 9c 24 c0 07 00 	movaps XMMWORD PTR [esp+0x7c0],xmm3
  977aff:	00
  977b00:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  977b05:	e9 ab 01 00 00       	jmp    0x977cb5
  977b0a:	0f 28 cb             	movaps xmm1,xmm3
  977b0d:	0f 5c c8             	subps  xmm1,xmm0
  977b10:	0f 28 c1             	movaps xmm0,xmm1
  977b13:	f3 0f 11 84 24 10 05 	movss  DWORD PTR [esp+0x510],xmm0
  977b1a:	00 00
  977b1c:	0f 29 84 24 40 09 00 	movaps XMMWORD PTR [esp+0x940],xmm0
  977b23:	00
  977b24:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  977b2a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977b2e:	f3 0f 11 84 24 30 06 	movss  DWORD PTR [esp+0x630],xmm0
  977b35:	00 00
  977b37:	f3 0f 10 84 24 30 06 	movss  xmm0,DWORD PTR [esp+0x630]
  977b3e:	00 00
  977b40:	0f 2f 84 24 10 05 00 	comiss xmm0,DWORD PTR [esp+0x510]
  977b47:	00
  977b48:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  977b4f:	89 84 24 80 02 00 00 	mov    DWORD PTR [esp+0x280],eax
  977b56:	76 13                	jbe    0x977b6b
  977b58:	8b c8                	mov    ecx,eax
  977b5a:	89 8c 24 88 02 00 00 	mov    DWORD PTR [esp+0x288],ecx
  977b61:	0f 29 8c 24 e0 07 00 	movaps XMMWORD PTR [esp+0x7e0],xmm1
  977b68:	00
  977b69:	eb 51                	jmp    0x977bbc
  977b6b:	f3 0f 10 84 24 18 01 	movss  xmm0,DWORD PTR [esp+0x118]
  977b72:	00 00
  977b74:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977b78:	f3 0f 11 84 24 d0 03 	movss  DWORD PTR [esp+0x3d0],xmm0
  977b7f:	00 00
  977b81:	f3 0f 11 9c 24 40 05 	movss  DWORD PTR [esp+0x540],xmm3
  977b88:	00 00
  977b8a:	f3 0f 10 84 24 40 05 	movss  xmm0,DWORD PTR [esp+0x540]
  977b91:	00 00
  977b93:	0f 2f 84 24 d0 03 00 	comiss xmm0,DWORD PTR [esp+0x3d0]
  977b9a:	00
  977b9b:	8d 94 24 80 00 00 00 	lea    edx,[esp+0x80]
  977ba2:	89 94 24 90 02 00 00 	mov    DWORD PTR [esp+0x290],edx
  977ba9:	76 2e                	jbe    0x977bd9
  977bab:	8b c2                	mov    eax,edx
  977bad:	89 84 24 98 02 00 00 	mov    DWORD PTR [esp+0x298],eax
  977bb4:	0f 29 8c 24 b0 08 00 	movaps XMMWORD PTR [esp+0x8b0],xmm1
  977bbb:	00
  977bbc:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  977bc1:	0f 28 d0             	movaps xmm2,xmm0
  977bc4:	0f c6 d1 af          	shufps xmm2,xmm1,0xaf
  977bc8:	0f c6 c2 24          	shufps xmm0,xmm2,0x24
  977bcc:	0f 28 c8             	movaps xmm1,xmm0
  977bcf:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  977bd4:	e9 dc 00 00 00       	jmp    0x977cb5
  977bd9:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  977bde:	0f 28 c1             	movaps xmm0,xmm1
  977be1:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  977be8:	0f c6 c2 af          	shufps xmm0,xmm2,0xaf
  977bec:	0f c6 c8 24          	shufps xmm1,xmm0,0x24
  977bf0:	89 8c 24 bc 02 00 00 	mov    DWORD PTR [esp+0x2bc],ecx
  977bf7:	0f 29 94 24 00 08 00 	movaps XMMWORD PTR [esp+0x800],xmm2
  977bfe:	00
  977bff:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  977c04:	e9 ac 00 00 00       	jmp    0x977cb5
  977c09:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  977c0e:	80 be b7 08 00 00 00 	cmp    BYTE PTR [esi+0x8b7],0x0
  977c15:	0f 85 9a 00 00 00    	jne    0x977cb5
  977c1b:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  977c1e:	85 c9                	test   ecx,ecx
  977c20:	0f 84 8f 00 00 00    	je     0x977cb5
  977c26:	e8 65 94 2e 00       	call   0xc61090
  977c2b:	0f 28 86 70 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x770]
  977c32:	8d 86 70 07 00 00    	lea    eax,[esi+0x770]
  977c38:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  977c3c:	f3 0f 11 84 24 00 04 	movss  DWORD PTR [esp+0x400],xmm0
  977c43:	00 00
  977c45:	89 84 24 e4 01 00 00 	mov    DWORD PTR [esp+0x1e4],eax
  977c4c:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  977c50:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  977c56:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977c5a:	f3 0f 11 84 24 e0 03 	movss  DWORD PTR [esp+0x3e0],xmm0
  977c61:	00 00
  977c63:	f3 0f 10 84 24 e0 03 	movss  xmm0,DWORD PTR [esp+0x3e0]
  977c6a:	00 00
  977c6c:	0f 2f 84 24 00 04 00 	comiss xmm0,DWORD PTR [esp+0x400]
  977c73:	00
  977c74:	76 3a                	jbe    0x977cb0
  977c76:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  977c79:	6a 00                	push   0x0
  977c7b:	e8 e0 78 2e 00       	call   0xc5f560
  977c80:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  977c83:	52                   	push   edx
  977c84:	50                   	push   eax
  977c85:	e8 86 ab 2e 00       	call   0xc62810
  977c8a:	8b f8                	mov    edi,eax
  977c8c:	85 ff                	test   edi,edi
  977c8e:	74 20                	je     0x977cb0
  977c90:	8b cf                	mov    ecx,edi
  977c92:	e8 29 cf ca ff       	call   0x624bc0
  977c97:	84 c0                	test   al,al
  977c99:	74 15                	je     0x977cb0
  977c9b:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  977c9f:	57                   	push   edi
  977ca0:	51                   	push   ecx
  977ca1:	8d 54 24 58          	lea    edx,[esp+0x58]
  977ca5:	d9 1c 24             	fstp   DWORD PTR [esp]
  977ca8:	52                   	push   edx
  977ca9:	8b ce                	mov    ecx,esi
  977cab:	e8 d0 c1 ff ff       	call   0x973e80
  977cb0:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  977cb5:	80 be b1 08 00 00 00 	cmp    BYTE PTR [esi+0x8b1],0x0
  977cbc:	75 72                	jne    0x977d30
  977cbe:	80 be 18 08 00 00 00 	cmp    BYTE PTR [esi+0x818],0x0
  977cc5:	74 69                	je     0x977d30
  977cc7:	80 be b6 08 00 00 00 	cmp    BYTE PTR [esi+0x8b6],0x0
  977cce:	75 53                	jne    0x977d23
  977cd0:	80 be 19 08 00 00 00 	cmp    BYTE PTR [esi+0x819],0x0
  977cd7:	0f 28 94 24 30 01 00 	movaps xmm2,XMMWORD PTR [esp+0x130]
  977cde:	00
  977cdf:	75 20                	jne    0x977d01
  977ce1:	0f 28 c2             	movaps xmm0,xmm2
  977ce4:	8d 44 24 50          	lea    eax,[esp+0x50]
  977ce8:	0f c6 c1 50          	shufps xmm0,xmm1,0x50
  977cec:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  977cf0:	89 84 24 40 02 00 00 	mov    DWORD PTR [esp+0x240],eax
  977cf7:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [esp+0x130],xmm0
  977cfe:	00
  977cff:	eb 22                	jmp    0x977d23
  977d01:	f3 0f 10 86 f4 08 00 	movss  xmm0,DWORD PTR [esi+0x8f4]
  977d08:	00
  977d09:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977d0d:	0f 58 c2             	addps  xmm0,xmm2
  977d10:	0f 28 ca             	movaps xmm1,xmm2
  977d13:	0f c6 c8 50          	shufps xmm1,xmm0,0x50
  977d17:	0f c6 ca e8          	shufps xmm1,xmm2,0xe8
  977d1b:	0f 29 8c 24 30 01 00 	movaps XMMWORD PTR [esp+0x130],xmm1
  977d22:	00
  977d23:	0f 28 8c 24 30 01 00 	movaps xmm1,XMMWORD PTR [esp+0x130]
  977d2a:	00
  977d2b:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  977d30:	8a 5c 24 12          	mov    bl,BYTE PTR [esp+0x12]
  977d34:	84 db                	test   bl,bl
  977d36:	75 31                	jne    0x977d69
  977d38:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  977d3b:	85 c9                	test   ecx,ecx
  977d3d:	74 2a                	je     0x977d69
  977d3f:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  977d44:	d9 44 24 38          	fld    DWORD PTR [esp+0x38]
  977d48:	83 ec 08             	sub    esp,0x8
  977d4b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  977d4f:	0f 29 4c 24 78       	movaps XMMWORD PTR [esp+0x78],xmm1
  977d54:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  977d58:	d9 1c 24             	fstp   DWORD PTR [esp]
  977d5b:	e8 a0 3c 2f 00       	call   0xc6ba00
  977d60:	84 c0                	test   al,al
  977d62:	74 1e                	je     0x977d82
  977d64:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  977d69:	84 db                	test   bl,bl
  977d6b:	0f 29 8e 80 07 00 00 	movaps XMMWORD PTR [esi+0x780],xmm1
  977d72:	75 0e                	jne    0x977d82
  977d74:	0f 28 86 80 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x780]
  977d7b:	0f 29 86 a0 07 00 00 	movaps XMMWORD PTR [esi+0x7a0],xmm0
  977d82:	80 be b2 08 00 00 00 	cmp    BYTE PTR [esi+0x8b2],0x0
  977d89:	0f 84 fc 00 00 00    	je     0x977e8b
  977d8f:	8b 5c 24 4c          	mov    ebx,DWORD PTR [esp+0x4c]
  977d93:	8b 13                	mov    edx,DWORD PTR [ebx]
  977d95:	8b 52 1c             	mov    edx,DWORD PTR [edx+0x1c]
  977d98:	8d 84 24 20 09 00 00 	lea    eax,[esp+0x920]
  977d9f:	50                   	push   eax
  977da0:	8b cb                	mov    ecx,ebx
  977da2:	ff d2                	call   edx
  977da4:	8b f8                	mov    edi,eax
  977da6:	8b 03                	mov    eax,DWORD PTR [ebx]
  977da8:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  977dab:	8d 8c 24 20 08 00 00 	lea    ecx,[esp+0x820]
  977db2:	51                   	push   ecx
  977db3:	8b cb                	mov    ecx,ebx
  977db5:	ff d2                	call   edx
  977db7:	0f 28 20             	movaps xmm4,XMMWORD PTR [eax]
  977dba:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  977dbd:	0f 5c e0             	subps  xmm4,xmm0
  977dc0:	0f 28 84 24 f0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xf0]
  977dc7:	00
  977dc8:	0f 59 c4             	mulps  xmm0,xmm4
  977dcb:	0f 5f c4             	maxps  xmm0,xmm4
  977dce:	0f c2 84 24 40 01 00 	cmpleps xmm0,XMMWORD PTR [esp+0x140]
  977dd5:	00 02
  977dd7:	0f 50 c0             	movmskps eax,xmm0
  977dda:	83 e0 07             	and    eax,0x7
  977ddd:	3c 07                	cmp    al,0x7
  977ddf:	0f 29 a4 24 80 03 00 	movaps XMMWORD PTR [esp+0x380],xmm4
  977de6:	00
  977de7:	0f 84 67 01 00 00    	je     0x977f54
  977ded:	0f 28 cc             	movaps xmm1,xmm4
  977df0:	0f 59 cc             	mulps  xmm1,xmm4
  977df3:	0f 28 c1             	movaps xmm0,xmm1
  977df6:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  977dfa:	0f 28 d1             	movaps xmm2,xmm1
  977dfd:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  977e01:	0f 58 c2             	addps  xmm0,xmm2
  977e04:	f3 0f 10 15 b4 b5 f9 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  977e0b:	00
  977e0c:	0f 58 c1             	addps  xmm0,xmm1
  977e0f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977e13:	0f 28 e8             	movaps xmm5,xmm0
  977e16:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  977e1d:	00
  977e1e:	0f 52 dd             	rsqrtps xmm3,xmm5
  977e21:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  977e25:	0f 28 f3             	movaps xmm6,xmm3
  977e28:	0f 59 f3             	mulps  xmm6,xmm3
  977e2b:	0f 28 c8             	movaps xmm1,xmm0
  977e2e:	0f 59 f5             	mulps  xmm6,xmm5
  977e31:	0f 5c ce             	subps  xmm1,xmm6
  977e34:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  977e38:	0f 28 f2             	movaps xmm6,xmm2
  977e3b:	0f 59 f3             	mulps  xmm6,xmm3
  977e3e:	0f 59 ce             	mulps  xmm1,xmm6
  977e41:	0f 58 cb             	addps  xmm1,xmm3
  977e44:	0f 28 d9             	movaps xmm3,xmm1
  977e47:	0f 59 d9             	mulps  xmm3,xmm1
  977e4a:	0f 59 dd             	mulps  xmm3,xmm5
  977e4d:	0f 5c c3             	subps  xmm0,xmm3
  977e50:	8d 8c 24 80 03 00 00 	lea    ecx,[esp+0x380]
  977e57:	0f 59 d1             	mulps  xmm2,xmm1
  977e5a:	0f 59 c2             	mulps  xmm0,xmm2
  977e5d:	51                   	push   ecx
  977e5e:	8d 94 24 e4 08 00 00 	lea    edx,[esp+0x8e4]
  977e65:	0f 58 c1             	addps  xmm0,xmm1
  977e68:	0f 59 c4             	mulps  xmm0,xmm4
  977e6b:	52                   	push   edx
  977e6c:	0f 29 84 24 88 03 00 	movaps XMMWORD PTR [esp+0x388],xmm0
  977e73:	00
  977e74:	e8 97 58 00 00       	call   0x97d710
  977e79:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  977e7c:	83 c4 08             	add    esp,0x8
  977e7f:	0f 29 86 d0 07 00 00 	movaps XMMWORD PTR [esi+0x7d0],xmm0
  977e86:	e9 c2 00 00 00       	jmp    0x977f4d
  977e8b:	80 be b3 08 00 00 00 	cmp    BYTE PTR [esi+0x8b3],0x0
  977e92:	74 28                	je     0x977ebc
  977e94:	8b 86 b0 06 00 00    	mov    eax,DWORD PTR [esi+0x6b0]
  977e9a:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
  977e9d:	8d 8e b0 06 00 00    	lea    ecx,[esi+0x6b0]
  977ea3:	8d 94 24 40 08 00 00 	lea    edx,[esp+0x840]
  977eaa:	52                   	push   edx
  977eab:	ff d0                	call   eax
  977ead:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  977eb0:	0f 29 86 d0 07 00 00 	movaps XMMWORD PTR [esi+0x7d0],xmm0
  977eb7:	e9 91 00 00 00       	jmp    0x977f4d
  977ebc:	0f 28 86 f0 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x7f0]
  977ec3:	0f 28 8e d0 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x7d0]
  977eca:	0f 59 84 24 c0 00 00 	mulps  xmm0,XMMWORD PTR [esp+0xc0]
  977ed1:	00
  977ed2:	0f 58 c8             	addps  xmm1,xmm0
  977ed5:	0f 29 8e d0 07 00 00 	movaps XMMWORD PTR [esi+0x7d0],xmm1
  977edc:	80 be 30 08 00 00 00 	cmp    BYTE PTR [esi+0x830],0x0
  977ee3:	74 61                	je     0x977f46
  977ee5:	0f 28 84 24 b0 01 00 	movaps xmm0,XMMWORD PTR [esp+0x1b0]
  977eec:	00
  977eed:	0f 28 8c 24 f0 00 00 	movaps xmm1,XMMWORD PTR [esp+0xf0]
  977ef4:	00
  977ef5:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  977ef9:	0f 59 c8             	mulps  xmm1,xmm0
  977efc:	0f 5f c8             	maxps  xmm1,xmm0
  977eff:	0f c2 8c 24 40 01 00 	cmpleps xmm1,XMMWORD PTR [esp+0x140]
  977f06:	00 02
  977f08:	8d 8c 24 b0 01 00 00 	lea    ecx,[esp+0x1b0]
  977f0f:	0f 50 d1             	movmskps edx,xmm1
  977f12:	83 fa 0f             	cmp    edx,0xf
  977f15:	89 8c 24 ec 01 00 00 	mov    DWORD PTR [esp+0x1ec],ecx
  977f1c:	74 28                	je     0x977f46
  977f1e:	8b c1                	mov    eax,ecx
  977f20:	89 84 24 48 02 00 00 	mov    DWORD PTR [esp+0x248],eax
  977f27:	0f 28 8e d0 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x7d0]
  977f2e:	0f 28 d1             	movaps xmm2,xmm1
  977f31:	0f 5c d0             	subps  xmm2,xmm0
  977f34:	0f 28 c1             	movaps xmm0,xmm1
  977f37:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  977f3b:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  977f3f:	0f 29 86 d0 07 00 00 	movaps XMMWORD PTR [esi+0x7d0],xmm0
  977f46:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  977f4b:	74 07                	je     0x977f54
  977f4d:	c6 86 08 08 00 00 00 	mov    BYTE PTR [esi+0x808],0x0
  977f54:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  977f58:	51                   	push   ecx
  977f59:	d9 1c 24             	fstp   DWORD PTR [esp]
  977f5c:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  977f60:	51                   	push   ecx
  977f61:	8d 94 24 60 01 00 00 	lea    edx,[esp+0x160]
  977f68:	52                   	push   edx
  977f69:	8d 84 24 68 01 00 00 	lea    eax,[esp+0x168]
  977f70:	8d be d0 07 00 00    	lea    edi,[esi+0x7d0]
  977f76:	50                   	push   eax
  977f77:	8b ce                	mov    ecx,esi
  977f79:	8b df                	mov    ebx,edi
  977f7b:	e8 c0 82 ff ff       	call   0x970240
  977f80:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  977f83:	f3 0f 10 84 24 5c 01 	movss  xmm0,DWORD PTR [esp+0x15c]
  977f8a:	00 00
  977f8c:	0f 28 d8             	movaps xmm3,xmm0
  977f8f:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  977f94:	f3 0f 10 54 24 30    	movss  xmm2,DWORD PTR [esp+0x30]
  977f9a:	f3 0f 5c da          	subss  xmm3,xmm2
  977f9e:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  977fa4:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  977fa8:	c1 f8 1f             	sar    eax,0x1f
  977fab:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  977fb1:	f3 0f 10 84 24 58 01 	movss  xmm0,DWORD PTR [esp+0x158]
  977fb8:	00 00
  977fba:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  977fc0:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  977fc4:	8b c8                	mov    ecx,eax
  977fc6:	f7 d1                	not    ecx
  977fc8:	23 4c 24 18          	and    ecx,DWORD PTR [esp+0x18]
  977fcc:	23 d0                	and    edx,eax
  977fce:	0b ca                	or     ecx,edx
  977fd0:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  977fd4:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  977fda:	0f 28 d8             	movaps xmm3,xmm0
  977fdd:	f3 0f 5c da          	subss  xmm3,xmm2
  977fe1:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  977fe7:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  977feb:	c1 f8 1f             	sar    eax,0x1f
  977fee:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  977ff4:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  977ff8:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  977ffe:	8b c8                	mov    ecx,eax
  978000:	f7 d1                	not    ecx
  978002:	23 4c 24 18          	and    ecx,DWORD PTR [esp+0x18]
  978006:	23 d0                	and    edx,eax
  978008:	0b ca                	or     ecx,edx
  97800a:	80 7c 24 2a 00       	cmp    BYTE PTR [esp+0x2a],0x0
  97800f:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  978013:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  978019:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  97801d:	0f 28 c1             	movaps xmm0,xmm1
  978020:	0f c6 c2 05          	shufps xmm0,xmm2,0x5
  978024:	0f c6 c1 e2          	shufps xmm0,xmm1,0xe2
  978028:	0f 29 07             	movaps XMMWORD PTR [edi],xmm0
  97802b:	74 0b                	je     0x978038
  97802d:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  978032:	0f 84 ad 00 00 00    	je     0x9780e5
  978038:	80 be 5c 09 00 00 00 	cmp    BYTE PTR [esi+0x95c],0x0
  97803f:	0f 84 a0 00 00 00    	je     0x9780e5
  978045:	80 be 10 08 00 00 00 	cmp    BYTE PTR [esi+0x810],0x0
  97804c:	0f 85 93 00 00 00    	jne    0x9780e5
  978052:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  978055:	f3 0f 10 4c 24 6c    	movss  xmm1,DWORD PTR [esp+0x6c]
  97805b:	f3 0f 10 15 b4 35 fb 	movss  xmm2,DWORD PTR ds:0xfb35b4
  978062:	00
  978063:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  978067:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97806b:	0f 5c c1             	subps  xmm0,xmm1
  97806e:	0f 29 84 24 40 07 00 	movaps XMMWORD PTR [esp+0x740],xmm0
  978075:	00
  978076:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  97807a:	f3 0f 11 84 24 20 04 	movss  DWORD PTR [esp+0x420],xmm0
  978081:	00 00
  978083:	f3 0f 10 84 24 20 04 	movss  xmm0,DWORD PTR [esp+0x420]
  97808a:	00 00
  97808c:	f3 0f 11 94 24 40 04 	movss  DWORD PTR [esp+0x440],xmm2
  978093:	00 00
  978095:	0f 2f 84 24 40 04 00 	comiss xmm0,DWORD PTR [esp+0x440]
  97809c:	00
  97809d:	89 bc 24 04 02 00 00 	mov    DWORD PTR [esp+0x204],edi
  9780a4:	76 33                	jbe    0x9780d9
  9780a6:	c6 86 09 08 00 00 01 	mov    BYTE PTR [esi+0x809],0x1
  9780ad:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  9780b0:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  9780b5:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  9780bb:	f3 0f 11 86 0c 08 00 	movss  DWORD PTR [esi+0x80c],xmm0
  9780c2:	00
  9780c3:	0f 28 17             	movaps xmm2,XMMWORD PTR [edi]
  9780c6:	0f 28 c2             	movaps xmm0,xmm2
  9780c9:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  9780cd:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  9780d1:	0f 29 07             	movaps XMMWORD PTR [edi],xmm0
  9780d4:	e9 ec 00 00 00       	jmp    0x9781c5
  9780d9:	c6 86 09 08 00 00 00 	mov    BYTE PTR [esi+0x809],0x0
  9780e0:	e9 e0 00 00 00       	jmp    0x9781c5
  9780e5:	80 be 09 08 00 00 00 	cmp    BYTE PTR [esi+0x809],0x0
  9780ec:	74 19                	je     0x978107
  9780ee:	0f 57 c0             	xorps  xmm0,xmm0
  9780f1:	c6 86 09 08 00 00 00 	mov    BYTE PTR [esi+0x809],0x0
  9780f8:	c6 86 10 08 00 00 01 	mov    BYTE PTR [esi+0x810],0x1
  9780ff:	f3 0f 11 86 14 08 00 	movss  DWORD PTR [esi+0x814],xmm0
  978106:	00
  978107:	80 be 08 08 00 00 00 	cmp    BYTE PTR [esi+0x808],0x0
  97810e:	f3 0f 10 44 24 6c    	movss  xmm0,DWORD PTR [esp+0x6c]
  978114:	75 3b                	jne    0x978151
  978116:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  978119:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97811d:	f3 0f 11 8c 24 60 04 	movss  DWORD PTR [esp+0x460],xmm1
  978124:	00 00
  978126:	f3 0f 10 c8          	movss  xmm1,xmm0
  97812a:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97812e:	f3 0f 11 8c 24 80 04 	movss  DWORD PTR [esp+0x480],xmm1
  978135:	00 00
  978137:	f3 0f 10 8c 24 60 04 	movss  xmm1,DWORD PTR [esp+0x460]
  97813e:	00 00
  978140:	0f 2f 8c 24 80 04 00 	comiss xmm1,DWORD PTR [esp+0x480]
  978147:	00
  978148:	89 bc 24 50 02 00 00 	mov    DWORD PTR [esp+0x250],edi
  97814f:	76 1f                	jbe    0x978170
  978151:	0f 28 17             	movaps xmm2,XMMWORD PTR [edi]
  978154:	f3 0f 10 c8          	movss  xmm1,xmm0
  978158:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97815c:	0f 28 c2             	movaps xmm0,xmm2
  97815f:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  978163:	0f c6 c2 e2          	shufps xmm0,xmm2,0xe2
  978167:	0f 29 07             	movaps XMMWORD PTR [edi],xmm0
  97816a:	f3 0f 10 44 24 6c    	movss  xmm0,DWORD PTR [esp+0x6c]
  978170:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  978173:	f3 0f 10 15 b4 35 fb 	movss  xmm2,DWORD PTR ds:0xfb35b4
  97817a:	00
  97817b:	f3 0f 10 c0          	movss  xmm0,xmm0
  97817f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  978183:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  978187:	0f 5c c8             	subps  xmm1,xmm0
  97818a:	0f 28 84 24 f0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xf0]
  978191:	00
  978192:	0f 59 c1             	mulps  xmm0,xmm1
  978195:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  978199:	0f 5f c1             	maxps  xmm0,xmm1
  97819c:	0f c2 c2 02          	cmpleps xmm0,xmm2
  9781a0:	0f 50 c0             	movmskps eax,xmm0
  9781a3:	83 f8 0f             	cmp    eax,0xf
  9781a6:	0f 94 c1             	sete   cl
  9781a9:	89 bc 24 dc 01 00 00 	mov    DWORD PTR [esp+0x1dc],edi
  9781b0:	89 bc 24 58 02 00 00 	mov    DWORD PTR [esp+0x258],edi
  9781b7:	0f 29 8c 24 50 07 00 	movaps XMMWORD PTR [esp+0x750],xmm1
  9781be:	00
  9781bf:	88 8e 08 08 00 00    	mov    BYTE PTR [esi+0x808],cl
  9781c5:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  9781c8:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  9781cc:	f3 0f 11 84 24 c0 04 	movss  DWORD PTR [esp+0x4c0],xmm0
  9781d3:	00 00
  9781d5:	f3 0f 10 05 cc 4c 0f 	movss  xmm0,DWORD PTR ds:0x10f4ccc
  9781dc:	01
  9781dd:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9781e1:	f3 0f 11 84 24 a0 04 	movss  DWORD PTR [esp+0x4a0],xmm0
  9781e8:	00 00
  9781ea:	f3 0f 10 84 24 a0 04 	movss  xmm0,DWORD PTR [esp+0x4a0]
  9781f1:	00 00
  9781f3:	0f 2f 84 24 c0 04 00 	comiss xmm0,DWORD PTR [esp+0x4c0]
  9781fa:	00
  9781fb:	89 9c 24 6c 02 00 00 	mov    DWORD PTR [esp+0x26c],ebx
  978202:	76 23                	jbe    0x978227
  978204:	0f 28 0b             	movaps xmm1,XMMWORD PTR [ebx]
  978207:	f3 0f 10 05 bc 6c 04 	movss  xmm0,DWORD PTR ds:0x1046cbc
  97820e:	01
  97820f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  978213:	0f 28 d1             	movaps xmm2,xmm1
  978216:	0f 58 d0             	addps  xmm2,xmm0
  978219:	0f 28 c1             	movaps xmm0,xmm1
  97821c:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  978220:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  978224:	0f 29 03             	movaps XMMWORD PTR [ebx],xmm0
  978227:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  97822a:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  97822e:	f3 0f 11 84 24 e0 04 	movss  DWORD PTR [esp+0x4e0],xmm0
  978235:	00 00
  978237:	f3 0f 10 05 bc 6c 04 	movss  xmm0,DWORD PTR ds:0x1046cbc
  97823e:	01
  97823f:	f3 0f 10 8c 24 e0 04 	movss  xmm1,DWORD PTR [esp+0x4e0]
  978246:	00 00
  978248:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97824c:	f3 0f 11 84 24 00 05 	movss  DWORD PTR [esp+0x500],xmm0
  978253:	00 00
  978255:	0f 2f 8c 24 00 05 00 	comiss xmm1,DWORD PTR [esp+0x500]
  97825c:	00
  97825d:	89 9c 24 34 02 00 00 	mov    DWORD PTR [esp+0x234],ebx
  978264:	72 17                	jb     0x97827d
  978266:	0f 28 0b             	movaps xmm1,XMMWORD PTR [ebx]
  978269:	0f 28 d1             	movaps xmm2,xmm1
  97826c:	0f 5c d0             	subps  xmm2,xmm0
  97826f:	0f 28 c1             	movaps xmm0,xmm1
  978272:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  978276:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  97827a:	0f 29 03             	movaps XMMWORD PTR [ebx],xmm0
  97827d:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  978280:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  978285:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  978288:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  97828c:	83 ec 08             	sub    esp,0x8
  97828f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  978293:	0f 29 44 24 78       	movaps XMMWORD PTR [esp+0x78],xmm0
  978298:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  97829c:	8d 94 24 78 01 00 00 	lea    edx,[esp+0x178]
  9782a3:	d9 1c 24             	fstp   DWORD PTR [esp]
  9782a6:	52                   	push   edx
  9782a7:	e8 74 53 00 00       	call   0x97d620
  9782ac:	0f 28 8c 24 7c 01 00 	movaps xmm1,XMMWORD PTR [esp+0x17c]
  9782b3:	00
  9782b4:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  9782ba:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9782be:	0f 59 c1             	mulps  xmm0,xmm1
  9782c1:	0f 28 8e 80 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x780]
  9782c8:	0f 5c c8             	subps  xmm1,xmm0
  9782cb:	0f 29 8e 70 07 00 00 	movaps XMMWORD PTR [esi+0x770],xmm1
  9782d2:	0f 28 86 80 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x780]
  9782d9:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  9782dc:	83 c4 0c             	add    esp,0xc
  9782df:	0f 29 84 24 f0 01 00 	movaps XMMWORD PTR [esp+0x1f0],xmm0
  9782e6:	00
  9782e7:	0f 28 86 70 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x770]
  9782ee:	6a 00                	push   0x0
  9782f0:	0f 29 84 24 74 03 00 	movaps XMMWORD PTR [esp+0x374],xmm0
  9782f7:	00
  9782f8:	e8 63 72 2e 00       	call   0xc5f560
  9782fd:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  978300:	52                   	push   edx
  978301:	50                   	push   eax
  978302:	e8 09 a5 2e 00       	call   0xc62810
  978307:	85 c0                	test   eax,eax
  978309:	74 08                	je     0x978313
  97830b:	8a 80 58 03 00 00    	mov    al,BYTE PTR [eax+0x358]
  978311:	eb 02                	jmp    0x978315
  978313:	32 c0                	xor    al,al
  978315:	80 be b1 08 00 00 00 	cmp    BYTE PTR [esi+0x8b1],0x0
  97831c:	75 35                	jne    0x978353
  97831e:	80 be b2 08 00 00 00 	cmp    BYTE PTR [esi+0x8b2],0x0
  978325:	75 2c                	jne    0x978353
  978327:	80 be b4 08 00 00 00 	cmp    BYTE PTR [esi+0x8b4],0x0
  97832e:	75 23                	jne    0x978353
  978330:	80 be b3 08 00 00 00 	cmp    BYTE PTR [esi+0x8b3],0x0
  978337:	75 1a                	jne    0x978353
  978339:	80 be b6 08 00 00 00 	cmp    BYTE PTR [esi+0x8b6],0x0
  978340:	75 11                	jne    0x978353
  978342:	84 c0                	test   al,al
  978344:	75 0d                	jne    0x978353
  978346:	38 86 19 08 00 00    	cmp    BYTE PTR [esi+0x819],al
  97834c:	c6 44 24 1c 01       	mov    BYTE PTR [esp+0x1c],0x1
  978351:	74 05                	je     0x978358
  978353:	c6 44 24 1c 00       	mov    BYTE PTR [esp+0x1c],0x0
  978358:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  97835c:	50                   	push   eax
  97835d:	8d 8c 24 74 03 00 00 	lea    ecx,[esp+0x374]
  978364:	51                   	push   ecx
  978365:	8d 94 24 f8 01 00 00 	lea    edx,[esp+0x1f8]
  97836c:	52                   	push   edx
  97836d:	8b ce                	mov    ecx,esi
  97836f:	e8 5c a9 ff ff       	call   0x972cd0
  978374:	d9 5c 24 20          	fstp   DWORD PTR [esp+0x20]
  978378:	80 be 19 08 00 00 00 	cmp    BYTE PTR [esi+0x819],0x0
  97837f:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  978384:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  978389:	0f 85 06 07 00 00    	jne    0x978a95
  97838f:	80 be bd 08 00 00 00 	cmp    BYTE PTR [esi+0x8bd],0x0
  978396:	74 0b                	je     0x9783a3
  978398:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  97839d:	0f 85 f2 06 00 00    	jne    0x978a95
  9783a3:	0f 28 84 24 f0 01 00 	movaps xmm0,XMMWORD PTR [esp+0x1f0]
  9783aa:	00
  9783ab:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  9783b2:	00
  9783b3:	0f 28 86 80 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x780]
  9783ba:	0f 57 f6             	xorps  xmm6,xmm6
  9783bd:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  9783c2:	f3 0f 10 84 24 14 01 	movss  xmm0,DWORD PTR [esp+0x114]
  9783c9:	00 00
  9783cb:	f3 0f 5c 44 24 34    	subss  xmm0,DWORD PTR [esp+0x34]
  9783d1:	8d 86 80 07 00 00    	lea    eax,[esi+0x780]
  9783d7:	f3 0f 11 b4 24 c4 00 	movss  DWORD PTR [esp+0xc4],xmm6
  9783de:	00 00
  9783e0:	89 84 24 8c 02 00 00 	mov    DWORD PTR [esp+0x28c],eax
  9783e7:	8d 86 70 07 00 00    	lea    eax,[esi+0x770]
  9783ed:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9783f1:	0f 29 84 24 70 07 00 	movaps XMMWORD PTR [esp+0x770],xmm0
  9783f8:	00
  9783f9:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  978400:	00
  978401:	0f 28 84 24 70 01 00 	movaps xmm0,XMMWORD PTR [esp+0x170]
  978408:	00
  978409:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  97840e:	f3 0f 10 4c 24 78    	movss  xmm1,DWORD PTR [esp+0x78]
  978414:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  978419:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  97841f:	f3 0f 11 84 24 cc 00 	movss  DWORD PTR [esp+0xcc],xmm0
  978426:	00 00
  978428:	f3 0f 11 84 24 c0 00 	movss  DWORD PTR [esp+0xc0],xmm0
  97842f:	00 00
  978431:	f3 0f 11 8c 24 c8 00 	movss  DWORD PTR [esp+0xc8],xmm1
  978438:	00 00
  97843a:	0f 28 a4 24 c0 00 00 	movaps xmm4,XMMWORD PTR [esp+0xc0]
  978441:	00
  978442:	0f 28 cc             	movaps xmm1,xmm4
  978445:	0f 59 cc             	mulps  xmm1,xmm4
  978448:	0f 28 c1             	movaps xmm0,xmm1
  97844b:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  97844f:	0f 28 d1             	movaps xmm2,xmm1
  978452:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  978456:	0f 58 c2             	addps  xmm0,xmm2
  978459:	f3 0f 10 15 b4 b5 f9 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  978460:	00
  978461:	0f 58 c1             	addps  xmm0,xmm1
  978464:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  978468:	0f 28 e8             	movaps xmm5,xmm0
  97846b:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  978472:	00
  978473:	0f 52 dd             	rsqrtps xmm3,xmm5
  978476:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97847a:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  97847e:	0f 28 fb             	movaps xmm7,xmm3
  978481:	0f 59 fb             	mulps  xmm7,xmm3
  978484:	0f 28 c8             	movaps xmm1,xmm0
  978487:	0f 59 fd             	mulps  xmm7,xmm5
  97848a:	0f 5c cf             	subps  xmm1,xmm7
  97848d:	0f 28 fa             	movaps xmm7,xmm2
  978490:	0f 59 fb             	mulps  xmm7,xmm3
  978493:	0f 59 cf             	mulps  xmm1,xmm7
  978496:	0f 58 cb             	addps  xmm1,xmm3
  978499:	0f 59 d1             	mulps  xmm2,xmm1
  97849c:	0f 28 d9             	movaps xmm3,xmm1
  97849f:	0f 59 d9             	mulps  xmm3,xmm1
  9784a2:	0f 59 dd             	mulps  xmm3,xmm5
  9784a5:	0f 5c c3             	subps  xmm0,xmm3
  9784a8:	0f 59 c2             	mulps  xmm0,xmm2
  9784ab:	f3 0f 10 15 f0 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f0
  9784b2:	00
  9784b3:	0f 58 c1             	addps  xmm0,xmm1
  9784b6:	0f 59 c4             	mulps  xmm0,xmm4
  9784b9:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  9784be:	f3 0f 10 4c 24 38    	movss  xmm1,DWORD PTR [esp+0x38]
  9784c4:	f3 0f 11 8c 24 cc 00 	movss  DWORD PTR [esp+0xcc],xmm1
  9784cb:	00 00
  9784cd:	f3 0f 11 8c 24 c0 00 	movss  DWORD PTR [esp+0xc0],xmm1
  9784d4:	00 00
  9784d6:	f3 0f 10 0d 88 fd 03 	movss  xmm1,DWORD PTR ds:0x103fd88
  9784dd:	01
  9784de:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  9784e3:	f3 0f 5c 54 24 70    	subss  xmm2,DWORD PTR [esp+0x70]
  9784e9:	f3 0f 11 94 24 c8 00 	movss  DWORD PTR [esp+0xc8],xmm2
  9784f0:	00 00
  9784f2:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9784f6:	0f 28 d1             	movaps xmm2,xmm1
  9784f9:	0f 59 d0             	mulps  xmm2,xmm0
  9784fc:	0f 29 84 24 90 07 00 	movaps XMMWORD PTR [esp+0x790],xmm0
  978503:	00
  978504:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  978507:	0f 28 e0             	movaps xmm4,xmm0
  97850a:	0f 58 e2             	addps  xmm4,xmm2
  97850d:	0f 29 a4 24 f0 06 00 	movaps XMMWORD PTR [esp+0x6f0],xmm4
  978514:	00
  978515:	f3 0f 11 b4 24 c4 00 	movss  DWORD PTR [esp+0xc4],xmm6
  97851c:	00 00
  97851e:	0f 28 9c 24 c0 00 00 	movaps xmm3,XMMWORD PTR [esp+0xc0]
  978525:	00
  978526:	0f 28 e0             	movaps xmm4,xmm0
  978529:	0f 5c e2             	subps  xmm4,xmm2
  97852c:	0f 59 cb             	mulps  xmm1,xmm3
  97852f:	0f 28 d0             	movaps xmm2,xmm0
  978532:	0f 58 d1             	addps  xmm2,xmm1
  978535:	0f 29 a4 24 00 07 00 	movaps XMMWORD PTR [esp+0x700],xmm4
  97853c:	00
  97853d:	0f 29 94 24 10 07 00 	movaps XMMWORD PTR [esp+0x710],xmm2
  978544:	00
  978545:	0f 5c c1             	subps  xmm0,xmm1
  978548:	0f 29 84 24 20 07 00 	movaps XMMWORD PTR [esp+0x720],xmm0
  97854f:	00
  978550:	f3 0f 10 84 24 e0 00 	movss  xmm0,DWORD PTR [esp+0xe0]
  978557:	00 00
  978559:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  97855f:	89 84 24 2c 01 00 00 	mov    DWORD PTR [esp+0x12c],eax
  978566:	8d bc 24 f0 06 00 00 	lea    edi,[esp+0x6f0]
  97856d:	bb 04 00 00 00       	mov    ebx,0x4
  978572:	8d 44 24 2b          	lea    eax,[esp+0x2b]
  978576:	50                   	push   eax
  978577:	6a 00                	push   0x0
  978579:	57                   	push   edi
  97857a:	8b ce                	mov    ecx,esi
  97857c:	e8 ff 8e ff ff       	call   0x971480
  978581:	d8 86 f8 08 00 00    	fadd   DWORD PTR [esi+0x8f8]
  978587:	8b 8c 24 2c 01 00 00 	mov    ecx,DWORD PTR [esp+0x12c]
  97858e:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  978591:	f3 0f 10 4c 24 4c    	movss  xmm1,DWORD PTR [esp+0x4c]
  978597:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  97859c:	d8 64 24 34          	fsub   DWORD PTR [esp+0x34]
  9785a0:	0f 28 d1             	movaps xmm2,xmm1
  9785a3:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  9785a9:	83 c7 10             	add    edi,0x10
  9785ac:	d9 5c 24 18          	fstp   DWORD PTR [esp+0x18]
  9785b0:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  9785b6:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9785ba:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  9785bf:	0f 29 84 24 b0 07 00 	movaps XMMWORD PTR [esp+0x7b0],xmm0
  9785c6:	00
  9785c7:	f3 0f 10 44 24 70    	movss  xmm0,DWORD PTR [esp+0x70]
  9785cd:	f3 0f 5c d0          	subss  xmm2,xmm0
  9785d1:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  9785d7:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  9785db:	c1 f8 1f             	sar    eax,0x1f
  9785de:	8b d0                	mov    edx,eax
  9785e0:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  9785e6:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  9785ea:	f7 d2                	not    edx
  9785ec:	23 54 24 14          	and    edx,DWORD PTR [esp+0x14]
  9785f0:	23 c8                	and    ecx,eax
  9785f2:	0b d1                	or     edx,ecx
  9785f4:	83 eb 01             	sub    ebx,0x1
  9785f7:	89 54 24 4c          	mov    DWORD PTR [esp+0x4c],edx
  9785fb:	0f 85 71 ff ff ff    	jne    0x978572
  978601:	f3 0f 10 9c 24 14 01 	movss  xmm3,DWORD PTR [esp+0x114]
  978608:	00 00
  97860a:	0f 57 ed             	xorps  xmm5,xmm5
  97860d:	8d 96 b0 07 00 00    	lea    edx,[esi+0x7b0]
  978613:	8b c2                	mov    eax,edx
  978615:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  978618:	f3 0f 10 cb          	movss  xmm1,xmm3
  97861c:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  978620:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  978624:	0f 5c c1             	subps  xmm0,xmm1
  978627:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  97862c:	f3 0f 10 64 24 30    	movss  xmm4,DWORD PTR [esp+0x30]
  978632:	0f 2f ec             	comiss xmm5,xmm4
  978635:	89 84 24 3c 02 00 00 	mov    DWORD PTR [esp+0x23c],eax
  97863c:	0f 29 84 24 d0 07 00 	movaps XMMWORD PTR [esp+0x7d0],xmm0
  978643:	00
  978644:	8d 8e 80 07 00 00    	lea    ecx,[esi+0x780]
  97864a:	76 27                	jbe    0x978673
  97864c:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  97864f:	0f 29 02             	movaps XMMWORD PTR [edx],xmm0
  978652:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  978655:	0f 29 84 24 50 03 00 	movaps XMMWORD PTR [esp+0x350],xmm0
  97865c:	00
  97865d:	f3 0f 11 9c 24 54 03 	movss  DWORD PTR [esp+0x354],xmm3
  978664:	00 00
  978666:	0f 28 84 24 50 03 00 	movaps xmm0,XMMWORD PTR [esp+0x350]
  97866d:	00
  97866e:	e9 98 00 00 00       	jmp    0x97870b
  978673:	0f 28 11             	movaps xmm2,XMMWORD PTR [ecx]
  978676:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  978679:	0f 5c c2             	subps  xmm0,xmm2
  97867c:	0f 29 84 24 c0 01 00 	movaps XMMWORD PTR [esp+0x1c0],xmm0
  978683:	00
  978684:	f3 0f 11 ac 24 c4 01 	movss  DWORD PTR [esp+0x1c4],xmm5
  97868b:	00 00
  97868d:	0f 28 8c 24 c0 01 00 	movaps xmm1,XMMWORD PTR [esp+0x1c0]
  978694:	00
  978695:	0f 59 c9             	mulps  xmm1,xmm1
  978698:	0f 28 c1             	movaps xmm0,xmm1
  97869b:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  97869f:	0f 28 f1             	movaps xmm6,xmm1
  9786a2:	0f c6 f1 01          	shufps xmm6,xmm1,0x1
  9786a6:	0f 58 c6             	addps  xmm0,xmm6
  9786a9:	0f 58 c1             	addps  xmm0,xmm1
  9786ac:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  9786b3:	00
  9786b4:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9786b8:	0f 51 f0             	sqrtps xmm6,xmm0
  9786bb:	0f 28 c1             	movaps xmm0,xmm1
  9786be:	f3 0f 5e c4          	divss  xmm0,xmm4
  9786c2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9786c6:	0f 59 f0             	mulps  xmm6,xmm0
  9786c9:	0f 28 c1             	movaps xmm0,xmm1
  9786cc:	f3 0f 5e 05 a4 ef 17 	divss  xmm0,DWORD PTR ds:0x117efa4
  9786d3:	01
  9786d4:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9786d8:	0f 59 f0             	mulps  xmm6,xmm0
  9786db:	0f 29 74 24 30       	movaps XMMWORD PTR [esp+0x30],xmm6
  9786e0:	0f 2f 4c 24 30       	comiss xmm1,DWORD PTR [esp+0x30]
  9786e5:	76 05                	jbe    0x9786ec
  9786e7:	0f 28 d5             	movaps xmm2,xmm5
  9786ea:	eb 28                	jmp    0x978714
  9786ec:	0f 29 12             	movaps XMMWORD PTR [edx],xmm2
  9786ef:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  9786f2:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [esp+0x160],xmm0
  9786f9:	00
  9786fa:	f3 0f 11 9c 24 64 01 	movss  DWORD PTR [esp+0x164],xmm3
  978701:	00 00
  978703:	0f 28 84 24 60 01 00 	movaps xmm0,XMMWORD PTR [esp+0x160]
  97870a:	00
  97870b:	f3 0f 10 54 24 4c    	movss  xmm2,DWORD PTR [esp+0x4c]
  978711:	0f 29 02             	movaps XMMWORD PTR [edx],xmm0
  978714:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  978719:	0f 84 2e 01 00 00    	je     0x97884d
  97871f:	0f 28 4c 24 50       	movaps xmm1,XMMWORD PTR [esp+0x50]
  978724:	0f 28 84 24 80 01 00 	movaps xmm0,XMMWORD PTR [esp+0x180]
  97872b:	00
  97872c:	0f 5c c1             	subps  xmm0,xmm1
  97872f:	0f 28 8c 24 f0 00 00 	movaps xmm1,XMMWORD PTR [esp+0xf0]
  978736:	00
  978737:	0f 28 e0             	movaps xmm4,xmm0
  97873a:	0f 59 e1             	mulps  xmm4,xmm1
  97873d:	0f 5f e0             	maxps  xmm4,xmm0
  978740:	f3 0f 10 05 ac 6c 04 	movss  xmm0,DWORD PTR ds:0x1046cac
  978747:	01
  978748:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97874c:	0f c2 e0 02          	cmpleps xmm4,xmm0
  978750:	0f 50 c4             	movmskps eax,xmm4
  978753:	83 e0 07             	and    eax,0x7
  978756:	3c 07                	cmp    al,0x7
  978758:	0f 85 ef 00 00 00    	jne    0x97884d
  97875e:	0f 28 a4 24 40 01 00 	movaps xmm4,XMMWORD PTR [esp+0x140]
  978765:	00
  978766:	f3 0f 10 c2          	movss  xmm0,xmm2
  97876a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97876e:	0f 28 f0             	movaps xmm6,xmm0
  978771:	0f 59 f1             	mulps  xmm6,xmm1
  978774:	0f 5f f0             	maxps  xmm6,xmm0
  978777:	0f c2 f4 02          	cmpleps xmm6,xmm4
  97877b:	0f 50 c6             	movmskps eax,xmm6
  97877e:	83 f8 0f             	cmp    eax,0xf
  978781:	0f 85 ba 00 00 00    	jne    0x978841
  978787:	f3 0f 10 86 c0 07 00 	movss  xmm0,DWORD PTR [esi+0x7c0]
  97878e:	00
  97878f:	0f 28 d0             	movaps xmm2,xmm0
  978792:	f3 0f 5c d3          	subss  xmm2,xmm3
  978796:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  97879c:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  9787a0:	c1 f8 1f             	sar    eax,0x1f
  9787a3:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  9787a9:	8b f8                	mov    edi,eax
  9787ab:	f3 0f 11 5c 24 0c    	movss  DWORD PTR [esp+0xc],xmm3
  9787b1:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  9787b5:	f7 d7                	not    edi
  9787b7:	23 7c 24 18          	and    edi,DWORD PTR [esp+0x18]
  9787bb:	23 d8                	and    ebx,eax
  9787bd:	0b fb                	or     edi,ebx
  9787bf:	8b c1                	mov    eax,ecx
  9787c1:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  9787c4:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  9787c9:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  9787cd:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  9787d3:	0f 28 c3             	movaps xmm0,xmm3
  9787d6:	f3 0f 5c 44 24 34    	subss  xmm0,DWORD PTR [esp+0x34]
  9787dc:	89 84 24 74 02 00 00 	mov    DWORD PTR [esp+0x274],eax
  9787e3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9787e7:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  9787ec:	0f 29 84 24 f0 07 00 	movaps XMMWORD PTR [esp+0x7f0],xmm0
  9787f3:	00
  9787f4:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  9787fa:	0f 28 d0             	movaps xmm2,xmm0
  9787fd:	f3 0f 10 c0          	movss  xmm0,xmm0
  978801:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  978805:	0f 28 f0             	movaps xmm6,xmm0
  978808:	0f 59 f1             	mulps  xmm6,xmm1
  97880b:	0f 5f f0             	maxps  xmm6,xmm0
  97880e:	0f c2 f4 02          	cmpleps xmm6,xmm4
  978812:	0f 50 c6             	movmskps eax,xmm6
  978815:	83 f8 0f             	cmp    eax,0xf
  978818:	74 38                	je     0x978852
  97881a:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  97881d:	0f 29 02             	movaps XMMWORD PTR [edx],xmm0
  978820:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  978823:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  97882a:	00
  97882b:	f3 0f 11 9c 24 b4 00 	movss  DWORD PTR [esp+0xb4],xmm3
  978832:	00 00
  978834:	0f 28 84 24 b0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xb0]
  97883b:	00
  97883c:	0f 29 02             	movaps XMMWORD PTR [edx],xmm0
  97883f:	eb 11                	jmp    0x978852
  978841:	0f 2f ea             	comiss xmm5,xmm2
  978844:	76 0c                	jbe    0x978852
  978846:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  97884b:	eb 05                	jmp    0x978852
  97884d:	c6 44 24 12 01       	mov    BYTE PTR [esp+0x12],0x1
  978852:	80 be 09 08 00 00 00 	cmp    BYTE PTR [esi+0x809],0x0
  978859:	74 09                	je     0x978864
  97885b:	0f 2f d5             	comiss xmm2,xmm5
  97885e:	0f 86 39 01 00 00    	jbe    0x97899d
  978864:	f3 0f 10 05 7c 48 04 	movss  xmm0,DWORD PTR ds:0x104487c
  97886b:	01
  97886c:	f3 0f 10 75 08       	movss  xmm6,DWORD PTR [ebp+0x8]
  978871:	0f 2f c6             	comiss xmm0,xmm6
  978874:	0f 28 ca             	movaps xmm1,xmm2
  978877:	0f 86 dd 00 00 00    	jbe    0x97895a
  97887d:	8a 86 18 08 00 00    	mov    al,BYTE PTR [esi+0x818]
  978883:	84 c0                	test   al,al
  978885:	74 0a                	je     0x978891
  978887:	f3 0f 10 9e 88 09 00 	movss  xmm3,DWORD PTR [esi+0x988]
  97888e:	00
  97888f:	eb 08                	jmp    0x978899
  978891:	f3 0f 10 9e 7c 09 00 	movss  xmm3,DWORD PTR [esi+0x97c]
  978898:	00
  978899:	84 c0                	test   al,al
  97889b:	74 0a                	je     0x9788a7
  97889d:	f3 0f 10 86 8c 09 00 	movss  xmm0,DWORD PTR [esi+0x98c]
  9788a4:	00
  9788a5:	eb 08                	jmp    0x9788af
  9788a7:	f3 0f 10 86 84 09 00 	movss  xmm0,DWORD PTR [esi+0x984]
  9788ae:	00
  9788af:	f3 0f 59 86 04 08 00 	mulss  xmm0,DWORD PTR [esi+0x804]
  9788b6:	00
  9788b7:	d9 86 80 09 00 00    	fld    DWORD PTR [esi+0x980]
  9788bd:	f3 0f 10 25 f0 98 f9 	movss  xmm4,DWORD PTR ds:0xf998f0
  9788c4:	00
  9788c5:	d9 54 24 0c          	fst    DWORD PTR [esp+0xc]
  9788c9:	0f 28 cc             	movaps xmm1,xmm4
  9788cc:	f3 0f 5c c8          	subss  xmm1,xmm0
  9788d0:	f3 0f 59 da          	mulss  xmm3,xmm2
  9788d4:	f3 0f 58 cb          	addss  xmm1,xmm3
  9788d8:	0f 28 c1             	movaps xmm0,xmm1
  9788db:	f3 0f 59 c6          	mulss  xmm0,xmm6
  9788df:	f3 0f 58 86 04 08 00 	addss  xmm0,DWORD PTR [esi+0x804]
  9788e6:	00
  9788e7:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  9788ed:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  9788f1:	32 d2                	xor    dl,dl
  9788f3:	d9 e1                	fabs
  9788f5:	f3 0f 11 86 04 08 00 	movss  DWORD PTR [esi+0x804],xmm0
  9788fc:	00
  9788fd:	d9 c9                	fxch   st(1)
  9788ff:	df f1                	fcomip st,st(1)
  978901:	dd d8                	fstp   st(0)
  978903:	76 1f                	jbe    0x978924
  978905:	0f 2f e9             	comiss xmm5,xmm1
  978908:	76 36                	jbe    0x978940
  97890a:	0f 2f c5             	comiss xmm0,xmm5
  97890d:	72 15                	jb     0x978924
  97890f:	0f 2f d5             	comiss xmm2,xmm5
  978912:	76 10                	jbe    0x978924
  978914:	f3 0f 10 64 24 0c    	movss  xmm4,DWORD PTR [esp+0xc]
  97891a:	f3 0f 11 a6 04 08 00 	movss  DWORD PTR [esi+0x804],xmm4
  978921:	00
  978922:	b2 01                	mov    dl,0x1
  978924:	84 d2                	test   dl,dl
  978926:	f3 0f 10 8e 04 08 00 	movss  xmm1,DWORD PTR [esi+0x804]
  97892d:	00
  97892e:	f3 0f 59 ce          	mulss  xmm1,xmm6
  978932:	74 2e                	je     0x978962
  978934:	0f 2f e9             	comiss xmm5,xmm1
  978937:	76 19                	jbe    0x978952
  978939:	0f 2f d1             	comiss xmm2,xmm1
  97893c:	73 19                	jae    0x978957
  97893e:	eb 22                	jmp    0x978962
  978940:	0f 2f e8             	comiss xmm5,xmm0
  978943:	72 df                	jb     0x978924
  978945:	0f 2f ea             	comiss xmm5,xmm2
  978948:	76 da                	jbe    0x978924
  97894a:	f3 0f 5c 64 24 0c    	subss  xmm4,DWORD PTR [esp+0xc]
  978950:	eb c8                	jmp    0x97891a
  978952:	0f 2f ca             	comiss xmm1,xmm2
  978955:	72 0b                	jb     0x978962
  978957:	0f 28 ca             	movaps xmm1,xmm2
  97895a:	f3 0f 11 ae 04 08 00 	movss  DWORD PTR [esi+0x804],xmm5
  978961:	00
  978962:	0f 28 96 70 07 00 00 	movaps xmm2,XMMWORD PTR [esi+0x770]
  978969:	f3 0f 10 c9          	movss  xmm1,xmm1
  97896d:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  978971:	0f 28 d9             	movaps xmm3,xmm1
  978974:	0f 58 da             	addps  xmm3,xmm2
  978977:	0f 28 c2             	movaps xmm0,xmm2
  97897a:	0f c6 c3 50          	shufps xmm0,xmm3,0x50
  97897e:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  978982:	0f 29 86 70 07 00 00 	movaps XMMWORD PTR [esi+0x770],xmm0
  978989:	0f 28 11             	movaps xmm2,XMMWORD PTR [ecx]
  97898c:	0f 58 ca             	addps  xmm1,xmm2
  97898f:	0f 28 c2             	movaps xmm0,xmm2
  978992:	0f c6 c1 50          	shufps xmm0,xmm1,0x50
  978996:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  97899a:	0f 29 01             	movaps XMMWORD PTR [ecx],xmm0
  97899d:	0f 28 86 70 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x770]
  9789a4:	8d 86 70 07 00 00    	lea    eax,[esi+0x770]
  9789aa:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  9789ae:	f3 0f 11 84 24 a0 02 	movss  DWORD PTR [esp+0x2a0],xmm0
  9789b5:	00 00
  9789b7:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  9789bd:	f3 0f 10 c8          	movss  xmm1,xmm0
  9789c1:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9789c5:	f3 0f 11 8c 24 20 05 	movss  DWORD PTR [esp+0x520],xmm1
  9789cc:	00 00
  9789ce:	f3 0f 10 8c 24 20 05 	movss  xmm1,DWORD PTR [esp+0x520]
  9789d5:	00 00
  9789d7:	0f 2f 8c 24 a0 02 00 	comiss xmm1,DWORD PTR [esp+0x2a0]
  9789de:	00
  9789df:	89 84 24 44 02 00 00 	mov    DWORD PTR [esp+0x244],eax
  9789e6:	76 5f                	jbe    0x978a47
  9789e8:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  9789eb:	0f 29 4c 24 30       	movaps XMMWORD PTR [esp+0x30],xmm1
  9789f0:	f3 0f 5c 44 24 34    	subss  xmm0,DWORD PTR [esp+0x34]
  9789f6:	f3 0f 10 c0          	movss  xmm0,xmm0
  9789fa:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9789fe:	0f 29 84 24 10 08 00 	movaps XMMWORD PTR [esp+0x810],xmm0
  978a05:	00
  978a06:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  978a0b:	f3 0f 10 4c 24 30    	movss  xmm1,DWORD PTR [esp+0x30]
  978a11:	89 84 24 9c 02 00 00 	mov    DWORD PTR [esp+0x29c],eax
  978a18:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  978a1b:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  978a1f:	0f 28 d9             	movaps xmm3,xmm1
  978a22:	0f 58 da             	addps  xmm3,xmm2
  978a25:	0f 28 c2             	movaps xmm0,xmm2
  978a28:	0f c6 c3 50          	shufps xmm0,xmm3,0x50
  978a2c:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  978a30:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  978a33:	0f 28 11             	movaps xmm2,XMMWORD PTR [ecx]
  978a36:	0f 58 ca             	addps  xmm1,xmm2
  978a39:	0f 28 c2             	movaps xmm0,xmm2
  978a3c:	0f c6 c1 50          	shufps xmm0,xmm1,0x50
  978a40:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  978a44:	0f 29 01             	movaps XMMWORD PTR [ecx],xmm0
  978a47:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  978a4c:	0f 84 82 00 00 00    	je     0x978ad4
  978a52:	f3 0f 10 86 c0 07 00 	movss  xmm0,DWORD PTR [esi+0x7c0]
  978a59:	00
  978a5a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  978a5e:	8b c1                	mov    eax,ecx
  978a60:	f3 0f 11 84 24 a0 05 	movss  DWORD PTR [esp+0x5a0],xmm0
  978a67:	00 00
  978a69:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  978a6c:	0f c6 c0 55          	shufps xmm0,xmm0,0x55
  978a70:	f3 0f 11 84 24 a0 01 	movss  DWORD PTR [esp+0x1a0],xmm0
  978a77:	00 00
  978a79:	f3 0f 10 84 24 a0 05 	movss  xmm0,DWORD PTR [esp+0x5a0]
  978a80:	00 00
  978a82:	0f 2f 84 24 a0 01 00 	comiss xmm0,DWORD PTR [esp+0x1a0]
  978a89:	00
  978a8a:	89 84 24 4c 02 00 00 	mov    DWORD PTR [esp+0x24c],eax
  978a91:	76 64                	jbe    0x978af7
  978a93:	eb 46                	jmp    0x978adb
  978a95:	0f 28 84 24 f0 01 00 	movaps xmm0,XMMWORD PTR [esp+0x1f0]
  978a9c:	00
  978a9d:	0f 29 86 80 07 00 00 	movaps XMMWORD PTR [esi+0x780],xmm0
  978aa4:	0f 28 84 24 70 03 00 	movaps xmm0,XMMWORD PTR [esp+0x370]
  978aab:	00
  978aac:	0f 29 86 70 07 00 00 	movaps XMMWORD PTR [esi+0x770],xmm0
  978ab3:	c6 86 bd 08 00 00 00 	mov    BYTE PTR [esi+0x8bd],0x0
  978aba:	0f 28 86 80 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x780]
  978ac1:	0f 29 84 24 a0 02 00 	movaps XMMWORD PTR [esp+0x2a0],xmm0
  978ac8:	00
  978ac9:	f3 0f 10 84 24 a4 02 	movss  xmm0,DWORD PTR [esp+0x2a4]
  978ad0:	00 00
  978ad2:	eb 1b                	jmp    0x978aef
  978ad4:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  978ad9:	74 1c                	je     0x978af7
  978adb:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  978ade:	0f 29 84 24 a0 01 00 	movaps XMMWORD PTR [esp+0x1a0],xmm0
  978ae5:	00
  978ae6:	f3 0f 10 84 24 a4 01 	movss  xmm0,DWORD PTR [esp+0x1a4]
  978aed:	00 00
  978aef:	f3 0f 11 86 c0 07 00 	movss  DWORD PTR [esi+0x7c0],xmm0
  978af6:	00
  978af7:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  978afb:	51                   	push   ecx
  978afc:	8d 8c 24 74 01 00 00 	lea    ecx,[esp+0x174]
  978b03:	d9 1c 24             	fstp   DWORD PTR [esp]
  978b06:	51                   	push   ecx
  978b07:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  978b0a:	51                   	push   ecx
  978b0b:	8b ce                	mov    ecx,esi
  978b0d:	d9 1c 24             	fstp   DWORD PTR [esp]
  978b10:	e8 cb c2 ff ff       	call   0x974de0
  978b15:	5f                   	pop    edi
  978b16:	5e                   	pop    esi
  978b17:	5b                   	pop    ebx
  978b18:	8b e5                	mov    esp,ebp
  978b1a:	5d                   	pop    ebp
  978b1b:	c2 08 00             	ret    0x8
