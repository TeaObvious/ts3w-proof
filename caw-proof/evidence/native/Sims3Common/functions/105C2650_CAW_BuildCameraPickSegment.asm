# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

105c2650 <.text+0x5c1650>:
105c2650:	55                                              	push   ebp
105c2651:	8b ec                                           	mov    ebp,esp
105c2653:	83 e4 f0                                        	and    esp,0xfffffff0
105c2656:	83 ec 28                                        	sub    esp,0x28
105c2659:	56                                              	push   esi
105c265a:	57                                              	push   edi
105c265b:	e8 60 6e e4 ff                                  	call   0x104094c0
105c2660:	8b f8                                           	mov    edi,eax
105c2662:	8d 44 24 10                                     	lea    eax,[esp+0x10]
105c2666:	50                                              	push   eax
105c2667:	8b cf                                           	mov    ecx,edi
105c2669:	e8 d2 8a e4 ff                                  	call   0x1040b140
105c266e:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105c2672:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
105c2676:	2b 4c 24 10                                     	sub    ecx,DWORD PTR [esp+0x10]
105c267a:	2b 54 24 14                                     	sub    edx,DWORD PTR [esp+0x14]
105c267e:	8b 7f 28                                        	mov    edi,DWORD PTR [edi+0x28]
105c2681:	85 ff                                           	test   edi,edi
105c2683:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
105c2686:	f3 0f 2a d1                                     	cvtsi2ss xmm2,ecx
105c268a:	f3 0f 2a ea                                     	cvtsi2ss xmm5,edx
105c268e:	f3 0f 11 54 24 08                               	movss  DWORD PTR [esp+0x8],xmm2
105c2694:	f3 0f 11 6c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm5
105c269a:	74 4e                                           	je     0x105c26ea
105c269c:	8d 44 24 20                                     	lea    eax,[esp+0x20]
105c26a0:	50                                              	push   eax
105c26a1:	57                                              	push   edi
105c26a2:	ff 15 80 b8 aa 10                               	call   DWORD PTR ds:0x10aab880
105c26a8:	85 c0                                           	test   eax,eax
105c26aa:	74 32                                           	je     0x105c26de
105c26ac:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
105c26b0:	85 c9                                           	test   ecx,ecx
105c26b2:	7e 12                                           	jle    0x105c26c6
105c26b4:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
105c26b8:	85 c0                                           	test   eax,eax
105c26ba:	7e 0a                                           	jle    0x105c26c6
105c26bc:	f3 0f 2a d1                                     	cvtsi2ss xmm2,ecx
105c26c0:	f3 0f 2a e8                                     	cvtsi2ss xmm5,eax
105c26c4:	eb 24                                           	jmp    0x105c26ea
105c26c6:	f3 0f 10 15 ac 44 ac 10                         	movss  xmm2,DWORD PTR ds:0x10ac44ac
105c26ce:	b8 01 00 00 00                                  	mov    eax,0x1
105c26d3:	0f 28 ea                                        	movaps xmm5,xmm2
105c26d6:	89 45 0c                                        	mov    DWORD PTR [ebp+0xc],eax
105c26d9:	89 45 10                                        	mov    DWORD PTR [ebp+0x10],eax
105c26dc:	eb 0c                                           	jmp    0x105c26ea
105c26de:	f3 0f 10 54 24 08                               	movss  xmm2,DWORD PTR [esp+0x8]
105c26e4:	f3 0f 10 6c 24 0c                               	movss  xmm5,DWORD PTR [esp+0xc]
105c26ea:	f3 0f 10 1d ec 10 b3 10                         	movss  xmm3,DWORD PTR ds:0x10b310ec
105c26f2:	f3 0f 10 3d 84 e1 aa 10                         	movss  xmm7,DWORD PTR ds:0x10aae184
105c26fa:	f3 0f 10 4e 10                                  	movss  xmm1,DWORD PTR [esi+0x10]
105c26ff:	f3 0f 2a 45 0c                                  	cvtsi2ss xmm0,DWORD PTR [ebp+0xc]
105c2704:	0f 28 76 60                                     	movaps xmm6,XMMWORD PTR [esi+0x60]
105c2708:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
105c270b:	f3 0f 58 c3                                     	addss  xmm0,xmm3
105c270f:	f3 0f 5e c2                                     	divss  xmm0,xmm2
105c2713:	f3 0f 5c c3                                     	subss  xmm0,xmm3
105c2717:	f3 0f 59 46 0c                                  	mulss  xmm0,DWORD PTR [esi+0xc]
105c271c:	f3 0f 11 7c 24 18                               	movss  DWORD PTR [esp+0x18],xmm7
105c2722:	f3 0f 2a 7d 10                                  	cvtsi2ss xmm7,DWORD PTR [ebp+0x10]
105c2727:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105c272d:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
105c2733:	f3 0f 58 fb                                     	addss  xmm7,xmm3
105c2737:	f3 0f 5e fd                                     	divss  xmm7,xmm5
105c273b:	0f 28 eb                                        	movaps xmm5,xmm3
105c273e:	f3 0f 5c ef                                     	subss  xmm5,xmm7
105c2742:	f3 0f 59 e9                                     	mulss  xmm5,xmm1
105c2746:	0f 29 31                                        	movaps XMMWORD PTR [ecx],xmm6
105c2749:	0f 28 66 40                                     	movaps xmm4,XMMWORD PTR [esi+0x40]
105c274d:	0f 28 56 30                                     	movaps xmm2,XMMWORD PTR [esi+0x30]
105c2751:	f3 0f 11 6c 24 14                               	movss  DWORD PTR [esp+0x14],xmm5
105c2757:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
105c275c:	0f 28 c8                                        	movaps xmm1,xmm0
105c275f:	0f c6 c8 55                                     	shufps xmm1,xmm0,0x55
105c2763:	0f 59 cc                                        	mulps  xmm1,xmm4
105c2766:	0f 28 e0                                        	movaps xmm4,xmm0
105c2769:	0f c6 e0 00                                     	shufps xmm4,xmm0,0x0
105c276d:	0f 59 e2                                        	mulps  xmm4,xmm2
105c2770:	0f 28 d0                                        	movaps xmm2,xmm0
105c2773:	0f c6 d0 aa                                     	shufps xmm2,xmm0,0xaa
105c2777:	0f 28 46 50                                     	movaps xmm0,XMMWORD PTR [esi+0x50]
105c277b:	0f 59 d0                                        	mulps  xmm2,xmm0
105c277e:	0f 58 cc                                        	addps  xmm1,xmm4
105c2781:	0f 58 ca                                        	addps  xmm1,xmm2
105c2784:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
105c2787:	0f 28 d1                                        	movaps xmm2,xmm1
105c278a:	0f 59 d1                                        	mulps  xmm2,xmm1
105c278d:	0f 28 c2                                        	movaps xmm0,xmm2
105c2790:	0f c6 c2 02                                     	shufps xmm0,xmm2,0x2
105c2794:	0f 28 e2                                        	movaps xmm4,xmm2
105c2797:	0f c6 e2 01                                     	shufps xmm4,xmm2,0x1
105c279b:	0f 58 c4                                        	addps  xmm0,xmm4
105c279e:	0f 58 c2                                        	addps  xmm0,xmm2
105c27a1:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
105c27a5:	0f 28 e8                                        	movaps xmm5,xmm0
105c27a8:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
105c27b0:	0f 52 e5                                        	rsqrtps xmm4,xmm5
105c27b3:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
105c27b7:	0f 28 d0                                        	movaps xmm2,xmm0
105c27ba:	0f 28 fc                                        	movaps xmm7,xmm4
105c27bd:	0f 59 fc                                        	mulps  xmm7,xmm4
105c27c0:	0f 59 fd                                        	mulps  xmm7,xmm5
105c27c3:	0f 5c d7                                        	subps  xmm2,xmm7
105c27c6:	f3 0f 10 db                                     	movss  xmm3,xmm3
105c27ca:	0f c6 db 00                                     	shufps xmm3,xmm3,0x0
105c27ce:	0f 28 fb                                        	movaps xmm7,xmm3
105c27d1:	0f 59 fc                                        	mulps  xmm7,xmm4
105c27d4:	0f 59 d7                                        	mulps  xmm2,xmm7
105c27d7:	0f 58 d4                                        	addps  xmm2,xmm4
105c27da:	0f 28 e2                                        	movaps xmm4,xmm2
105c27dd:	0f 59 e2                                        	mulps  xmm4,xmm2
105c27e0:	0f 59 e5                                        	mulps  xmm4,xmm5
105c27e3:	0f 5c c4                                        	subps  xmm0,xmm4
105c27e6:	0f 59 da                                        	mulps  xmm3,xmm2
105c27e9:	0f 59 c3                                        	mulps  xmm0,xmm3
105c27ec:	0f 58 c2                                        	addps  xmm0,xmm2
105c27ef:	0f 59 c1                                        	mulps  xmm0,xmm1
105c27f2:	f3 0f 10 4e 20                                  	movss  xmm1,DWORD PTR [esi+0x20]
105c27f7:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
105c27fb:	0f 59 c1                                        	mulps  xmm0,xmm1
105c27fe:	5f                                              	pop    edi
105c27ff:	0f 58 c6                                        	addps  xmm0,xmm6
105c2802:	0f 29 02                                        	movaps XMMWORD PTR [edx],xmm0
105c2805:	5e                                              	pop    esi
105c2806:	8b e5                                           	mov    esp,ebp
105c2808:	5d                                              	pop    ebp
105c2809:	c3                                              	ret
