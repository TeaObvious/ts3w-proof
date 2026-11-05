# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079c4e0, 0x0079c71f); analyst name ShaderPackage_ReadSBLKDefinitions.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079c4e0 <.text+0x39b4e0>:
  79c4e0:	83 ec 24             	sub    esp,0x24
  79c4e3:	53                   	push   ebx
  79c4e4:	55                   	push   ebp
  79c4e5:	56                   	push   esi
  79c4e6:	8b 74 24 34          	mov    esi,DWORD PTR [esp+0x34]
  79c4ea:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79c4ed:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79c4f0:	57                   	push   edi
  79c4f1:	8b e9                	mov    ebp,ecx
  79c4f3:	50                   	push   eax
  79c4f4:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  79c4f8:	51                   	push   ecx
  79c4f9:	52                   	push   edx
  79c4fa:	e8 81 14 d4 ff       	call   0x4dd980
  79c4ff:	83 c4 0c             	add    esp,0xc
  79c502:	8b ce                	mov    ecx,esi
  79c504:	50                   	push   eax
  79c505:	e8 e6 b4 03 00       	call   0x7d79f0
  79c50a:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  79c50e:	0f b6 f8             	movzx  edi,al
  79c511:	25 00 ff 00 00       	and    eax,0xff00
  79c516:	83 7c 24 18 00       	cmp    DWORD PTR [esp+0x18],0x0
  79c51b:	8b d8                	mov    ebx,eax
  79c51d:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  79c521:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  79c525:	c7 44 24 14 00 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
  79c52d:	0f 86 e2 01 00 00    	jbe    0x79c715
  79c533:	eb 13                	jmp    0x79c548
  79c535:	eb 09                	jmp    0x79c540
  79c537:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  79c53e:	8b ff                	mov    edi,edi
  79c540:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  79c544:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  79c548:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79c54c:	0f 84 c3 01 00 00    	je     0x79c715
  79c552:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79c555:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79c558:	50                   	push   eax
  79c559:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  79c55d:	51                   	push   ecx
  79c55e:	52                   	push   edx
  79c55f:	e8 1c 14 d4 ff       	call   0x4dd980
  79c564:	83 c4 0c             	add    esp,0xc
  79c567:	8b ce                	mov    ecx,esi
  79c569:	50                   	push   eax
  79c56a:	e8 81 b4 03 00       	call   0x7d79f0
  79c56f:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79c572:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79c575:	50                   	push   eax
  79c576:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  79c57a:	51                   	push   ecx
  79c57b:	52                   	push   edx
  79c57c:	e8 ff 13 d4 ff       	call   0x4dd980
  79c581:	83 c4 0c             	add    esp,0xc
  79c584:	8b ce                	mov    ecx,esi
  79c586:	50                   	push   eax
  79c587:	e8 64 b4 03 00       	call   0x7d79f0
  79c58c:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79c58f:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79c592:	50                   	push   eax
  79c593:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  79c597:	51                   	push   ecx
  79c598:	52                   	push   edx
  79c599:	e8 e2 13 d4 ff       	call   0x4dd980
  79c59e:	83 c4 0c             	add    esp,0xc
  79c5a1:	8b ce                	mov    ecx,esi
  79c5a3:	50                   	push   eax
  79c5a4:	e8 47 b4 03 00       	call   0x7d79f0
  79c5a9:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79c5ac:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79c5af:	50                   	push   eax
  79c5b0:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  79c5b4:	51                   	push   ecx
  79c5b5:	52                   	push   edx
  79c5b6:	e8 c5 13 d4 ff       	call   0x4dd980
  79c5bb:	83 c4 0c             	add    esp,0xc
  79c5be:	8b ce                	mov    ecx,esi
  79c5c0:	50                   	push   eax
  79c5c1:	e8 2a b4 03 00       	call   0x7d79f0
  79c5c6:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79c5ca:	0f 84 38 01 00 00    	je     0x79c708
  79c5d0:	81 7c 24 24 53 42 4c 4b 	cmp    DWORD PTR [esp+0x24],0x4b4c4253
  79c5d8:	0f 85 2a 01 00 00    	jne    0x79c708
  79c5de:	85 ff                	test   edi,edi
  79c5e0:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  79c5e4:	74 04                	je     0x79c5ea
  79c5e6:	85 c7                	test   edi,eax
  79c5e8:	74 08                	je     0x79c5f2
  79c5ea:	85 db                	test   ebx,ebx
  79c5ec:	74 17                	je     0x79c605
  79c5ee:	85 c3                	test   ebx,eax
  79c5f0:	75 13                	jne    0x79c605
  79c5f2:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  79c5f6:	6a 01                	push   0x1
  79c5f8:	50                   	push   eax
  79c5f9:	8b ce                	mov    ecx,esi
  79c5fb:	e8 90 be 03 00       	call   0x7d8490
  79c600:	e9 e4 00 00 00       	jmp    0x79c6e9
  79c605:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  79c608:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  79c60b:	51                   	push   ecx
  79c60c:	8d 54 24 14          	lea    edx,[esp+0x14]
  79c610:	52                   	push   edx
  79c611:	50                   	push   eax
  79c612:	e8 69 13 d4 ff       	call   0x4dd980
  79c617:	83 c4 0c             	add    esp,0xc
  79c61a:	8b ce                	mov    ecx,esi
  79c61c:	50                   	push   eax
  79c61d:	e8 ce b3 03 00       	call   0x7d79f0
  79c622:	33 db                	xor    ebx,ebx
  79c624:	39 5c 24 10          	cmp    DWORD PTR [esp+0x10],ebx
  79c628:	0f 86 bb 00 00 00    	jbe    0x79c6e9
  79c62e:	8b ff                	mov    edi,edi
  79c630:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79c634:	0f 84 af 00 00 00    	je     0x79c6e9
  79c63a:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  79c63d:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  79c640:	51                   	push   ecx
  79c641:	8d 54 24 30          	lea    edx,[esp+0x30]
  79c645:	52                   	push   edx
  79c646:	50                   	push   eax
  79c647:	e8 34 13 d4 ff       	call   0x4dd980
  79c64c:	83 c4 0c             	add    esp,0xc
  79c64f:	8b ce                	mov    ecx,esi
  79c651:	50                   	push   eax
  79c652:	e8 99 b3 03 00       	call   0x7d79f0
  79c657:	6a 00                	push   0x0
  79c659:	6a 00                	push   0x0
  79c65b:	6a 00                	push   0x0
  79c65d:	6a 00                	push   0x0
  79c65f:	68 50 d5 ff 00       	push   0xffd550
  79c664:	6a 38                	push   0x38
  79c666:	e8 95 7e d4 ff       	call   0x4e4500
  79c66b:	83 c4 18             	add    esp,0x18
  79c66e:	85 c0                	test   eax,eax
  79c670:	74 15                	je     0x79c687
  79c672:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  79c676:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  79c67a:	51                   	push   ecx
  79c67b:	52                   	push   edx
  79c67c:	8b c8                	mov    ecx,eax
  79c67e:	e8 dd df ff ff       	call   0x79a660
  79c683:	8b f8                	mov    edi,eax
  79c685:	eb 02                	jmp    0x79c689
  79c687:	33 ff                	xor    edi,edi
  79c689:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  79c68d:	89 47 28             	mov    DWORD PTR [edi+0x28],eax
  79c690:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  79c693:	51                   	push   ecx
  79c694:	56                   	push   esi
  79c695:	8b cf                	mov    ecx,edi
  79c697:	89 7c 24 44          	mov    DWORD PTR [esp+0x44],edi
  79c69b:	e8 c0 e3 ff ff       	call   0x79aa60
  79c6a0:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79c6a4:	74 33                	je     0x79c6d9
  79c6a6:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  79c6a9:	3b 45 24             	cmp    eax,DWORD PTR [ebp+0x24]
  79c6ac:	8d 4d 1c             	lea    ecx,[ebp+0x1c]
  79c6af:	73 0e                	jae    0x79c6bf
  79c6b1:	85 c0                	test   eax,eax
  79c6b3:	8d 50 04             	lea    edx,[eax+0x4]
  79c6b6:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  79c6b9:	74 0f                	je     0x79c6ca
  79c6bb:	89 38                	mov    DWORD PTR [eax],edi
  79c6bd:	eb 0b                	jmp    0x79c6ca
  79c6bf:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  79c6c3:	52                   	push   edx
  79c6c4:	50                   	push   eax
  79c6c5:	e8 56 5d 1e 00       	call   0x982420
  79c6ca:	83 c3 01             	add    ebx,0x1
  79c6cd:	3b 5c 24 10          	cmp    ebx,DWORD PTR [esp+0x10]
  79c6d1:	0f 82 59 ff ff ff    	jb     0x79c630
  79c6d7:	eb 10                	jmp    0x79c6e9
  79c6d9:	8b cf                	mov    ecx,edi
  79c6db:	e8 60 e3 ff ff       	call   0x79aa40
  79c6e0:	57                   	push   edi
  79c6e1:	e8 fa 7d d4 ff       	call   0x4e44e0
  79c6e6:	83 c4 04             	add    esp,0x4
  79c6e9:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  79c6ed:	83 c0 01             	add    eax,0x1
  79c6f0:	3b 44 24 18          	cmp    eax,DWORD PTR [esp+0x18]
  79c6f4:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  79c6f8:	0f 82 42 fe ff ff    	jb     0x79c540
  79c6fe:	5f                   	pop    edi
  79c6ff:	5e                   	pop    esi
  79c700:	5d                   	pop    ebp
  79c701:	5b                   	pop    ebx
  79c702:	83 c4 24             	add    esp,0x24
  79c705:	c2 08 00             	ret    0x8
  79c708:	6a 00                	push   0x0
  79c70a:	8b ce                	mov    ecx,esi
  79c70c:	e8 df b2 03 00       	call   0x7d79f0
  79c711:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  79c715:	5f                   	pop    edi
  79c716:	5e                   	pop    esi
  79c717:	5d                   	pop    ebp
  79c718:	5b                   	pop    ebx
  79c719:	83 c4 24             	add    esp,0x24
  79c71c:	c2 08 00             	ret    0x8
