# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf2540 (RoofPolygon_ConstructTriangleBase)
Complete Ghidra function body: 0x00bf2540..0x00bf265c (exclusive end)
Ghidra body ranges: [[00bf2540, 00bf265b]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf2540 <.text+0x7f1540>:
  bf2540:	55                                              	push   ebp
  bf2541:	8b ec                                           	mov    ebp,esp
  bf2543:	83 e4 f0                                        	and    esp,0xfffffff0
  bf2546:	83 ec 24                                        	sub    esp,0x24
  bf2549:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  bf254c:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  bf254f:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  bf2557:	53                                              	push   ebx
  bf2558:	56                                              	push   esi
  bf2559:	8b f1                                           	mov    esi,ecx
  bf255b:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  bf255e:	57                                              	push   edi
  bf255f:	8b 7d 20                                        	mov    edi,DWORD PTR [ebp+0x20]
  bf2562:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  bf2565:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
  bf2568:	89 7e 1c                                        	mov    DWORD PTR [esi+0x1c],edi
  bf256b:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  bf256e:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  bf2571:	8b d8                                           	mov    ebx,eax
  bf2573:	0f af df                                        	imul   ebx,edi
  bf2576:	89 4e 14                                        	mov    DWORD PTR [esi+0x14],ecx
  bf2579:	8b 4d 24                                        	mov    ecx,DWORD PTR [ebp+0x24]
  bf257c:	83 c7 01                                        	add    edi,0x1
  bf257f:	0f af f8                                        	imul   edi,eax
  bf2582:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  bf2585:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
  bf2588:	89 4e 20                                        	mov    DWORD PTR [esi+0x20],ecx
  bf258b:	8b 4d 28                                        	mov    ecx,DWORD PTR [ebp+0x28]
  bf258e:	89 56 18                                        	mov    DWORD PTR [esi+0x18],edx
  bf2591:	89 4e 24                                        	mov    DWORD PTR [esi+0x24],ecx
  bf2594:	c7 06 ec 34 07 01                               	mov    DWORD PTR [esi],0x10734ec
  bf259a:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
  bf259d:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  bf259f:	03 da                                           	add    ebx,edx
  bf25a1:	f3 0f 10 0c 99                                  	movss  xmm1,DWORD PTR [ecx+ebx*4]
  bf25a6:	8d 1c 99                                        	lea    ebx,[ecx+ebx*4]
  bf25a9:	03 fa                                           	add    edi,edx
  bf25ab:	f3 0f 10 54 b9 04                               	movss  xmm2,DWORD PTR [ecx+edi*4+0x4]
  bf25b1:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  bf25b4:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  bf25b7:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  bf25bb:	f3 0f 11 54 24 14                               	movss  DWORD PTR [esp+0x14],xmm2
  bf25c1:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  bf25c7:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  bf25cd:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  bf25d3:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
  bf25d8:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
  bf25dd:	0f 57 d2                                        	xorps  xmm2,xmm2
  bf25e0:	f3 0f 11 54 24 18                               	movss  DWORD PTR [esp+0x18],xmm2
  bf25e6:	f3 0f 10 53 04                                  	movss  xmm2,DWORD PTR [ebx+0x4]
  bf25eb:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  bf25f1:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  bf25f5:	f3 0f 11 54 24 14                               	movss  DWORD PTR [esp+0x14],xmm2
  bf25fb:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  bf2601:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  bf2606:	8d 7e 30                                        	lea    edi,[esi+0x30]
  bf2609:	57                                              	push   edi
  bf260a:	52                                              	push   edx
  bf260b:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  bf2610:	e8 cb e6 ad ff                                  	call   0x6d0ce0
  bf2615:	84 c0                                           	test   al,al
  bf2617:	75 2f                                           	jne    0xbf2648
  bf2619:	0f 28 4c 24 10                                  	movaps xmm1,XMMWORD PTR [esp+0x10]
  bf261e:	0f 28 44 24 20                                  	movaps xmm0,XMMWORD PTR [esp+0x20]
  bf2623:	0f 28 d8                                        	movaps xmm3,xmm0
  bf2626:	0f c6 d8 12                                     	shufps xmm3,xmm0,0x12
  bf262a:	0f 28 d1                                        	movaps xmm2,xmm1
  bf262d:	0f c6 d1 09                                     	shufps xmm2,xmm1,0x9
  bf2631:	0f 59 d3                                        	mulps  xmm2,xmm3
  bf2634:	0f 28 d9                                        	movaps xmm3,xmm1
  bf2637:	0f c6 d9 12                                     	shufps xmm3,xmm1,0x12
  bf263b:	0f c6 c0 09                                     	shufps xmm0,xmm0,0x9
  bf263f:	0f 59 d8                                        	mulps  xmm3,xmm0
  bf2642:	0f 5c da                                        	subps  xmm3,xmm2
  bf2645:	0f 29 1f                                        	movaps XMMWORD PTR [edi],xmm3
  bf2648:	57                                              	push   edi
  bf2649:	e8 62 fd ff ff                                  	call   0xbf23b0
  bf264e:	83 c4 04                                        	add    esp,0x4
  bf2651:	5f                                              	pop    edi
  bf2652:	8b c6                                           	mov    eax,esi
  bf2654:	5e                                              	pop    esi
  bf2655:	5b                                              	pop    ebx
  bf2656:	8b e5                                           	mov    esp,ebp
  bf2658:	5d                                              	pop    ebp
  bf2659:	c2 24 00                                        	ret    0x24
