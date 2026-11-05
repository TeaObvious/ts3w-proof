# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00926a80, 0x00926f51).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

00926a80 <.text+0x525a80>:
  926a80:	55                   	push   ebp
  926a81:	8b ec                	mov    ebp,esp
  926a83:	83 e4 f0             	and    esp,0xfffffff0
  926a86:	d9 45 08             	fld    DWORD PTR [ebp+0x8]
  926a89:	81 ec 44 01 00 00    	sub    esp,0x144
  926a8f:	53                   	push   ebx
  926a90:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  926a93:	56                   	push   esi
  926a94:	8b 75 18             	mov    esi,DWORD PTR [ebp+0x18]
  926a97:	57                   	push   edi
  926a98:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  926a9b:	8d 44 24 30          	lea    eax,[esp+0x30]
  926a9f:	50                   	push   eax
  926aa0:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  926aa4:	51                   	push   ecx
  926aa5:	51                   	push   ecx
  926aa6:	d9 1c 24             	fstp   DWORD PTR [esp]
  926aa9:	57                   	push   edi
  926aaa:	53                   	push   ebx
  926aab:	56                   	push   esi
  926aac:	e8 ef f4 ff ff       	call   0x925fa0
  926ab1:	83 c4 18             	add    esp,0x18
  926ab4:	80 7e 71 00          	cmp    BYTE PTR [esi+0x71],0x0
  926ab8:	0f 84 a3 00 00 00    	je     0x926b61
  926abe:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  926ac4:	0f 57 db             	xorps  xmm3,xmm3
  926ac7:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  926acb:	f3 0f 11 84 24 d0 00 	movss  DWORD PTR [esp+0xd0],xmm0
  926ad2:	00 00
  926ad4:	f3 0f 10 c3          	movss  xmm0,xmm3
  926ad8:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  926adc:	f3 0f 11 84 24 e0 00 	movss  DWORD PTR [esp+0xe0],xmm0
  926ae3:	00 00
  926ae5:	f3 0f 10 84 24 e0 00 	movss  xmm0,DWORD PTR [esp+0xe0]
  926aec:	00 00
  926aee:	0f 2f 84 24 d0 00 00 	comiss xmm0,DWORD PTR [esp+0xd0]
  926af5:	00
  926af6:	0f 86 4a 04 00 00    	jbe    0x926f46
  926afc:	d9 03                	fld    DWORD PTR [ebx]
  926afe:	d9 1f                	fstp   DWORD PTR [edi]
  926b00:	d9 43 04             	fld    DWORD PTR [ebx+0x4]
  926b03:	d9 5f 04             	fstp   DWORD PTR [edi+0x4]
  926b06:	d9 43 08             	fld    DWORD PTR [ebx+0x8]
  926b09:	d9 5f 08             	fstp   DWORD PTR [edi+0x8]
  926b0c:	f3 0f 10 46 58       	movss  xmm0,DWORD PTR [esi+0x58]
  926b11:	f3 0f 58 46 4c       	addss  xmm0,DWORD PTR [esi+0x4c]
  926b16:	f3 0f 10 4e 5c       	movss  xmm1,DWORD PTR [esi+0x5c]
  926b1b:	f3 0f 58 4e 50       	addss  xmm1,DWORD PTR [esi+0x50]
  926b20:	f3 0f 10 56 60       	movss  xmm2,DWORD PTR [esi+0x60]
  926b25:	f3 0f 58 56 54       	addss  xmm2,DWORD PTR [esi+0x54]
  926b2a:	f3 0f 59 c3          	mulss  xmm0,xmm3
  926b2e:	f3 0f 58 46 64       	addss  xmm0,DWORD PTR [esi+0x64]
  926b33:	f3 0f 59 cb          	mulss  xmm1,xmm3
  926b37:	f3 0f 58 4e 68       	addss  xmm1,DWORD PTR [esi+0x68]
  926b3c:	f3 0f 59 d3          	mulss  xmm2,xmm3
  926b40:	f3 0f 58 56 6c       	addss  xmm2,DWORD PTR [esi+0x6c]
  926b45:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  926b48:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  926b4c:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  926b51:	f3 0f 11 50 08       	movss  DWORD PTR [eax+0x8],xmm2
  926b56:	b0 01                	mov    al,0x1
  926b58:	5f                   	pop    edi
  926b59:	5e                   	pop    esi
  926b5a:	5b                   	pop    ebx
  926b5b:	8b e5                	mov    esp,ebp
  926b5d:	5d                   	pop    ebp
  926b5e:	c2 18 00             	ret    0x18
  926b61:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  926b67:	85 c9                	test   ecx,ecx
  926b69:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  926b6d:	0f 84 d3 03 00 00    	je     0x926f46
  926b73:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  926b78:	6a 00                	push   0x0
  926b7a:	6a 00                	push   0x0
  926b7c:	6a 00                	push   0x0
  926b7e:	6a 01                	push   0x1
  926b80:	6a 00                	push   0x0
  926b82:	0f 29 84 24 24 01 00 	movaps XMMWORD PTR [esp+0x124],xmm0
  926b89:	00
  926b8a:	d9 84 24 2c 01 00 00 	fld    DWORD PTR [esp+0x12c]
  926b91:	83 ec 08             	sub    esp,0x8
  926b94:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  926b98:	0f 29 84 24 dc 00 00 	movaps XMMWORD PTR [esp+0xdc],xmm0
  926b9f:	00
  926ba0:	d9 84 24 dc 00 00 00 	fld    DWORD PTR [esp+0xdc]
  926ba7:	d9 1c 24             	fstp   DWORD PTR [esp]
  926baa:	e8 71 a0 33 00       	call   0xc60c20
  926baf:	f3 0f 10 54 24 34    	movss  xmm2,DWORD PTR [esp+0x34]
  926bb5:	d9 54 24 14          	fst    DWORD PTR [esp+0x14]
  926bb9:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  926bbd:	f3 0f 11 94 24 b0 00 	movss  DWORD PTR [esp+0xb0],xmm2
  926bc4:	00 00
  926bc6:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  926bca:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  926bd0:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  926bd4:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  926bd9:	f3 0f 11 84 24 90 00 	movss  DWORD PTR [esp+0x90],xmm0
  926be0:	00 00
  926be2:	f3 0f 10 84 24 90 00 	movss  xmm0,DWORD PTR [esp+0x90]
  926be9:	00 00
  926beb:	0f 2f 84 24 b0 00 00 	comiss xmm0,DWORD PTR [esp+0xb0]
  926bf2:	00
  926bf3:	0f 86 4d 03 00 00    	jbe    0x926f46
  926bf9:	0f 28 5c 24 40       	movaps xmm3,XMMWORD PTR [esp+0x40]
  926bfe:	0f 28 c3             	movaps xmm0,xmm3
  926c01:	0f c6 c3 20          	shufps xmm0,xmm3,0x20
  926c05:	0f c6 c0 08          	shufps xmm0,xmm0,0x8
  926c09:	0f 28 e0             	movaps xmm4,xmm0
  926c0c:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  926c11:	0f 28 c8             	movaps xmm1,xmm0
  926c14:	0f c6 c8 20          	shufps xmm1,xmm0,0x20
  926c18:	0f c6 c9 08          	shufps xmm1,xmm1,0x8
  926c1c:	0f 29 8c 24 40 01 00 	movaps XMMWORD PTR [esp+0x140],xmm1
  926c23:	00
  926c24:	0f 5c cc             	subps  xmm1,xmm4
  926c27:	0f 59 c9             	mulps  xmm1,xmm1
  926c2a:	0f 29 a4 24 30 01 00 	movaps XMMWORD PTR [esp+0x130],xmm4
  926c31:	00
  926c32:	0f 28 e1             	movaps xmm4,xmm1
  926c35:	0f c6 e1 55          	shufps xmm4,xmm1,0x55
  926c39:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926c3d:	0f 58 e1             	addps  xmm4,xmm1
  926c40:	f3 0f 10 0d ec e6 06 	movss  xmm1,DWORD PTR ds:0x106e6ec
  926c47:	01
  926c48:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926c4c:	f3 0f 11 8c 24 20 01 	movss  DWORD PTR [esp+0x120],xmm1
  926c53:	00 00
  926c55:	f3 0f 10 8c 24 20 01 	movss  xmm1,DWORD PTR [esp+0x120]
  926c5c:	00 00
  926c5e:	f3 0f 11 64 24 50    	movss  DWORD PTR [esp+0x50],xmm4
  926c64:	0f 2f 4c 24 50       	comiss xmm1,DWORD PTR [esp+0x50]
  926c69:	0f 86 a8 01 00 00    	jbe    0x926e17
  926c6f:	f3 0f 10 4c 24 44    	movss  xmm1,DWORD PTR [esp+0x44]
  926c75:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926c79:	0f 5c d1             	subps  xmm2,xmm1
  926c7c:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  926c83:	00
  926c84:	0f 29 54 24 50       	movaps XMMWORD PTR [esp+0x50],xmm2
  926c89:	f3 0f 10 64 24 50    	movss  xmm4,DWORD PTR [esp+0x50]
  926c8f:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926c93:	f3 0f 10 d4          	movss  xmm2,xmm4
  926c97:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  926c9b:	0f 59 ca             	mulps  xmm1,xmm2
  926c9e:	0f 5f ca             	maxps  xmm1,xmm2
  926ca1:	f3 0f 10 15 54 34 04 	movss  xmm2,DWORD PTR ds:0x1043454
  926ca8:	01
  926ca9:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  926cad:	0f c2 ca 02          	cmpleps xmm1,xmm2
  926cb1:	0f 50 d1             	movmskps edx,xmm1
  926cb4:	83 fa 0f             	cmp    edx,0xf
  926cb7:	0f 84 e9 00 00 00    	je     0x926da6
  926cbd:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  926cc3:	f3 0f 10 15 f8 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f8
  926cca:	00
  926ccb:	0f 29 5c 24 60       	movaps XMMWORD PTR [esp+0x60],xmm3
  926cd0:	f3 0f 5c 4c 24 64    	subss  xmm1,DWORD PTR [esp+0x64]
  926cd6:	f3 0f 5e d4          	divss  xmm2,xmm4
  926cda:	8d 84 24 f0 00 00 00 	lea    eax,[esp+0xf0]
  926ce1:	0f 5c c3             	subps  xmm0,xmm3
  926ce4:	50                   	push   eax
  926ce5:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  926ce9:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926ced:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  926cf1:	0f 59 ca             	mulps  xmm1,xmm2
  926cf4:	0f 29 4c 24 64       	movaps XMMWORD PTR [esp+0x64],xmm1
  926cf9:	f3 0f 10 4c 24 64    	movss  xmm1,DWORD PTR [esp+0x64]
  926cff:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926d03:	0f 59 c1             	mulps  xmm0,xmm1
  926d06:	0f 58 c3             	addps  xmm0,xmm3
  926d09:	51                   	push   ecx
  926d0a:	0f 29 84 24 f8 00 00 	movaps XMMWORD PTR [esp+0xf8],xmm0
  926d11:	00
  926d12:	e8 39 f2 ff ff       	call   0x925f50
  926d17:	8b d1                	mov    edx,ecx
  926d19:	83 c4 08             	add    esp,0x8
  926d1c:	52                   	push   edx
  926d1d:	8d 4e 38             	lea    ecx,[esi+0x38]
  926d20:	e8 fb ca f9 ff       	call   0x8c3820
  926d25:	f3 0f 10 44 24 18    	movss  xmm0,DWORD PTR [esp+0x18]
  926d2b:	0f 57 e4             	xorps  xmm4,xmm4
  926d2e:	f3 0f 10 1d f8 98 f9 	movss  xmm3,DWORD PTR ds:0xf998f8
  926d35:	00
  926d36:	f3 0f 11 07          	movss  DWORD PTR [edi],xmm0
  926d3a:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  926d40:	f3 0f 11 47 04       	movss  DWORD PTR [edi+0x4],xmm0
  926d45:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  926d4b:	f3 0f 11 47 08       	movss  DWORD PTR [edi+0x8],xmm0
  926d50:	f3 0f 10 46 58       	movss  xmm0,DWORD PTR [esi+0x58]
  926d55:	f3 0f 58 46 4c       	addss  xmm0,DWORD PTR [esi+0x4c]
  926d5a:	f3 0f 10 4e 64       	movss  xmm1,DWORD PTR [esi+0x64]
  926d5f:	f3 0f 10 56 68       	movss  xmm2,DWORD PTR [esi+0x68]
  926d64:	f3 0f 59 cb          	mulss  xmm1,xmm3
  926d68:	f3 0f 59 c4          	mulss  xmm0,xmm4
  926d6c:	f3 0f 5c c1          	subss  xmm0,xmm1
  926d70:	f3 0f 10 4e 5c       	movss  xmm1,DWORD PTR [esi+0x5c]
  926d75:	f3 0f 58 4e 50       	addss  xmm1,DWORD PTR [esi+0x50]
  926d7a:	f3 0f 59 d3          	mulss  xmm2,xmm3
  926d7e:	f3 0f 59 cc          	mulss  xmm1,xmm4
  926d82:	f3 0f 5c ca          	subss  xmm1,xmm2
  926d86:	f3 0f 10 56 60       	movss  xmm2,DWORD PTR [esi+0x60]
  926d8b:	f3 0f 58 56 54       	addss  xmm2,DWORD PTR [esi+0x54]
  926d90:	f3 0f 59 d4          	mulss  xmm2,xmm4
  926d94:	f3 0f 10 66 6c       	movss  xmm4,DWORD PTR [esi+0x6c]
  926d99:	f3 0f 59 e3          	mulss  xmm4,xmm3
  926d9d:	f3 0f 5c d4          	subss  xmm2,xmm4
  926da1:	e9 9f fd ff ff       	jmp    0x926b45
  926da6:	d9 03                	fld    DWORD PTR [ebx]
  926da8:	d9 1f                	fstp   DWORD PTR [edi]
  926daa:	d9 43 04             	fld    DWORD PTR [ebx+0x4]
  926dad:	d9 5f 04             	fstp   DWORD PTR [edi+0x4]
  926db0:	d9 43 08             	fld    DWORD PTR [ebx+0x8]
  926db3:	d9 5f 08             	fstp   DWORD PTR [edi+0x8]
  926db6:	0f 57 db             	xorps  xmm3,xmm3
  926db9:	f3 0f 10 25 f8 98 f9 	movss  xmm4,DWORD PTR ds:0xf998f8
  926dc0:	00
  926dc1:	f3 0f 10 46 58       	movss  xmm0,DWORD PTR [esi+0x58]
  926dc6:	f3 0f 58 46 4c       	addss  xmm0,DWORD PTR [esi+0x4c]
  926dcb:	f3 0f 10 4e 64       	movss  xmm1,DWORD PTR [esi+0x64]
  926dd0:	f3 0f 10 56 68       	movss  xmm2,DWORD PTR [esi+0x68]
  926dd5:	f3 0f 59 cc          	mulss  xmm1,xmm4
  926dd9:	f3 0f 59 c3          	mulss  xmm0,xmm3
  926ddd:	f3 0f 5c c1          	subss  xmm0,xmm1
  926de1:	f3 0f 10 4e 5c       	movss  xmm1,DWORD PTR [esi+0x5c]
  926de6:	f3 0f 58 4e 50       	addss  xmm1,DWORD PTR [esi+0x50]
  926deb:	f3 0f 59 d4          	mulss  xmm2,xmm4
  926def:	f3 0f 59 cb          	mulss  xmm1,xmm3
  926df3:	f3 0f 5c ca          	subss  xmm1,xmm2
  926df7:	f3 0f 10 56 60       	movss  xmm2,DWORD PTR [esi+0x60]
  926dfc:	f3 0f 58 56 54       	addss  xmm2,DWORD PTR [esi+0x54]
  926e01:	f3 0f 59 d3          	mulss  xmm2,xmm3
  926e05:	f3 0f 10 5e 6c       	movss  xmm3,DWORD PTR [esi+0x6c]
  926e0a:	f3 0f 59 dc          	mulss  xmm3,xmm4
  926e0e:	f3 0f 5c d3          	subss  xmm2,xmm3
  926e12:	e9 2e fd ff ff       	jmp    0x926b45
  926e17:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  926e1b:	6a 00                	push   0x0
  926e1d:	6a 00                	push   0x0
  926e1f:	6a 00                	push   0x0
  926e21:	6a 01                	push   0x1
  926e23:	6a 00                	push   0x0
  926e25:	0f 29 84 24 b4 00 00 	movaps XMMWORD PTR [esp+0xb4],xmm0
  926e2c:	00
  926e2d:	d9 84 24 bc 00 00 00 	fld    DWORD PTR [esp+0xbc]
  926e34:	83 ec 08             	sub    esp,0x8
  926e37:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  926e3b:	0f 29 84 24 9c 00 00 	movaps XMMWORD PTR [esp+0x9c],xmm0
  926e42:	00
  926e43:	d9 84 24 9c 00 00 00 	fld    DWORD PTR [esp+0x9c]
  926e4a:	d9 1c 24             	fstp   DWORD PTR [esp]
  926e4d:	e8 ce 9d 33 00       	call   0xc60c20
  926e52:	f3 0f 10 44 24 34    	movss  xmm0,DWORD PTR [esp+0x34]
  926e58:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  926e5c:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  926e62:	f3 0f 10 1d 18 b2 fa 	movss  xmm3,DWORD PTR ds:0xfab218
  926e69:	00
  926e6a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  926e6e:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926e72:	0f 5c c1             	subps  xmm0,xmm1
  926e75:	0f 29 84 24 80 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  926e7c:	00
  926e7d:	f3 0f 10 44 24 44    	movss  xmm0,DWORD PTR [esp+0x44]
  926e83:	f3 0f 10 94 24 80 00 	movss  xmm2,DWORD PTR [esp+0x80]
  926e8a:	00 00
  926e8c:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  926e90:	0f 5c 44 24 70       	subps  xmm0,XMMWORD PTR [esp+0x70]
  926e95:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  926e9a:	f3 0f 10 64 24 70    	movss  xmm4,DWORD PTR [esp+0x70]
  926ea0:	f3 0f 5c d4          	subss  xmm2,xmm4
  926ea4:	f3 0f 10 ca          	movss  xmm1,xmm2
  926ea8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926eac:	f3 0f 10 c3          	movss  xmm0,xmm3
  926eb0:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  926eb4:	0f 59 c1             	mulps  xmm0,xmm1
  926eb7:	0f 5f c1             	maxps  xmm0,xmm1
  926eba:	f3 0f 10 0d 54 34 04 	movss  xmm1,DWORD PTR ds:0x1043454
  926ec1:	01
  926ec2:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  926ec6:	0f c2 c1 02          	cmpleps xmm0,xmm1
  926eca:	0f 50 c0             	movmskps eax,xmm0
  926ecd:	83 f8 0f             	cmp    eax,0xf
  926ed0:	0f 84 d0 fe ff ff    	je     0x926da6
  926ed6:	0f 28 4c 24 40       	movaps xmm1,XMMWORD PTR [esp+0x40]
  926edb:	f3 0f 5e da          	divss  xmm3,xmm2
  926edf:	0f 28 54 24 30       	movaps xmm2,XMMWORD PTR [esp+0x30]
  926ee4:	f3 0f 59 dc          	mulss  xmm3,xmm4
  926ee8:	8d 8c 24 00 01 00 00 	lea    ecx,[esp+0x100]
  926eef:	f3 0f 10 c3          	movss  xmm0,xmm3
  926ef3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  926ef7:	0f 5c d1             	subps  xmm2,xmm1
  926efa:	0f 59 c2             	mulps  xmm0,xmm2
  926efd:	51                   	push   ecx
  926efe:	8d 54 24 28          	lea    edx,[esp+0x28]
  926f02:	0f 58 c1             	addps  xmm0,xmm1
  926f05:	52                   	push   edx
  926f06:	0f 29 84 24 08 01 00 	movaps XMMWORD PTR [esp+0x108],xmm0
  926f0d:	00
  926f0e:	e8 3d f0 ff ff       	call   0x925f50
  926f13:	83 c4 08             	add    esp,0x8
  926f16:	8b c2                	mov    eax,edx
  926f18:	50                   	push   eax
  926f19:	8d 4e 38             	lea    ecx,[esi+0x38]
  926f1c:	e8 ff c8 f9 ff       	call   0x8c3820
  926f21:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  926f27:	f3 0f 11 07          	movss  DWORD PTR [edi],xmm0
  926f2b:	f3 0f 10 44 24 28    	movss  xmm0,DWORD PTR [esp+0x28]
  926f31:	f3 0f 11 47 04       	movss  DWORD PTR [edi+0x4],xmm0
  926f36:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  926f3c:	f3 0f 11 47 08       	movss  DWORD PTR [edi+0x8],xmm0
  926f41:	e9 70 fe ff ff       	jmp    0x926db6
  926f46:	5f                   	pop    edi
  926f47:	5e                   	pop    esi
  926f48:	32 c0                	xor    al,al
  926f4a:	5b                   	pop    ebx
  926f4b:	8b e5                	mov    esp,ebp
  926f4d:	5d                   	pop    ebp
  926f4e:	c2 18 00             	ret    0x18
