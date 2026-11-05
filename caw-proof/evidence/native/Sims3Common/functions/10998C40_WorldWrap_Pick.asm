# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

10998c40 <.text+0x997c40>:
10998c40:	55                                              	push   ebp
10998c41:	8b ec                                           	mov    ebp,esp
10998c43:	83 e4 f0                                        	and    esp,0xfffffff0
10998c46:	81 ec f8 00 00 00                               	sub    esp,0xf8
10998c4c:	56                                              	push   esi
10998c4d:	57                                              	push   edi
10998c4e:	e8 4d 57 b4 ff                                  	call   0x104de3a0
10998c53:	8b c8                                           	mov    ecx,eax
10998c55:	e8 f6 ce 00 00                                  	call   0x109a5b50
10998c5a:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
10998c61:	51                                              	push   ecx
10998c62:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10998c65:	8d 54 24 74                                     	lea    edx,[esp+0x74]
10998c69:	52                                              	push   edx
10998c6a:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10998c6d:	51                                              	push   ecx
10998c6e:	52                                              	push   edx
10998c6f:	50                                              	push   eax
10998c70:	e8 db 99 c2 ff                                  	call   0x105c2650
10998c75:	83 c4 14                                        	add    esp,0x14
10998c78:	e8 c3 50 ae ff                                  	call   0x1047dd40
10998c7d:	85 c0                                           	test   eax,eax
10998c7f:	0f 84 1f 02 00 00                               	je     0x10998ea4
10998c85:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
10998c88:	6a 01                                           	push   0x1
10998c8a:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
10998c91:	51                                              	push   ecx
10998c92:	52                                              	push   edx
10998c93:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
10998c9a:	51                                              	push   ecx
10998c9b:	8d 94 24 80 00 00 00                            	lea    edx,[esp+0x80]
10998ca2:	52                                              	push   edx
10998ca3:	8b c8                                           	mov    ecx,eax
10998ca5:	e8 c6 55 ae ff                                  	call   0x1047e270
10998caa:	84 c0                                           	test   al,al
10998cac:	0f 84 f2 01 00 00                               	je     0x10998ea4
10998cb2:	80 7d 18 00                                     	cmp    BYTE PTR [ebp+0x18],0x0
10998cb6:	0f 84 b9 01 00 00                               	je     0x10998e75
10998cbc:	8b 84 24 c0 00 00 00                            	mov    eax,DWORD PTR [esp+0xc0]
10998cc3:	0b 84 24 c4 00 00 00                            	or     eax,DWORD PTR [esp+0xc4]
10998cca:	0f 85 a5 01 00 00                               	jne    0x10998e75
10998cd0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10998cd6:	85 c9                                           	test   ecx,ecx
10998cd8:	0f 84 c6 01 00 00                               	je     0x10998ea4
10998cde:	0f 28 4c 24 70                                  	movaps xmm1,XMMWORD PTR [esp+0x70]
10998ce3:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
10998ce8:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
10998cee:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10998cf4:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
10998cf9:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
10998cff:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10998d05:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
10998d0a:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
10998d10:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10998d16:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
10998d1e:	0f 5c c1                                        	subps  xmm0,xmm1
10998d21:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10998d26:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
10998d2c:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
10998d31:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [esp+0x20],xmm1
10998d37:	f3 0f 10 4c 24 44                               	movss  xmm1,DWORD PTR [esp+0x44]
10998d3d:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
10998d42:	f3 0f 10 44 24 48                               	movss  xmm0,DWORD PTR [esp+0x48]
10998d48:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
10998d4e:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
10998d54:	e8 e7 c7 89 ff                                  	call   0x10235540
10998d59:	d9 54 24 44                                     	fst    DWORD PTR [esp+0x44]
10998d5d:	0f 57 c0                                        	xorps  xmm0,xmm0
10998d60:	d9 54 24 68                                     	fst    DWORD PTR [esp+0x68]
10998d64:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
10998d6c:	d9 5c 24 5c                                     	fstp   DWORD PTR [esp+0x5c]
10998d70:	33 c0                                           	xor    eax,eax
10998d72:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10998d76:	51                                              	push   ecx
10998d77:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10998d7b:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
10998d7f:	8d 54 24 5c                                     	lea    edx,[esp+0x5c]
10998d83:	52                                              	push   edx
10998d84:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
10998d88:	50                                              	push   eax
10998d89:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
10998d8d:	51                                              	push   ecx
10998d8e:	8d 54 24 30                                     	lea    edx,[esp+0x30]
10998d92:	52                                              	push   edx
10998d93:	8d 44 24 24                                     	lea    eax,[esp+0x24]
10998d97:	50                                              	push   eax
10998d98:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
10998d9e:	f3 0f 11 44 24 60                               	movss  DWORD PTR [esp+0x60],xmm0
10998da4:	f3 0f 11 4c 24 7c                               	movss  DWORD PTR [esp+0x7c],xmm1
10998daa:	f3 0f 11 84 24 84 00 00 00                      	movss  DWORD PTR [esp+0x84],xmm0
10998db3:	f3 0f 11 44 24 70                               	movss  DWORD PTR [esp+0x70],xmm0
10998db9:	f3 0f 11 4c 24 78                               	movss  DWORD PTR [esp+0x78],xmm1
10998dbf:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
10998dc5:	e8 56 80 c2 ff                                  	call   0x105c0e20
10998dca:	83 c4 18                                        	add    esp,0x18
10998dcd:	84 c0                                           	test   al,al
10998dcf:	0f 84 a0 00 00 00                               	je     0x10998e75
10998dd5:	f3 0f 10 44 24 34                               	movss  xmm0,DWORD PTR [esp+0x34]
10998ddb:	f3 0f 10 4c 24 3c                               	movss  xmm1,DWORD PTR [esp+0x3c]
10998de1:	0f 28 5c 24 70                                  	movaps xmm3,XMMWORD PTR [esp+0x70]
10998de6:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10998dec:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10998df2:	0f 28 84 24 a0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xa0]
10998dfa:	0f 5c c3                                        	subps  xmm0,xmm3
10998dfd:	0f 59 c0                                        	mulps  xmm0,xmm0
10998e00:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10998e06:	f3 0f 10 4c 24 38                               	movss  xmm1,DWORD PTR [esp+0x38]
10998e0c:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10998e12:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
10998e17:	0f 28 c8                                        	movaps xmm1,xmm0
10998e1a:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
10998e1e:	0f 28 e1                                        	movaps xmm4,xmm1
10998e21:	0f c6 e1 01                                     	shufps xmm4,xmm1,0x1
10998e25:	0f 58 c4                                        	addps  xmm0,xmm4
10998e28:	0f 58 c1                                        	addps  xmm0,xmm1
10998e2b:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10998e2f:	0f 51 c0                                        	sqrtps xmm0,xmm0
10998e32:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10998e37:	0f 28 c2                                        	movaps xmm0,xmm2
10998e3a:	0f 5c c3                                        	subps  xmm0,xmm3
10998e3d:	0f 59 c0                                        	mulps  xmm0,xmm0
10998e40:	0f 28 c8                                        	movaps xmm1,xmm0
10998e43:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
10998e47:	0f 28 d9                                        	movaps xmm3,xmm1
10998e4a:	0f c6 d9 01                                     	shufps xmm3,xmm1,0x1
10998e4e:	0f 58 c3                                        	addps  xmm0,xmm3
10998e51:	0f 58 c1                                        	addps  xmm0,xmm1
10998e54:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10998e58:	0f 51 c0                                        	sqrtps xmm0,xmm0
10998e5b:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10998e60:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
10998e66:	0f 2f 44 24 20                                  	comiss xmm0,DWORD PTR [esp+0x20]
10998e6b:	76 08                                           	jbe    0x10998e75
10998e6d:	0f 29 94 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm2
10998e75:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
10998e7c:	51                                              	push   ecx
10998e7d:	8d 94 24 d4 00 00 00                            	lea    edx,[esp+0xd4]
10998e84:	52                                              	push   edx
10998e85:	e8 46 dd fe ff                                  	call   0x10986bd0
10998e8a:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
10998e8d:	8b f0                                           	mov    esi,eax
10998e8f:	b9 0c 00 00 00                                  	mov    ecx,0xc
10998e94:	83 c4 08                                        	add    esp,0x8
10998e97:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10998e99:	b8 01 00 00 00                                  	mov    eax,0x1
10998e9e:	5f                                              	pop    edi
10998e9f:	5e                                              	pop    esi
10998ea0:	8b e5                                           	mov    esp,ebp
10998ea2:	5d                                              	pop    ebp
10998ea3:	c3                                              	ret
10998ea4:	5f                                              	pop    edi
10998ea5:	33 c0                                           	xor    eax,eax
10998ea7:	5e                                              	pop    esi
10998ea8:	8b e5                                           	mov    esp,ebp
10998eaa:	5d                                              	pop    ebp
10998eab:	c3                                              	ret
