# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0086e3f0 <.text+0x46d3f0>:
  86e3f0:	55                                              	push   ebp
  86e3f1:	8b ec                                           	mov    ebp,esp
  86e3f3:	83 e4 f0                                        	and    esp,0xfffffff0
  86e3f6:	81 ec b4 00 00 00                               	sub    esp,0xb4
  86e3fc:	53                                              	push   ebx
  86e3fd:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  86e400:	56                                              	push   esi
  86e401:	8b 75 10                                        	mov    esi,DWORD PTR [ebp+0x10]
  86e404:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  86e407:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  86e40a:	57                                              	push   edi
  86e40b:	73 12                                           	jae    0x86e41f
  86e40d:	85 c0                                           	test   eax,eax
  86e40f:	8d 48 10                                        	lea    ecx,[eax+0x10]
  86e412:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  86e415:	74 11                                           	je     0x86e428
  86e417:	0f 28 03                                        	movaps xmm0,XMMWORD PTR [ebx]
  86e41a:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  86e41d:	eb 09                                           	jmp    0x86e428
  86e41f:	53                                              	push   ebx
  86e420:	50                                              	push   eax
  86e421:	8b ce                                           	mov    ecx,esi
  86e423:	e8 18 a4 e5 ff                                  	call   0x6c8840
  86e428:	f3 0f 10 55 0c                                  	movss  xmm2,DWORD PTR [ebp+0xc]
  86e42d:	0f 57 c0                                        	xorps  xmm0,xmm0
  86e430:	0f c6 c0 32                                     	shufps xmm0,xmm0,0x32
  86e434:	0f c6 d2 00                                     	shufps xmm2,xmm2,0x0
  86e438:	33 ff                                           	xor    edi,edi
  86e43a:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
  86e43f:	0f 29 54 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm2
  86e444:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  86e447:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  86e44a:	73 08                                           	jae    0x86e454
  86e44c:	83 c0 10                                        	add    eax,0x10
  86e44f:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  86e452:	eb 15                                           	jmp    0x86e469
  86e454:	8d 94 24 a0 00 00 00                            	lea    edx,[esp+0xa0]
  86e45b:	52                                              	push   edx
  86e45c:	50                                              	push   eax
  86e45d:	8b ce                                           	mov    ecx,esi
  86e45f:	e8 dc a3 e5 ff                                  	call   0x6c8840
  86e464:	0f 28 54 24 70                                  	movaps xmm2,XMMWORD PTR [esp+0x70]
  86e469:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  86e46c:	8b cf                                           	mov    ecx,edi
  86e46e:	83 e8 10                                        	sub    eax,0x10
  86e471:	85 c9                                           	test   ecx,ecx
  86e473:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  86e477:	db 44 24 0c                                     	fild   DWORD PTR [esp+0xc]
  86e47b:	7d 06                                           	jge    0x86e483
  86e47d:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  86e483:	d8 0d fc 26 fc 00                               	fmul   DWORD PTR ds:0xfc26fc
  86e489:	83 c7 01                                        	add    edi,0x1
  86e48c:	83 ff 06                                        	cmp    edi,0x6
  86e48f:	d8 05 38 24 fc 00                               	fadd   DWORD PTR ds:0xfc2438
  86e495:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  86e499:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  86e49f:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86e4a3:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  86e4a8:	d9 44 24 40                                     	fld    DWORD PTR [esp+0x40]
  86e4ac:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86e4b1:	d9 fe                                           	fsin
  86e4b3:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  86e4b7:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  86e4bb:	d9 ff                                           	fcos
  86e4bd:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  86e4c3:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86e4c7:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  86e4cb:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  86e4d1:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  86e4d5:	0f c6 c1 10                                     	shufps xmm0,xmm1,0x10
  86e4d9:	0f c6 44 24 60 88                               	shufps xmm0,XMMWORD PTR [esp+0x60],0x88
  86e4df:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  86e4e4:	f3 0f 10 4c 24 34                               	movss  xmm1,DWORD PTR [esp+0x34]
  86e4ea:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  86e4ef:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
  86e4f7:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  86e4fd:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  86e503:	0f 57 c9                                        	xorps  xmm1,xmm1
  86e506:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  86e50c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  86e512:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  86e518:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  86e51d:	0f 59 c2                                        	mulps  xmm0,xmm2
  86e520:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  86e523:	0f 28 0b                                        	movaps xmm1,XMMWORD PTR [ebx]
  86e526:	0f 58 c1                                        	addps  xmm0,xmm1
  86e529:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  86e52c:	0f 82 12 ff ff ff                               	jb     0x86e444
  86e532:	33 ff                                           	xor    edi,edi
  86e534:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  86e537:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  86e53a:	73 08                                           	jae    0x86e544
  86e53c:	83 c0 10                                        	add    eax,0x10
  86e53f:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  86e542:	eb 15                                           	jmp    0x86e559
  86e544:	8d 94 24 90 00 00 00                            	lea    edx,[esp+0x90]
  86e54b:	52                                              	push   edx
  86e54c:	50                                              	push   eax
  86e54d:	8b ce                                           	mov    ecx,esi
  86e54f:	e8 ec a2 e5 ff                                  	call   0x6c8840
  86e554:	0f 28 54 24 70                                  	movaps xmm2,XMMWORD PTR [esp+0x70]
  86e559:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  86e55c:	8b cf                                           	mov    ecx,edi
  86e55e:	83 e8 10                                        	sub    eax,0x10
  86e561:	85 c9                                           	test   ecx,ecx
  86e563:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  86e567:	db 44 24 0c                                     	fild   DWORD PTR [esp+0xc]
  86e56b:	7d 06                                           	jge    0x86e573
  86e56d:	d8 05 48 99 f9 00                               	fadd   DWORD PTR ds:0xf99948
  86e573:	d8 0d fc 26 fc 00                               	fmul   DWORD PTR ds:0xfc26fc
  86e579:	83 c7 01                                        	add    edi,0x1
  86e57c:	83 ff 06                                        	cmp    edi,0x6
  86e57f:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  86e583:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  86e589:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86e58d:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  86e592:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  86e596:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  86e59b:	d9 fe                                           	fsin
  86e59d:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  86e5a1:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
  86e5a5:	d9 ff                                           	fcos
  86e5a7:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  86e5ad:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  86e5b1:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  86e5b5:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  86e5bb:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  86e5bf:	0f c6 c1 10                                     	shufps xmm0,xmm1,0x10
  86e5c3:	0f c6 44 24 60 88                               	shufps xmm0,XMMWORD PTR [esp+0x60],0x88
  86e5c9:	0f 29 44 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm0
  86e5ce:	f3 0f 10 4c 24 44                               	movss  xmm1,DWORD PTR [esp+0x44]
  86e5d4:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  86e5d9:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
  86e5e1:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  86e5e7:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  86e5ed:	0f 57 c9                                        	xorps  xmm1,xmm1
  86e5f0:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  86e5f6:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  86e5fc:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  86e602:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  86e607:	0f 59 c2                                        	mulps  xmm0,xmm2
  86e60a:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  86e60d:	0f 28 0b                                        	movaps xmm1,XMMWORD PTR [ebx]
  86e610:	0f 58 c1                                        	addps  xmm0,xmm1
  86e613:	0f 29 00                                        	movaps XMMWORD PTR [eax],xmm0
  86e616:	0f 82 18 ff ff ff                               	jb     0x86e534
  86e61c:	5f                                              	pop    edi
  86e61d:	5e                                              	pop    esi
  86e61e:	5b                                              	pop    ebx
  86e61f:	8b e5                                           	mov    esp,ebp
  86e621:	5d                                              	pop    ebp
  86e622:	c3                                              	ret
