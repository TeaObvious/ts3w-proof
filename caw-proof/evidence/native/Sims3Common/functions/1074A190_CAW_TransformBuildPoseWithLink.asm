# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original CAW1.22.10 Sims3Common.dll function envelope; paired actual annotated Ghidra C: 1074A190_CAW_TransformBuildPoseWithLink.c.

Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

1074a190 <.text+0x749190>:
1074a190:	55                                              	push   ebp
1074a191:	8b ec                                           	mov    ebp,esp
1074a193:	83 e4 f0                                        	and    esp,0xfffffff0
1074a196:	83 ec 2c                                        	sub    esp,0x2c
1074a199:	56                                              	push   esi
1074a19a:	8b f1                                           	mov    esi,ecx
1074a19c:	83 7e 30 00                                     	cmp    DWORD PTR [esi+0x30],0x0
1074a1a0:	75 19                                           	jne    0x1074a1bb
1074a1a2:	0f 28 46 10                                     	movaps xmm0,XMMWORD PTR [esi+0x10]
1074a1a6:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1074a1a9:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
1074a1ac:	0f 28 46 20                                     	movaps xmm0,XMMWORD PTR [esi+0x20]
1074a1b0:	0f 29 40 10                                     	movaps XMMWORD PTR [eax+0x10],xmm0
1074a1b4:	5e                                              	pop    esi
1074a1b5:	8b e5                                           	mov    esp,ebp
1074a1b7:	5d                                              	pop    ebp
1074a1b8:	c2 04 00                                        	ret    0x4
1074a1bb:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1074a1bf:	50                                              	push   eax
1074a1c0:	e8 4b f6 ff ff                                  	call   0x10749810
1074a1c5:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
1074a1c8:	0f 28 4e 20                                     	movaps xmm1,XMMWORD PTR [esi+0x20]
1074a1cc:	0f 28 d9                                        	movaps xmm3,xmm1
1074a1cf:	0f c6 d9 09                                     	shufps xmm3,xmm1,0x9
1074a1d3:	0f 28 c1                                        	movaps xmm0,xmm1
1074a1d6:	0f c6 c1 12                                     	shufps xmm0,xmm1,0x12
1074a1da:	0f 28 ea                                        	movaps xmm5,xmm2
1074a1dd:	0f c6 ea 09                                     	shufps xmm5,xmm2,0x9
1074a1e1:	0f 59 c5                                        	mulps  xmm0,xmm5
1074a1e4:	0f 28 f2                                        	movaps xmm6,xmm2
1074a1e7:	0f c6 f2 12                                     	shufps xmm6,xmm2,0x12
1074a1eb:	0f 59 de                                        	mulps  xmm3,xmm6
1074a1ee:	0f 5c c3                                        	subps  xmm0,xmm3
1074a1f1:	0f 28 fa                                        	movaps xmm7,xmm2
1074a1f4:	0f c6 fa ff                                     	shufps xmm7,xmm2,0xff
1074a1f8:	0f 28 df                                        	movaps xmm3,xmm7
1074a1fb:	0f 59 d9                                        	mulps  xmm3,xmm1
1074a1fe:	0f 58 c3                                        	addps  xmm0,xmm3
1074a201:	0f 28 e0                                        	movaps xmm4,xmm0
1074a204:	0f c6 e0 09                                     	shufps xmm4,xmm0,0x9
1074a208:	0f 28 d8                                        	movaps xmm3,xmm0
1074a20b:	0f c6 d8 12                                     	shufps xmm3,xmm0,0x12
1074a20f:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
1074a217:	0f 59 dd                                        	mulps  xmm3,xmm5
1074a21a:	0f 59 e6                                        	mulps  xmm4,xmm6
1074a21d:	0f 5c dc                                        	subps  xmm3,xmm4
1074a220:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1074a224:	0f 59 d8                                        	mulps  xmm3,xmm0
1074a227:	0f 28 40 10                                     	movaps xmm0,XMMWORD PTR [eax+0x10]
1074a22b:	0f 58 d9                                        	addps  xmm3,xmm1
1074a22e:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1074a231:	0f 58 d8                                        	addps  xmm3,xmm0
1074a234:	0f 28 46 10                                     	movaps xmm0,XMMWORD PTR [esi+0x10]
1074a238:	0f 28 c8                                        	movaps xmm1,xmm0
1074a23b:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
1074a23f:	0f 59 ce                                        	mulps  xmm1,xmm6
1074a242:	0f 29 4c 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm1
1074a247:	0f 28 c8                                        	movaps xmm1,xmm0
1074a24a:	0f c6 c8 12                                     	shufps xmm1,xmm0,0x12
1074a24e:	0f 59 cd                                        	mulps  xmm1,xmm5
1074a251:	0f 28 6c 24 10                                  	movaps xmm5,XMMWORD PTR [esp+0x10]
1074a256:	0f 5c cd                                        	subps  xmm1,xmm5
1074a259:	0f 28 e8                                        	movaps xmm5,xmm0
1074a25c:	0f 59 ef                                        	mulps  xmm5,xmm7
1074a25f:	0f 58 cd                                        	addps  xmm1,xmm5
1074a262:	0f 28 ea                                        	movaps xmm5,xmm2
1074a265:	0f 28 e0                                        	movaps xmm4,xmm0
1074a268:	0f c6 e0 ff                                     	shufps xmm4,xmm0,0xff
1074a26c:	0f 59 c2                                        	mulps  xmm0,xmm2
1074a26f:	0f 59 ec                                        	mulps  xmm5,xmm4
1074a272:	0f 58 cd                                        	addps  xmm1,xmm5
1074a275:	0f 28 d0                                        	movaps xmm2,xmm0
1074a278:	0f c6 d0 02                                     	shufps xmm2,xmm0,0x2
1074a27c:	0f 28 e8                                        	movaps xmm5,xmm0
1074a27f:	0f c6 e8 01                                     	shufps xmm5,xmm0,0x1
1074a283:	0f 58 d5                                        	addps  xmm2,xmm5
1074a286:	0f 58 d0                                        	addps  xmm2,xmm0
1074a289:	0f 28 c1                                        	movaps xmm0,xmm1
1074a28c:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
1074a290:	0f 59 e7                                        	mulps  xmm4,xmm7
1074a293:	0f 5c e2                                        	subps  xmm4,xmm2
1074a296:	0f c6 c4 0a                                     	shufps xmm0,xmm4,0xa
1074a29a:	0f c6 c8 84                                     	shufps xmm1,xmm0,0x84
1074a29e:	0f 29 08                                        	movaps XMMWORD PTR [eax],xmm1
1074a2a1:	0f 29 58 10                                     	movaps XMMWORD PTR [eax+0x10],xmm3
1074a2a5:	5e                                              	pop    esi
1074a2a6:	8b e5                                           	mov    esp,ebp
1074a2a8:	5d                                              	pop    ebp
1074a2a9:	c2 04 00                                        	ret    0x4
