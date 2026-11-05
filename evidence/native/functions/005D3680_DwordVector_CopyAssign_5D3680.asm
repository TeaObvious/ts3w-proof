# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x005d3680 DwordVector_CopyAssign_5D3680
# Complete current Ghidra body [005d3680, 005d3746] inclusive: 92 body instructions, 199 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 005D3680_DwordVector_CopyAssign_5D3680.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005d3680 <.text+0x1d2680>:
  5d3680:	53                                              	push   ebx
  5d3681:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
  5d3685:	56                                              	push   esi
  5d3686:	8b f1                                           	mov    esi,ecx
  5d3688:	3b de                                           	cmp    ebx,esi
  5d368a:	0f 84 b0 00 00 00                               	je     0x5d3740
  5d3690:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5d3692:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5d3694:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  5d3697:	55                                              	push   ebp
  5d3698:	8b 6b 04                                        	mov    ebp,DWORD PTR [ebx+0x4]
  5d369b:	57                                              	push   edi
  5d369c:	8b fd                                           	mov    edi,ebp
  5d369e:	2b f8                                           	sub    edi,eax
  5d36a0:	2b ca                                           	sub    ecx,edx
  5d36a2:	c1 ff 02                                        	sar    edi,0x2
  5d36a5:	c1 f9 02                                        	sar    ecx,0x2
  5d36a8:	3b f9                                           	cmp    edi,ecx
  5d36aa:	76 34                                           	jbe    0x5d36e0
  5d36ac:	55                                              	push   ebp
  5d36ad:	50                                              	push   eax
  5d36ae:	57                                              	push   edi
  5d36af:	8b ce                                           	mov    ecx,esi
  5d36b1:	e8 7a 65 5a 00                                  	call   0xb79c30
  5d36b6:	8b d8                                           	mov    ebx,eax
  5d36b8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5d36ba:	85 c0                                           	test   eax,eax
  5d36bc:	74 09                                           	je     0x5d36c7
  5d36be:	50                                              	push   eax
  5d36bf:	e8 1c 0e f1 ff                                  	call   0x4e44e0
  5d36c4:	83 c4 04                                        	add    esp,0x4
  5d36c7:	8b c3                                           	mov    eax,ebx
  5d36c9:	8d 14 bb                                        	lea    edx,[ebx+edi*4]
  5d36cc:	8d 0c b8                                        	lea    ecx,[eax+edi*4]
  5d36cf:	5f                                              	pop    edi
  5d36d0:	5d                                              	pop    ebp
  5d36d1:	89 1e                                           	mov    DWORD PTR [esi],ebx
  5d36d3:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  5d36d6:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5d36d9:	8b c6                                           	mov    eax,esi
  5d36db:	5e                                              	pop    esi
  5d36dc:	5b                                              	pop    ebx
  5d36dd:	c2 04 00                                        	ret    0x4
  5d36e0:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  5d36e3:	2b ca                                           	sub    ecx,edx
  5d36e5:	c1 f9 02                                        	sar    ecx,0x2
  5d36e8:	3b f9                                           	cmp    edi,ecx
  5d36ea:	76 3c                                           	jbe    0x5d3728
  5d36ec:	8b 2d 88 66 f9 00                               	mov    ebp,DWORD PTR ds:0xf96688
  5d36f2:	03 c9                                           	add    ecx,ecx
  5d36f4:	03 c9                                           	add    ecx,ecx
  5d36f6:	51                                              	push   ecx
  5d36f7:	50                                              	push   eax
  5d36f8:	52                                              	push   edx
  5d36f9:	ff d5                                           	call   ebp
  5d36fb:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  5d36fe:	8b 0b                                           	mov    ecx,DWORD PTR [ebx]
  5d3700:	8b d0                                           	mov    edx,eax
  5d3702:	2b 16                                           	sub    edx,DWORD PTR [esi]
  5d3704:	c1 fa 02                                        	sar    edx,0x2
  5d3707:	8d 0c 91                                        	lea    ecx,[ecx+edx*4]
  5d370a:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  5d370d:	2b d1                                           	sub    edx,ecx
  5d370f:	52                                              	push   edx
  5d3710:	51                                              	push   ecx
  5d3711:	50                                              	push   eax
  5d3712:	ff d5                                           	call   ebp
  5d3714:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5d3716:	83 c4 18                                        	add    esp,0x18
  5d3719:	8d 0c b8                                        	lea    ecx,[eax+edi*4]
  5d371c:	5f                                              	pop    edi
  5d371d:	5d                                              	pop    ebp
  5d371e:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5d3721:	8b c6                                           	mov    eax,esi
  5d3723:	5e                                              	pop    esi
  5d3724:	5b                                              	pop    ebx
  5d3725:	c2 04 00                                        	ret    0x4
  5d3728:	2b e8                                           	sub    ebp,eax
  5d372a:	55                                              	push   ebp
  5d372b:	50                                              	push   eax
  5d372c:	52                                              	push   edx
  5d372d:	ff 15 88 66 f9 00                               	call   DWORD PTR ds:0xf96688
  5d3733:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5d3735:	83 c4 0c                                        	add    esp,0xc
  5d3738:	8d 0c b8                                        	lea    ecx,[eax+edi*4]
  5d373b:	5f                                              	pop    edi
  5d373c:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5d373f:	5d                                              	pop    ebp
  5d3740:	8b c6                                           	mov    eax,esi
  5d3742:	5e                                              	pop    esi
  5d3743:	5b                                              	pop    ebx
  5d3744:	c2 04 00                                        	ret    0x4
