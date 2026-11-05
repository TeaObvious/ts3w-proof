# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00b4c3e0,0x00b4c6df); analyst name LotRoom_TestOutsideClassification.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b4c3e0 <.text+0x74b3e0>:
  b4c3e0:	83 ec 2c             	sub    esp,0x2c
  b4c3e3:	55                   	push   ebp
  b4c3e4:	8b 6c 24 34          	mov    ebp,DWORD PTR [esp+0x34]
  b4c3e8:	66 85 ed             	test   bp,bp
  b4c3eb:	56                   	push   esi
  b4c3ec:	8b f1                	mov    esi,ecx
  b4c3ee:	75 0a                	jne    0xb4c3fa
  b4c3f0:	5e                   	pop    esi
  b4c3f1:	b0 01                	mov    al,0x1
  b4c3f3:	5d                   	pop    ebp
  b4c3f4:	83 c4 2c             	add    esp,0x2c
  b4c3f7:	c2 08 00             	ret    0x8
  b4c3fa:	80 7c 24 3c 00       	cmp    BYTE PTR [esp+0x3c],0x0
  b4c3ff:	57                   	push   edi
  b4c400:	74 47                	je     0xb4c449
  b4c402:	0f b6 86 b8 00 00 00 	movzx  eax,BYTE PTR [esi+0xb8]
  b4c409:	8b be ac 00 00 00    	mov    edi,DWORD PTR [esi+0xac]
  b4c40f:	8b 96 a8 00 00 00    	mov    edx,DWORD PTR [esi+0xa8]
  b4c415:	50                   	push   eax
  b4c416:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  b4c41a:	51                   	push   ecx
  b4c41b:	57                   	push   edi
  b4c41c:	52                   	push   edx
  b4c41d:	e8 de e1 f6 ff       	call   0xaba600
  b4c422:	83 c4 10             	add    esp,0x10
  b4c425:	3b c7                	cmp    eax,edi
  b4c427:	74 0c                	je     0xb4c435
  b4c429:	66 3b 28             	cmp    bp,WORD PTR [eax]
  b4c42c:	7c 07                	jl     0xb4c435
  b4c42e:	8d 48 02             	lea    ecx,[eax+0x2]
  b4c431:	3b c1                	cmp    eax,ecx
  b4c433:	75 02                	jne    0xb4c437
  b4c435:	8b c7                	mov    eax,edi
  b4c437:	33 c9                	xor    ecx,ecx
  b4c439:	3b c7                	cmp    eax,edi
  b4c43b:	5f                   	pop    edi
  b4c43c:	0f 95 c1             	setne  cl
  b4c43f:	5e                   	pop    esi
  b4c440:	8a c1                	mov    al,cl
  b4c442:	5d                   	pop    ebp
  b4c443:	83 c4 2c             	add    esp,0x2c
  b4c446:	c2 08 00             	ret    0x8
  b4c449:	8b 4e 44             	mov    ecx,DWORD PTR [esi+0x44]
  b4c44c:	85 c9                	test   ecx,ecx
  b4c44e:	c6 44 24 0c ff       	mov    BYTE PTR [esp+0xc],0xff
  b4c453:	c6 44 24 0d ff       	mov    BYTE PTR [esp+0xd],0xff
  b4c458:	c6 44 24 0e 00       	mov    BYTE PTR [esp+0xe],0x0
  b4c45d:	c6 44 24 0f ff       	mov    BYTE PTR [esp+0xf],0xff
  b4c462:	74 0d                	je     0xb4c471
  b4c464:	8d 54 24 0c          	lea    edx,[esp+0xc]
  b4c468:	52                   	push   edx
  b4c469:	55                   	push   ebp
  b4c46a:	e8 81 86 0b 00       	call   0xc04af0
  b4c46f:	eb 1c                	jmp    0xb4c48d
  b4c471:	c6 44 24 40 ff       	mov    BYTE PTR [esp+0x40],0xff
  b4c476:	c6 44 24 41 ff       	mov    BYTE PTR [esp+0x41],0xff
  b4c47b:	c6 44 24 42 00       	mov    BYTE PTR [esp+0x42],0x0
  b4c480:	c6 44 24 43 ff       	mov    BYTE PTR [esp+0x43],0xff
  b4c485:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  b4c489:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  b4c48d:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  b4c490:	53                   	push   ebx
  b4c491:	6a 00                	push   0x0
  b4c493:	6a 01                	push   0x1
  b4c495:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  b4c499:	51                   	push   ecx
  b4c49a:	52                   	push   edx
  b4c49b:	e8 80 33 f8 ff       	call   0xacf820
  b4c4a0:	8b 7e 0c             	mov    edi,DWORD PTR [esi+0xc]
  b4c4a3:	83 c4 10             	add    esp,0x10
  b4c4a6:	83 bf e8 02 00 00 00 	cmp    DWORD PTR [edi+0x2e8],0x0
  b4c4ad:	8a d8                	mov    bl,al
  b4c4af:	74 5f                	je     0xb4c510
  b4c4b1:	0f b7 c5             	movzx  eax,bp
  b4c4b4:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b4c4b8:	51                   	push   ecx
  b4c4b9:	8d 54 24 20          	lea    edx,[esp+0x20]
  b4c4bd:	8d ae 74 01 00 00    	lea    ebp,[esi+0x174]
  b4c4c3:	52                   	push   edx
  b4c4c4:	8b cd                	mov    ecx,ebp
  b4c4c6:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  b4c4ca:	e8 f1 7e f9 ff       	call   0xae43c0
  b4c4cf:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  b4c4d2:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
  b4c4d5:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  b4c4d9:	3b 14 81             	cmp    edx,DWORD PTR [ecx+eax*4]
  b4c4dc:	74 2e                	je     0xb4c50c
  b4c4de:	57                   	push   edi
  b4c4df:	e8 7c 86 fb ff       	call   0xb04b60
  b4c4e4:	83 c4 04             	add    esp,0x4
  b4c4e7:	84 db                	test   bl,bl
  b4c4e9:	74 1b                	je     0xb4c506
  b4c4eb:	0f be 4c 24 12       	movsx  ecx,BYTE PTR [esp+0x12]
  b4c4f0:	0f be d0             	movsx  edx,al
  b4c4f3:	83 c1 01             	add    ecx,0x1
  b4c4f6:	3b ca                	cmp    ecx,edx
  b4c4f8:	7f 12                	jg     0xb4c50c
  b4c4fa:	5b                   	pop    ebx
  b4c4fb:	5f                   	pop    edi
  b4c4fc:	5e                   	pop    esi
  b4c4fd:	32 c0                	xor    al,al
  b4c4ff:	5d                   	pop    ebp
  b4c500:	83 c4 2c             	add    esp,0x2c
  b4c503:	c2 08 00             	ret    0x8
  b4c506:	38 44 24 12          	cmp    BYTE PTR [esp+0x12],al
  b4c50a:	7e ee                	jle    0xb4c4fa
  b4c50c:	8b 6c 24 40          	mov    ebp,DWORD PTR [esp+0x40]
  b4c510:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  b4c513:	83 b8 e8 02 00 00 00 	cmp    DWORD PTR [eax+0x2e8],0x0
  b4c51a:	8b 88 ac 02 00 00    	mov    ecx,DWORD PTR [eax+0x2ac]
  b4c520:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  b4c524:	75 0d                	jne    0xb4c533
  b4c526:	84 db                	test   bl,bl
  b4c528:	75 09                	jne    0xb4c533
  b4c52a:	e8 71 80 04 00       	call   0xb945a0
  b4c52f:	84 c0                	test   al,al
  b4c531:	75 c7                	jne    0xb4c4fa
  b4c533:	8b 4e 44             	mov    ecx,DWORD PTR [esi+0x44]
  b4c536:	85 c9                	test   ecx,ecx
  b4c538:	74 c0                	je     0xb4c4fa
  b4c53a:	55                   	push   ebp
  b4c53b:	e8 70 85 0b 00       	call   0xc04ab0
  b4c540:	8b f8                	mov    edi,eax
  b4c542:	33 ed                	xor    ebp,ebp
  b4c544:	3b fd                	cmp    edi,ebp
  b4c546:	74 b2                	je     0xb4c4fa
  b4c548:	8b cf                	mov    ecx,edi
  b4c54a:	e8 d1 5c 0e 00       	call   0xc32220
  b4c54f:	3b c5                	cmp    eax,ebp
  b4c551:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  b4c555:	74 a3                	je     0xb4c4fa
  b4c557:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  b4c55f:	8d 44 24 44          	lea    eax,[esp+0x44]
  b4c563:	32 db                	xor    bl,bl
  b4c565:	50                   	push   eax
  b4c566:	8b cf                	mov    ecx,edi
  b4c568:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  b4c56c:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  b4c572:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  b4c578:	89 6c 24 30          	mov    DWORD PTR [esp+0x30],ebp
  b4c57c:	c6 44 24 48 ff       	mov    BYTE PTR [esp+0x48],0xff
  b4c581:	c6 44 24 49 ff       	mov    BYTE PTR [esp+0x49],0xff
  b4c586:	88 5c 24 4a          	mov    BYTE PTR [esp+0x4a],bl
  b4c58a:	c6 44 24 4b ff       	mov    BYTE PTR [esp+0x4b],0xff
  b4c58f:	e8 ac 5c 0e 00       	call   0xc32240
  b4c594:	84 c0                	test   al,al
  b4c596:	0f 84 f8 00 00 00    	je     0xb4c694
  b4c59c:	8d 64 24 00          	lea    esp,[esp+0x0]
  b4c5a0:	84 db                	test   bl,bl
  b4c5a2:	75 0d                	jne    0xb4c5b1
  b4c5a4:	80 7c 24 46 ff       	cmp    BYTE PTR [esp+0x46],0xff
  b4c5a9:	0f 8c 4b ff ff ff    	jl     0xb4c4fa
  b4c5af:	b3 01                	mov    bl,0x1
  b4c5b1:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  b4c5b5:	51                   	push   ecx
  b4c5b6:	8d 54 24 48          	lea    edx,[esp+0x48]
  b4c5ba:	52                   	push   edx
  b4c5bb:	e8 e0 bb fa ff       	call   0xaf81a0
  b4c5c0:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  b4c5c4:	83 c4 08             	add    esp,0x8
  b4c5c7:	6a 01                	push   0x1
  b4c5c9:	6a 01                	push   0x1
  b4c5cb:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  b4c5cf:	50                   	push   eax
  b4c5d0:	e8 db 85 04 00       	call   0xb94bb0
  b4c5d5:	84 c0                	test   al,al
  b4c5d7:	0f 85 9e 00 00 00    	jne    0xb4c67b
  b4c5dd:	8a 44 24 46          	mov    al,BYTE PTR [esp+0x46]
  b4c5e1:	66 8b 4c 24 44       	mov    cx,WORD PTR [esp+0x44]
  b4c5e6:	8a 54 24 47          	mov    dl,BYTE PTR [esp+0x47]
  b4c5ea:	88 44 24 42          	mov    BYTE PTR [esp+0x42],al
  b4c5ee:	04 01                	add    al,0x1
  b4c5f0:	88 44 24 42          	mov    BYTE PTR [esp+0x42],al
  b4c5f4:	0f be c0             	movsx  eax,al
  b4c5f7:	3b 46 20             	cmp    eax,DWORD PTR [esi+0x20]
  b4c5fa:	66 89 4c 24 40       	mov    WORD PTR [esp+0x40],cx
  b4c5ff:	88 54 24 43          	mov    BYTE PTR [esp+0x43],dl
  b4c603:	7f 7b                	jg     0xb4c680
  b4c605:	eb 09                	jmp    0xb4c610
  b4c607:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  b4c60e:	8b ff                	mov    edi,edi
  b4c610:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  b4c618:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  b4c61c:	51                   	push   ecx
  b4c61d:	8d 54 24 44          	lea    edx,[esp+0x44]
  b4c621:	52                   	push   edx
  b4c622:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  b4c628:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  b4c62e:	89 6c 24 40          	mov    DWORD PTR [esp+0x40],ebp
  b4c632:	e8 69 bb fa ff       	call   0xaf81a0
  b4c637:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  b4c63a:	55                   	push   ebp
  b4c63b:	55                   	push   ebp
  b4c63c:	55                   	push   ebp
  b4c63d:	8d 44 24 44          	lea    eax,[esp+0x44]
  b4c641:	50                   	push   eax
  b4c642:	51                   	push   ecx
  b4c643:	e8 c8 16 fb ff       	call   0xafdd10
  b4c648:	83 c4 1c             	add    esp,0x1c
  b4c64b:	84 c0                	test   al,al
  b4c64d:	74 18                	je     0xb4c667
  b4c64f:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  b4c652:	55                   	push   ebp
  b4c653:	6a 01                	push   0x1
  b4c655:	8d 54 24 48          	lea    edx,[esp+0x48]
  b4c659:	52                   	push   edx
  b4c65a:	50                   	push   eax
  b4c65b:	e8 c0 33 f8 ff       	call   0xacfa20
  b4c660:	83 c4 10             	add    esp,0x10
  b4c663:	84 c0                	test   al,al
  b4c665:	74 14                	je     0xb4c67b
  b4c667:	8a 44 24 42          	mov    al,BYTE PTR [esp+0x42]
  b4c66b:	04 01                	add    al,0x1
  b4c66d:	0f be c8             	movsx  ecx,al
  b4c670:	3b 4e 20             	cmp    ecx,DWORD PTR [esi+0x20]
  b4c673:	88 44 24 42          	mov    BYTE PTR [esp+0x42],al
  b4c677:	7e 97                	jle    0xb4c610
  b4c679:	eb 05                	jmp    0xb4c680
  b4c67b:	83 44 24 14 01       	add    DWORD PTR [esp+0x14],0x1
  b4c680:	8d 54 24 44          	lea    edx,[esp+0x44]
  b4c684:	52                   	push   edx
  b4c685:	8b cf                	mov    ecx,edi
  b4c687:	e8 54 4c 0e 00       	call   0xc312e0
  b4c68c:	84 c0                	test   al,al
  b4c68e:	0f 85 0c ff ff ff    	jne    0xb4c5a0
  b4c694:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  b4c698:	db 44 24 14          	fild   DWORD PTR [esp+0x14]
  b4c69c:	85 c0                	test   eax,eax
  b4c69e:	7d 06                	jge    0xb4c6a6
  b4c6a0:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  b4c6a6:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  b4c6aa:	db 44 24 1c          	fild   DWORD PTR [esp+0x1c]
  b4c6ae:	85 c9                	test   ecx,ecx
  b4c6b0:	7d 06                	jge    0xb4c6b8
  b4c6b2:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  b4c6b8:	d8 0d b4 b5 f9 00    	fmul   DWORD PTR ds:0xf9b5b4
  b4c6be:	df f1                	fcomip st,st(1)
  b4c6c0:	dd d8                	fstp   st(0)
  b4c6c2:	76 0f                	jbe    0xb4c6d3
  b4c6c4:	5b                   	pop    ebx
  b4c6c5:	5f                   	pop    edi
  b4c6c6:	5e                   	pop    esi
  b4c6c7:	b8 01 00 00 00       	mov    eax,0x1
  b4c6cc:	5d                   	pop    ebp
  b4c6cd:	83 c4 2c             	add    esp,0x2c
  b4c6d0:	c2 08 00             	ret    0x8
  b4c6d3:	5b                   	pop    ebx
  b4c6d4:	5f                   	pop    edi
  b4c6d5:	5e                   	pop    esi
  b4c6d6:	33 c0                	xor    eax,eax
  b4c6d8:	5d                   	pop    ebp
  b4c6d9:	83 c4 2c             	add    esp,0x2c
  b4c6dc:	c2 08 00             	ret    0x8
