# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00d664e0, 0x00d666af).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_CreatePrecipitationCellModels (analyst-assigned)
Entry: 0x00d664e0
Ghidra body envelope: 0x00d664e0..0x00d666ae inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00d664e0 <.text+0x9654e0>:
  d664e0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  d664e4:	83 ec 20             	sub    esp,0x20
  d664e7:	55                   	push   ebp
  d664e8:	56                   	push   esi
  d664e9:	8b f1                	mov    esi,ecx
  d664eb:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  d664ef:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  d664f2:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  d664f6:	33 ed                	xor    ebp,ebp
  d664f8:	3b c5                	cmp    eax,ebp
  d664fa:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  d664fd:	89 4e 40             	mov    DWORD PTR [esi+0x40],ecx
  d66500:	75 17                	jne    0xd66519
  d66502:	8b ce                	mov    ecx,esi
  d66504:	e8 87 f4 ff ff       	call   0xd65990
  d66509:	8d 4e 08             	lea    ecx,[esi+0x8]
  d6650c:	e8 8f 6d fe ff       	call   0xd4d2a0
  d66511:	5e                   	pop    esi
  d66512:	5d                   	pop    ebp
  d66513:	83 c4 20             	add    esp,0x20
  d66516:	c2 14 00             	ret    0x14
  d66519:	83 c0 ff             	add    eax,0xffffffff
  d6651c:	83 f8 05             	cmp    eax,0x5
  d6651f:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  d66523:	77 37                	ja     0xd6655c
  d66525:	ff 24 85 b0 66 d6 00 	jmp    DWORD PTR [eax*4+0xd666b0]
  d6652c:	c7 44 24 10 fb 63 b8 	mov    DWORD PTR [esp+0x10],0xb863fb
  d66533:	00
  d66534:	eb 26                	jmp    0xd6655c
  d66536:	c7 44 24 10 ba c1 46 	mov    DWORD PTR [esp+0x10],0x46c1ba
  d6653d:	00
  d6653e:	eb 1c                	jmp    0xd6655c
  d66540:	c7 44 24 10 97 ca f4 	mov    DWORD PTR [esp+0x10],0xf4ca97
  d66547:	00
  d66548:	eb 12                	jmp    0xd6655c
  d6654a:	c7 44 24 10 89 69 88 	mov    DWORD PTR [esp+0x10],0x886989
  d66551:	00
  d66552:	eb 08                	jmp    0xd6655c
  d66554:	c7 44 24 10 14 80 be 	mov    DWORD PTR [esp+0x10],0xbe8014
  d6655b:	00
  d6655c:	53                   	push   ebx
  d6655d:	8d 5e 08             	lea    ebx,[esi+0x8]
  d66560:	57                   	push   edi
  d66561:	8b cb                	mov    ecx,ebx
  d66563:	e8 38 6d fe ff       	call   0xd4d2a0
  d66568:	33 d2                	xor    edx,edx
  d6656a:	83 7e 20 04          	cmp    DWORD PTR [esi+0x20],0x4
  d6656e:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  d66572:	0f 94 c2             	sete   dl
  d66575:	8d 14 95 01 00 00 00 	lea    edx,[edx*4+0x1]
  d6657c:	8b fa                	mov    edi,edx
  d6657e:	85 ff                	test   edi,edi
  d66580:	89 7c 24 38          	mov    DWORD PTR [esp+0x38],edi
  d66584:	0f 8e 1b 01 00 00    	jle    0xd666a5
  d6658a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  d66590:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  d66594:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  d66598:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  d6659c:	33 c0                	xor    eax,eax
  d6659e:	50                   	push   eax
  d6659f:	50                   	push   eax
  d665a0:	50                   	push   eax
  d665a1:	50                   	push   eax
  d665a2:	68 c0 af 08 01       	push   0x108afc0
  d665a7:	50                   	push   eax
  d665a8:	6a 10                	push   0x10
  d665aa:	33 f6                	xor    esi,esi
  d665ac:	68 d0 02 00 00       	push   0x2d0
  d665b1:	89 74 24 54          	mov    DWORD PTR [esp+0x54],esi
  d665b5:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  d665b9:	c7 44 24 48 33 12 66 	mov    DWORD PTR [esp+0x48],0x1661233
  d665c0:	01
  d665c1:	89 4c 24 4c          	mov    DWORD PTR [esp+0x4c],ecx
  d665c5:	e8 56 df 77 ff       	call   0x4e4520
  d665ca:	8b c8                	mov    ecx,eax
  d665cc:	83 c4 20             	add    esp,0x20
  d665cf:	85 c9                	test   ecx,ecx
  d665d1:	74 45                	je     0xd66618
  d665d3:	8b c7                	mov    eax,edi
  d665d5:	0f af 44 24 44       	imul   eax,DWORD PTR [esp+0x44]
  d665da:	99                   	cdq
  d665db:	8b f8                	mov    edi,eax
  d665dd:	8b c2                	mov    eax,edx
  d665df:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  d665e3:	8b c5                	mov    eax,ebp
  d665e5:	99                   	cdq
  d665e6:	03 f8                	add    edi,eax
  d665e8:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  d665ec:	13 c2                	adc    eax,edx
  d665ee:	81 c7 f0 59 91 e7    	add    edi,0xe79159f0
  d665f4:	15 44 00 bb 3d       	adc    eax,0x3dbb0044
  d665f9:	50                   	push   eax
  d665fa:	57                   	push   edi
  d665fb:	e8 a0 f3 98 ff       	call   0x6f59a0
  d66600:	8b f8                	mov    edi,eax
  d66602:	85 ff                	test   edi,edi
  d66604:	74 0e                	je     0xd66614
  d66606:	8b 17                	mov    edx,DWORD PTR [edi]
  d66608:	8b 02                	mov    eax,DWORD PTR [edx]
  d6660a:	8b cf                	mov    ecx,edi
  d6660c:	ff d0                	call   eax
  d6660e:	8b f7                	mov    esi,edi
  d66610:	89 74 24 34          	mov    DWORD PTR [esp+0x34],esi
  d66614:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
  d66618:	6a 00                	push   0x0
  d6661a:	6a 00                	push   0x0
  d6661c:	6a 00                	push   0x0
  d6661e:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  d66622:	51                   	push   ecx
  d66623:	8b ce                	mov    ecx,esi
  d66625:	e8 c6 e0 98 ff       	call   0x6f46f0
  d6662a:	8b 16                	mov    edx,DWORD PTR [esi]
  d6662c:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  d66630:	8b 52 50             	mov    edx,DWORD PTR [edx+0x50]
  d66633:	50                   	push   eax
  d66634:	8b ce                	mov    ecx,esi
  d66636:	ff d2                	call   edx
  d66638:	8b 06                	mov    eax,DWORD PTR [esi]
  d6663a:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  d6663d:	68 80 00 00 02       	push   0x2000080
  d66642:	68 88 00 00 02       	push   0x2000088
  d66647:	8b ce                	mov    ecx,esi
  d66649:	ff d2                	call   edx
  d6664b:	6a 01                	push   0x1
  d6664d:	6a 25                	push   0x25
  d6664f:	8b ce                	mov    ecx,esi
  d66651:	e8 ca 44 99 ff       	call   0x6fab20
  d66656:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  d66659:	3b 43 08             	cmp    eax,DWORD PTR [ebx+0x8]
  d6665c:	73 16                	jae    0xd66674
  d6665e:	85 c0                	test   eax,eax
  d66660:	8d 48 04             	lea    ecx,[eax+0x4]
  d66663:	89 4b 04             	mov    DWORD PTR [ebx+0x4],ecx
  d66666:	74 1d                	je     0xd66685
  d66668:	89 30                	mov    DWORD PTR [eax],esi
  d6666a:	8b 16                	mov    edx,DWORD PTR [esi]
  d6666c:	8b 02                	mov    eax,DWORD PTR [edx]
  d6666e:	8b ce                	mov    ecx,esi
  d66670:	ff d0                	call   eax
  d66672:	eb 11                	jmp    0xd66685
  d66674:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  d66678:	51                   	push   ecx
  d66679:	50                   	push   eax
  d6667a:	8b cb                	mov    ecx,ebx
  d6667c:	e8 4f f4 ef ff       	call   0xc65ad0
  d66681:	8b 74 24 34          	mov    esi,DWORD PTR [esp+0x34]
  d66685:	85 f6                	test   esi,esi
  d66687:	74 09                	je     0xd66692
  d66689:	8b 16                	mov    edx,DWORD PTR [esi]
  d6668b:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  d6668e:	8b ce                	mov    ecx,esi
  d66690:	ff d0                	call   eax
  d66692:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  d66696:	83 c5 01             	add    ebp,0x1
  d66699:	3b ef                	cmp    ebp,edi
  d6669b:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  d6669f:	0f 8c eb fe ff ff    	jl     0xd66590
  d666a5:	5f                   	pop    edi
  d666a6:	5b                   	pop    ebx
  d666a7:	5e                   	pop    esi
  d666a8:	5d                   	pop    ebp
  d666a9:	83 c4 20             	add    esp,0x20
  d666ac:	c2 14 00             	ret    0x14
