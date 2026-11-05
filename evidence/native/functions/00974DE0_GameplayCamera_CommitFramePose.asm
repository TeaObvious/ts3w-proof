# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00974de0, 0x009751d5).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00974de0 <.text+0x573de0>:
  974de0:	55                   	push   ebp
  974de1:	8b ec                	mov    ebp,esp
  974de3:	83 e4 f0             	and    esp,0xfffffff0
  974de6:	81 ec e8 00 00 00    	sub    esp,0xe8
  974dec:	56                   	push   esi
  974ded:	8b f1                	mov    esi,ecx
  974def:	80 be 09 08 00 00 00 	cmp    BYTE PTR [esi+0x809],0x0
  974df6:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  974df9:	0f 28 41 30          	movaps xmm0,XMMWORD PTR [ecx+0x30]
  974dfd:	0f 29 44 24 7c       	movaps XMMWORD PTR [esp+0x7c],xmm0
  974e02:	0f 28 41 40          	movaps xmm0,XMMWORD PTR [ecx+0x40]
  974e06:	0f 29 84 24 8c 00 00 	movaps XMMWORD PTR [esp+0x8c],xmm0
  974e0d:	00
  974e0e:	0f 28 41 50          	movaps xmm0,XMMWORD PTR [ecx+0x50]
  974e12:	0f 29 84 24 9c 00 00 	movaps XMMWORD PTR [esp+0x9c],xmm0
  974e19:	00
  974e1a:	0f 28 41 60          	movaps xmm0,XMMWORD PTR [ecx+0x60]
  974e1e:	57                   	push   edi
  974e1f:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm0
  974e26:	00
  974e27:	0f 84 ae 00 00 00    	je     0x974edb
  974e2d:	f3 0f 10 8e 0c 08 00 	movss  xmm1,DWORD PTR [esi+0x80c]
  974e34:	00
  974e35:	0f 28 86 d0 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x7d0]
  974e3c:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  974e40:	0f c6 c1 05          	shufps xmm0,xmm1,0x5
  974e44:	0f 28 8e d0 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x7d0]
  974e4b:	0f c6 c1 e2          	shufps xmm0,xmm1,0xe2
  974e4f:	0f 29 86 d0 07 00 00 	movaps XMMWORD PTR [esi+0x7d0],xmm0
  974e56:	0f 28 8e d0 07 00 00 	movaps xmm1,XMMWORD PTR [esi+0x7d0]
  974e5d:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  974e62:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  974e66:	83 ec 08             	sub    esp,0x8
  974e69:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  974e6d:	0f 29 44 24 18       	movaps XMMWORD PTR [esp+0x18],xmm0
  974e72:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  974e76:	8d 84 24 d8 00 00 00 	lea    eax,[esp+0xd8]
  974e7d:	d9 1c 24             	fstp   DWORD PTR [esp]
  974e80:	50                   	push   eax
  974e81:	e8 9a 87 00 00       	call   0x97d620
  974e86:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  974e89:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  974e8c:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  974e91:	83 c4 0c             	add    esp,0xc
  974e94:	0f 29 09             	movaps XMMWORD PTR [ecx],xmm1
  974e97:	8d 54 24 40          	lea    edx,[esp+0x40]
  974e9b:	52                   	push   edx
  974e9c:	8d 86 70 07 00 00    	lea    eax,[esi+0x770]
  974ea2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  974ea6:	8d 8e 90 07 00 00    	lea    ecx,[esi+0x790]
  974eac:	0f 59 c1             	mulps  xmm0,xmm1
  974eaf:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  974eb2:	51                   	push   ecx
  974eb3:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  974eb6:	0f 58 c1             	addps  xmm0,xmm1
  974eb9:	50                   	push   eax
  974eba:	0f 29 44 24 4c       	movaps XMMWORD PTR [esp+0x4c],xmm0
  974ebf:	e8 cc cf fe ff       	call   0x961e90
  974ec4:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  974ec7:	8d 54 24 40          	lea    edx,[esp+0x40]
  974ecb:	52                   	push   edx
  974ecc:	e8 6f bc fe ff       	call   0x960b40
  974ed1:	8d 44 24 40          	lea    eax,[esp+0x40]
  974ed5:	50                   	push   eax
  974ed6:	e9 17 01 00 00       	jmp    0x974ff2
  974edb:	80 be 10 08 00 00 00 	cmp    BYTE PTR [esi+0x810],0x0
  974ee2:	0f 84 e6 00 00 00    	je     0x974fce
  974ee8:	f3 0f 10 86 14 08 00 	movss  xmm0,DWORD PTR [esi+0x814]
  974eef:	00
  974ef0:	f3 0f 58 45 08       	addss  xmm0,DWORD PTR [ebp+0x8]
  974ef5:	f3 0f 10 96 60 09 00 	movss  xmm2,DWORD PTR [esi+0x960]
  974efc:	00
  974efd:	0f 2f c2             	comiss xmm0,xmm2
  974f00:	f3 0f 11 86 14 08 00 	movss  DWORD PTR [esi+0x814],xmm0
  974f07:	00
  974f08:	72 0f                	jb     0x974f19
  974f0a:	f3 0f 11 96 14 08 00 	movss  DWORD PTR [esi+0x814],xmm2
  974f11:	00
  974f12:	c6 86 10 08 00 00 00 	mov    BYTE PTR [esi+0x810],0x0
  974f19:	0f 28 86 d0 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x7d0]
  974f20:	f3 0f 10 8e 0c 08 00 	movss  xmm1,DWORD PTR [esi+0x80c]
  974f27:	00
  974f28:	0f 28 d8             	movaps xmm3,xmm0
  974f2b:	0f c6 d8 00          	shufps xmm3,xmm0,0x0
  974f2f:	f3 0f 10 86 14 08 00 	movss  xmm0,DWORD PTR [esi+0x814]
  974f36:	00
  974f37:	f3 0f 5e c2          	divss  xmm0,xmm2
  974f3b:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  974f3f:	0f 5c d9             	subps  xmm3,xmm1
  974f42:	83 ec 08             	sub    esp,0x8
  974f45:	8d 8c 24 e8 00 00 00 	lea    ecx,[esp+0xe8]
  974f4c:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  974f50:	0f 59 d8             	mulps  xmm3,xmm0
  974f53:	0f 28 86 d0 07 00 00 	movaps xmm0,XMMWORD PTR [esi+0x7d0]
  974f5a:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  974f5f:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  974f63:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  974f67:	0f 58 d9             	addps  xmm3,xmm1
  974f6a:	0f 29 5c 24 18       	movaps XMMWORD PTR [esp+0x18],xmm3
  974f6f:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  974f73:	d9 1c 24             	fstp   DWORD PTR [esp]
  974f76:	51                   	push   ecx
  974f77:	e8 a4 86 00 00       	call   0x97d620
  974f7c:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  974f7f:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  974f82:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  974f87:	83 c4 0c             	add    esp,0xc
  974f8a:	0f 29 0a             	movaps XMMWORD PTR [edx],xmm1
  974f8d:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  974f91:	51                   	push   ecx
  974f92:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  974f95:	8d 86 70 07 00 00    	lea    eax,[esi+0x770]
  974f9b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  974f9f:	8d 96 90 07 00 00    	lea    edx,[esi+0x790]
  974fa5:	0f 59 c1             	mulps  xmm0,xmm1
  974fa8:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  974fab:	52                   	push   edx
  974fac:	0f 58 c1             	addps  xmm0,xmm1
  974faf:	50                   	push   eax
  974fb0:	0f 29 44 24 1c       	movaps XMMWORD PTR [esp+0x1c],xmm0
  974fb5:	e8 d6 ce fe ff       	call   0x961e90
  974fba:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  974fbd:	8d 44 24 10          	lea    eax,[esp+0x10]
  974fc1:	50                   	push   eax
  974fc2:	e8 79 bb fe ff       	call   0x960b40
  974fc7:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  974fcb:	51                   	push   ecx
  974fcc:	eb 24                	jmp    0x974ff2
  974fce:	8d be 80 07 00 00    	lea    edi,[esi+0x780]
  974fd4:	57                   	push   edi
  974fd5:	8d 96 90 07 00 00    	lea    edx,[esi+0x790]
  974fdb:	52                   	push   edx
  974fdc:	8d 86 70 07 00 00    	lea    eax,[esi+0x770]
  974fe2:	50                   	push   eax
  974fe3:	e8 a8 ce fe ff       	call   0x961e90
  974fe8:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  974feb:	57                   	push   edi
  974fec:	e8 4f bb fe ff       	call   0x960b40
  974ff1:	57                   	push   edi
  974ff2:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  974ff5:	e8 66 bb fe ff       	call   0x960b60
  974ffa:	8b be b4 09 00 00    	mov    edi,DWORD PTR [esi+0x9b4]
  975000:	85 ff                	test   edi,edi
  975002:	0f 84 46 01 00 00    	je     0x97514e
  975008:	f3 0f 10 07          	movss  xmm0,DWORD PTR [edi]
  97500c:	0f 2f 47 04          	comiss xmm0,DWORD PTR [edi+0x4]
  975010:	0f 86 f0 00 00 00    	jbe    0x975106
  975016:	d9 47 04             	fld    DWORD PTR [edi+0x4]
  975019:	51                   	push   ecx
  97501a:	d8 37                	fdiv   DWORD PTR [edi]
  97501c:	83 c7 08             	add    edi,0x8
  97501f:	8d 8c 24 c4 00 00 00 	lea    ecx,[esp+0xc4]
  975026:	d9 54 24 10          	fst    DWORD PTR [esp+0x10]
  97502a:	d9 1c 24             	fstp   DWORD PTR [esp]
  97502d:	57                   	push   edi
  97502e:	51                   	push   ecx
  97502f:	e8 fc be ff ff       	call   0x970f30
  975034:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  975038:	8b 96 b4 09 00 00    	mov    edx,DWORD PTR [esi+0x9b4]
  97503e:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  975042:	83 c4 08             	add    esp,0x8
  975045:	83 c2 18             	add    edx,0x18
  975048:	52                   	push   edx
  975049:	8d 44 24 28          	lea    eax,[esp+0x28]
  97504d:	50                   	push   eax
  97504e:	e8 dd be ff ff       	call   0x970f30
  975053:	0f 28 8c 24 cc 00 00 	movaps xmm1,XMMWORD PTR [esp+0xcc]
  97505a:	00
  97505b:	8b 8e b4 09 00 00    	mov    ecx,DWORD PTR [esi+0x9b4]
  975061:	f3 0f 10 41 04       	movss  xmm0,DWORD PTR [ecx+0x4]
  975066:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97506a:	0f 28 d1             	movaps xmm2,xmm1
  97506d:	0f c6 d1 55          	shufps xmm2,xmm1,0x55
  975071:	0f 59 d0             	mulps  xmm2,xmm0
  975074:	0f 29 54 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm2
  975079:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  97507d:	d9 fe                	fsin
  97507f:	0f 28 d1             	movaps xmm2,xmm1
  975082:	0f c6 d1 00          	shufps xmm2,xmm1,0x0
  975086:	0f 59 d0             	mulps  xmm2,xmm0
  975089:	0f 29 54 24 7c       	movaps XMMWORD PTR [esp+0x7c],xmm2
  97508e:	83 c4 0c             	add    esp,0xc
  975091:	8d 54 24 50          	lea    edx,[esp+0x50]
  975095:	52                   	push   edx
  975096:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  97509a:	d9 44 24 74          	fld    DWORD PTR [esp+0x74]
  97509e:	d9 fe                	fsin
  9750a0:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  9750a6:	0f 28 4c 24 24       	movaps xmm1,XMMWORD PTR [esp+0x24]
  9750ab:	0f c6 c9 55          	shufps xmm1,xmm1,0x55
  9750af:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9750b3:	0f 59 c1             	mulps  xmm0,xmm1
  9750b6:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  9750bb:	d9 5c 24 10          	fstp   DWORD PTR [esp+0x10]
  9750bf:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  9750c5:	0f 28 4c 24 24       	movaps xmm1,XMMWORD PTR [esp+0x24]
  9750ca:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  9750cd:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9750d1:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9750d5:	0f 59 c1             	mulps  xmm0,xmm1
  9750d8:	0f 28 4c 24 34       	movaps xmm1,XMMWORD PTR [esp+0x34]
  9750dd:	0f c6 c1 10          	shufps xmm0,xmm1,0x10
  9750e1:	0f c6 c0 08          	shufps xmm0,xmm0,0x8
  9750e5:	0f 29 44 24 54       	movaps XMMWORD PTR [esp+0x54],xmm0
  9750ea:	e8 91 ae fe ff       	call   0x95ff80
  9750ef:	8b 86 b4 09 00 00    	mov    eax,DWORD PTR [esi+0x9b4]
  9750f5:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  9750fa:	f3 0f 58 45 08       	addss  xmm0,DWORD PTR [ebp+0x8]
  9750ff:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  975104:	eb 48                	jmp    0x97514e
  975106:	8b 47 18             	mov    eax,DWORD PTR [edi+0x18]
  975109:	85 c0                	test   eax,eax
  97510b:	74 09                	je     0x975116
  97510d:	50                   	push   eax
  97510e:	e8 cd f3 b6 ff       	call   0x4e44e0
  975113:	83 c4 04             	add    esp,0x4
  975116:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  975119:	85 c0                	test   eax,eax
  97511b:	74 09                	je     0x975126
  97511d:	50                   	push   eax
  97511e:	e8 bd f3 b6 ff       	call   0x4e44e0
  975123:	83 c4 04             	add    esp,0x4
  975126:	57                   	push   edi
  975127:	e8 b4 f3 b6 ff       	call   0x4e44e0
  97512c:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  97512f:	83 c4 04             	add    esp,0x4
  975132:	8d 44 24 60          	lea    eax,[esp+0x60]
  975136:	0f 57 c0             	xorps  xmm0,xmm0
  975139:	50                   	push   eax
  97513a:	c7 86 b4 09 00 00 00 	mov    DWORD PTR [esi+0x9b4],0x0
  975141:	00 00 00
  975144:	0f 29 44 24 64       	movaps XMMWORD PTR [esp+0x64],xmm0
  975149:	e8 32 ae fe ff       	call   0x95ff80
  97514e:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  975151:	6a 01                	push   0x1
  975153:	e8 88 c1 fe ff       	call   0x9612e0
  975158:	8b 76 0c             	mov    esi,DWORD PTR [esi+0xc]
  97515b:	0f 28 46 30          	movaps xmm0,XMMWORD PTR [esi+0x30]
  97515f:	0f c2 84 24 80 00 00 	cmpeqps xmm0,XMMWORD PTR [esp+0x80]
  975166:	00 00
  975168:	83 c6 30             	add    esi,0x30
  97516b:	0f 50 c8             	movmskps ecx,xmm0
  97516e:	83 f9 0f             	cmp    ecx,0xf
  975171:	75 3d                	jne    0x9751b0
  975173:	0f 28 46 10          	movaps xmm0,XMMWORD PTR [esi+0x10]
  975177:	0f c2 84 24 90 00 00 	cmpeqps xmm0,XMMWORD PTR [esp+0x90]
  97517e:	00 00
  975180:	0f 50 d0             	movmskps edx,xmm0
  975183:	3b d1                	cmp    edx,ecx
  975185:	75 29                	jne    0x9751b0
  975187:	0f 28 46 20          	movaps xmm0,XMMWORD PTR [esi+0x20]
  97518b:	0f c2 84 24 a0 00 00 	cmpeqps xmm0,XMMWORD PTR [esp+0xa0]
  975192:	00 00
  975194:	0f 50 c0             	movmskps eax,xmm0
  975197:	3b c1                	cmp    eax,ecx
  975199:	75 15                	jne    0x9751b0
  97519b:	0f 28 46 30          	movaps xmm0,XMMWORD PTR [esi+0x30]
  97519f:	0f c2 84 24 b0 00 00 	cmpeqps xmm0,XMMWORD PTR [esp+0xb0]
  9751a6:	00 00
  9751a8:	0f 50 c8             	movmskps ecx,xmm0
  9751ab:	83 f9 0f             	cmp    ecx,0xf
  9751ae:	74 1d                	je     0x9751cd
  9751b0:	e8 eb 41 df ff       	call   0x7693a0
  9751b5:	85 c0                	test   eax,eax
  9751b7:	74 14                	je     0x9751cd
  9751b9:	8b 10                	mov    edx,DWORD PTR [eax]
  9751bb:	6a 00                	push   0x0
  9751bd:	6a 00                	push   0x0
  9751bf:	6a 00                	push   0x0
  9751c1:	8b c8                	mov    ecx,eax
  9751c3:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  9751c6:	68 cc 66 2a 08       	push   0x82a66cc
  9751cb:	ff d0                	call   eax
  9751cd:	5f                   	pop    edi
  9751ce:	5e                   	pop    esi
  9751cf:	8b e5                	mov    esp,ebp
  9751d1:	5d                   	pop    ebp
  9751d2:	c2 0c 00             	ret    0xc
