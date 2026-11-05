# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00d66ad0, 0x00d678e5).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_UpdatePrecipitationCells (analyst-assigned)
Entry: 0x00d66ad0
Ghidra body envelope: 0x00d66ad0..0x00d678e4 inclusive
Envelope contains alignment gaps between Ghidra body ranges: 0x00d66ad0..0x00d66e19, 0x00d66e20..0x00d672a8, 0x00d672b0..0x00d67474, 0x00d67480..0x00d677dc, 0x00d677e0..0x00d678e4


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00d66ad0 <.text+0x965ad0>:
  d66ad0:	55                   	push   ebp
  d66ad1:	8b ec                	mov    ebp,esp
  d66ad3:	83 e4 f0             	and    esp,0xfffffff0
  d66ad6:	81 ec 74 01 00 00    	sub    esp,0x174
  d66adc:	53                   	push   ebx
  d66add:	56                   	push   esi
  d66ade:	57                   	push   edi
  d66adf:	8b f9                	mov    edi,ecx
  d66ae1:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  d66ae4:	8b 01                	mov    eax,DWORD PTR [ecx]
  d66ae6:	85 c0                	test   eax,eax
  d66ae8:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  d66aec:	0f 84 bc 0d 00 00    	je     0xd678ae
  d66af2:	f3 0f 10 05 ec e6 06 	movss  xmm0,DWORD PTR ds:0x106e6ec
  d66af9:	01
  d66afa:	0f 2f 41 04          	comiss xmm0,DWORD PTR [ecx+0x4]
  d66afe:	0f 83 aa 0d 00 00    	jae    0xd678ae
  d66b04:	3b 47 34             	cmp    eax,DWORD PTR [edi+0x34]
  d66b07:	74 07                	je     0xd66b10
  d66b09:	8b cf                	mov    ecx,edi
  d66b0b:	e8 a0 fe ff ff       	call   0xd669b0
  d66b10:	e8 5b 16 98 ff       	call   0x6e8170
  d66b15:	8b d8                	mov    ebx,eax
  d66b17:	85 db                	test   ebx,ebx
  d66b19:	0f 84 7f 0d 00 00    	je     0xd6789e
  d66b1f:	80 bb 15 05 00 00 00 	cmp    BYTE PTR [ebx+0x515],0x0
  d66b26:	74 0d                	je     0xd66b35
  d66b28:	80 bb 70 02 00 00 00 	cmp    BYTE PTR [ebx+0x270],0x0
  d66b2f:	0f 84 69 0d 00 00    	je     0xd6789e
  d66b35:	8b cb                	mov    ecx,ebx
  d66b37:	e8 54 44 98 ff       	call   0x6eaf90
  d66b3c:	84 c0                	test   al,al
  d66b3e:	0f 85 5a 0d 00 00    	jne    0xd6789e
  d66b44:	8b cb                	mov    ecx,ebx
  d66b46:	e8 85 f6 7c ff       	call   0x5361d0
  d66b4b:	8b f0                	mov    esi,eax
  d66b4d:	85 f6                	test   esi,esi
  d66b4f:	0f 84 87 0d 00 00    	je     0xd678dc
  d66b55:	8b cb                	mov    ecx,ebx
  d66b57:	e8 a4 44 98 ff       	call   0x6eb000
  d66b5c:	84 c0                	test   al,al
  d66b5e:	0f 85 1a 01 00 00    	jne    0xd66c7e
  d66b64:	0f 28 96 00 02 00 00 	movaps xmm2,XMMWORD PTR [esi+0x200]
  d66b6b:	0f 28 4e 60          	movaps xmm1,XMMWORD PTR [esi+0x60]
  d66b6f:	8b 0d 58 de 1e 01    	mov    ecx,DWORD PTR ds:0x11ede58
  d66b75:	85 c9                	test   ecx,ecx
  d66b77:	0f 28 c2             	movaps xmm0,xmm2
  d66b7a:	0f 5c c1             	subps  xmm0,xmm1
  d66b7d:	0f 59 c0             	mulps  xmm0,xmm0
  d66b80:	0f 28 c8             	movaps xmm1,xmm0
  d66b83:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  d66b87:	0f 28 d9             	movaps xmm3,xmm1
  d66b8a:	0f c6 d9 01          	shufps xmm3,xmm1,0x1
  d66b8e:	0f 58 c3             	addps  xmm0,xmm3
  d66b91:	0f 58 c1             	addps  xmm0,xmm1
  d66b94:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  d66b98:	0f 51 c0             	sqrtps xmm0,xmm0
  d66b9b:	0f 29 94 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm2
  d66ba2:	00
  d66ba3:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  d66ba8:	0f 84 d0 00 00 00    	je     0xd66c7e
  d66bae:	f3 0f 10 05 d4 90 06 	movss  xmm0,DWORD PTR ds:0x10690d4
  d66bb5:	01
  d66bb6:	0f 2f 44 24 40       	comiss xmm0,DWORD PTR [esp+0x40]
  d66bbb:	0f 86 bd 00 00 00    	jbe    0xd66c7e
  d66bc1:	0f 29 54 24 40       	movaps XMMWORD PTR [esp+0x40],xmm2
  d66bc6:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  d66bca:	83 ec 08             	sub    esp,0x8
  d66bcd:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d66bd1:	0f 29 94 24 a8 00 00 	movaps XMMWORD PTR [esp+0xa8],xmm2
  d66bd8:	00
  d66bd9:	d9 84 24 a8 00 00 00 	fld    DWORD PTR [esp+0xa8]
  d66be0:	d9 1c 24             	fstp   DWORD PTR [esp]
  d66be3:	e8 28 74 f1 ff       	call   0xc7e010
  d66be8:	85 c0                	test   eax,eax
  d66bea:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  d66bee:	0f 84 8a 00 00 00    	je     0xd66c7e
  d66bf4:	8b 80 30 02 00 00    	mov    eax,DWORD PTR [eax+0x230]
  d66bfa:	85 c0                	test   eax,eax
  d66bfc:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  d66c00:	74 7c                	je     0xd66c7e
  d66c02:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  d66c06:	51                   	push   ecx
  d66c07:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  d66c0b:	8d 94 24 b4 00 00 00 	lea    edx,[esp+0xb4]
  d66c12:	52                   	push   edx
  d66c13:	e8 88 8e d7 ff       	call   0xadfaa0
  d66c18:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  d66c1f:	00
  d66c20:	8d 44 24 30          	lea    eax,[esp+0x30]
  d66c24:	50                   	push   eax
  d66c25:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  d66c29:	51                   	push   ecx
  d66c2a:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  d66c2e:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  d66c34:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  d66c3a:	c7 44 24 40 00 00 00 	mov    DWORD PTR [esp+0x40],0x0
  d66c41:	00
  d66c42:	e8 b9 8e d7 ff       	call   0xadfb00
  d66c47:	84 c0                	test   al,al
  d66c49:	74 33                	je     0xd66c7e
  d66c4b:	83 7c 24 38 ff       	cmp    DWORD PTR [esp+0x38],0xffffffff
  d66c50:	0f 8c 48 0c 00 00    	jl     0xd6789e
  d66c56:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  d66c5a:	8d 54 24 30          	lea    edx,[esp+0x30]
  d66c5e:	52                   	push   edx
  d66c5f:	e8 fc a3 d3 ff       	call   0xaa1060
  d66c64:	0f b7 c0             	movzx  eax,ax
  d66c67:	66 85 c0             	test   ax,ax
  d66c6a:	74 12                	je     0xd66c7e
  d66c6c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d66c70:	50                   	push   eax
  d66c71:	e8 8a b2 95 ff       	call   0x6c1f00
  d66c76:	84 c0                	test   al,al
  d66c78:	0f 84 20 0c 00 00    	je     0xd6789e
  d66c7e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  d66c81:	f3 0f 10 3d f8 98 f9 	movss  xmm7,DWORD PTR ds:0xf998f8
  d66c88:	00
  d66c89:	f3 0f 10 1d 7c 45 fe 	movss  xmm3,DWORD PTR ds:0xfe457c
  d66c90:	00
  d66c91:	f3 0f 10 25 78 45 fe 	movss  xmm4,DWORD PTR ds:0xfe4578
  d66c98:	00
  d66c99:	c6 83 75 02 00 00 01 	mov    BYTE PTR [ebx+0x275],0x1
  d66ca0:	8b 08                	mov    ecx,DWORD PTR [eax]
  d66ca2:	89 4f 34             	mov    DWORD PTR [edi+0x34],ecx
  d66ca5:	0f 28 56 60          	movaps xmm2,XMMWORD PTR [esi+0x60]
  d66ca9:	0f 28 cf             	movaps xmm1,xmm7
  d66cac:	f3 0f 5e 0d c0 2c 19 	divss  xmm1,DWORD PTR ds:0x1192cc0
  d66cb3:	01
  d66cb4:	0f 28 c2             	movaps xmm0,xmm2
  d66cb7:	0f c6 c2 00          	shufps xmm0,xmm2,0x0
  d66cbb:	0f 57 f6             	xorps  xmm6,xmm6
  d66cbe:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d66cc2:	0f c6 e4 00          	shufps xmm4,xmm4,0x0
  d66cc6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d66cca:	0f 59 c1             	mulps  xmm0,xmm1
  d66ccd:	0f 28 c8             	movaps xmm1,xmm0
  d66cd0:	0f c2 ce 01          	cmpltps xmm1,xmm6
  d66cd4:	0f 28 e9             	movaps xmm5,xmm1
  d66cd7:	0f 55 cb             	andnps xmm1,xmm3
  d66cda:	0f 54 ec             	andps  xmm5,xmm4
  d66cdd:	0f 56 e9             	orps   xmm5,xmm1
  d66ce0:	0f 28 c8             	movaps xmm1,xmm0
  d66ce3:	0f 5c cd             	subps  xmm1,xmm5
  d66ce6:	0f 58 cd             	addps  xmm1,xmm5
  d66ce9:	0f c2 c1 01          	cmpltps xmm0,xmm1
  d66ced:	f3 0f 10 ef          	movss  xmm5,xmm7
  d66cf1:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  d66cf5:	0f 54 c5             	andps  xmm0,xmm5
  d66cf8:	0f 5c c8             	subps  xmm1,xmm0
  d66cfb:	0f 29 8c 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm1
  d66d02:	00
  d66d03:	0f 28 cf             	movaps xmm1,xmm7
  d66d06:	f3 0f 5e 0d c8 2c 19 	divss  xmm1,DWORD PTR ds:0x1192cc8
  d66d0d:	01
  d66d0e:	0f 28 c2             	movaps xmm0,xmm2
  d66d11:	0f c6 c2 55          	shufps xmm0,xmm2,0x55
  d66d15:	0f 29 74 24 40       	movaps XMMWORD PTR [esp+0x40],xmm6
  d66d1a:	f3 0f 2c 8c 24 b0 00 	cvttss2si ecx,DWORD PTR [esp+0xb0]
  d66d21:	00 00
  d66d23:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [esp+0x100],xmm2
  d66d2a:	00
  d66d2b:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d66d2f:	0f 59 c1             	mulps  xmm0,xmm1
  d66d32:	0f 28 c8             	movaps xmm1,xmm0
  d66d35:	0f c2 ce 01          	cmpltps xmm1,xmm6
  d66d39:	0f 28 f1             	movaps xmm6,xmm1
  d66d3c:	0f 55 cb             	andnps xmm1,xmm3
  d66d3f:	0f 54 f4             	andps  xmm6,xmm4
  d66d42:	0f 56 f1             	orps   xmm6,xmm1
  d66d45:	0f 28 c8             	movaps xmm1,xmm0
  d66d48:	0f 5c ce             	subps  xmm1,xmm6
  d66d4b:	0f 58 ce             	addps  xmm1,xmm6
  d66d4e:	0f c2 c1 01          	cmpltps xmm0,xmm1
  d66d52:	0f 54 c5             	andps  xmm0,xmm5
  d66d55:	0f 5c c8             	subps  xmm1,xmm0
  d66d58:	0f 29 8c 24 a0 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm1
  d66d5f:	00
  d66d60:	0f 28 cf             	movaps xmm1,xmm7
  d66d63:	f3 0f 5e 0d c4 2c 19 	divss  xmm1,DWORD PTR ds:0x1192cc4
  d66d6a:	01
  d66d6b:	0f 28 c2             	movaps xmm0,xmm2
  d66d6e:	0f c6 c2 aa          	shufps xmm0,xmm2,0xaa
  d66d72:	8d 47 08             	lea    eax,[edi+0x8]
  d66d75:	8b 38                	mov    edi,DWORD PTR [eax]
  d66d77:	3b 78 04             	cmp    edi,DWORD PTR [eax+0x4]
  d66d7a:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d66d7e:	0f 59 c1             	mulps  xmm0,xmm1
  d66d81:	0f 28 c8             	movaps xmm1,xmm0
  d66d84:	0f c2 4c 24 40 01    	cmpltps xmm1,XMMWORD PTR [esp+0x40]
  d66d8a:	0f 28 d1             	movaps xmm2,xmm1
  d66d8d:	0f 55 cb             	andnps xmm1,xmm3
  d66d90:	0f 54 d4             	andps  xmm2,xmm4
  d66d93:	0f 56 d1             	orps   xmm2,xmm1
  d66d96:	0f 28 c8             	movaps xmm1,xmm0
  d66d99:	0f 5c ca             	subps  xmm1,xmm2
  d66d9c:	0f 58 ca             	addps  xmm1,xmm2
  d66d9f:	0f c2 c1 01          	cmpltps xmm0,xmm1
  d66da3:	0f 54 c5             	andps  xmm0,xmm5
  d66da6:	0f 5c c8             	subps  xmm1,xmm0
  d66da9:	0f 29 8c 24 c0 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm1
  d66db0:	00
  d66db1:	f3 0f 2c 94 24 c0 00 	cvttss2si edx,DWORD PTR [esp+0xc0]
  d66db8:	00 00
  d66dba:	75 0c                	jne    0xd66dc8
  d66dbc:	85 c9                	test   ecx,ecx
  d66dbe:	7f 08                	jg     0xd66dc8
  d66dc0:	85 d2                	test   edx,edx
  d66dc2:	0f 8e 14 0b 00 00    	jle    0xd678dc
  d66dc8:	f3 0f 2c 8c 24 c0 00 	cvttss2si ecx,DWORD PTR [esp+0xc0]
  d66dcf:	00 00
  d66dd1:	f3 0f 2c 84 24 a0 00 	cvttss2si eax,DWORD PTR [esp+0xa0]
  d66dd8:	00 00
  d66dda:	f3 0f 2c bc 24 b0 00 	cvttss2si edi,DWORD PTR [esp+0xb0]
  d66de1:	00 00
  d66de3:	89 4c 24 68          	mov    DWORD PTR [esp+0x68],ecx
  d66de7:	89 4c 24 58          	mov    DWORD PTR [esp+0x58],ecx
  d66deb:	8b ce                	mov    ecx,esi
  d66ded:	89 7c 24 60          	mov    DWORD PTR [esp+0x60],edi
  d66df1:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  d66df5:	89 7c 24 50          	mov    DWORD PTR [esp+0x50],edi
  d66df9:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  d66dfd:	e8 8e 8f bf ff       	call   0x95fd90
  d66e02:	83 c7 ff             	add    edi,0xffffffff
  d66e05:	89 84 24 d8 00 00 00 	mov    DWORD PTR [esp+0xd8],eax
  d66e0c:	c7 44 24 1c ff ff ff 	mov    DWORD PTR [esp+0x1c],0xffffffff
  d66e13:	ff
  d66e14:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  d66e18:	eb 06                	jmp    0xd66e20
  d66e1a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  d66e20:	f3 0f 2c 84 24 c0 00 	cvttss2si eax,DWORD PTR [esp+0xc0]
  d66e27:	00 00
  d66e29:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  d66e2d:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
  d66e31:	8d 1c 02             	lea    ebx,[edx+eax*1]
  d66e34:	f3 0f 2a c3          	cvtsi2ss xmm0,ebx
  d66e38:	8d 43 01             	lea    eax,[ebx+0x1]
  d66e3b:	f3 0f 11 84 24 e8 00 	movss  DWORD PTR [esp+0xe8],xmm0
  d66e42:	00 00
  d66e44:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  d66e48:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
  d66e4c:	f3 0f 11 84 24 e4 00 	movss  DWORD PTR [esp+0xe4],xmm0
  d66e53:	00 00
  d66e55:	c7 44 24 24 03 00 00 	mov    DWORD PTR [esp+0x24],0x3
  d66e5c:	00
  d66e5d:	8d 47 01             	lea    eax,[edi+0x1]
  d66e60:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  d66e64:	f3 0f 11 84 24 e0 00 	movss  DWORD PTR [esp+0xe0],xmm0
  d66e6b:	00 00
  d66e6d:	f3 0f 2a c7          	cvtsi2ss xmm0,edi
  d66e71:	c7 44 24 18 ff ff ff 	mov    DWORD PTR [esp+0x18],0xffffffff
  d66e78:	ff
  d66e79:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  d66e7d:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  d66e81:	f3 0f 11 84 24 ec 00 	movss  DWORD PTR [esp+0xec],xmm0
  d66e88:	00 00
  d66e8a:	f3 0f 10 15 c0 2c 19 	movss  xmm2,DWORD PTR ds:0x1192cc0
  d66e91:	01
  d66e92:	f3 0f 10 84 24 e0 00 	movss  xmm0,DWORD PTR [esp+0xe0]
  d66e99:	00 00
  d66e9b:	f3 0f 10 8c 24 ec 00 	movss  xmm1,DWORD PTR [esp+0xec]
  d66ea2:	00 00
  d66ea4:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d66ea8:	f3 0f 2c 84 24 a0 00 	cvttss2si eax,DWORD PTR [esp+0xa0]
  d66eaf:	00 00
  d66eb1:	f3 0f 10 9c 24 e8 00 	movss  xmm3,DWORD PTR [esp+0xe8]
  d66eb8:	00 00
  d66eba:	f3 0f 59 ca          	mulss  xmm1,xmm2
  d66ebe:	f3 0f 59 c2          	mulss  xmm0,xmm2
  d66ec2:	f3 0f 10 15 c4 2c 19 	movss  xmm2,DWORD PTR ds:0x1192cc4
  d66ec9:	01
  d66eca:	8d 34 01             	lea    esi,[ecx+eax*1]
  d66ecd:	8b 8c 24 d8 00 00 00 	mov    ecx,DWORD PTR [esp+0xd8]
  d66ed4:	f3 0f 59 da          	mulss  xmm3,xmm2
  d66ed8:	f3 0f 11 8c 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm1
  d66edf:	00 00
  d66ee1:	f3 0f 11 9c 24 98 00 	movss  DWORD PTR [esp+0x98],xmm3
  d66ee8:	00 00
  d66eea:	f3 0f 10 1d c8 2c 19 	movss  xmm3,DWORD PTR ds:0x1192cc8
  d66ef1:	01
  d66ef2:	f3 0f 11 8c 24 90 00 	movss  DWORD PTR [esp+0x90],xmm1
  d66ef9:	00 00
  d66efb:	f3 0f 2a e6          	cvtsi2ss xmm4,esi
  d66eff:	f3 0f 59 e3          	mulss  xmm4,xmm3
  d66f03:	f3 0f 11 a4 24 94 00 	movss  DWORD PTR [esp+0x94],xmm4
  d66f0a:	00 00
  d66f0c:	0f 28 8c 24 90 00 00 	movaps xmm1,XMMWORD PTR [esp+0x90]
  d66f13:	00
  d66f14:	0f 29 8c 24 20 01 00 	movaps XMMWORD PTR [esp+0x120],xmm1
  d66f1b:	00
  d66f1c:	f3 0f 10 8c 24 e4 00 	movss  xmm1,DWORD PTR [esp+0xe4]
  d66f23:	00 00
  d66f25:	f3 0f 59 ca          	mulss  xmm1,xmm2
  d66f29:	f3 0f 11 4c 24 48    	movss  DWORD PTR [esp+0x48],xmm1
  d66f2f:	8d 56 01             	lea    edx,[esi+0x1]
  d66f32:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  d66f36:	f3 0f 59 cb          	mulss  xmm1,xmm3
  d66f3a:	8d 84 24 20 01 00 00 	lea    eax,[esp+0x120]
  d66f41:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  d66f47:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  d66f4d:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  d66f53:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  d66f58:	50                   	push   eax
  d66f59:	89 74 24 38          	mov    DWORD PTR [esp+0x38],esi
  d66f5d:	0f 29 84 24 34 01 00 	movaps XMMWORD PTR [esp+0x134],xmm0
  d66f64:	00
  d66f65:	e8 e6 5a 92 ff       	call   0x68ca50
  d66f6a:	84 c0                	test   al,al
  d66f6c:	74 78                	je     0xd66fe6
  d66f6e:	39 7c 24 60          	cmp    DWORD PTR [esp+0x60],edi
  d66f72:	8d 44 24 60          	lea    eax,[esp+0x60]
  d66f76:	7c 04                	jl     0xd66f7c
  d66f78:	8d 44 24 30          	lea    eax,[esp+0x30]
  d66f7c:	39 74 24 64          	cmp    DWORD PTR [esp+0x64],esi
  d66f80:	8b 08                	mov    ecx,DWORD PTR [eax]
  d66f82:	89 4c 24 60          	mov    DWORD PTR [esp+0x60],ecx
  d66f86:	8d 44 24 64          	lea    eax,[esp+0x64]
  d66f8a:	7c 04                	jl     0xd66f90
  d66f8c:	8d 44 24 34          	lea    eax,[esp+0x34]
  d66f90:	39 5c 24 68          	cmp    DWORD PTR [esp+0x68],ebx
  d66f94:	8b 10                	mov    edx,DWORD PTR [eax]
  d66f96:	89 54 24 64          	mov    DWORD PTR [esp+0x64],edx
  d66f9a:	8d 44 24 68          	lea    eax,[esp+0x68]
  d66f9e:	7c 04                	jl     0xd66fa4
  d66fa0:	8d 44 24 38          	lea    eax,[esp+0x38]
  d66fa4:	3b 7c 24 50          	cmp    edi,DWORD PTR [esp+0x50]
  d66fa8:	8b 00                	mov    eax,DWORD PTR [eax]
  d66faa:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  d66fae:	8d 44 24 50          	lea    eax,[esp+0x50]
  d66fb2:	7c 04                	jl     0xd66fb8
  d66fb4:	8d 44 24 30          	lea    eax,[esp+0x30]
  d66fb8:	3b 74 24 54          	cmp    esi,DWORD PTR [esp+0x54]
  d66fbc:	8b 08                	mov    ecx,DWORD PTR [eax]
  d66fbe:	89 4c 24 50          	mov    DWORD PTR [esp+0x50],ecx
  d66fc2:	8d 44 24 54          	lea    eax,[esp+0x54]
  d66fc6:	7c 04                	jl     0xd66fcc
  d66fc8:	8d 44 24 34          	lea    eax,[esp+0x34]
  d66fcc:	3b 5c 24 58          	cmp    ebx,DWORD PTR [esp+0x58]
  d66fd0:	8b 10                	mov    edx,DWORD PTR [eax]
  d66fd2:	89 54 24 54          	mov    DWORD PTR [esp+0x54],edx
  d66fd6:	8d 44 24 58          	lea    eax,[esp+0x58]
  d66fda:	7c 04                	jl     0xd66fe0
  d66fdc:	8d 44 24 38          	lea    eax,[esp+0x38]
  d66fe0:	8b 00                	mov    eax,DWORD PTR [eax]
  d66fe2:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  d66fe6:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  d66fea:	83 c0 01             	add    eax,0x1
  d66fed:	83 f8 01             	cmp    eax,0x1
  d66ff0:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  d66ff4:	0f 8e 90 fe ff ff    	jle    0xd66e8a
  d66ffa:	83 6c 24 24 01       	sub    DWORD PTR [esp+0x24],0x1
  d66fff:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
  d67003:	0f 85 54 fe ff ff    	jne    0xd66e5d
  d67009:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  d6700d:	83 c0 01             	add    eax,0x1
  d67010:	83 f8 01             	cmp    eax,0x1
  d67013:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  d67017:	0f 8e 03 fe ff ff    	jle    0xd66e20
  d6701d:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  d67021:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  d67024:	3b 48 0c             	cmp    ecx,DWORD PTR [eax+0xc]
  d67027:	8d 70 08             	lea    esi,[eax+0x8]
  d6702a:	74 73                	je     0xd6709f
  d6702c:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  d67030:	3b 50 18             	cmp    edx,DWORD PTR [eax+0x18]
  d67033:	75 6a                	jne    0xd6709f
  d67035:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  d67039:	3b 48 1c             	cmp    ecx,DWORD PTR [eax+0x1c]
  d6703c:	75 61                	jne    0xd6709f
  d6703e:	8b 54 24 68          	mov    edx,DWORD PTR [esp+0x68]
  d67042:	3b 50 20             	cmp    edx,DWORD PTR [eax+0x20]
  d67045:	75 58                	jne    0xd6709f
  d67047:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  d6704b:	3b 48 24             	cmp    ecx,DWORD PTR [eax+0x24]
  d6704e:	75 4f                	jne    0xd6709f
  d67050:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  d67054:	3b 50 28             	cmp    edx,DWORD PTR [eax+0x28]
  d67057:	75 46                	jne    0xd6709f
  d67059:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  d6705d:	3b 48 2c             	cmp    ecx,DWORD PTR [eax+0x2c]
  d67060:	75 3d                	jne    0xd6709f
  d67062:	8b 36                	mov    esi,DWORD PTR [esi]
  d67064:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
  d67067:	3b f7                	cmp    esi,edi
  d67069:	0f 84 6d 08 00 00    	je     0xd678dc
  d6706f:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  d67072:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  d67075:	85 c9                	test   ecx,ecx
  d67077:	74 16                	je     0xd6708f
  d67079:	d9 45 10             	fld    DWORD PTR [ebp+0x10]
  d6707c:	83 ec 08             	sub    esp,0x8
  d6707f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d67083:	d9 45 14             	fld    DWORD PTR [ebp+0x14]
  d67086:	d9 1c 24             	fstp   DWORD PTR [esp]
  d67089:	53                   	push   ebx
  d6708a:	e8 61 f2 ff ff       	call   0xd662f0
  d6708f:	83 c6 14             	add    esi,0x14
  d67092:	3b f7                	cmp    esi,edi
  d67094:	75 dc                	jne    0xd67072
  d67096:	5f                   	pop    edi
  d67097:	5e                   	pop    esi
  d67098:	5b                   	pop    ebx
  d67099:	8b e5                	mov    esp,ebp
  d6709b:	5d                   	pop    ebp
  d6709c:	c2 10 00             	ret    0x10
  d6709f:	8b 54 24 60          	mov    edx,DWORD PTR [esp+0x60]
  d670a3:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  d670a7:	f3 0f 10 0d b4 b5 f9 	movss  xmm1,DWORD PTR ds:0xf9b5b4
  d670ae:	00
  d670af:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
  d670b2:	8b 54 24 68          	mov    edx,DWORD PTR [esp+0x68]
  d670b6:	89 48 1c             	mov    DWORD PTR [eax+0x1c],ecx
  d670b9:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  d670bd:	89 50 20             	mov    DWORD PTR [eax+0x20],edx
  d670c0:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  d670c4:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  d670c7:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  d670cb:	89 50 28             	mov    DWORD PTR [eax+0x28],edx
  d670ce:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  d670d1:	f3 0f 2c 84 24 b0 00 	cvttss2si eax,DWORD PTR [esp+0xb0]
  d670d8:	00 00
  d670da:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  d670e0:	85 c9                	test   ecx,ecx
  d670e2:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  d670e6:	f3 0f 2c 84 24 c0 00 	cvttss2si eax,DWORD PTR [esp+0xc0]
  d670ed:	00 00
  d670ef:	f3 0f 2a d0          	cvtsi2ss xmm2,eax
  d670f3:	f3 0f 2c 84 24 a0 00 	cvttss2si eax,DWORD PTR [esp+0xa0]
  d670fa:	00 00
  d670fc:	f3 0f 58 d1          	addss  xmm2,xmm1
  d67100:	f3 0f 59 15 c4 2c 19 	mulss  xmm2,DWORD PTR ds:0x1192cc4
  d67107:	01
  d67108:	f3 0f 11 54 24 48    	movss  DWORD PTR [esp+0x48],xmm2
  d6710e:	f3 0f 58 c1          	addss  xmm0,xmm1
  d67112:	f3 0f 59 05 c0 2c 19 	mulss  xmm0,DWORD PTR ds:0x1192cc0
  d67119:	01
  d6711a:	f3 0f 2a d0          	cvtsi2ss xmm2,eax
  d6711e:	f3 0f 58 d1          	addss  xmm2,xmm1
  d67122:	f3 0f 59 15 c8 2c 19 	mulss  xmm2,DWORD PTR ds:0x1192cc8
  d67129:	01
  d6712a:	0f 28 8c 24 00 01 00 	movaps xmm1,XMMWORD PTR [esp+0x100]
  d67131:	00
  d67132:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  d67138:	f3 0f 11 54 24 44    	movss  DWORD PTR [esp+0x44],xmm2
  d6713e:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  d67144:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  d67149:	0f 29 4c 24 40       	movaps XMMWORD PTR [esp+0x40],xmm1
  d6714e:	f3 0f 10 4c 24 44    	movss  xmm1,DWORD PTR [esp+0x44]
  d67154:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  d6715a:	74 35                	je     0xd67191
  d6715c:	6a 00                	push   0x0
  d6715e:	6a 00                	push   0x0
  d67160:	6a 01                	push   0x1
  d67162:	6a 01                	push   0x1
  d67164:	6a 00                	push   0x0
  d67166:	0f 29 44 24 54       	movaps XMMWORD PTR [esp+0x54],xmm0
  d6716b:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  d6716f:	83 ec 08             	sub    esp,0x8
  d67172:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d67176:	0f 29 84 24 ac 00 00 	movaps XMMWORD PTR [esp+0xac],xmm0
  d6717d:	00
  d6717e:	d9 84 24 ac 00 00 00 	fld    DWORD PTR [esp+0xac]
  d67185:	d9 1c 24             	fstp   DWORD PTR [esp]
  d67188:	e8 93 9a ef ff       	call   0xc60c20
  d6718d:	d9 5c 24 24          	fstp   DWORD PTR [esp+0x24]
  d67191:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  d67194:	2b 0e                	sub    ecx,DWORD PTR [esi]
  d67196:	b8 67 66 66 66       	mov    eax,0x66666667
  d6719b:	f7 e9                	imul   ecx
  d6719d:	c1 fa 03             	sar    edx,0x3
  d671a0:	8b c2                	mov    eax,edx
  d671a2:	c1 e8 1f             	shr    eax,0x1f
  d671a5:	03 c2                	add    eax,edx
  d671a7:	83 f8 0c             	cmp    eax,0xc
  d671aa:	73 09                	jae    0xd671b5
  d671ac:	6a 0c                	push   0xc
  d671ae:	8b ce                	mov    ecx,esi
  d671b0:	e8 8b f8 ff ff       	call   0xd66a40
  d671b5:	f3 0f 2c 9c 24 c0 00 	cvttss2si ebx,DWORD PTR [esp+0xc0]
  d671bc:	00 00
  d671be:	f3 0f 2c bc 24 a0 00 	cvttss2si edi,DWORD PTR [esp+0xa0]
  d671c5:	00 00
  d671c7:	f3 0f 2c b4 24 b0 00 	cvttss2si esi,DWORD PTR [esp+0xb0]
  d671ce:	00 00
  d671d0:	33 c9                	xor    ecx,ecx
  d671d2:	53                   	push   ebx
  d671d3:	b8 44 b0 08 01       	mov    eax,0x108b044
  d671d8:	57                   	push   edi
  d671d9:	89 8c 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],ecx
  d671e0:	89 8c 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],ecx
  d671e7:	89 8c 24 8c 00 00 00 	mov    DWORD PTR [esp+0x8c],ecx
  d671ee:	89 8c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ecx
  d671f5:	89 8c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ecx
  d671fc:	89 8c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ecx
  d67203:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  d67207:	56                   	push   esi
  d67208:	89 84 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],eax
  d6720f:	89 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],eax
  d67216:	e8 25 e7 ff ff       	call   0xd65940
  d6721b:	85 c0                	test   eax,eax
  d6721d:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  d67221:	74 1b                	je     0xd6723e
  d67223:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  d67227:	51                   	push   ecx
  d67228:	8d 94 24 dc 00 00 00 	lea    edx,[esp+0xdc]
  d6722f:	52                   	push   edx
  d67230:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  d67237:	e8 24 65 ac ff       	call   0x82d760
  d6723c:	eb 1d                	jmp    0xd6725b
  d6723e:	8d 44 24 30          	lea    eax,[esp+0x30]
  d67242:	50                   	push   eax
  d67243:	8d 8c 24 94 00 00 00 	lea    ecx,[esp+0x94]
  d6724a:	89 74 24 34          	mov    DWORD PTR [esp+0x34],esi
  d6724e:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
  d67252:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  d67256:	e8 35 8c ee ff       	call   0xc4fe90
  d6725b:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  d6725f:	3b 44 24 54          	cmp    eax,DWORD PTR [esp+0x54]
  d67263:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  d67267:	0f 8f b4 01 00 00    	jg     0xd67421
  d6726d:	8d 49 00             	lea    ecx,[ecx+0x0]
  d67270:	f3 0f 2a 44 24 18    	cvtsi2ss xmm0,DWORD PTR [esp+0x18]
  d67276:	f3 0f 58 05 f8 98 f9 	addss  xmm0,DWORD PTR ds:0xf998f8
  d6727d:	00
  d6727e:	f3 0f 59 05 c8 2c 19 	mulss  xmm0,DWORD PTR ds:0x1192cc8
  d67285:	01
  d67286:	f3 0f 10 4c 24 24    	movss  xmm1,DWORD PTR [esp+0x24]
  d6728c:	0f 2f c8             	comiss xmm1,xmm0
  d6728f:	0f 87 77 01 00 00    	ja     0xd6740c
  d67295:	8b 5c 24 60          	mov    ebx,DWORD PTR [esp+0x60]
  d67299:	3b 5c 24 50          	cmp    ebx,DWORD PTR [esp+0x50]
  d6729d:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  d672a1:	0f 8f 65 01 00 00    	jg     0xd6740c
  d672a7:	eb 07                	jmp    0xd672b0
  d672a9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  d672b0:	8b 74 24 68          	mov    esi,DWORD PTR [esp+0x68]
  d672b4:	3b 74 24 58          	cmp    esi,DWORD PTR [esp+0x58]
  d672b8:	0f 8f 3d 01 00 00    	jg     0xd673fb
  d672be:	8b ff                	mov    edi,edi
  d672c0:	f3 0f 2c 84 24 b0 00 	cvttss2si eax,DWORD PTR [esp+0xb0]
  d672c7:	00 00
  d672c9:	3b d8                	cmp    ebx,eax
  d672cb:	75 22                	jne    0xd672ef
  d672cd:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d672d1:	f3 0f 2c 84 24 a0 00 	cvttss2si eax,DWORD PTR [esp+0xa0]
  d672d8:	00 00
  d672da:	3b d0                	cmp    edx,eax
  d672dc:	75 15                	jne    0xd672f3
  d672de:	f3 0f 2c 84 24 c0 00 	cvttss2si eax,DWORD PTR [esp+0xc0]
  d672e5:	00 00
  d672e7:	3b f0                	cmp    esi,eax
  d672e9:	0f 84 ff 00 00 00    	je     0xd673ee
  d672ef:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d672f3:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  d672f7:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  d672fa:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  d672fd:	3b c1                	cmp    eax,ecx
  d672ff:	74 1b                	je     0xd6731c
  d67301:	83 38 00             	cmp    DWORD PTR [eax],0x0
  d67304:	74 0f                	je     0xd67315
  d67306:	39 58 04             	cmp    DWORD PTR [eax+0x4],ebx
  d67309:	75 0a                	jne    0xd67315
  d6730b:	39 50 08             	cmp    DWORD PTR [eax+0x8],edx
  d6730e:	75 05                	jne    0xd67315
  d67310:	39 70 0c             	cmp    DWORD PTR [eax+0xc],esi
  d67313:	74 6f                	je     0xd67384
  d67315:	83 c0 14             	add    eax,0x14
  d67318:	3b c1                	cmp    eax,ecx
  d6731a:	75 e5                	jne    0xd67301
  d6731c:	33 ff                	xor    edi,edi
  d6731e:	85 ff                	test   edi,edi
  d67320:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  d67324:	74 76                	je     0xd6739c
  d67326:	8b 8c 24 8c 00 00 00 	mov    ecx,DWORD PTR [esp+0x8c]
  d6732d:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  d67334:	51                   	push   ecx
  d67335:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  d6733c:	8d 54 24 24          	lea    edx,[esp+0x24]
  d67340:	52                   	push   edx
  d67341:	50                   	push   eax
  d67342:	51                   	push   ecx
  d67343:	e8 98 32 ac ff       	call   0x82a5e0
  d67348:	83 c4 10             	add    esp,0x10
  d6734b:	3b 84 24 80 00 00 00 	cmp    eax,DWORD PTR [esp+0x80]
  d67352:	74 08                	je     0xd6735c
  d67354:	3b 38                	cmp    edi,DWORD PTR [eax]
  d67356:	0f 8d 92 00 00 00    	jge    0xd673ee
  d6735c:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  d67363:	3b 8c 24 84 00 00 00 	cmp    ecx,DWORD PTR [esp+0x84]
  d6736a:	74 1c                	je     0xd67388
  d6736c:	3b c1                	cmp    eax,ecx
  d6736e:	75 18                	jne    0xd67388
  d67370:	8b c1                	mov    eax,ecx
  d67372:	83 c1 04             	add    ecx,0x4
  d67375:	85 c0                	test   eax,eax
  d67377:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
  d6737e:	74 6e                	je     0xd673ee
  d67380:	89 38                	mov    DWORD PTR [eax],edi
  d67382:	eb 6a                	jmp    0xd673ee
  d67384:	8b 38                	mov    edi,DWORD PTR [eax]
  d67386:	eb 96                	jmp    0xd6731e
  d67388:	8d 54 24 20          	lea    edx,[esp+0x20]
  d6738c:	52                   	push   edx
  d6738d:	50                   	push   eax
  d6738e:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  d67395:	e8 86 b0 c1 ff       	call   0x982420
  d6739a:	eb 52                	jmp    0xd673ee
  d6739c:	8b bc 24 94 00 00 00 	mov    edi,DWORD PTR [esp+0x94]
  d673a3:	3b bc 24 98 00 00 00 	cmp    edi,DWORD PTR [esp+0x98]
  d673aa:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d673ae:	8b cb                	mov    ecx,ebx
  d673b0:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
  d673b4:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  d673b8:	89 74 24 38          	mov    DWORD PTR [esp+0x38],esi
  d673bc:	73 1e                	jae    0xd673dc
  d673be:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  d673c2:	8b c7                	mov    eax,edi
  d673c4:	83 c7 0c             	add    edi,0xc
  d673c7:	85 c0                	test   eax,eax
  d673c9:	89 bc 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],edi
  d673d0:	74 1c                	je     0xd673ee
  d673d2:	89 08                	mov    DWORD PTR [eax],ecx
  d673d4:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  d673d7:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
  d673da:	eb 12                	jmp    0xd673ee
  d673dc:	8d 44 24 30          	lea    eax,[esp+0x30]
  d673e0:	50                   	push   eax
  d673e1:	57                   	push   edi
  d673e2:	8d 8c 24 98 00 00 00 	lea    ecx,[esp+0x98]
  d673e9:	e8 b2 8c 00 00       	call   0xd700a0
  d673ee:	83 c6 01             	add    esi,0x1
  d673f1:	3b 74 24 58          	cmp    esi,DWORD PTR [esp+0x58]
  d673f5:	0f 8e c5 fe ff ff    	jle    0xd672c0
  d673fb:	83 c3 01             	add    ebx,0x1
  d673fe:	3b 5c 24 50          	cmp    ebx,DWORD PTR [esp+0x50]
  d67402:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  d67406:	0f 8e a4 fe ff ff    	jle    0xd672b0
  d6740c:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  d67410:	83 c0 01             	add    eax,0x1
  d67413:	3b 44 24 54          	cmp    eax,DWORD PTR [esp+0x54]
  d67417:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  d6741b:	0f 8e 4f fe ff ff    	jle    0xd67270
  d67421:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  d67428:	2b 44 24 7c          	sub    eax,DWORD PTR [esp+0x7c]
  d6742c:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  d67433:	00
  d67434:	c1 f8 02             	sar    eax,0x2
  d67437:	83 f8 0c             	cmp    eax,0xc
  d6743a:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  d6743e:	0f 8d 6b 03 00 00    	jge    0xd677af
  d67444:	8b b4 24 90 00 00 00 	mov    esi,DWORD PTR [esp+0x90]
  d6744b:	8b 8c 24 94 00 00 00 	mov    ecx,DWORD PTR [esp+0x94]
  d67452:	2b ce                	sub    ecx,esi
  d67454:	b8 ab aa aa 2a       	mov    eax,0x2aaaaaab
  d67459:	f7 e9                	imul   ecx
  d6745b:	d1 fa                	sar    edx,1
  d6745d:	8b c2                	mov    eax,edx
  d6745f:	c1 e8 1f             	shr    eax,0x1f
  d67462:	03 c2                	add    eax,edx
  d67464:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  d67468:	c7 44 24 18 14 00 00 	mov    DWORD PTR [esp+0x18],0x14
  d6746f:	00
  d67470:	8d 5e 08             	lea    ebx,[esi+0x8]
  d67473:	eb 0f                	jmp    0xd67484
  d67475:	eb 09                	jmp    0xd67480
  d67477:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  d6747e:	8b ff                	mov    edi,edi
  d67480:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  d67484:	39 44 24 1c          	cmp    DWORD PTR [esp+0x1c],eax
  d67488:	0f 8d 21 03 00 00    	jge    0xd677af
  d6748e:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  d67492:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  d67495:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d67499:	8b 7c 11 ec          	mov    edi,DWORD PTR [ecx+edx*1-0x14]
  d6749d:	83 c0 08             	add    eax,0x8
  d674a0:	85 ff                	test   edi,edi
  d674a2:	8d 74 11 ec          	lea    esi,[ecx+edx*1-0x14]
  d674a6:	74 36                	je     0xd674de
  d674a8:	8b 84 24 8c 00 00 00 	mov    eax,DWORD PTR [esp+0x8c]
  d674af:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  d674b6:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
  d674ba:	50                   	push   eax
  d674bb:	56                   	push   esi
  d674bc:	51                   	push   ecx
  d674bd:	52                   	push   edx
  d674be:	e8 1d 31 ac ff       	call   0x82a5e0
  d674c3:	83 c4 10             	add    esp,0x10
  d674c6:	3b 84 24 80 00 00 00 	cmp    eax,DWORD PTR [esp+0x80]
  d674cd:	74 0f                	je     0xd674de
  d674cf:	3b 38                	cmp    edi,DWORD PTR [eax]
  d674d1:	7c 0b                	jl     0xd674de
  d674d3:	8d 48 04             	lea    ecx,[eax+0x4]
  d674d6:	3b c1                	cmp    eax,ecx
  d674d8:	0f 85 c1 02 00 00    	jne    0xd6779f
  d674de:	8b 43 f8             	mov    eax,DWORD PTR [ebx-0x8]
  d674e1:	8b 4b fc             	mov    ecx,DWORD PTR [ebx-0x4]
  d674e4:	8b 13                	mov    edx,DWORD PTR [ebx]
  d674e6:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  d674ea:	8b 7f 30             	mov    edi,DWORD PTR [edi+0x30]
  d674ed:	f3 0f 10 0d b4 b5 f9 	movss  xmm1,DWORD PTR ds:0xf9b5b4
  d674f4:	00
  d674f5:	83 44 24 1c 01       	add    DWORD PTR [esp+0x1c],0x1
  d674fa:	89 3e                	mov    DWORD PTR [esi],edi
  d674fc:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  d67500:	83 47 30 01          	add    DWORD PTR [edi+0x30],0x1
  d67504:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  d67508:	f3 0f 58 c1          	addss  xmm0,xmm1
  d6750c:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  d6750f:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  d67512:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  d67515:	f3 0f 59 05 c0 2c 19 	mulss  xmm0,DWORD PTR ds:0x1192cc0
  d6751c:	01
  d6751d:	f3 0f 2a d2          	cvtsi2ss xmm2,edx
  d67521:	f3 0f 58 d1          	addss  xmm2,xmm1
  d67525:	f3 0f 59 15 c4 2c 19 	mulss  xmm2,DWORD PTR ds:0x1192cc4
  d6752c:	01
  d6752d:	f3 0f 2a c9          	cvtsi2ss xmm1,ecx
  d67531:	f3 0f 59 0d c8 2c 19 	mulss  xmm1,DWORD PTR ds:0x1192cc8
  d67538:	01
  d67539:	83 c3 0c             	add    ebx,0xc
  d6753c:	83 7e 10 00          	cmp    DWORD PTR [esi+0x10],0x0
  d67540:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  d67546:	f3 0f 11 54 24 48    	movss  DWORD PTR [esp+0x48],xmm2
  d6754c:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  d67552:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  d67558:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  d6755d:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  d67561:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  d67566:	0f 85 94 00 00 00    	jne    0xd67600
  d6756c:	6a 00                	push   0x0
  d6756e:	6a 00                	push   0x0
  d67570:	6a 00                	push   0x0
  d67572:	6a 00                	push   0x0
  d67574:	68 08 b0 08 01       	push   0x108b008
  d67579:	6a 50                	push   0x50
  d6757b:	e8 80 cf 77 ff       	call   0x4e4500
  d67580:	33 d2                	xor    edx,edx
  d67582:	83 c4 18             	add    esp,0x18
  d67585:	3b c2                	cmp    eax,edx
  d67587:	74 29                	je     0xd675b2
  d67589:	0f 57 c0             	xorps  xmm0,xmm0
  d6758c:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  d6758f:	c7 00 bc af 08 01    	mov    DWORD PTR [eax],0x108afbc
  d67595:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  d67598:	89 50 0c             	mov    DWORD PTR [eax+0xc],edx
  d6759b:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
  d6759e:	c7 40 14 8c af 08 01 	mov    DWORD PTR [eax+0x14],0x108af8c
  d675a5:	f3 0f 11 40 18       	movss  DWORD PTR [eax+0x18],xmm0
  d675aa:	89 50 40             	mov    DWORD PTR [eax+0x40],edx
  d675ad:	88 50 44             	mov    BYTE PTR [eax+0x44],dl
  d675b0:	eb 02                	jmp    0xd675b4
  d675b2:	33 c0                	xor    eax,eax
  d675b4:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  d675b7:	3b c1                	cmp    eax,ecx
  d675b9:	74 2d                	je     0xd675e8
  d675bb:	3b c2                	cmp    eax,edx
  d675bd:	74 04                	je     0xd675c3
  d675bf:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  d675c3:	3b ca                	cmp    ecx,edx
  d675c5:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  d675c8:	74 1e                	je     0xd675e8
  d675ca:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  d675cd:	83 c0 ff             	add    eax,0xffffffff
  d675d0:	3b c2                	cmp    eax,edx
  d675d2:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  d675d5:	75 11                	jne    0xd675e8
  d675d7:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  d675de:	8b 01                	mov    eax,DWORD PTR [ecx]
  d675e0:	8b 10                	mov    edx,DWORD PTR [eax]
  d675e2:	6a 01                	push   0x1
  d675e4:	ff d2                	call   edx
  d675e6:	33 d2                	xor    edx,edx
  d675e8:	8b 06                	mov    eax,DWORD PTR [esi]
  d675ea:	8b 4f 34             	mov    ecx,DWORD PTR [edi+0x34]
  d675ed:	50                   	push   eax
  d675ee:	52                   	push   edx
  d675ef:	6a 01                	push   0x1
  d675f1:	51                   	push   ecx
  d675f2:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  d675f5:	57                   	push   edi
  d675f6:	e8 e5 ee ff ff       	call   0xd664e0
  d675fb:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [esp+0x60]
  d67600:	8b 7e 10             	mov    edi,DWORD PTR [esi+0x10]
  d67603:	0f 28 57 30          	movaps xmm2,XMMWORD PTR [edi+0x30]
  d67607:	0f 28 c8             	movaps xmm1,xmm0
  d6760a:	0f c2 ca 00          	cmpeqps xmm1,xmm2
  d6760e:	0f 50 d1             	movmskps edx,xmm1
  d67611:	83 e2 07             	and    edx,0x7
  d67614:	80 fa 07             	cmp    dl,0x7
  d67617:	0f 84 60 01 00 00    	je     0xd6777d
  d6761d:	0f 29 47 30          	movaps XMMWORD PTR [edi+0x30],xmm0
  d67621:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  d67624:	2b 47 08             	sub    eax,DWORD PTR [edi+0x8]
  d67627:	c1 f8 02             	sar    eax,0x2
  d6762a:	83 f8 01             	cmp    eax,0x1
  d6762d:	76 0c                	jbe    0xd6763b
  d6762f:	8b cf                	mov    ecx,edi
  d67631:	e8 9a e4 ff ff       	call   0xd65ad0
  d67636:	e9 42 01 00 00       	jmp    0xd6777d
  d6763b:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  d6763e:	2b 4f 08             	sub    ecx,DWORD PTR [edi+0x8]
  d67641:	83 e1 fc             	and    ecx,0xfffffffc
  d67644:	83 f9 04             	cmp    ecx,0x4
  d67647:	0f 85 30 01 00 00    	jne    0xd6777d
  d6764d:	8b 57 08             	mov    edx,DWORD PTR [edi+0x8]
  d67650:	8b 1a                	mov    ebx,DWORD PTR [edx]
  d67652:	85 db                	test   ebx,ebx
  d67654:	0f 84 1f 01 00 00    	je     0xd67779
  d6765a:	8b 03                	mov    eax,DWORD PTR [ebx]
  d6765c:	8b 10                	mov    edx,DWORD PTR [eax]
  d6765e:	8b cb                	mov    ecx,ebx
  d67660:	ff d2                	call   edx
  d67662:	0f 57 c0             	xorps  xmm0,xmm0
  d67665:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  d6766c:	00
  d6766d:	8b 03                	mov    eax,DWORD PTR [ebx]
  d6766f:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  d67672:	f3 0f 11 84 24 ac 00 	movss  DWORD PTR [esp+0xac],xmm0
  d67679:	00 00
  d6767b:	f3 0f 11 84 24 a8 00 	movss  DWORD PTR [esp+0xa8],xmm0
  d67682:	00 00
  d67684:	f3 0f 11 84 24 a4 00 	movss  DWORD PTR [esp+0xa4],xmm0
  d6768b:	00 00
  d6768d:	f3 0f 11 84 24 bc 00 	movss  DWORD PTR [esp+0xbc],xmm0
  d67694:	00 00
  d67696:	f3 0f 11 84 24 b8 00 	movss  DWORD PTR [esp+0xb8],xmm0
  d6769d:	00 00
  d6769f:	f3 0f 11 84 24 b0 00 	movss  DWORD PTR [esp+0xb0],xmm0
  d676a6:	00 00
  d676a8:	f3 0f 11 84 24 cc 00 	movss  DWORD PTR [esp+0xcc],xmm0
  d676af:	00 00
  d676b1:	f3 0f 11 84 24 c4 00 	movss  DWORD PTR [esp+0xc4],xmm0
  d676b8:	00 00
  d676ba:	f3 0f 11 84 24 c0 00 	movss  DWORD PTR [esp+0xc0],xmm0
  d676c1:	00 00
  d676c3:	f3 0f 11 8c 24 c8 00 	movss  DWORD PTR [esp+0xc8],xmm1
  d676ca:	00 00
  d676cc:	0f 28 84 24 c0 00 00 	movaps xmm0,XMMWORD PTR [esp+0xc0]
  d676d3:	00
  d676d4:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [esp+0x160],xmm0
  d676db:	00
  d676dc:	0f 28 47 30          	movaps xmm0,XMMWORD PTR [edi+0x30]
  d676e0:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  d676e5:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm0
  d676ec:	00
  d676ed:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  d676f4:	00
  d676f5:	f3 0f 10 44 24 58    	movss  xmm0,DWORD PTR [esp+0x58]
  d676fb:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  d67701:	f3 0f 10 84 24 f4 00 	movss  xmm0,DWORD PTR [esp+0xf4]
  d67708:	00 00
  d6770a:	f3 0f 11 8c 24 a0 00 	movss  DWORD PTR [esp+0xa0],xmm1
  d67711:	00 00
  d67713:	0f 28 94 24 a0 00 00 	movaps xmm2,XMMWORD PTR [esp+0xa0]
  d6771a:	00
  d6771b:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  d67721:	f3 0f 10 84 24 10 01 	movss  xmm0,DWORD PTR [esp+0x110]
  d67728:	00 00
  d6772a:	8d 8c 24 40 01 00 00 	lea    ecx,[esp+0x140]
  d67731:	0f 29 94 24 40 01 00 	movaps XMMWORD PTR [esp+0x140],xmm2
  d67738:	00
  d67739:	f3 0f 11 8c 24 b4 00 	movss  DWORD PTR [esp+0xb4],xmm1
  d67740:	00 00
  d67742:	0f 28 94 24 b0 00 00 	movaps xmm2,XMMWORD PTR [esp+0xb0]
  d67749:	00
  d6774a:	f3 0f 11 4c 24 3c    	movss  DWORD PTR [esp+0x3c],xmm1
  d67750:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  d67756:	0f 28 44 24 30       	movaps xmm0,XMMWORD PTR [esp+0x30]
  d6775b:	51                   	push   ecx
  d6775c:	8b cb                	mov    ecx,ebx
  d6775e:	0f 29 94 24 54 01 00 	movaps XMMWORD PTR [esp+0x154],xmm2
  d67765:	00
  d67766:	0f 29 84 24 74 01 00 	movaps XMMWORD PTR [esp+0x174],xmm0
  d6776d:	00
  d6776e:	ff d2                	call   edx
  d67770:	8b 03                	mov    eax,DWORD PTR [ebx]
  d67772:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  d67775:	8b cb                	mov    ecx,ebx
  d67777:	ff d2                	call   edx
  d67779:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  d6777d:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  d67780:	e8 5b e2 ff ff       	call   0xd659e0
  d67785:	56                   	push   esi
  d67786:	8d 84 24 dc 00 00 00 	lea    eax,[esp+0xdc]
  d6778d:	50                   	push   eax
  d6778e:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  d67795:	e8 c6 5f ac ff       	call   0x82d760
  d6779a:	83 44 24 24 01       	add    DWORD PTR [esp+0x24],0x1
  d6779f:	83 44 24 18 14       	add    DWORD PTR [esp+0x18],0x14
  d677a4:	83 7c 24 24 0c       	cmp    DWORD PTR [esp+0x24],0xc
  d677a9:	0f 8c d1 fc ff ff    	jl     0xd67480
  d677af:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  d677b3:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
  d677b6:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  d677b9:	3b fb                	cmp    edi,ebx
  d677bb:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  d677bf:	74 71                	je     0xd67832
  d677c1:	8b 37                	mov    esi,DWORD PTR [edi]
  d677c3:	85 f6                	test   esi,esi
  d677c5:	74 60                	je     0xd67827
  d677c7:	8b 54 24 7c          	mov    edx,DWORD PTR [esp+0x7c]
  d677cb:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  d677d2:	2b ca                	sub    ecx,edx
  d677d4:	c1 f9 02             	sar    ecx,0x2
  d677d7:	85 c9                	test   ecx,ecx
  d677d9:	7e 25                	jle    0xd67800
  d677db:	eb 03                	jmp    0xd677e0
  d677dd:	8d 49 00             	lea    ecx,[ecx+0x0]
  d677e0:	8b c1                	mov    eax,ecx
  d677e2:	d1 f8                	sar    eax,1
  d677e4:	39 34 82             	cmp    DWORD PTR [edx+eax*4],esi
  d677e7:	7d 0d                	jge    0xd677f6
  d677e9:	83 cb ff             	or     ebx,0xffffffff
  d677ec:	2b d8                	sub    ebx,eax
  d677ee:	8d 54 82 04          	lea    edx,[edx+eax*4+0x4]
  d677f2:	03 cb                	add    ecx,ebx
  d677f4:	eb 02                	jmp    0xd677f8
  d677f6:	8b c8                	mov    ecx,eax
  d677f8:	85 c9                	test   ecx,ecx
  d677fa:	7f e4                	jg     0xd677e0
  d677fc:	8b 5c 24 2c          	mov    ebx,DWORD PTR [esp+0x2c]
  d67800:	3b 94 24 80 00 00 00 	cmp    edx,DWORD PTR [esp+0x80]
  d67807:	74 0b                	je     0xd67814
  d67809:	3b 32                	cmp    esi,DWORD PTR [edx]
  d6780b:	7c 07                	jl     0xd67814
  d6780d:	8d 42 04             	lea    eax,[edx+0x4]
  d67810:	3b d0                	cmp    edx,eax
  d67812:	75 13                	jne    0xd67827
  d67814:	8b 4f 10             	mov    ecx,DWORD PTR [edi+0x10]
  d67817:	e8 74 e1 ff ff       	call   0xd65990
  d6781c:	33 c0                	xor    eax,eax
  d6781e:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  d67821:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
  d67824:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
  d67827:	83 c7 14             	add    edi,0x14
  d6782a:	3b fb                	cmp    edi,ebx
  d6782c:	75 93                	jne    0xd677c1
  d6782e:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  d67832:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  d67835:	8b 78 0c             	mov    edi,DWORD PTR [eax+0xc]
  d67838:	3b f7                	cmp    esi,edi
  d6783a:	74 34                	je     0xd67870
  d6783c:	8d 64 24 00          	lea    esp,[esp+0x0]
  d67840:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  d67843:	85 c9                	test   ecx,ecx
  d67845:	74 22                	je     0xd67869
  d67847:	f3 0f 10 41 18       	movss  xmm0,DWORD PTR [ecx+0x18]
  d6784c:	f3 0f 58 45 14       	addss  xmm0,DWORD PTR [ebp+0x14]
  d67851:	f3 0f 11 41 18       	movss  DWORD PTR [ecx+0x18],xmm0
  d67856:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  d67859:	2b 51 08             	sub    edx,DWORD PTR [ecx+0x8]
  d6785c:	c1 fa 02             	sar    edx,0x2
  d6785f:	83 fa 01             	cmp    edx,0x1
  d67862:	76 05                	jbe    0xd67869
  d67864:	e8 67 e2 ff ff       	call   0xd65ad0
  d67869:	83 c6 14             	add    esi,0x14
  d6786c:	3b f7                	cmp    esi,edi
  d6786e:	75 d0                	jne    0xd67840
  d67870:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
  d67877:	85 c0                	test   eax,eax
  d67879:	74 09                	je     0xd67884
  d6787b:	50                   	push   eax
  d6787c:	e8 5f cc 77 ff       	call   0x4e44e0
  d67881:	83 c4 04             	add    esp,0x4
  d67884:	8b 44 24 7c          	mov    eax,DWORD PTR [esp+0x7c]
  d67888:	85 c0                	test   eax,eax
  d6788a:	74 50                	je     0xd678dc
  d6788c:	50                   	push   eax
  d6788d:	e8 4e cc 77 ff       	call   0x4e44e0
  d67892:	83 c4 04             	add    esp,0x4
  d67895:	5f                   	pop    edi
  d67896:	5e                   	pop    esi
  d67897:	5b                   	pop    ebx
  d67898:	8b e5                	mov    esp,ebp
  d6789a:	5d                   	pop    ebp
  d6789b:	c2 10 00             	ret    0x10
  d6789e:	8b cf                	mov    ecx,edi
  d678a0:	e8 0b f1 ff ff       	call   0xd669b0
  d678a5:	5f                   	pop    edi
  d678a6:	5e                   	pop    esi
  d678a7:	5b                   	pop    ebx
  d678a8:	8b e5                	mov    esp,ebp
  d678aa:	5d                   	pop    ebp
  d678ab:	c2 10 00             	ret    0x10
  d678ae:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  d678b1:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  d678b4:	8d 77 08             	lea    esi,[edi+0x8]
  d678b7:	50                   	push   eax
  d678b8:	51                   	push   ecx
  d678b9:	8b ce                	mov    ecx,esi
  d678bb:	e8 70 eb ff ff       	call   0xd66430
  d678c0:	8b 16                	mov    edx,DWORD PTR [esi]
  d678c2:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  d678c5:	c7 47 34 00 00 00 00 	mov    DWORD PTR [edi+0x34],0x0
  d678cc:	e8 9f 08 98 ff       	call   0x6e8170
  d678d1:	85 c0                	test   eax,eax
  d678d3:	74 07                	je     0xd678dc
  d678d5:	c6 80 75 02 00 00 00 	mov    BYTE PTR [eax+0x275],0x0
  d678dc:	5f                   	pop    edi
  d678dd:	5e                   	pop    esi
  d678de:	5b                   	pop    ebx
  d678df:	8b e5                	mov    esp,ebp
  d678e1:	5d                   	pop    ebp
  d678e2:	c2 10 00             	ret    0x10
