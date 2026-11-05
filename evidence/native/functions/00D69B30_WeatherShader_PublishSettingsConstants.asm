# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d69b30 <.text+0x968b30>:
  d69b30:	55                   	push   ebp
  d69b31:	8b ec                	mov    ebp,esp
  d69b33:	83 e4 f0             	and    esp,0xfffffff0
  d69b36:	8a 55 0c             	mov    dl,BYTE PTR [ebp+0xc]
  d69b39:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  d69b3c:	f3 0f 10 25 f0 98 f9 	movss  xmm4,DWORD PTR ds:0xf998f0
  d69b43:	00 
  d69b44:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  d69b4b:	00 
  d69b4c:	83 ec 18             	sub    esp,0x18
  d69b4f:	84 d2                	test   dl,dl
  d69b51:	56                   	push   esi
  d69b52:	57                   	push   edi
  d69b53:	74 08                	je     0xd69b5d
  d69b55:	0f 57 c9             	xorps  xmm1,xmm1
  d69b58:	0f 28 d9             	movaps xmm3,xmm1
  d69b5b:	eb 7c                	jmp    0xd69bd9
  d69b5d:	f3 0f 10 50 20       	movss  xmm2,DWORD PTR [eax+0x20]
  d69b62:	0f 28 cc             	movaps xmm1,xmm4
  d69b65:	f3 0f 5c ca          	subss  xmm1,xmm2
  d69b69:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  d69b6f:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  d69b73:	0f 57 c9             	xorps  xmm1,xmm1
  d69b76:	c1 f9 1f             	sar    ecx,0x1f
  d69b79:	8b f1                	mov    esi,ecx
  d69b7b:	f7 d6                	not    esi
  d69b7d:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d69b83:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  d69b87:	23 f9                	and    edi,ecx
  d69b89:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  d69b8f:	23 74 24 14          	and    esi,DWORD PTR [esp+0x14]
  d69b93:	0f 28 d8             	movaps xmm3,xmm0
  d69b96:	0b f7                	or     esi,edi
  d69b98:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69b9c:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d69ba2:	f3 0f 5c da          	subss  xmm3,xmm2
  d69ba6:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69bac:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69bb0:	c1 f9 1f             	sar    ecx,0x1f
  d69bb3:	8b f1                	mov    esi,ecx
  d69bb5:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d69bbb:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69bbf:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d69bc5:	f7 d6                	not    esi
  d69bc7:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69bcb:	23 f9                	and    edi,ecx
  d69bcd:	0b f7                	or     esi,edi
  d69bcf:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69bd3:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d69bd9:	84 d2                	test   dl,dl
  d69bdb:	0f 28 2d 40 f1 1e 01 	movaps xmm5,XMMWORD PTR ds:0x11ef140
  d69be2:	0f 28 d5             	movaps xmm2,xmm5
  d69be5:	f3 0f 10 db          	movss  xmm3,xmm3
  d69be9:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d69bed:	0f c6 d3 05          	shufps xmm2,xmm3,0x5
  d69bf1:	0f c6 d5 e2          	shufps xmm2,xmm5,0xe2
  d69bf5:	0f 28 ea             	movaps xmm5,xmm2
  d69bf8:	0f 29 2d 40 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef140,xmm5
  d69bff:	74 05                	je     0xd69c06
  d69c01:	0f 28 d9             	movaps xmm3,xmm1
  d69c04:	eb 79                	jmp    0xd69c7f
  d69c06:	f3 0f 10 50 08       	movss  xmm2,DWORD PTR [eax+0x8]
  d69c0b:	0f 28 dc             	movaps xmm3,xmm4
  d69c0e:	f3 0f 5c da          	subss  xmm3,xmm2
  d69c12:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69c18:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69c1c:	c1 f9 1f             	sar    ecx,0x1f
  d69c1f:	8b f1                	mov    esi,ecx
  d69c21:	f7 d6                	not    esi
  d69c23:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  d69c29:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69c2d:	23 f9                	and    edi,ecx
  d69c2f:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d69c35:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69c39:	0f 28 d8             	movaps xmm3,xmm0
  d69c3c:	0b f7                	or     esi,edi
  d69c3e:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69c42:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d69c48:	f3 0f 5c da          	subss  xmm3,xmm2
  d69c4c:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69c52:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69c56:	c1 f9 1f             	sar    ecx,0x1f
  d69c59:	8b f1                	mov    esi,ecx
  d69c5b:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d69c61:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69c65:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d69c6b:	f7 d6                	not    esi
  d69c6d:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69c71:	23 f9                	and    edi,ecx
  d69c73:	0b f7                	or     esi,edi
  d69c75:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69c79:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d69c7f:	84 d2                	test   dl,dl
  d69c81:	f3 0f 10 db          	movss  xmm3,xmm3
  d69c85:	0f 28 d5             	movaps xmm2,xmm5
  d69c88:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d69c8c:	0f c6 d3 00          	shufps xmm2,xmm3,0x0
  d69c90:	0f c6 d5 e8          	shufps xmm2,xmm5,0xe8
  d69c94:	0f 29 15 40 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef140,xmm2
  d69c9b:	74 05                	je     0xd69ca2
  d69c9d:	0f 28 d9             	movaps xmm3,xmm1
  d69ca0:	eb 79                	jmp    0xd69d1b
  d69ca2:	f3 0f 10 58 18       	movss  xmm3,DWORD PTR [eax+0x18]
  d69ca7:	0f 28 ec             	movaps xmm5,xmm4
  d69caa:	f3 0f 5c eb          	subss  xmm5,xmm3
  d69cae:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  d69cb4:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69cb8:	c1 f9 1f             	sar    ecx,0x1f
  d69cbb:	f3 0f 11 5c 24 14    	movss  DWORD PTR [esp+0x14],xmm3
  d69cc1:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69cc5:	8b f1                	mov    esi,ecx
  d69cc7:	f7 d6                	not    esi
  d69cc9:	23 f9                	and    edi,ecx
  d69ccb:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d69cd1:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69cd5:	0f 28 e8             	movaps xmm5,xmm0
  d69cd8:	0b f7                	or     esi,edi
  d69cda:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69cde:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d69ce4:	f3 0f 5c eb          	subss  xmm5,xmm3
  d69ce8:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  d69cee:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69cf2:	c1 f9 1f             	sar    ecx,0x1f
  d69cf5:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69cfb:	8b f1                	mov    esi,ecx
  d69cfd:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d69d03:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69d07:	f7 d6                	not    esi
  d69d09:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69d0d:	23 f9                	and    edi,ecx
  d69d0f:	0b f7                	or     esi,edi
  d69d11:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69d15:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d69d1b:	84 d2                	test   dl,dl
  d69d1d:	0f 28 ea             	movaps xmm5,xmm2
  d69d20:	f3 0f 10 db          	movss  xmm3,xmm3
  d69d24:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d69d28:	0f c6 eb 0f          	shufps xmm5,xmm3,0xf
  d69d2c:	0f c6 d5 24          	shufps xmm2,xmm5,0x24
  d69d30:	0f 29 15 40 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef140,xmm2
  d69d37:	74 05                	je     0xd69d3e
  d69d39:	0f 28 d9             	movaps xmm3,xmm1
  d69d3c:	eb 79                	jmp    0xd69db7
  d69d3e:	f3 0f 10 58 1c       	movss  xmm3,DWORD PTR [eax+0x1c]
  d69d43:	0f 28 ec             	movaps xmm5,xmm4
  d69d46:	f3 0f 5c eb          	subss  xmm5,xmm3
  d69d4a:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  d69d50:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69d54:	c1 f9 1f             	sar    ecx,0x1f
  d69d57:	f3 0f 11 5c 24 14    	movss  DWORD PTR [esp+0x14],xmm3
  d69d5d:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69d61:	8b f1                	mov    esi,ecx
  d69d63:	f7 d6                	not    esi
  d69d65:	23 f9                	and    edi,ecx
  d69d67:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d69d6d:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69d71:	0f 28 e8             	movaps xmm5,xmm0
  d69d74:	0b f7                	or     esi,edi
  d69d76:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69d7a:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d69d80:	f3 0f 5c eb          	subss  xmm5,xmm3
  d69d84:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  d69d8a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69d8e:	c1 f9 1f             	sar    ecx,0x1f
  d69d91:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69d97:	8b f1                	mov    esi,ecx
  d69d99:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d69d9f:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69da3:	f7 d6                	not    esi
  d69da5:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69da9:	23 f9                	and    edi,ecx
  d69dab:	0b f7                	or     esi,edi
  d69dad:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69db1:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d69db7:	f3 0f 10 db          	movss  xmm3,xmm3
  d69dbb:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d69dbf:	0f 28 ea             	movaps xmm5,xmm2
  d69dc2:	0f c6 eb 0a          	shufps xmm5,xmm3,0xa
  d69dc6:	0f c6 d5 84          	shufps xmm2,xmm5,0x84
  d69dca:	0f 29 15 40 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef140,xmm2
  d69dd1:	f3 0f 10 50 28       	movss  xmm2,DWORD PTR [eax+0x28]
  d69dd6:	0f 28 dc             	movaps xmm3,xmm4
  d69dd9:	f3 0f 5c da          	subss  xmm3,xmm2
  d69ddd:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69de3:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69de7:	c1 f9 1f             	sar    ecx,0x1f
  d69dea:	0f 28 2d 50 f1 1e 01 	movaps xmm5,XMMWORD PTR ds:0x11ef150
  d69df1:	8b f1                	mov    esi,ecx
  d69df3:	f7 d6                	not    esi
  d69df5:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  d69dfb:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69dff:	23 f9                	and    edi,ecx
  d69e01:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d69e07:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69e0b:	0f 28 d8             	movaps xmm3,xmm0
  d69e0e:	0b f7                	or     esi,edi
  d69e10:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69e14:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d69e1a:	f3 0f 5c da          	subss  xmm3,xmm2
  d69e1e:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69e24:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69e28:	c1 f9 1f             	sar    ecx,0x1f
  d69e2b:	8b f1                	mov    esi,ecx
  d69e2d:	f7 d6                	not    esi
  d69e2f:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d69e35:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69e39:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d69e3f:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69e43:	23 f9                	and    edi,ecx
  d69e45:	0b f7                	or     esi,edi
  d69e47:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69e4b:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d69e51:	0f 28 d5             	movaps xmm2,xmm5
  d69e54:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d69e58:	0f c6 d3 05          	shufps xmm2,xmm3,0x5
  d69e5c:	0f c6 d5 e2          	shufps xmm2,xmm5,0xe2
  d69e60:	0f 29 15 50 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef150,xmm2
  d69e67:	f3 0f 10 58 30       	movss  xmm3,DWORD PTR [eax+0x30]
  d69e6c:	0f 28 ec             	movaps xmm5,xmm4
  d69e6f:	f3 0f 5c eb          	subss  xmm5,xmm3
  d69e73:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  d69e79:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69e7d:	c1 f9 1f             	sar    ecx,0x1f
  d69e80:	f3 0f 11 5c 24 14    	movss  DWORD PTR [esp+0x14],xmm3
  d69e86:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69e8a:	8b f1                	mov    esi,ecx
  d69e8c:	f7 d6                	not    esi
  d69e8e:	23 f9                	and    edi,ecx
  d69e90:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d69e96:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69e9a:	0f 28 e8             	movaps xmm5,xmm0
  d69e9d:	0b f7                	or     esi,edi
  d69e9f:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69ea3:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d69ea9:	f3 0f 5c eb          	subss  xmm5,xmm3
  d69ead:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  d69eb3:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69eb7:	c1 f9 1f             	sar    ecx,0x1f
  d69eba:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69ec0:	8b f1                	mov    esi,ecx
  d69ec2:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d69ec8:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69ecc:	f7 d6                	not    esi
  d69ece:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69ed2:	23 f9                	and    edi,ecx
  d69ed4:	0b f7                	or     esi,edi
  d69ed6:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69eda:	f3 0f 10 6c 24 18    	movss  xmm5,DWORD PTR [esp+0x18]
  d69ee0:	0f 28 da             	movaps xmm3,xmm2
  d69ee3:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  d69ee7:	0f c6 dd 00          	shufps xmm3,xmm5,0x0
  d69eeb:	0f c6 da e8          	shufps xmm3,xmm2,0xe8
  d69eef:	0f 29 1d 50 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef150,xmm3
  d69ef6:	f3 0f 10 50 48       	movss  xmm2,DWORD PTR [eax+0x48]
  d69efb:	0f 28 ec             	movaps xmm5,xmm4
  d69efe:	f3 0f 5c ea          	subss  xmm5,xmm2
  d69f02:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  d69f08:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69f0c:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  d69f12:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69f16:	c1 f9 1f             	sar    ecx,0x1f
  d69f19:	23 f9                	and    edi,ecx
  d69f1b:	8b f1                	mov    esi,ecx
  d69f1d:	f7 d6                	not    esi
  d69f1f:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d69f25:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69f29:	0f 28 e8             	movaps xmm5,xmm0
  d69f2c:	0b f7                	or     esi,edi
  d69f2e:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69f32:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d69f38:	f3 0f 5c ea          	subss  xmm5,xmm2
  d69f3c:	f3 0f 11 6c 24 18    	movss  DWORD PTR [esp+0x18],xmm5
  d69f42:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69f46:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d69f4c:	c1 f9 1f             	sar    ecx,0x1f
  d69f4f:	8b f1                	mov    esi,ecx
  d69f51:	f7 d6                	not    esi
  d69f53:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69f57:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d69f5d:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69f61:	23 f9                	and    edi,ecx
  d69f63:	0b f7                	or     esi,edi
  d69f65:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69f69:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d69f6f:	0f 28 eb             	movaps xmm5,xmm3
  d69f72:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d69f76:	0f c6 ea 0f          	shufps xmm5,xmm2,0xf
  d69f7a:	f3 0f 10 15 84 2d 19 	movss  xmm2,DWORD PTR ds:0x1192d84
  d69f81:	01 
  d69f82:	0f c6 dd 24          	shufps xmm3,xmm5,0x24
  d69f86:	0f 28 eb             	movaps xmm5,xmm3
  d69f89:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d69f8d:	0f c6 ea 0a          	shufps xmm5,xmm2,0xa
  d69f91:	0f c6 dd 84          	shufps xmm3,xmm5,0x84
  d69f95:	0f 29 1d 50 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef150,xmm3
  d69f9c:	f3 0f 10 50 4c       	movss  xmm2,DWORD PTR [eax+0x4c]
  d69fa1:	0f 28 dc             	movaps xmm3,xmm4
  d69fa4:	f3 0f 5c da          	subss  xmm3,xmm2
  d69fa8:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69fae:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69fb2:	c1 f9 1f             	sar    ecx,0x1f
  d69fb5:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  d69fbb:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d69fbf:	0f 28 2d 60 f1 1e 01 	movaps xmm5,XMMWORD PTR ds:0x11ef160
  d69fc6:	8b f1                	mov    esi,ecx
  d69fc8:	f7 d6                	not    esi
  d69fca:	23 f9                	and    edi,ecx
  d69fcc:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d69fd2:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d69fd6:	0f 28 d8             	movaps xmm3,xmm0
  d69fd9:	0b f7                	or     esi,edi
  d69fdb:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d69fdf:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d69fe5:	f3 0f 5c da          	subss  xmm3,xmm2
  d69fe9:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d69fef:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d69ff3:	c1 f9 1f             	sar    ecx,0x1f
  d69ff6:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d69ffc:	8b f1                	mov    esi,ecx
  d69ffe:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d6a004:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d6a008:	f7 d6                	not    esi
  d6a00a:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d6a00e:	23 f9                	and    edi,ecx
  d6a010:	0b f7                	or     esi,edi
  d6a012:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d6a016:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d6a01c:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d6a020:	0f 28 d5             	movaps xmm2,xmm5
  d6a023:	0f c6 d3 05          	shufps xmm2,xmm3,0x5
  d6a027:	0f c6 d5 e2          	shufps xmm2,xmm5,0xe2
  d6a02b:	0f 29 15 60 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef160,xmm2
  d6a032:	f3 0f 10 50 08       	movss  xmm2,DWORD PTR [eax+0x8]
  d6a037:	f3 0f 5e 15 8c 2d 19 	divss  xmm2,DWORD PTR ds:0x1192d8c
  d6a03e:	01 
  d6a03f:	0f 28 dc             	movaps xmm3,xmm4
  d6a042:	f3 0f 5c da          	subss  xmm3,xmm2
  d6a046:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d6a04c:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d6a050:	c1 f9 1f             	sar    ecx,0x1f
  d6a053:	8b f1                	mov    esi,ecx
  d6a055:	f7 d6                	not    esi
  d6a057:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  d6a05d:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d6a061:	23 f9                	and    edi,ecx
  d6a063:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d6a069:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d6a06d:	0f 28 d8             	movaps xmm3,xmm0
  d6a070:	0b f7                	or     esi,edi
  d6a072:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d6a076:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d6a07c:	f3 0f 5c da          	subss  xmm3,xmm2
  d6a080:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d6a086:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d6a08a:	c1 f9 1f             	sar    ecx,0x1f
  d6a08d:	8b f1                	mov    esi,ecx
  d6a08f:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d6a095:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d6a099:	f7 d6                	not    esi
  d6a09b:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d6a0a1:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d6a0a5:	23 f9                	and    edi,ecx
  d6a0a7:	0b f7                	or     esi,edi
  d6a0a9:	84 d2                	test   dl,dl
  d6a0ab:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  d6a0af:	74 05                	je     0xd6a0b6
  d6a0b1:	0f 28 d9             	movaps xmm3,xmm1
  d6a0b4:	eb 79                	jmp    0xd6a12f
  d6a0b6:	f3 0f 10 50 18       	movss  xmm2,DWORD PTR [eax+0x18]
  d6a0bb:	0f 28 dc             	movaps xmm3,xmm4
  d6a0be:	f3 0f 5c da          	subss  xmm3,xmm2
  d6a0c2:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d6a0c8:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d6a0cc:	c1 f9 1f             	sar    ecx,0x1f
  d6a0cf:	8b f1                	mov    esi,ecx
  d6a0d1:	f7 d6                	not    esi
  d6a0d3:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  d6a0d9:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d6a0dd:	23 f9                	and    edi,ecx
  d6a0df:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  d6a0e5:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d6a0e9:	0f 28 d8             	movaps xmm3,xmm0
  d6a0ec:	0b f7                	or     esi,edi
  d6a0ee:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d6a0f2:	f3 0f 10 54 24 18    	movss  xmm2,DWORD PTR [esp+0x18]
  d6a0f8:	f3 0f 5c da          	subss  xmm3,xmm2
  d6a0fc:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d6a102:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  d6a106:	c1 f9 1f             	sar    ecx,0x1f
  d6a109:	8b f1                	mov    esi,ecx
  d6a10b:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  d6a111:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  d6a115:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d6a11b:	f7 d6                	not    esi
  d6a11d:	23 74 24 18          	and    esi,DWORD PTR [esp+0x18]
  d6a121:	23 f9                	and    edi,ecx
  d6a123:	0b f7                	or     esi,edi
  d6a125:	89 74 24 18          	mov    DWORD PTR [esp+0x18],esi
  d6a129:	f3 0f 10 5c 24 18    	movss  xmm3,DWORD PTR [esp+0x18]
  d6a12f:	84 d2                	test   dl,dl
  d6a131:	0f 28 2d c0 f1 1e 01 	movaps xmm5,XMMWORD PTR ds:0x11ef1c0
  d6a138:	f3 0f 10 74 24 1c    	movss  xmm6,DWORD PTR [esp+0x1c]
  d6a13e:	f3 0f 10 db          	movss  xmm3,xmm3
  d6a142:	0f 28 d5             	movaps xmm2,xmm5
  d6a145:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d6a149:	0f c6 d3 05          	shufps xmm2,xmm3,0x5
  d6a14d:	0f c6 d5 e2          	shufps xmm2,xmm5,0xe2
  d6a151:	74 05                	je     0xd6a158
  d6a153:	0f 28 d9             	movaps xmm3,xmm1
  d6a156:	eb 03                	jmp    0xd6a15b
  d6a158:	0f 28 de             	movaps xmm3,xmm6
  d6a15b:	84 d2                	test   dl,dl
  d6a15d:	0f 28 ea             	movaps xmm5,xmm2
  d6a160:	f3 0f 10 db          	movss  xmm3,xmm3
  d6a164:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d6a168:	0f c6 eb 0f          	shufps xmm5,xmm3,0xf
  d6a16c:	0f c6 d5 24          	shufps xmm2,xmm5,0x24
  d6a170:	74 05                	je     0xd6a177
  d6a172:	0f 28 d9             	movaps xmm3,xmm1
  d6a175:	eb 03                	jmp    0xd6a17a
  d6a177:	0f 28 de             	movaps xmm3,xmm6
  d6a17a:	84 d2                	test   dl,dl
  d6a17c:	0f 28 ea             	movaps xmm5,xmm2
  d6a17f:	f3 0f 10 db          	movss  xmm3,xmm3
  d6a183:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d6a187:	0f c6 eb 0a          	shufps xmm5,xmm3,0xa
  d6a18b:	0f c6 d5 84          	shufps xmm2,xmm5,0x84
  d6a18f:	0f 29 15 c0 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef1c0,xmm2
  d6a196:	74 05                	je     0xd6a19d
  d6a198:	0f 28 d9             	movaps xmm3,xmm1
  d6a19b:	eb 79                	jmp    0xd6a216
  d6a19d:	f3 0f 10 50 08       	movss  xmm2,DWORD PTR [eax+0x8]
  d6a1a2:	0f 28 dc             	movaps xmm3,xmm4
  d6a1a5:	f3 0f 5c da          	subss  xmm3,xmm2
  d6a1a9:	f3 0f 11 5c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm3
  d6a1af:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  d6a1b3:	c1 f9 1f             	sar    ecx,0x1f
  d6a1b6:	8b f1                	mov    esi,ecx
  d6a1b8:	f7 d6                	not    esi
  d6a1ba:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  d6a1c0:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  d6a1c4:	23 f9                	and    edi,ecx
  d6a1c6:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  d6a1cc:	23 74 24 1c          	and    esi,DWORD PTR [esp+0x1c]
  d6a1d0:	0f 28 d8             	movaps xmm3,xmm0
  d6a1d3:	0b f7                	or     esi,edi
  d6a1d5:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  d6a1d9:	f3 0f 10 54 24 1c    	movss  xmm2,DWORD PTR [esp+0x1c]
  d6a1df:	f3 0f 5c da          	subss  xmm3,xmm2
  d6a1e3:	f3 0f 11 5c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm3
  d6a1e9:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  d6a1ed:	c1 f9 1f             	sar    ecx,0x1f
  d6a1f0:	8b f1                	mov    esi,ecx
  d6a1f2:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  d6a1f8:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  d6a1fc:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  d6a202:	f7 d6                	not    esi
  d6a204:	23 74 24 1c          	and    esi,DWORD PTR [esp+0x1c]
  d6a208:	23 f9                	and    edi,ecx
  d6a20a:	0b f7                	or     esi,edi
  d6a20c:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  d6a210:	f3 0f 10 5c 24 1c    	movss  xmm3,DWORD PTR [esp+0x1c]
  d6a216:	84 d2                	test   dl,dl
  d6a218:	0f 28 2d e0 f1 1e 01 	movaps xmm5,XMMWORD PTR ds:0x11ef1e0
  d6a21f:	f3 0f 10 db          	movss  xmm3,xmm3
  d6a223:	0f 28 d5             	movaps xmm2,xmm5
  d6a226:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  d6a22a:	0f c6 d3 05          	shufps xmm2,xmm3,0x5
  d6a22e:	0f c6 d5 e2          	shufps xmm2,xmm5,0xe2
  d6a232:	0f 29 15 e0 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef1e0,xmm2
  d6a239:	75 76                	jne    0xd6a2b1
  d6a23b:	f3 0f 10 58 18       	movss  xmm3,DWORD PTR [eax+0x18]
  d6a240:	f3 0f 5c e3          	subss  xmm4,xmm3
  d6a244:	f3 0f 11 64 24 1c    	movss  DWORD PTR [esp+0x1c],xmm4
  d6a24a:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  d6a24e:	c1 f8 1f             	sar    eax,0x1f
  d6a251:	f3 0f 11 5c 24 18    	movss  DWORD PTR [esp+0x18],xmm3
  d6a257:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d6a25b:	8b c8                	mov    ecx,eax
  d6a25d:	f7 d1                	not    ecx
  d6a25f:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  d6a265:	23 4c 24 1c          	and    ecx,DWORD PTR [esp+0x1c]
  d6a269:	23 d0                	and    edx,eax
  d6a26b:	0b ca                	or     ecx,edx
  d6a26d:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  d6a271:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  d6a277:	0f 28 d8             	movaps xmm3,xmm0
  d6a27a:	f3 0f 5c d9          	subss  xmm3,xmm1
  d6a27e:	f3 0f 11 5c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm3
  d6a284:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  d6a288:	c1 f8 1f             	sar    eax,0x1f
  d6a28b:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  d6a291:	8b c8                	mov    ecx,eax
  d6a293:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  d6a299:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  d6a29d:	f7 d1                	not    ecx
  d6a29f:	23 4c 24 1c          	and    ecx,DWORD PTR [esp+0x1c]
  d6a2a3:	23 d0                	and    edx,eax
  d6a2a5:	0b ca                	or     ecx,edx
  d6a2a7:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  d6a2ab:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  d6a2b1:	f3 0f 10 c9          	movss  xmm1,xmm1
  d6a2b5:	0f 28 c2             	movaps xmm0,xmm2
  d6a2b8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d6a2bc:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  d6a2c0:	0f c6 c2 e8          	shufps xmm0,xmm2,0xe8
  d6a2c4:	b9 30 f1 1e 01       	mov    ecx,0x11ef130
  d6a2c9:	0f 29 05 e0 f1 1e 01 	movaps XMMWORD PTR ds:0x11ef1e0,xmm0
  d6a2d0:	e8 3b ee ff ff       	call   0xd69110
  d6a2d5:	5f                   	pop    edi
  d6a2d6:	5e                   	pop    esi
  d6a2d7:	8b e5                	mov    esp,ebp
  d6a2d9:	5d                   	pop    ebp
  d6a2da:	c2 08 00             	ret    0x8
