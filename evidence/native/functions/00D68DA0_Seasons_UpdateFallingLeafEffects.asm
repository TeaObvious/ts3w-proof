# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d68da0 <.text+0x967da0>:
  d68da0:	55                   	push   ebp
  d68da1:	8b ec                	mov    ebp,esp
  d68da3:	83 e4 f0             	and    esp,0xfffffff0
  d68da6:	81 ec b4 00 00 00    	sub    esp,0xb4
  d68dac:	a1 c4 db 1e 01       	mov    eax,ds:0x11edbc4
  d68db1:	53                   	push   ebx
  d68db2:	56                   	push   esi
  d68db3:	57                   	push   edi
  d68db4:	33 ff                	xor    edi,edi
  d68db6:	3b c7                	cmp    eax,edi
  d68db8:	8b f1                	mov    esi,ecx
  d68dba:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  d68dbe:	0f 84 c1 02 00 00    	je     0xd69085
  d68dc4:	8b 48 74             	mov    ecx,DWORD PTR [eax+0x74]
  d68dc7:	3b cf                	cmp    ecx,edi
  d68dc9:	0f 84 b6 02 00 00    	je     0xd69085
  d68dcf:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  d68dd6:	00 
  d68dd7:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  d68dde:	00 
  d68ddf:	8d 44 24 30          	lea    eax,[esp+0x30]
  d68de3:	f3 0f 11 44 24 34    	movss  DWORD PTR [esp+0x34],xmm0
  d68de9:	0f 57 c0             	xorps  xmm0,xmm0
  d68dec:	50                   	push   eax
  d68ded:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  d68df1:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  d68df7:	89 7c 24 40          	mov    DWORD PTR [esp+0x40],edi
  d68dfb:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  d68e01:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  d68e07:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  d68e0d:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  d68e13:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  d68e19:	c6 44 24 58 00       	mov    BYTE PTR [esp+0x58],0x0
  d68e1e:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  d68e24:	c6 44 24 60 01       	mov    BYTE PTR [esp+0x60],0x1
  d68e29:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  d68e2f:	f3 0f 11 4c 24 68    	movss  DWORD PTR [esp+0x68],xmm1
  d68e35:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  d68e3b:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  d68e41:	f3 0f 11 84 24 80 00 	movss  DWORD PTR [esp+0x80],xmm0
  d68e48:	00 00 
  d68e4a:	f3 0f 11 84 24 84 00 	movss  DWORD PTR [esp+0x84],xmm0
  d68e51:	00 00 
  d68e53:	f3 0f 11 84 24 88 00 	movss  DWORD PTR [esp+0x88],xmm0
  d68e5a:	00 00 
  d68e5c:	f3 0f 11 84 24 8c 00 	movss  DWORD PTR [esp+0x8c],xmm0
  d68e63:	00 00 
  d68e65:	e8 66 0b 00 00       	call   0xd699d0
  d68e6a:	80 7c 24 5c 00       	cmp    BYTE PTR [esp+0x5c],0x0
  d68e6f:	0f 84 10 02 00 00    	je     0xd69085
  d68e75:	f3 0f 10 4c 24 58    	movss  xmm1,DWORD PTR [esp+0x58]
  d68e7b:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  d68e82:	00 
  d68e83:	f3 0f 10 d1          	movss  xmm2,xmm1
  d68e87:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d68e8b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  d68e8f:	0f 28 d8             	movaps xmm3,xmm0
  d68e92:	0f 59 da             	mulps  xmm3,xmm2
  d68e95:	0f 5f da             	maxps  xmm3,xmm2
  d68e98:	f3 0f 10 15 a0 b1 08 	movss  xmm2,DWORD PTR ds:0x108b1a0
  d68e9f:	01 
  d68ea0:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  d68ea4:	0f c2 da 02          	cmpleps xmm3,xmm2
  d68ea8:	0f 50 cb             	movmskps ecx,xmm3
  d68eab:	83 f9 0f             	cmp    ecx,0xf
  d68eae:	0f 84 d1 01 00 00    	je     0xd69085
  d68eb4:	f3 0f 5c 0d f8 98 f9 	subss  xmm1,DWORD PTR ds:0xf998f8
  d68ebb:	00 
  d68ebc:	f3 0f 10 c9          	movss  xmm1,xmm1
  d68ec0:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d68ec4:	0f 59 c1             	mulps  xmm0,xmm1
  d68ec7:	0f 5f c1             	maxps  xmm0,xmm1
  d68eca:	f3 0f 10 0d 8c b1 08 	movss  xmm1,DWORD PTR ds:0x108b18c
  d68ed1:	01 
  d68ed2:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  d68ed6:	0f c2 c1 02          	cmpleps xmm0,xmm1
  d68eda:	0f 50 d0             	movmskps edx,xmm0
  d68edd:	83 fa 0f             	cmp    edx,0xf
  d68ee0:	0f 84 9f 01 00 00    	je     0xd69085
  d68ee6:	f3 0f 10 4e 08       	movss  xmm1,DWORD PTR [esi+0x8]
  d68eeb:	f3 0f 10 05 a8 ed 1c 	movss  xmm0,DWORD PTR ds:0x11ceda8
  d68ef2:	01 
  d68ef3:	f3 0f 58 0d 70 2d 19 	addss  xmm1,DWORD PTR ds:0x1192d70
  d68efa:	01 
  d68efb:	0f 2f c8             	comiss xmm1,xmm0
  d68efe:	0f 87 81 01 00 00    	ja     0xd69085
  d68f04:	f3 0f 11 46 08       	movss  DWORD PTR [esi+0x8],xmm0
  d68f09:	e8 32 60 a6 ff       	call   0x7cef40
  d68f0e:	3b c7                	cmp    eax,edi
  d68f10:	0f 84 6f 01 00 00    	je     0xd69085
  d68f16:	0f 28 40 60          	movaps xmm0,XMMWORD PTR [eax+0x60]
  d68f1a:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [esp+0x90],xmm0
  d68f21:	00 
  d68f22:	e8 39 df 91 ff       	call   0x686e60
  d68f27:	d9 05 30 2d 19 01    	fld    DWORD PTR ds:0x1192d30
  d68f2d:	57                   	push   edi
  d68f2e:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  d68f32:	51                   	push   ecx
  d68f33:	6a 04                	push   0x4
  d68f35:	51                   	push   ecx
  d68f36:	8d 94 24 a0 00 00 00 	lea    edx,[esp+0xa0]
  d68f3d:	d9 1c 24             	fstp   DWORD PTR [esp]
  d68f40:	52                   	push   edx
  d68f41:	8b c8                	mov    ecx,eax
  d68f43:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  d68f47:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  d68f4b:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
  d68f4f:	c7 44 24 3c ec 4d 00 	mov    DWORD PTR [esp+0x3c],0x1004dec
  d68f56:	01 
  d68f57:	e8 d4 e0 91 ff       	call   0x687030
  d68f5c:	e8 0f e6 bc ff       	call   0x937570
  d68f61:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  d68f65:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  d68f69:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  d68f6d:	2b d8                	sub    ebx,eax
  d68f6f:	c1 fb 03             	sar    ebx,0x3
  d68f72:	8b f7                	mov    esi,edi
  d68f74:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  d68f78:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  d68f7c:	0f 84 f6 00 00 00    	je     0xd69078
  d68f82:	8b 4c f0 04          	mov    ecx,DWORD PTR [eax+esi*8+0x4]
  d68f86:	8b 14 f0             	mov    edx,DWORD PTR [eax+esi*8]
  d68f89:	51                   	push   ecx
  d68f8a:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  d68f8e:	52                   	push   edx
  d68f8f:	e8 ec ef bc ff       	call   0x937f80
  d68f94:	3b c7                	cmp    eax,edi
  d68f96:	0f 84 c7 00 00 00    	je     0xd69063
  d68f9c:	50                   	push   eax
  d68f9d:	e8 be 02 a2 ff       	call   0x789260
  d68fa2:	8b f8                	mov    edi,eax
  d68fa4:	83 c4 04             	add    esp,0x4
  d68fa7:	85 ff                	test   edi,edi
  d68fa9:	0f 84 b4 00 00 00    	je     0xd69063
  d68faf:	8b cf                	mov    ecx,edi
  d68fb1:	e8 ca 18 bf ff       	call   0x95a880
  d68fb6:	84 c0                	test   al,al
  d68fb8:	0f 84 a5 00 00 00    	je     0xd69063
  d68fbe:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  d68fc1:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  d68fc4:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
  d68fc7:	3b f3                	cmp    esi,ebx
  d68fc9:	0f 84 8c 00 00 00    	je     0xd6905b
  d68fcf:	90                   	nop
  d68fd0:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  d68fd3:	0f 5c 84 24 90 00 00 	subps  xmm0,XMMWORD PTR [esp+0x90]
  d68fda:	00 
  d68fdb:	0f 59 c0             	mulps  xmm0,xmm0
  d68fde:	0f 28 c8             	movaps xmm1,xmm0
  d68fe1:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  d68fe5:	0f 28 d1             	movaps xmm2,xmm1
  d68fe8:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  d68fec:	0f 58 c2             	addps  xmm0,xmm2
  d68fef:	0f 58 c1             	addps  xmm0,xmm1
  d68ff2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  d68ff6:	f3 0f 11 84 24 a0 00 	movss  DWORD PTR [esp+0xa0],xmm0
  d68ffd:	00 00 
  d68fff:	f3 0f 10 05 30 2d 19 	movss  xmm0,DWORD PTR ds:0x1192d30
  d69006:	01 
  d69007:	f3 0f 59 c0          	mulss  xmm0,xmm0
  d6900b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  d6900f:	f3 0f 11 84 24 b0 00 	movss  DWORD PTR [esp+0xb0],xmm0
  d69016:	00 00 
  d69018:	f3 0f 10 84 24 a0 00 	movss  xmm0,DWORD PTR [esp+0xa0]
  d6901f:	00 00 
  d69021:	0f 2f 84 24 b0 00 00 	comiss xmm0,DWORD PTR [esp+0xb0]
  d69028:	00 
  d69029:	77 25                	ja     0xd69050
  d6902b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  d6902f:	83 c1 0c             	add    ecx,0xc
  d69032:	e8 29 1a 79 ff       	call   0x4faa60
  d69037:	d9 05 74 2d 19 01    	fld    DWORD PTR ds:0x1192d74
  d6903d:	d9 c9                	fxch   st(1)
  d6903f:	df f1                	fcomip st,st(1)
  d69041:	dd d8                	fstp   st(0)
  d69043:	77 0b                	ja     0xd69050
  d69045:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  d69049:	56                   	push   esi
  d6904a:	57                   	push   edi
  d6904b:	e8 a0 fc ff ff       	call   0xd68cf0
  d69050:	83 c6 50             	add    esi,0x50
  d69053:	3b f3                	cmp    esi,ebx
  d69055:	0f 85 75 ff ff ff    	jne    0xd68fd0
  d6905b:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  d6905f:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  d69063:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  d69067:	83 c6 01             	add    esi,0x1
  d6906a:	33 ff                	xor    edi,edi
  d6906c:	3b f3                	cmp    esi,ebx
  d6906e:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  d69072:	0f 82 0a ff ff ff    	jb     0xd68f82
  d69078:	3b c7                	cmp    eax,edi
  d6907a:	74 09                	je     0xd69085
  d6907c:	50                   	push   eax
  d6907d:	e8 5e b4 77 ff       	call   0x4e44e0
  d69082:	83 c4 04             	add    esp,0x4
  d69085:	5f                   	pop    edi
  d69086:	5e                   	pop    esi
  d69087:	5b                   	pop    ebx
  d69088:	8b e5                	mov    esp,ebp
  d6908a:	5d                   	pop    ebp
  d6908b:	c3                   	ret
