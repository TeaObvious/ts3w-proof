# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

105c2a90 <.text+0x5c1a90>:
105c2a90:	55                                              	push   ebp
105c2a91:	8b ec                                           	mov    ebp,esp
105c2a93:	83 e4 f0                                        	and    esp,0xfffffff0
105c2a96:	83 ec 1c                                        	sub    esp,0x1c
105c2a99:	56                                              	push   esi
105c2a9a:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
105c2a9d:	0f 28 02                                        	movaps xmm0,XMMWORD PTR [edx]
105c2aa0:	0f 28 91 40 01 00 00                            	movaps xmm2,XMMWORD PTR [ecx+0x140]
105c2aa7:	0f 28 99 30 01 00 00                            	movaps xmm3,XMMWORD PTR [ecx+0x130]
105c2aae:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
105c2ab3:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
105c2abb:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105c2ac1:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
105c2ac6:	0f 28 c8                                        	movaps xmm1,xmm0
105c2ac9:	0f c6 c8 55                                     	shufps xmm1,xmm0,0x55
105c2acd:	0f 59 ca                                        	mulps  xmm1,xmm2
105c2ad0:	0f 28 d0                                        	movaps xmm2,xmm0
105c2ad3:	0f c6 d0 00                                     	shufps xmm2,xmm0,0x0
105c2ad7:	0f 59 d3                                        	mulps  xmm2,xmm3
105c2ada:	0f 28 99 50 01 00 00                            	movaps xmm3,XMMWORD PTR [ecx+0x150]
105c2ae1:	0f 58 ca                                        	addps  xmm1,xmm2
105c2ae4:	0f 28 d0                                        	movaps xmm2,xmm0
105c2ae7:	0f c6 d0 aa                                     	shufps xmm2,xmm0,0xaa
105c2aeb:	0f 59 d3                                        	mulps  xmm2,xmm3
105c2aee:	0f 58 ca                                        	addps  xmm1,xmm2
105c2af1:	0f 28 d0                                        	movaps xmm2,xmm0
105c2af4:	0f c6 d0 ff                                     	shufps xmm2,xmm0,0xff
105c2af8:	0f 28 81 60 01 00 00                            	movaps xmm0,XMMWORD PTR [ecx+0x160]
105c2aff:	0f 59 d0                                        	mulps  xmm2,xmm0
105c2b02:	0f 58 ca                                        	addps  xmm1,xmm2
105c2b05:	f3 0f 10 15 e8 ef ab 10                         	movss  xmm2,DWORD PTR ds:0x10abefe8
105c2b0d:	0f 29 08                                        	movaps XMMWORD PTR [eax],xmm1
105c2b10:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
105c2b13:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
105c2b18:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
105c2b1e:	0f 28 d9                                        	movaps xmm3,xmm1
105c2b21:	f3 0f 5c da                                     	subss  xmm3,xmm2
105c2b25:	f3 0f 11 5c 24 08                               	movss  DWORD PTR [esp+0x8],xmm3
105c2b2b:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105c2b2f:	c1 f9 1f                                        	sar    ecx,0x1f
105c2b32:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
105c2b38:	f3 0f 11 54 24 0c                               	movss  DWORD PTR [esp+0xc],xmm2
105c2b3e:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
105c2b42:	8b d1                                           	mov    edx,ecx
105c2b44:	f7 d2                                           	not    edx
105c2b46:	23 54 24 08                                     	and    edx,DWORD PTR [esp+0x8]
105c2b4a:	23 f1                                           	and    esi,ecx
105c2b4c:	0f 28 d0                                        	movaps xmm2,xmm0
105c2b4f:	0b d6                                           	or     edx,esi
105c2b51:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
105c2b55:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
105c2b5b:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
105c2b5f:	0f c6 d1 0a                                     	shufps xmm2,xmm1,0xa
105c2b63:	0f c6 c2 84                                     	shufps xmm0,xmm2,0x84
105c2b67:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
105c2b6a:	0f c6 c0 ff                                     	shufps xmm0,xmm0,0xff
105c2b6e:	0f 28 d0                                        	movaps xmm2,xmm0
105c2b71:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
105c2b79:	0f 53 da                                        	rcpps  xmm3,xmm2
105c2b7c:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
105c2b80:	0f 28 e3                                        	movaps xmm4,xmm3
105c2b83:	0f 28 c8                                        	movaps xmm1,xmm0
105c2b86:	0f 59 e2                                        	mulps  xmm4,xmm2
105c2b89:	0f 5c cc                                        	subps  xmm1,xmm4
105c2b8c:	0f 59 cb                                        	mulps  xmm1,xmm3
105c2b8f:	0f 28 d9                                        	movaps xmm3,xmm1
105c2b92:	0f 59 da                                        	mulps  xmm3,xmm2
105c2b95:	0f 5c c3                                        	subps  xmm0,xmm3
105c2b98:	0f 59 c1                                        	mulps  xmm0,xmm1
105c2b9b:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
105c2b9e:	0f 59 c1                                        	mulps  xmm0,xmm1
105c2ba1:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
105c2ba4:	b0 01                                           	mov    al,0x1
105c2ba6:	5e                                              	pop    esi
105c2ba7:	8b e5                                           	mov    esp,ebp
105c2ba9:	5d                                              	pop    ebp
105c2baa:	c3                                              	ret
