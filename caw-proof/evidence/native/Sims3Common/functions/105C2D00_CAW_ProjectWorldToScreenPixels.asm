# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

105c2d00 <.text+0x5c1d00>:
105c2d00:	55                                              	push   ebp
105c2d01:	8b ec                                           	mov    ebp,esp
105c2d03:	83 e4 f0                                        	and    esp,0xfffffff0
105c2d06:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
105c2d09:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
105c2d0c:	83 ec 38                                        	sub    esp,0x38
105c2d0f:	56                                              	push   esi
105c2d10:	57                                              	push   edi
105c2d11:	8b 7d 10                                        	mov    edi,DWORD PTR [ebp+0x10]
105c2d14:	50                                              	push   eax
105c2d15:	0f 57 c0                                        	xorps  xmm0,xmm0
105c2d18:	8d 44 24 34                                     	lea    eax,[esp+0x34]
105c2d1c:	0f 29 07                                        	movaps XMMWORD PTR [edi],xmm0
105c2d1f:	e8 6c fd ff ff                                  	call   0x105c2a90
105c2d24:	83 c4 04                                        	add    esp,0x4
105c2d27:	84 c0                                           	test   al,al
105c2d29:	0f 84 e1 00 00 00                               	je     0x105c2e10
105c2d2f:	e8 8c 67 e4 ff                                  	call   0x104094c0
105c2d34:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
105c2d38:	8b f0                                           	mov    esi,eax
105c2d3a:	51                                              	push   ecx
105c2d3b:	8b ce                                           	mov    ecx,esi
105c2d3d:	e8 fe 83 e4 ff                                  	call   0x1040b140
105c2d42:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105c2d46:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
105c2d4a:	2b 54 24 10                                     	sub    edx,DWORD PTR [esp+0x10]
105c2d4e:	2b 44 24 14                                     	sub    eax,DWORD PTR [esp+0x14]
105c2d52:	8b 76 28                                        	mov    esi,DWORD PTR [esi+0x28]
105c2d55:	85 f6                                           	test   esi,esi
105c2d57:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
105c2d5b:	f3 0f 2a c8                                     	cvtsi2ss xmm1,eax
105c2d5f:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
105c2d65:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
105c2d6b:	74 36                                           	je     0x105c2da3
105c2d6d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
105c2d71:	51                                              	push   ecx
105c2d72:	56                                              	push   esi
105c2d73:	ff 15 80 b8 aa 10                               	call   DWORD PTR ds:0x10aab880
105c2d79:	85 c0                                           	test   eax,eax
105c2d7b:	74 1a                                           	je     0x105c2d97
105c2d7d:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
105c2d81:	2b 54 24 20                                     	sub    edx,DWORD PTR [esp+0x20]
105c2d85:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
105c2d89:	2b 44 24 24                                     	sub    eax,DWORD PTR [esp+0x24]
105c2d8d:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
105c2d91:	f3 0f 2a c8                                     	cvtsi2ss xmm1,eax
105c2d95:	eb 0c                                           	jmp    0x105c2da3
105c2d97:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
105c2d9d:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
105c2da3:	0f 28 5c 24 30                                  	movaps xmm3,XMMWORD PTR [esp+0x30]
105c2da8:	f3 0f 10 25 d4 b0 ac 10                         	movss  xmm4,DWORD PTR ds:0x10acb0d4
105c2db0:	0f 29 5c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm3
105c2db5:	0f 28 d4                                        	movaps xmm2,xmm4
105c2db8:	f3 0f 5c 54 24 34                               	subss  xmm2,DWORD PTR [esp+0x34]
105c2dbe:	0f 29 5c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm3
105c2dc3:	f3 0f 10 5c 24 30                               	movss  xmm3,DWORD PTR [esp+0x30]
105c2dc9:	f3 0f 58 dc                                     	addss  xmm3,xmm4
105c2dcd:	f3 0f 10 25 ec 10 b3 10                         	movss  xmm4,DWORD PTR ds:0x10b310ec
105c2dd5:	f3 0f 10 c0                                     	movss  xmm0,xmm0
105c2dd9:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
105c2ddd:	f3 0f 10 c9                                     	movss  xmm1,xmm1
105c2de1:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
105c2de5:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
105c2de9:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
105c2ded:	0f 59 c3                                        	mulps  xmm0,xmm3
105c2df0:	0f c6 e4 00                                     	shufps xmm4,xmm4,0x0
105c2df4:	0f 59 c4                                        	mulps  xmm0,xmm4
105c2df7:	0f 59 ca                                        	mulps  xmm1,xmm2
105c2dfa:	0f 59 cc                                        	mulps  xmm1,xmm4
105c2dfd:	0f c6 c1 10                                     	shufps xmm0,xmm1,0x10
105c2e01:	0f c6 c0 08                                     	shufps xmm0,xmm0,0x8
105c2e05:	0f 29 07                                        	movaps XMMWORD PTR [edi],xmm0
105c2e08:	b0 01                                           	mov    al,0x1
105c2e0a:	5f                                              	pop    edi
105c2e0b:	5e                                              	pop    esi
105c2e0c:	8b e5                                           	mov    esp,ebp
105c2e0e:	5d                                              	pop    ebp
105c2e0f:	c3                                              	ret
105c2e10:	5f                                              	pop    edi
105c2e11:	32 c0                                           	xor    al,al
105c2e13:	5e                                              	pop    esi
105c2e14:	8b e5                                           	mov    esp,ebp
105c2e16:	5d                                              	pop    ebp
105c2e17:	c3                                              	ret
