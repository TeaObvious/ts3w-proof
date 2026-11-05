# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006dd4d0 <.text+0x2dc4d0>:
  6dd4d0:	81 ec a4 00 00 00    	sub    esp,0xa4
  6dd4d6:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  6dd4d9:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  6dd4dc:	0f 57 c0             	xorps  xmm0,xmm0
  6dd4df:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  6dd4e3:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
  6dd4e6:	53                   	push   ebx
  6dd4e7:	33 db                	xor    ebx,ebx
  6dd4e9:	89 54 24 6c          	mov    DWORD PTR [esp+0x6c],edx
  6dd4ed:	8b 51 14             	mov    edx,DWORD PTR [ecx+0x14]
  6dd4f0:	8b 49 18             	mov    ecx,DWORD PTR [ecx+0x18]
  6dd4f3:	3b cb                	cmp    ecx,ebx
  6dd4f5:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  6dd4f9:	b8 04 00 00 00       	mov    eax,0x4
  6dd4fe:	56                   	push   esi
  6dd4ff:	89 9c 24 94 00 00 00 	mov    DWORD PTR [esp+0x94],ebx
  6dd506:	89 9c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ebx
  6dd50d:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
  6dd514:	89 9c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ebx
  6dd51b:	c7 44 24 60 85 fd c0 	mov    DWORD PTR [esp+0x60],0x6cc0fd85
  6dd522:	6c 
  6dd523:	89 54 24 78          	mov    DWORD PTR [esp+0x78],edx
  6dd527:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  6dd52b:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6dd531:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  6dd537:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6dd53d:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  6dd543:	75 10                	jne    0x6dd555
  6dd545:	f3 0f 10 05 88 fd 03 	movss  xmm0,DWORD PTR ds:0x103fd88
  6dd54c:	01 
  6dd54d:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  6dd553:	eb 13                	jmp    0x6dd568
  6dd555:	83 f9 05             	cmp    ecx,0x5
  6dd558:	7d 0e                	jge    0x6dd568
  6dd55a:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  6dd561:	00 
  6dd562:	f3 0f 11 44 8c 14    	movss  DWORD PTR [esp+ecx*4+0x14],xmm0
  6dd568:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  6dd56c:	89 8c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ecx
  6dd573:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  6dd577:	c7 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],0xfbf9e8c5
  6dd57e:	c5 e8 f9 fb 
  6dd582:	c7 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],0x1
  6dd589:	01 00 00 00 
  6dd58d:	89 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],eax
  6dd594:	e8 07 db ff ff       	call   0x6db0a0
  6dd599:	8b b4 24 b0 00 00 00 	mov    esi,DWORD PTR [esp+0xb0]
  6dd5a0:	38 5e 72             	cmp    BYTE PTR [esi+0x72],bl
  6dd5a3:	8b 94 24 b8 00 00 00 	mov    edx,DWORD PTR [esp+0xb8]
  6dd5aa:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  6dd5ae:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  6dd5b2:	89 54 24 30          	mov    DWORD PTR [esp+0x30],edx
  6dd5b6:	c6 44 24 38 01       	mov    BYTE PTR [esp+0x38],0x1
  6dd5bb:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
  6dd5bf:	0f 84 36 01 00 00    	je     0x6dd6fb
  6dd5c5:	8b 06                	mov    eax,DWORD PTR [esi]
  6dd5c7:	8b 10                	mov    edx,DWORD PTR [eax]
  6dd5c9:	8b ce                	mov    ecx,esi
  6dd5cb:	ff d2                	call   edx
  6dd5cd:	8b 84 24 bc 00 00 00 	mov    eax,DWORD PTR [esp+0xbc]
  6dd5d4:	50                   	push   eax
  6dd5d5:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  6dd5d9:	51                   	push   ecx
  6dd5da:	56                   	push   esi
  6dd5db:	8b ce                	mov    ecx,esi
  6dd5dd:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  6dd5e1:	e8 8a db ff ff       	call   0x6db170
  6dd5e6:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  6dd5ea:	55                   	push   ebp
  6dd5eb:	e8 80 26 f3 ff       	call   0x60fc70
  6dd5f0:	33 ed                	xor    ebp,ebp
  6dd5f2:	3b c3                	cmp    eax,ebx
  6dd5f4:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  6dd5f8:	0f 86 a2 00 00 00    	jbe    0x6dd6a0
  6dd5fe:	57                   	push   edi
  6dd5ff:	90                   	nop
  6dd600:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  6dd604:	8b 51 40             	mov    edx,DWORD PTR [ecx+0x40]
  6dd607:	8b 34 aa             	mov    esi,DWORD PTR [edx+ebp*4]
  6dd60a:	3b f3                	cmp    esi,ebx
  6dd60c:	0f 84 80 00 00 00    	je     0x6dd692
  6dd612:	8b ce                	mov    ecx,esi
  6dd614:	e8 e7 16 55 00       	call   0xc2ed00
  6dd619:	3b c3                	cmp    eax,ebx
  6dd61b:	74 75                	je     0x6dd692
  6dd61d:	8b 78 54             	mov    edi,DWORD PTR [eax+0x54]
  6dd620:	8b cf                	mov    ecx,edi
  6dd622:	e8 79 d8 fe ff       	call   0x6caea0
  6dd627:	84 c0                	test   al,al
  6dd629:	74 67                	je     0x6dd692
  6dd62b:	8d 44 24 18          	lea    eax,[esp+0x18]
  6dd62f:	50                   	push   eax
  6dd630:	6a 01                	push   0x1
  6dd632:	53                   	push   ebx
  6dd633:	6a 02                	push   0x2
  6dd635:	8d 4c 24 74          	lea    ecx,[esp+0x74]
  6dd639:	51                   	push   ecx
  6dd63a:	8b cf                	mov    ecx,edi
  6dd63c:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  6dd640:	e8 2b de fe ff       	call   0x6cb470
  6dd645:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  6dd649:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  6dd64d:	e8 0e d9 fe ff       	call   0x6caf60
  6dd652:	50                   	push   eax
  6dd653:	8d 54 24 18          	lea    edx,[esp+0x18]
  6dd657:	52                   	push   edx
  6dd658:	8b cf                	mov    ecx,edi
  6dd65a:	e8 61 d8 fe ff       	call   0x6caec0
  6dd65f:	8b 84 24 c4 00 00 00 	mov    eax,DWORD PTR [esp+0xc4]
  6dd666:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6dd66a:	50                   	push   eax
  6dd66b:	53                   	push   ebx
  6dd66c:	51                   	push   ecx
  6dd66d:	8b ce                	mov    ecx,esi
  6dd66f:	e8 8c 3d fb ff       	call   0x691400
  6dd674:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6dd678:	3b cb                	cmp    ecx,ebx
  6dd67a:	74 07                	je     0x6dd683
  6dd67c:	8b 11                	mov    edx,DWORD PTR [ecx]
  6dd67e:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6dd681:	ff d0                	call   eax
  6dd683:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6dd687:	3b cb                	cmp    ecx,ebx
  6dd689:	74 07                	je     0x6dd692
  6dd68b:	8b 11                	mov    edx,DWORD PTR [ecx]
  6dd68d:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6dd690:	ff d0                	call   eax
  6dd692:	83 c5 01             	add    ebp,0x1
  6dd695:	3b 6c 24 1c          	cmp    ebp,DWORD PTR [esp+0x1c]
  6dd699:	0f 82 61 ff ff ff    	jb     0x6dd600
  6dd69f:	5f                   	pop    edi
  6dd6a0:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  6dd6a4:	8b 94 24 b8 00 00 00 	mov    edx,DWORD PTR [esp+0xb8]
  6dd6ab:	89 0a                	mov    DWORD PTR [edx],ecx
  6dd6ad:	8b 01                	mov    eax,DWORD PTR [ecx]
  6dd6af:	8b 10                	mov    edx,DWORD PTR [eax]
  6dd6b1:	ff d2                	call   edx
  6dd6b3:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  6dd6b7:	3b cb                	cmp    ecx,ebx
  6dd6b9:	5d                   	pop    ebp
  6dd6ba:	74 07                	je     0x6dd6c3
  6dd6bc:	8b 01                	mov    eax,DWORD PTR [ecx]
  6dd6be:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6dd6c1:	ff d2                	call   edx
  6dd6c3:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  6dd6c7:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  6dd6cb:	50                   	push   eax
  6dd6cc:	51                   	push   ecx
  6dd6cd:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  6dd6d1:	e8 0a 15 06 00       	call   0x73ebe0
  6dd6d6:	83 7c 24 44 01       	cmp    DWORD PTR [esp+0x44],0x1
  6dd6db:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  6dd6df:	76 0d                	jbe    0x6dd6ee
  6dd6e1:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  6dd6e5:	52                   	push   edx
  6dd6e6:	e8 f5 6d e0 ff       	call   0x4e44e0
  6dd6eb:	83 c4 04             	add    esp,0x4
  6dd6ee:	5e                   	pop    esi
  6dd6ef:	b0 01                	mov    al,0x1
  6dd6f1:	5b                   	pop    ebx
  6dd6f2:	81 c4 a4 00 00 00    	add    esp,0xa4
  6dd6f8:	c2 10 00             	ret    0x10
  6dd6fb:	8b 94 24 bc 00 00 00 	mov    edx,DWORD PTR [esp+0xbc]
  6dd702:	52                   	push   edx
  6dd703:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  6dd707:	50                   	push   eax
  6dd708:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  6dd70c:	51                   	push   ecx
  6dd70d:	8b ce                	mov    ecx,esi
  6dd70f:	e8 bc dc ff ff       	call   0x6db3d0
  6dd714:	84 c0                	test   al,al
  6dd716:	0f 85 ca fe ff ff    	jne    0x6dd5e6
  6dd71c:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  6dd720:	3b cb                	cmp    ecx,ebx
  6dd722:	74 07                	je     0x6dd72b
  6dd724:	8b 11                	mov    edx,DWORD PTR [ecx]
  6dd726:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  6dd729:	ff d0                	call   eax
  6dd72b:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
  6dd72f:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  6dd733:	51                   	push   ecx
  6dd734:	52                   	push   edx
  6dd735:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  6dd739:	e8 a2 14 06 00       	call   0x73ebe0
  6dd73e:	83 7c 24 44 01       	cmp    DWORD PTR [esp+0x44],0x1
  6dd743:	89 5c 24 48          	mov    DWORD PTR [esp+0x48],ebx
  6dd747:	76 0d                	jbe    0x6dd756
  6dd749:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  6dd74d:	50                   	push   eax
  6dd74e:	e8 8d 6d e0 ff       	call   0x4e44e0
  6dd753:	83 c4 04             	add    esp,0x4
  6dd756:	5e                   	pop    esi
  6dd757:	32 c0                	xor    al,al
  6dd759:	5b                   	pop    ebx
  6dd75a:	81 c4 a4 00 00 00    	add    esp,0xa4
  6dd760:	c2 10 00             	ret    0x10
