# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00c684c0, 0x00c686df); analyst name LotSpatialIndex_RebuildBuckets.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c684c0 <.text+0x8674c0>:
  c684c0:	83 ec 1c             	sub    esp,0x1c
  c684c3:	53                   	push   ebx
  c684c4:	55                   	push   ebp
  c684c5:	56                   	push   esi
  c684c6:	8b d9                	mov    ebx,ecx
  c684c8:	57                   	push   edi
  c684c9:	8d 8b 28 02 00 00    	lea    ecx,[ebx+0x228]
  c684cf:	68 18 97 07 01       	push   0x1079718
  c684d4:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  c684d8:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  c684dc:	e8 1f 97 87 ff       	call   0x4e1c00
  c684e1:	8b 83 f4 01 00 00    	mov    eax,DWORD PTR [ebx+0x1f4]
  c684e7:	8d bb f4 01 00 00    	lea    edi,[ebx+0x1f4]
  c684ed:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  c684f0:	8b 8b 04 02 00 00    	mov    ecx,DWORD PTR [ebx+0x204]
  c684f6:	8d ab 04 02 00 00    	lea    ebp,[ebx+0x204]
  c684fc:	89 4d 04             	mov    DWORD PTR [ebp+0x4],ecx
  c684ff:	8b 93 14 02 00 00    	mov    edx,DWORD PTR [ebx+0x214]
  c68505:	89 93 18 02 00 00    	mov    DWORD PTR [ebx+0x218],edx
  c6850b:	8b 83 a0 00 00 00    	mov    eax,DWORD PTR [ebx+0xa0]
  c68511:	8b b3 9c 00 00 00    	mov    esi,DWORD PTR [ebx+0x9c]
  c68517:	3b f0                	cmp    esi,eax
  c68519:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  c6851d:	74 16                	je     0xc68535
  c6851f:	90                   	nop
  c68520:	8b 06                	mov    eax,DWORD PTR [esi]
  c68522:	57                   	push   edi
  c68523:	50                   	push   eax
  c68524:	e8 07 e1 ff ff       	call   0xc66630
  c68529:	83 c6 04             	add    esi,0x4
  c6852c:	83 c4 08             	add    esp,0x8
  c6852f:	3b 74 24 1c          	cmp    esi,DWORD PTR [esp+0x1c]
  c68533:	75 eb                	jne    0xc68520
  c68535:	57                   	push   edi
  c68536:	8b cd                	mov    ecx,ebp
  c68538:	e8 43 b1 96 ff       	call   0x5d3680
  c6853d:	8b 8b b0 00 00 00    	mov    ecx,DWORD PTR [ebx+0xb0]
  c68543:	55                   	push   ebp
  c68544:	51                   	push   ecx
  c68545:	e8 e6 e0 ff ff       	call   0xc66630
  c6854a:	8b 93 dc 01 00 00    	mov    edx,DWORD PTR [ebx+0x1dc]
  c68550:	8b 83 d8 01 00 00    	mov    eax,DWORD PTR [ebx+0x1d8]
  c68556:	8d b3 d4 01 00 00    	lea    esi,[ebx+0x1d4]
  c6855c:	83 c4 08             	add    esp,0x8
  c6855f:	52                   	push   edx
  c68560:	50                   	push   eax
  c68561:	8b ce                	mov    ecx,esi
  c68563:	e8 f8 1c f1 ff       	call   0xb7a260
  c68568:	f3 0f 10 05 38 41 fa 00 	movss  xmm0,DWORD PTR ds:0xfa4138
  c68570:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
  c68577:	8b 6d 00             	mov    ebp,DWORD PTR [ebp+0x0]
  c6857a:	3b ab 08 02 00 00    	cmp    ebp,DWORD PTR [ebx+0x208]
  c68580:	f3 0f 11 83 d0 01 00 00 	movss  DWORD PTR [ebx+0x1d0],xmm0
  c68588:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  c6858c:	0f 84 36 01 00 00    	je     0xc686c8
  c68592:	8b 6d 00             	mov    ebp,DWORD PTR [ebp+0x0]
  c68595:	85 ed                	test   ebp,ebp
  c68597:	89 6c 24 14          	mov    DWORD PTR [esp+0x14],ebp
  c6859b:	0f 84 10 01 00 00    	je     0xc686b1
  c685a1:	80 7d 74 00          	cmp    BYTE PTR [ebp+0x74],0x0
  c685a5:	0f 84 06 01 00 00    	je     0xc686b1
  c685ab:	f3 0f 2c 8b b4 00 00 00 	cvttss2si ecx,DWORD PTR [ebx+0xb4]
  c685b3:	8b 85 5c 01 00 00    	mov    eax,DWORD PTR [ebp+0x15c]
  c685b9:	f3 0f 2c b3 b8 00 00 00 	cvttss2si esi,DWORD PTR [ebx+0xb8]
  c685c1:	2b c1                	sub    eax,ecx
  c685c3:	99                   	cdq
  c685c4:	83 e2 0f             	and    edx,0xf
  c685c7:	03 c2                	add    eax,edx
  c685c9:	8b f8                	mov    edi,eax
  c685cb:	8b 85 58 01 00 00    	mov    eax,DWORD PTR [ebp+0x158]
  c685d1:	2b c6                	sub    eax,esi
  c685d3:	99                   	cdq
  c685d4:	83 e2 0f             	and    edx,0xf
  c685d7:	03 c2                	add    eax,edx
  c685d9:	c1 f8 04             	sar    eax,0x4
  c685dc:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  c685e0:	8b 85 60 01 00 00    	mov    eax,DWORD PTR [ebp+0x160]
  c685e6:	2b c6                	sub    eax,esi
  c685e8:	99                   	cdq
  c685e9:	83 e2 0f             	and    edx,0xf
  c685ec:	03 c2                	add    eax,edx
  c685ee:	8b d8                	mov    ebx,eax
  c685f0:	8b 85 54 01 00 00    	mov    eax,DWORD PTR [ebp+0x154]
  c685f6:	2b c1                	sub    eax,ecx
  c685f8:	99                   	cdq
  c685f9:	83 e2 0f             	and    edx,0xf
  c685fc:	03 c2                	add    eax,edx
  c685fe:	8b f0                	mov    esi,eax
  c68600:	c1 ff 04             	sar    edi,0x4
  c68603:	c1 fe 04             	sar    esi,0x4
  c68606:	c1 fb 04             	sar    ebx,0x4
  c68609:	3b f7                	cmp    esi,edi
  c6860b:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  c6860f:	7f 65                	jg     0xc68676
  c68611:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  c68615:	3b fb                	cmp    edi,ebx
  c68617:	7f 54                	jg     0xc6866d
  c68619:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  c68620:	8b cf                	mov    ecx,edi
  c68622:	c1 e1 10             	shl    ecx,0x10
  c68625:	0b ce                	or     ecx,esi
  c68627:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  c6862b:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c6862f:	8d 54 24 20          	lea    edx,[esp+0x20]
  c68633:	52                   	push   edx
  c68634:	81 c1 d4 01 00 00    	add    ecx,0x1d4
  c6863a:	e8 81 f8 ff ff       	call   0xc67ec0
  c6863f:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  c68642:	3b 48 08             	cmp    ecx,DWORD PTR [eax+0x8]
  c68645:	73 0e                	jae    0xc68655
  c68647:	85 c9                	test   ecx,ecx
  c68649:	8d 51 04             	lea    edx,[ecx+0x4]
  c6864c:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  c6864f:	74 15                	je     0xc68666
  c68651:	89 29                	mov    DWORD PTR [ecx],ebp
  c68653:	eb 11                	jmp    0xc68666
  c68655:	8d 54 24 14          	lea    edx,[esp+0x14]
  c68659:	52                   	push   edx
  c6865a:	51                   	push   ecx
  c6865b:	8b c8                	mov    ecx,eax
  c6865d:	e8 be 9d d1 ff       	call   0x982420
  c68662:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  c68666:	83 c7 01             	add    edi,0x1
  c68669:	3b fb                	cmp    edi,ebx
  c6866b:	7e b3                	jle    0xc68620
  c6866d:	83 c6 01             	add    esi,0x1
  c68670:	3b 74 24 24          	cmp    esi,DWORD PTR [esp+0x24]
  c68674:	7e 9b                	jle    0xc68611
  c68676:	80 bd bc 04 00 00 00 	cmp    BYTE PTR [ebp+0x4bc],0x0
  c6867d:	74 2e                	je     0xc686ad
  c6867f:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c68683:	8b 81 18 02 00 00    	mov    eax,DWORD PTR [ecx+0x218]
  c68689:	81 c1 14 02 00 00    	add    ecx,0x214
  c6868f:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  c68692:	73 0e                	jae    0xc686a2
  c68694:	85 c0                	test   eax,eax
  c68696:	8d 50 04             	lea    edx,[eax+0x4]
  c68699:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  c6869c:	74 0f                	je     0xc686ad
  c6869e:	89 28                	mov    DWORD PTR [eax],ebp
  c686a0:	eb 0b                	jmp    0xc686ad
  c686a2:	8d 54 24 14          	lea    edx,[esp+0x14]
  c686a6:	52                   	push   edx
  c686a7:	50                   	push   eax
  c686a8:	e8 73 9d d1 ff       	call   0x982420
  c686ad:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  c686b1:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  c686b5:	83 c5 04             	add    ebp,0x4
  c686b8:	3b ab 08 02 00 00    	cmp    ebp,DWORD PTR [ebx+0x208]
  c686be:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  c686c2:	0f 85 ca fe ff ff    	jne    0xc68592
  c686c8:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  c686cc:	5f                   	pop    edi
  c686cd:	5e                   	pop    esi
  c686ce:	5d                   	pop    ebp
  c686cf:	c6 83 cc 01 00 00 00 	mov    BYTE PTR [ebx+0x1cc],0x0
  c686d6:	5b                   	pop    ebx
  c686d7:	83 c4 1c             	add    esp,0x1c
  c686da:	e9 e1 95 87 ff       	jmp    0x4e1cc0
