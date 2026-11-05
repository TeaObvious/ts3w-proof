# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original CAW1.22.10 Sims3Common.dll function envelope; paired actual annotated Ghidra C: 10980B00_TransformComponent_GetAbsoluteEulerRotation.c.

Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

10980b00 <.text+0x97fb00>:
10980b00:	55                                              	push   ebp
10980b01:	8b ec                                           	mov    ebp,esp
10980b03:	83 e4 f0                                        	and    esp,0xfffffff0
10980b06:	83 ec 50                                        	sub    esp,0x50
10980b09:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10980b0c:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10980b10:	50                                              	push   eax
10980b11:	e8 ca 97 dc ff                                  	call   0x1074a2e0
10980b16:	f3 0f 10 05 a8 63 b9 10                         	movss  xmm0,DWORD PTR ds:0x10b963a8
10980b1e:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
10980b21:	f3 0f 10 15 ec 10 b3 10                         	movss  xmm2,DWORD PTR ds:0x10b310ec
10980b29:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10980b2d:	0f 59 c1                                        	mulps  xmm0,xmm1
10980b30:	0f 57 c9                                        	xorps  xmm1,xmm1
10980b33:	0f 5c c8                                        	subps  xmm1,xmm0
10980b36:	0f 59 c8                                        	mulps  xmm1,xmm0
10980b39:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
10980b3d:	0f 58 ca                                        	addps  xmm1,xmm2
10980b40:	0f 28 d0                                        	movaps xmm2,xmm0
10980b43:	0f c6 d0 09                                     	shufps xmm2,xmm0,0x9
10980b47:	0f 28 d8                                        	movaps xmm3,xmm0
10980b4a:	0f c6 d8 ff                                     	shufps xmm3,xmm0,0xff
10980b4e:	0f 59 d0                                        	mulps  xmm2,xmm0
10980b51:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
10980b55:	0f 59 d8                                        	mulps  xmm3,xmm0
10980b58:	0f 28 c3                                        	movaps xmm0,xmm3
10980b5b:	0f 58 c2                                        	addps  xmm0,xmm2
10980b5e:	0f 5c d3                                        	subps  xmm2,xmm3
10980b61:	0f 28 d9                                        	movaps xmm3,xmm1
10980b64:	0f c6 d9 09                                     	shufps xmm3,xmm1,0x9
10980b68:	0f 58 d9                                        	addps  xmm3,xmm1
10980b6b:	0f 28 cb                                        	movaps xmm1,xmm3
10980b6e:	0f c6 c8 01                                     	shufps xmm1,xmm0,0x1
10980b72:	0f c6 ca 28                                     	shufps xmm1,xmm2,0x28
10980b76:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
10980b7b:	0f 28 ca                                        	movaps xmm1,xmm2
10980b7e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10980b82:	0f c6 cb 20                                     	shufps xmm1,xmm3,0x20
10980b86:	0f c6 c8 18                                     	shufps xmm1,xmm0,0x18
10980b8a:	51                                              	push   ecx
10980b8b:	8d 54 24 04                                     	lea    edx,[esp+0x4]
10980b8f:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
10980b93:	0f c6 c3 08                                     	shufps xmm0,xmm3,0x8
10980b97:	52                                              	push   edx
10980b98:	0f 29 4c 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm1
10980b9d:	0f 29 44 24 48                                  	movaps XMMWORD PTR [esp+0x48],xmm0
10980ba2:	e8 89 30 de ff                                  	call   0x10763c30
10980ba7:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
10980bac:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980baf:	0f 29 44 24 08                                  	movaps XMMWORD PTR [esp+0x8],xmm0
10980bb4:	f3 0f 10 4c 24 08                               	movss  xmm1,DWORD PTR [esp+0x8]
10980bba:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
10980bbf:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10980bc5:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
10980bcb:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10980bcf:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
10980bd4:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
10980bda:	89 08                                           	mov    DWORD PTR [eax],ecx
10980bdc:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
10980be2:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10980be6:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10980bec:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10980bf0:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10980bf3:	83 c4 08                                        	add    esp,0x8
10980bf6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10980bf9:	8b e5                                           	mov    esp,ebp
10980bfb:	5d                                              	pop    ebp
10980bfc:	c3                                              	ret
