# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00729460 (ResourceRequests_CompleteLoadJob)
Complete body envelope: 0x00729460..0x00729721 (exclusive end)
Body ranges: [[00729460, 00729720]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00729460 <.text+0x328460>:
  729460:	83 ec 08             	sub    esp,0x8
  729463:	53                   	push   ebx
  729464:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  729468:	55                   	push   ebp
  729469:	56                   	push   esi
  72946a:	8b 73 10             	mov    esi,DWORD PTR [ebx+0x10]
  72946d:	80 be 9f 00 00 00 00 	cmp    BYTE PTR [esi+0x9f],0x0
  729474:	57                   	push   edi
  729475:	8b e9                	mov    ebp,ecx
  729477:	74 2d                	je     0x7294a6
  729479:	8d 45 7c             	lea    eax,[ebp+0x7c]
  72947c:	83 c9 ff             	or     ecx,0xffffffff
  72947f:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  729483:	8d 7d 40             	lea    edi,[ebp+0x40]
  729486:	68 44 e3 ff 00       	push   0xffe344
  72948b:	8b cf                	mov    ecx,edi
  72948d:	c6 86 9f 00 00 00 00 	mov    BYTE PTR [esi+0x9f],0x0
  729494:	e8 67 87 db ff       	call   0x4e1c00
  729499:	8b 56 3c             	mov    edx,DWORD PTR [esi+0x3c]
  72949c:	29 55 30             	sub    DWORD PTR [ebp+0x30],edx
  72949f:	8b cf                	mov    ecx,edi
  7294a1:	e8 1a 88 db ff       	call   0x4e1cc0
  7294a6:	83 7c 24 20 04       	cmp    DWORD PTR [esp+0x20],0x4
  7294ab:	74 17                	je     0x7294c4
  7294ad:	8b 43 10             	mov    eax,DWORD PTR [ebx+0x10]
  7294b0:	50                   	push   eax
  7294b1:	8b cd                	mov    ecx,ebp
  7294b3:	e8 98 fc ff ff       	call   0x729150
  7294b8:	5f                   	pop    edi
  7294b9:	5e                   	pop    esi
  7294ba:	5d                   	pop    ebp
  7294bb:	32 c0                	xor    al,al
  7294bd:	5b                   	pop    ebx
  7294be:	83 c4 08             	add    esp,0x8
  7294c1:	c2 08 00             	ret    0x8
  7294c4:	e8 b7 69 d8 ff       	call   0x4afe80
  7294c9:	8b f8                	mov    edi,eax
  7294cb:	33 c0                	xor    eax,eax
  7294cd:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  7294d1:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  7294d4:	8b 11                	mov    edx,DWORD PTR [ecx]
  7294d6:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  7294da:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  7294dd:	ff d0                	call   eax
  7294df:	3d 4d e0 cc 01       	cmp    eax,0x1cce04d
  7294e4:	75 1f                	jne    0x729505
  7294e6:	8a 8e 97 00 00 00    	mov    cl,BYTE PTR [esi+0x97]
  7294ec:	88 8e dd 00 00 00    	mov    BYTE PTR [esi+0xdd],cl
  7294f2:	8b 53 18             	mov    edx,DWORD PTR [ebx+0x18]
  7294f5:	8d 86 c0 00 00 00    	lea    eax,[esi+0xc0]
  7294fb:	89 96 e0 00 00 00    	mov    DWORD PTR [esi+0xe0],edx
  729501:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  729505:	80 be 97 00 00 00 00 	cmp    BYTE PTR [esi+0x97],0x0
  72950c:	74 40                	je     0x72954e
  72950e:	8b 17                	mov    edx,DWORD PTR [edi]
  729510:	8d 46 10             	lea    eax,[esi+0x10]
  729513:	50                   	push   eax
  729514:	8b 42 58             	mov    eax,DWORD PTR [edx+0x58]
  729517:	8b cf                	mov    ecx,edi
  729519:	ff d0                	call   eax
  72951b:	8b d8                	mov    ebx,eax
  72951d:	85 db                	test   ebx,ebx
  72951f:	74 29                	je     0x72954a
  729521:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  729525:	85 c9                	test   ecx,ecx
  729527:	74 0f                	je     0x729538
  729529:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  729530:	00 
  729531:	8b 11                	mov    edx,DWORD PTR [ecx]
  729533:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  729536:	ff d0                	call   eax
  729538:	8b 13                	mov    edx,DWORD PTR [ebx]
  72953a:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
  72953d:	8d 44 24 10          	lea    eax,[esp+0x10]
  729541:	50                   	push   eax
  729542:	8d 46 10             	lea    eax,[esi+0x10]
  729545:	50                   	push   eax
  729546:	8b cb                	mov    ecx,ebx
  729548:	ff d2                	call   edx
  72954a:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  72954e:	83 7c 24 10 00       	cmp    DWORD PTR [esp+0x10],0x0
  729553:	75 44                	jne    0x729599
  729555:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  729558:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  72955b:	8b 01                	mov    eax,DWORD PTR [ecx]
  72955d:	8b 40 1c             	mov    eax,DWORD PTR [eax+0x1c]
  729560:	52                   	push   edx
  729561:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  729565:	52                   	push   edx
  729566:	8d 54 24 18          	lea    edx,[esp+0x18]
  72956a:	52                   	push   edx
  72956b:	6a 00                	push   0x0
  72956d:	ff d0                	call   eax
  72956f:	84 c0                	test   al,al
  729571:	75 26                	jne    0x729599
  729573:	8b 4b 10             	mov    ecx,DWORD PTR [ebx+0x10]
  729576:	51                   	push   ecx
  729577:	8b cd                	mov    ecx,ebp
  729579:	e8 d2 fb ff ff       	call   0x729150
  72957e:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  729582:	85 c9                	test   ecx,ecx
  729584:	74 07                	je     0x72958d
  729586:	8b 11                	mov    edx,DWORD PTR [ecx]
  729588:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  72958b:	ff d0                	call   eax
  72958d:	5f                   	pop    edi
  72958e:	5e                   	pop    esi
  72958f:	5d                   	pop    ebp
  729590:	32 c0                	xor    al,al
  729592:	5b                   	pop    ebx
  729593:	83 c4 08             	add    esp,0x8
  729596:	c2 08 00             	ret    0x8
  729599:	8b 5e 18             	mov    ebx,DWORD PTR [esi+0x18]
  72959c:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  72959f:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  7295a2:	8b 11                	mov    edx,DWORD PTR [ecx]
  7295a4:	53                   	push   ebx
  7295a5:	ff 74 24 24          	push   DWORD PTR [esp+0x24]
  7295a9:	ff 74 24 18          	push   DWORD PTR [esp+0x18]
  7295ad:	50                   	push   eax
  7295ae:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  7295b1:	ff d0                	call   eax
  7295b3:	84 c0                	test   al,al
  7295b5:	75 2a                	jne    0x7295e1
  7295b7:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  7295bb:	8b 51 10             	mov    edx,DWORD PTR [ecx+0x10]
  7295be:	52                   	push   edx
  7295bf:	8b cd                	mov    ecx,ebp
  7295c1:	e8 8a fb ff ff       	call   0x729150
  7295c6:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7295ca:	85 c9                	test   ecx,ecx
  7295cc:	74 07                	je     0x7295d5
  7295ce:	8b 01                	mov    eax,DWORD PTR [ecx]
  7295d0:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7295d3:	ff d2                	call   edx
  7295d5:	5f                   	pop    edi
  7295d6:	5e                   	pop    esi
  7295d7:	5d                   	pop    ebp
  7295d8:	32 c0                	xor    al,al
  7295da:	5b                   	pop    ebx
  7295db:	83 c4 08             	add    esp,0x8
  7295de:	c2 08 00             	ret    0x8
  7295e1:	c6 86 a1 00 00 00 01 	mov    BYTE PTR [esi+0xa1],0x1
  7295e8:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7295ec:	8b 07                	mov    eax,DWORD PTR [edi]
  7295ee:	8b 50 5c             	mov    edx,DWORD PTR [eax+0x5c]
  7295f1:	6a 01                	push   0x1
  7295f3:	51                   	push   ecx
  7295f4:	8b cf                	mov    ecx,edi
  7295f6:	ff d2                	call   edx
  7295f8:	8b ce                	mov    ecx,esi
  7295fa:	e8 41 dd ff ff       	call   0x727340
  7295ff:	51                   	push   ecx
  729600:	d9 1c 24             	fstp   DWORD PTR [esp]
  729603:	8d 46 10             	lea    eax,[esi+0x10]
  729606:	6a 01                	push   0x1
  729608:	50                   	push   eax
  729609:	8b cd                	mov    ecx,ebp
  72960b:	e8 a0 e7 ff ff       	call   0x727db0
  729610:	8d 7d 40             	lea    edi,[ebp+0x40]
  729613:	68 44 e3 ff 00       	push   0xffe344
  729618:	8b cf                	mov    ecx,edi
  72961a:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  72961e:	e8 dd 85 db ff       	call   0x4e1c00
  729623:	8d 9e b8 00 00 00    	lea    ebx,[esi+0xb8]
  729629:	39 5b 04             	cmp    DWORD PTR [ebx+0x4],ebx
  72962c:	0f 84 b2 00 00 00    	je     0x7296e4
  729632:	8b be bc 00 00 00    	mov    edi,DWORD PTR [esi+0xbc]
  729638:	83 7f 08 00          	cmp    DWORD PTR [edi+0x8],0x0
  72963c:	74 6e                	je     0x7296ac
  72963e:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  729642:	8b 01                	mov    eax,DWORD PTR [ecx]
  729644:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
  729647:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  72964a:	52                   	push   edx
  72964b:	ff d0                	call   eax
  72964d:	85 c0                	test   eax,eax
  72964f:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  729653:	74 15                	je     0x72966a
  729655:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  729659:	8b 11                	mov    edx,DWORD PTR [ecx]
  72965b:	8b 02                	mov    eax,DWORD PTR [edx]
  72965d:	ff d0                	call   eax
  72965f:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  729662:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  729666:	89 11                	mov    DWORD PTR [ecx],edx
  729668:	eb 28                	jmp    0x729692
  72966a:	c6 86 9e 00 00 00 01 	mov    BYTE PTR [esi+0x9e],0x1
  729671:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  729674:	8b ce                	mov    ecx,esi
  729676:	c7 00 02 00 00 00    	mov    DWORD PTR [eax],0x2
  72967c:	e8 bf dc ff ff       	call   0x727340
  729681:	51                   	push   ecx
  729682:	d9 1c 24             	fstp   DWORD PTR [esp]
  729685:	6a 02                	push   0x2
  729687:	8d 46 10             	lea    eax,[esi+0x10]
  72968a:	50                   	push   eax
  72968b:	8b cd                	mov    ecx,ebp
  72968d:	e8 1e e7 ff ff       	call   0x727db0
  729692:	8b 4f 18             	mov    ecx,DWORD PTR [edi+0x18]
  729695:	85 c9                	test   ecx,ecx
  729697:	74 13                	je     0x7296ac
  729699:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  72969d:	8b 11                	mov    edx,DWORD PTR [ecx]
  72969f:	8b 12                	mov    edx,DWORD PTR [edx]
  7296a1:	50                   	push   eax
  7296a2:	8b 47 1c             	mov    eax,DWORD PTR [edi+0x1c]
  7296a5:	50                   	push   eax
  7296a6:	8d 46 10             	lea    eax,[esi+0x10]
  7296a9:	50                   	push   eax
  7296aa:	ff d2                	call   edx
  7296ac:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  7296af:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  7296b2:	89 19                	mov    DWORD PTR [ecx],ebx
  7296b4:	8b 53 04             	mov    edx,DWORD PTR [ebx+0x4]
  7296b7:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  7296ba:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  7296bd:	8b 4f 14             	mov    ecx,DWORD PTR [edi+0x14]
  7296c0:	85 c9                	test   ecx,ecx
  7296c2:	74 05                	je     0x7296c9
  7296c4:	e8 87 1c e7 ff       	call   0x59b350
  7296c9:	8b 8d 98 03 00 00    	mov    ecx,DWORD PTR [ebp+0x398]
  7296cf:	89 0f                	mov    DWORD PTR [edi],ecx
  7296d1:	89 bd 98 03 00 00    	mov    DWORD PTR [ebp+0x398],edi
  7296d7:	39 5b 04             	cmp    DWORD PTR [ebx+0x4],ebx
  7296da:	0f 85 52 ff ff ff    	jne    0x729632
  7296e0:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  7296e4:	8d 55 70             	lea    edx,[ebp+0x70]
  7296e7:	b8 01 00 00 00       	mov    eax,0x1
  7296ec:	f0 0f c1 02          	lock xadd DWORD PTR [edx],eax
  7296f0:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  7296f4:	8b 51 10             	mov    edx,DWORD PTR [ecx+0x10]
  7296f7:	52                   	push   edx
  7296f8:	8b cd                	mov    ecx,ebp
  7296fa:	e8 51 fa ff ff       	call   0x729150
  7296ff:	8b cf                	mov    ecx,edi
  729701:	e8 ba 85 db ff       	call   0x4e1cc0
  729706:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  72970a:	85 c9                	test   ecx,ecx
  72970c:	74 07                	je     0x729715
  72970e:	8b 01                	mov    eax,DWORD PTR [ecx]
  729710:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  729713:	ff d2                	call   edx
  729715:	5f                   	pop    edi
  729716:	5e                   	pop    esi
  729717:	5d                   	pop    ebp
  729718:	b0 01                	mov    al,0x1
  72971a:	5b                   	pop    ebx
  72971b:	83 c4 08             	add    esp,0x8
  72971e:	c2 08 00             	ret    0x8
