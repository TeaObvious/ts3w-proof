# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006cb470 <.text+0x2ca470>:
  6cb470:	81 ec 88 00 00 00    	sub    esp,0x88
  6cb476:	53                   	push   ebx
  6cb477:	55                   	push   ebp
  6cb478:	56                   	push   esi
  6cb479:	57                   	push   edi
  6cb47a:	33 f6                	xor    esi,esi
  6cb47c:	56                   	push   esi
  6cb47d:	56                   	push   esi
  6cb47e:	56                   	push   esi
  6cb47f:	8d 84 24 84 00 00 00 	lea    eax,[esp+0x84]
  6cb486:	8b f9                	mov    edi,ecx
  6cb488:	56                   	push   esi
  6cb489:	8b c8                	mov    ecx,eax
  6cb48b:	8b d0                	mov    edx,eax
  6cb48d:	89 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],eax
  6cb494:	8d 84 24 a8 00 00 00 	lea    eax,[esp+0xa8]
  6cb49b:	68 44 6b ff 00       	push   0xff6b44
  6cb4a0:	6a 40                	push   0x40
  6cb4a2:	89 7c 24 44          	mov    DWORD PTR [esp+0x44],edi
  6cb4a6:	c7 84 24 88 00 00 00 	mov    DWORD PTR [esp+0x88],0xf9aac8
  6cb4ad:	c8 aa f9 00 
  6cb4b1:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
  6cb4b8:	89 54 24 7c          	mov    DWORD PTR [esp+0x7c],edx
  6cb4bc:	89 84 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],eax
  6cb4c3:	e8 38 90 e1 ff       	call   0x4e4500
  6cb4c8:	8b d8                	mov    ebx,eax
  6cb4ca:	83 c4 18             	add    esp,0x18
  6cb4cd:	3b de                	cmp    ebx,esi
  6cb4cf:	0f 84 ba 00 00 00    	je     0x6cb58f
  6cb4d5:	c7 03 14 3c fb 00    	mov    DWORD PTR [ebx],0xfb3c14
  6cb4db:	33 c9                	xor    ecx,ecx
  6cb4dd:	8d 53 04             	lea    edx,[ebx+0x4]
  6cb4e0:	87 0a                	xchg   DWORD PTR [edx],ecx
  6cb4e2:	8b ac 24 a0 00 00 00 	mov    ebp,DWORD PTR [esp+0xa0]
  6cb4e9:	89 73 08             	mov    DWORD PTR [ebx+0x8],esi
  6cb4ec:	89 73 0c             	mov    DWORD PTR [ebx+0xc],esi
  6cb4ef:	89 73 10             	mov    DWORD PTR [ebx+0x10],esi
  6cb4f2:	89 73 14             	mov    DWORD PTR [ebx+0x14],esi
  6cb4f5:	55                   	push   ebp
  6cb4f6:	8d 4c 24 68          	lea    ecx,[esp+0x68]
  6cb4fa:	89 73 20             	mov    DWORD PTR [ebx+0x20],esi
  6cb4fd:	89 73 24             	mov    DWORD PTR [ebx+0x24],esi
  6cb500:	89 73 1c             	mov    DWORD PTR [ebx+0x1c],esi
  6cb503:	89 73 18             	mov    DWORD PTR [ebx+0x18],esi
  6cb506:	c7 03 2c 6b ff 00    	mov    DWORD PTR [ebx],0xff6b2c
  6cb50c:	89 73 30             	mov    DWORD PTR [ebx+0x30],esi
  6cb50f:	89 73 38             	mov    DWORD PTR [ebx+0x38],esi
  6cb512:	89 73 28             	mov    DWORD PTR [ebx+0x28],esi
  6cb515:	89 73 34             	mov    DWORD PTR [ebx+0x34],esi
  6cb518:	89 73 2c             	mov    DWORD PTR [ebx+0x2c],esi
  6cb51b:	c6 43 3c 00          	mov    BYTE PTR [ebx+0x3c],0x0
  6cb51f:	c6 43 3d 00          	mov    BYTE PTR [ebx+0x3d],0x0
  6cb523:	e8 f8 fe ff ff       	call   0x6cb420
  6cb528:	33 c0                	xor    eax,eax
  6cb52a:	3b ee                	cmp    ebp,esi
  6cb52c:	76 11                	jbe    0x6cb53f
  6cb52e:	8b ff                	mov    edi,edi
  6cb530:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  6cb534:	c6 04 01 00          	mov    BYTE PTR [ecx+eax*1],0x0
  6cb538:	83 c0 01             	add    eax,0x1
  6cb53b:	3b c5                	cmp    eax,ebp
  6cb53d:	72 f1                	jb     0x6cb530
  6cb53f:	8b 13                	mov    edx,DWORD PTR [ebx]
  6cb541:	8b 02                	mov    eax,DWORD PTR [edx]
  6cb543:	8b cb                	mov    ecx,ebx
  6cb545:	ff d0                	call   eax
  6cb547:	8b 8c 24 ac 00 00 00 	mov    ecx,DWORD PTR [esp+0xac]
  6cb54e:	89 19                	mov    DWORD PTR [ecx],ebx
  6cb550:	8b 57 28             	mov    edx,DWORD PTR [edi+0x28]
  6cb553:	89 53 28             	mov    DWORD PTR [ebx+0x28],edx
  6cb556:	8b 47 2c             	mov    eax,DWORD PTR [edi+0x2c]
  6cb559:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  6cb55d:	89 43 2c             	mov    DWORD PTR [ebx+0x2c],eax
  6cb560:	e8 1b e1 0c 00       	call   0x799680
  6cb565:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
  6cb568:	51                   	push   ecx
  6cb569:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  6cb56d:	e8 ce db 0c 00       	call   0x799140
  6cb572:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  6cb576:	e8 d5 db 0c 00       	call   0x799150
  6cb57b:	33 ff                	xor    edi,edi
  6cb57d:	3b c6                	cmp    eax,esi
  6cb57f:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  6cb583:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  6cb587:	0f 8e be 01 00 00    	jle    0x6cb74b
  6cb58d:	eb 2a                	jmp    0x6cb5b9
  6cb58f:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  6cb593:	3b c6                	cmp    eax,esi
  6cb595:	74 0f                	je     0x6cb5a6
  6cb597:	3b 44 24 74          	cmp    eax,DWORD PTR [esp+0x74]
  6cb59b:	74 09                	je     0x6cb5a6
  6cb59d:	50                   	push   eax
  6cb59e:	e8 3d 8f e1 ff       	call   0x4e44e0
  6cb5a3:	83 c4 04             	add    esp,0x4
  6cb5a6:	32 c0                	xor    al,al
  6cb5a8:	5f                   	pop    edi
  6cb5a9:	5e                   	pop    esi
  6cb5aa:	5d                   	pop    ebp
  6cb5ab:	5b                   	pop    ebx
  6cb5ac:	81 c4 88 00 00 00    	add    esp,0x88
  6cb5b2:	c2 14 00             	ret    0x14
  6cb5b5:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  6cb5b9:	8d 54 24 18          	lea    edx,[esp+0x18]
  6cb5bd:	52                   	push   edx
  6cb5be:	57                   	push   edi
  6cb5bf:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  6cb5c3:	e8 18 dc 0c 00       	call   0x7991e0
  6cb5c8:	57                   	push   edi
  6cb5c9:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  6cb5cd:	e8 de db 0c 00       	call   0x7991b0
  6cb5d2:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  6cb5d6:	8b f8                	mov    edi,eax
  6cb5d8:	8d 42 ff             	lea    eax,[edx-0x1]
  6cb5db:	83 f8 05             	cmp    eax,0x5
  6cb5de:	0f 87 52 01 00 00    	ja     0x6cb736
  6cb5e4:	ff 24 85 d4 b8 6c 00 	jmp    DWORD PTR [eax*4+0x6cb8d4]
  6cb5eb:	33 c0                	xor    eax,eax
  6cb5ed:	3b ee                	cmp    ebp,esi
  6cb5ef:	76 1d                	jbe    0x6cb60e
  6cb5f1:	8b 94 24 9c 00 00 00 	mov    edx,DWORD PTR [esp+0x9c]
  6cb5f8:	8d 4a 04             	lea    ecx,[edx+0x4]
  6cb5fb:	eb 03                	jmp    0x6cb600
  6cb5fd:	8d 49 00             	lea    ecx,[ecx+0x0]
  6cb600:	39 39                	cmp    DWORD PTR [ecx],edi
  6cb602:	74 23                	je     0x6cb627
  6cb604:	83 c0 01             	add    eax,0x1
  6cb607:	83 c1 28             	add    ecx,0x28
  6cb60a:	3b c5                	cmp    eax,ebp
  6cb60c:	72 f2                	jb     0x6cb600
  6cb60e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  6cb612:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6cb616:	50                   	push   eax
  6cb617:	51                   	push   ecx
  6cb618:	57                   	push   edi
  6cb619:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  6cb61d:	e8 ae e3 0c 00       	call   0x7999d0
  6cb622:	e9 0f 01 00 00       	jmp    0x6cb736
  6cb627:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  6cb62b:	c6 04 08 01          	mov    BYTE PTR [eax+ecx*1],0x1
  6cb62f:	8d 04 80             	lea    eax,[eax+eax*4]
  6cb632:	8d 04 c2             	lea    eax,[edx+eax*8]
  6cb635:	3b c6                	cmp    eax,esi
  6cb637:	74 d5                	je     0x6cb60e
  6cb639:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  6cb63d:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  6cb640:	51                   	push   ecx
  6cb641:	52                   	push   edx
  6cb642:	57                   	push   edi
  6cb643:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  6cb647:	e8 84 e3 0c 00       	call   0x7999d0
  6cb64c:	e9 e5 00 00 00       	jmp    0x6cb736
  6cb651:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  6cb655:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  6cb659:	52                   	push   edx
  6cb65a:	50                   	push   eax
  6cb65b:	57                   	push   edi
  6cb65c:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  6cb660:	e8 8b e3 0c 00       	call   0x7999f0
  6cb665:	e9 cc 00 00 00       	jmp    0x6cb736
  6cb66a:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  6cb66e:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  6cb672:	51                   	push   ecx
  6cb673:	52                   	push   edx
  6cb674:	57                   	push   edi
  6cb675:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  6cb679:	e8 92 e3 0c 00       	call   0x799a10
  6cb67e:	e9 b3 00 00 00       	jmp    0x6cb736
  6cb683:	33 c0                	xor    eax,eax
  6cb685:	3b ee                	cmp    ebp,esi
  6cb687:	0f 86 5c 01 00 00    	jbe    0x6cb7e9
  6cb68d:	8b b4 24 9c 00 00 00 	mov    esi,DWORD PTR [esp+0x9c]
  6cb694:	8d 4e 04             	lea    ecx,[esi+0x4]
  6cb697:	39 39                	cmp    DWORD PTR [ecx],edi
  6cb699:	74 0f                	je     0x6cb6aa
  6cb69b:	83 c0 01             	add    eax,0x1
  6cb69e:	83 c1 28             	add    ecx,0x28
  6cb6a1:	3b c5                	cmp    eax,ebp
  6cb6a3:	72 f2                	jb     0x6cb697
  6cb6a5:	e9 3d 01 00 00       	jmp    0x6cb7e7
  6cb6aa:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  6cb6ae:	8d 14 80             	lea    edx,[eax+eax*4]
  6cb6b1:	c6 04 08 01          	mov    BYTE PTR [eax+ecx*1],0x1
  6cb6b5:	8d 34 d6             	lea    esi,[esi+edx*8]
  6cb6b8:	33 c0                	xor    eax,eax
  6cb6ba:	3b f0                	cmp    esi,eax
  6cb6bc:	0f 84 21 01 00 00    	je     0x6cb7e3
  6cb6c2:	38 84 24 a4 00 00 00 	cmp    BYTE PTR [esp+0xa4],al
  6cb6c9:	75 30                	jne    0x6cb6fb
  6cb6cb:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  6cb6cf:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  6cb6d3:	89 44 24 58          	mov    DWORD PTR [esp+0x58],eax
  6cb6d7:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  6cb6db:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
  6cb6df:	8d 44 24 54          	lea    eax,[esp+0x54]
  6cb6e3:	50                   	push   eax
  6cb6e4:	51                   	push   ecx
  6cb6e5:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  6cb6e9:	e8 02 dc 0c 00       	call   0x7992f0
  6cb6ee:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  6cb6f2:	3b 56 18             	cmp    edx,DWORD PTR [esi+0x18]
  6cb6f5:	0f 85 e8 00 00 00    	jne    0x6cb7e3
  6cb6fb:	8b 06                	mov    eax,DWORD PTR [esi]
  6cb6fd:	83 f8 04             	cmp    eax,0x4
  6cb700:	0f 85 bc 00 00 00    	jne    0x6cb7c2
  6cb706:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  6cb70a:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  6cb70d:	50                   	push   eax
  6cb70e:	8d 46 10             	lea    eax,[esi+0x10]
  6cb711:	83 ec 10             	sub    esp,0x10
  6cb714:	8b cc                	mov    ecx,esp
  6cb716:	89 11                	mov    DWORD PTR [ecx],edx
  6cb718:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  6cb71b:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  6cb71e:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  6cb721:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  6cb724:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  6cb727:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
  6cb72a:	57                   	push   edi
  6cb72b:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  6cb72f:	e8 fc e2 0c 00       	call   0x799a30
  6cb734:	33 f6                	xor    esi,esi
  6cb736:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  6cb73a:	83 c0 01             	add    eax,0x1
  6cb73d:	3b 44 24 30          	cmp    eax,DWORD PTR [esp+0x30]
  6cb741:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  6cb745:	0f 8c 6a fe ff ff    	jl     0x6cb5b5
  6cb74b:	80 bc 24 a8 00 00 00 	cmp    BYTE PTR [esp+0xa8],0x0
  6cb752:	00 
  6cb753:	0f 84 2e 01 00 00    	je     0x6cb887
  6cb759:	33 ff                	xor    edi,edi
  6cb75b:	3b ee                	cmp    ebp,esi
  6cb75d:	0f 86 24 01 00 00    	jbe    0x6cb887
  6cb763:	8b b4 24 9c 00 00 00 	mov    esi,DWORD PTR [esp+0x9c]
  6cb76a:	83 c6 24             	add    esi,0x24
  6cb76d:	8d 49 00             	lea    ecx,[ecx+0x0]
  6cb770:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  6cb774:	80 3c 39 00          	cmp    BYTE PTR [ecx+edi*1],0x0
  6cb778:	0f 85 f9 00 00 00    	jne    0x6cb877
  6cb77e:	8b 46 dc             	mov    eax,DWORD PTR [esi-0x24]
  6cb781:	83 e8 01             	sub    eax,0x1
  6cb784:	0f 84 d9 00 00 00    	je     0x6cb863
  6cb78a:	83 e8 03             	sub    eax,0x3
  6cb78d:	0f 85 e4 00 00 00    	jne    0x6cb877
  6cb793:	8b 56 ec             	mov    edx,DWORD PTR [esi-0x14]
  6cb796:	8b 4e f0             	mov    ecx,DWORD PTR [esi-0x10]
  6cb799:	50                   	push   eax
  6cb79a:	83 ec 10             	sub    esp,0x10
  6cb79d:	8b c4                	mov    eax,esp
  6cb79f:	89 10                	mov    DWORD PTR [eax],edx
  6cb7a1:	8b 56 f4             	mov    edx,DWORD PTR [esi-0xc]
  6cb7a4:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  6cb7a7:	8b 4e f8             	mov    ecx,DWORD PTR [esi-0x8]
  6cb7aa:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  6cb7ad:	8b 56 e0             	mov    edx,DWORD PTR [esi-0x20]
  6cb7b0:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  6cb7b3:	52                   	push   edx
  6cb7b4:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  6cb7b8:	e8 73 e2 0c 00       	call   0x799a30
  6cb7bd:	e9 b5 00 00 00       	jmp    0x6cb877
  6cb7c2:	83 f8 06             	cmp    eax,0x6
  6cb7c5:	0f 85 69 ff ff ff    	jne    0x6cb734
  6cb7cb:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  6cb7cf:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  6cb7d2:	51                   	push   ecx
  6cb7d3:	52                   	push   edx
  6cb7d4:	57                   	push   edi
  6cb7d5:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  6cb7d9:	e8 d2 e2 0c 00       	call   0x799ab0
  6cb7de:	e9 51 ff ff ff       	jmp    0x6cb734
  6cb7e3:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  6cb7e7:	33 f6                	xor    esi,esi
  6cb7e9:	83 fa 04             	cmp    edx,0x4
  6cb7ec:	75 33                	jne    0x6cb821
  6cb7ee:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  6cb7f2:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6cb7f6:	8b 11                	mov    edx,DWORD PTR [ecx]
  6cb7f8:	50                   	push   eax
  6cb7f9:	83 ec 10             	sub    esp,0x10
  6cb7fc:	8b c4                	mov    eax,esp
  6cb7fe:	89 10                	mov    DWORD PTR [eax],edx
  6cb800:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  6cb803:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  6cb806:	8b 51 08             	mov    edx,DWORD PTR [ecx+0x8]
  6cb809:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  6cb80c:	89 50 08             	mov    DWORD PTR [eax+0x8],edx
  6cb80f:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  6cb812:	57                   	push   edi
  6cb813:	8d 4c 24 4c          	lea    ecx,[esp+0x4c]
  6cb817:	e8 14 e2 0c 00       	call   0x799a30
  6cb81c:	e9 15 ff ff ff       	jmp    0x6cb736
  6cb821:	83 fa 06             	cmp    edx,0x6
  6cb824:	75 19                	jne    0x6cb83f
  6cb826:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  6cb82a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  6cb82e:	52                   	push   edx
  6cb82f:	50                   	push   eax
  6cb830:	57                   	push   edi
  6cb831:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  6cb835:	e8 76 e2 0c 00       	call   0x799ab0
  6cb83a:	e9 f7 fe ff ff       	jmp    0x6cb736
  6cb83f:	83 fa 05             	cmp    edx,0x5
  6cb842:	0f 85 ee fe ff ff    	jne    0x6cb736
  6cb848:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  6cb84c:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  6cb850:	8b 02                	mov    eax,DWORD PTR [edx]
  6cb852:	51                   	push   ecx
  6cb853:	50                   	push   eax
  6cb854:	57                   	push   edi
  6cb855:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  6cb859:	e8 52 e2 0c 00       	call   0x799ab0
  6cb85e:	e9 d3 fe ff ff       	jmp    0x6cb736
  6cb863:	8b 06                	mov    eax,DWORD PTR [esi]
  6cb865:	8b 4e fc             	mov    ecx,DWORD PTR [esi-0x4]
  6cb868:	8b 56 e0             	mov    edx,DWORD PTR [esi-0x20]
  6cb86b:	50                   	push   eax
  6cb86c:	51                   	push   ecx
  6cb86d:	52                   	push   edx
  6cb86e:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  6cb872:	e8 59 e1 0c 00       	call   0x7999d0
  6cb877:	83 c7 01             	add    edi,0x1
  6cb87a:	83 c6 28             	add    esi,0x28
  6cb87d:	3b fd                	cmp    edi,ebp
  6cb87f:	0f 82 eb fe ff ff    	jb     0x6cb770
  6cb885:	33 f6                	xor    esi,esi
  6cb887:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  6cb88b:	8a 48 3c             	mov    cl,BYTE PTR [eax+0x3c]
  6cb88e:	88 4b 3c             	mov    BYTE PTR [ebx+0x3c],cl
  6cb891:	8a 50 3d             	mov    dl,BYTE PTR [eax+0x3d]
  6cb894:	8d 44 24 34          	lea    eax,[esp+0x34]
  6cb898:	50                   	push   eax
  6cb899:	8b cb                	mov    ecx,ebx
  6cb89b:	88 53 3d             	mov    BYTE PTR [ebx+0x3d],dl
  6cb89e:	e8 7d f8 ff ff       	call   0x6cb120
  6cb8a3:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  6cb8a7:	e8 04 de 0c 00       	call   0x7996b0
  6cb8ac:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  6cb8b0:	3b c6                	cmp    eax,esi
  6cb8b2:	74 0f                	je     0x6cb8c3
  6cb8b4:	3b 44 24 74          	cmp    eax,DWORD PTR [esp+0x74]
  6cb8b8:	74 09                	je     0x6cb8c3
  6cb8ba:	50                   	push   eax
  6cb8bb:	e8 20 8c e1 ff       	call   0x4e44e0
  6cb8c0:	83 c4 04             	add    esp,0x4
  6cb8c3:	5f                   	pop    edi
  6cb8c4:	5e                   	pop    esi
  6cb8c5:	5d                   	pop    ebp
  6cb8c6:	b0 01                	mov    al,0x1
  6cb8c8:	5b                   	pop    ebx
  6cb8c9:	81 c4 88 00 00 00    	add    esp,0x88
  6cb8cf:	c2 14 00             	ret    0x14
