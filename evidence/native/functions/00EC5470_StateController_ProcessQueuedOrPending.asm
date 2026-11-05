# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00ec5470 (StateController_ProcessQueuedOrPending)
Paired actual Ghidra pseudocode: 00EC5470_StateController_ProcessQueuedOrPending.c
Envelope [0x00ec5470,0x00ec55ad); 317 bytes; exact owned ranges: [0x00ec5470,0x00ec55ad)
Owned: 317 original bytes / 142 instructions.
Contiguous complete existing function body; no definition/body/instruction changes.
Stored prototypes are preserved inferred projections; physical register/stack/return facts are in the entry annotation. Child contracts remain separate.

LINEAR DISASSEMBLY
00ec5470 <original>:
  ec5470:	56                   	push   esi
  ec5471:	8b f1                	mov    esi,ecx
  ec5473:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  ec5476:	85 c0                	test   eax,eax
  ec5478:	0f 84 81 00 00 00    	je     0xec54ff
  ec547e:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  ec5481:	3b 4e 18             	cmp    ecx,DWORD PTR [esi+0x18]
  ec5484:	57                   	push   edi
  ec5485:	0f 85 e3 00 00 00    	jne    0xec556e
  ec548b:	8b 46 2c             	mov    eax,DWORD PTR [esi+0x2c]
  ec548e:	85 c0                	test   eax,eax
  ec5490:	8d 7e 2c             	lea    edi,[esi+0x2c]
  ec5493:	74 69                	je     0xec54fe
  ec5495:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  ec5498:	3b c8                	cmp    ecx,eax
  ec549a:	55                   	push   ebp
  ec549b:	8d 6e 24             	lea    ebp,[esi+0x24]
  ec549e:	74 72                	je     0xec5512
  ec54a0:	85 c9                	test   ecx,ecx
  ec54a2:	75 0e                	jne    0xec54b2
  ec54a4:	57                   	push   edi
  ec54a5:	8b cd                	mov    ecx,ebp
  ec54a7:	e8 64 40 6e ff       	call   0x5a9510
  ec54ac:	5d                   	pop    ebp
  ec54ad:	5f                   	pop    edi
  ec54ae:	5e                   	pop    esi
  ec54af:	c2 08 00             	ret    0x8
  ec54b2:	8b 11                	mov    edx,DWORD PTR [ecx]
  ec54b4:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  ec54b7:	53                   	push   ebx
  ec54b8:	ff d0                	call   eax
  ec54ba:	8b d8                	mov    ebx,eax
  ec54bc:	8b 03                	mov    eax,DWORD PTR [ebx]
  ec54be:	85 c0                	test   eax,eax
  ec54c0:	8b cb                	mov    ecx,ebx
  ec54c2:	74 11                	je     0xec54d5
  ec54c4:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  ec54c7:	3b c2                	cmp    eax,edx
  ec54c9:	74 38                	je     0xec5503
  ec54cb:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  ec54ce:	83 c1 04             	add    ecx,0x4
  ec54d1:	85 c0                	test   eax,eax
  ec54d3:	75 f2                	jne    0xec54c7
  ec54d5:	8b 0f                	mov    ecx,DWORD PTR [edi]
  ec54d7:	8b 11                	mov    edx,DWORD PTR [ecx]
  ec54d9:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  ec54dc:	ff d0                	call   eax
  ec54de:	50                   	push   eax
  ec54df:	53                   	push   ebx
  ec54e0:	e8 db fc ff ff       	call   0xec51c0
  ec54e5:	83 c4 08             	add    esp,0x8
  ec54e8:	85 c0                	test   eax,eax
  ec54ea:	74 10                	je     0xec54fc
  ec54ec:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  ec54ef:	8b 11                	mov    edx,DWORD PTR [ecx]
  ec54f1:	8b 52 14             	mov    edx,DWORD PTR [edx+0x14]
  ec54f4:	50                   	push   eax
  ec54f5:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  ec54f8:	50                   	push   eax
  ec54f9:	56                   	push   esi
  ec54fa:	ff d2                	call   edx
  ec54fc:	5b                   	pop    ebx
  ec54fd:	5d                   	pop    ebp
  ec54fe:	5f                   	pop    edi
  ec54ff:	5e                   	pop    esi
  ec5500:	c2 08 00             	ret    0x8
  ec5503:	57                   	push   edi
  ec5504:	8b cd                	mov    ecx,ebp
  ec5506:	e8 05 40 6e ff       	call   0x5a9510
  ec550b:	5b                   	pop    ebx
  ec550c:	5d                   	pop    ebp
  ec550d:	5f                   	pop    edi
  ec550e:	5e                   	pop    esi
  ec550f:	c2 08 00             	ret    0x8
  ec5512:	85 c9                	test   ecx,ecx
  ec5514:	74 33                	je     0xec5549
  ec5516:	8b 46 30             	mov    eax,DWORD PTR [esi+0x30]
  ec5519:	8b 56 28             	mov    edx,DWORD PTR [esi+0x28]
  ec551c:	3b c2                	cmp    eax,edx
  ec551e:	75 19                	jne    0xec5539
  ec5520:	8b 0f                	mov    ecx,DWORD PTR [edi]
  ec5522:	85 c9                	test   ecx,ecx
  ec5524:	74 d7                	je     0xec54fd
  ec5526:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  ec552c:	8b 01                	mov    eax,DWORD PTR [ecx]
  ec552e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  ec5531:	ff d2                	call   edx
  ec5533:	5d                   	pop    ebp
  ec5534:	5f                   	pop    edi
  ec5535:	5e                   	pop    esi
  ec5536:	c2 08 00             	ret    0x8
  ec5539:	8b 39                	mov    edi,DWORD PTR [ecx]
  ec553b:	50                   	push   eax
  ec553c:	8b 47 14             	mov    eax,DWORD PTR [edi+0x14]
  ec553f:	52                   	push   edx
  ec5540:	56                   	push   esi
  ec5541:	ff d0                	call   eax
  ec5543:	5d                   	pop    ebp
  ec5544:	5f                   	pop    edi
  ec5545:	5e                   	pop    esi
  ec5546:	c2 08 00             	ret    0x8
  ec5549:	8b 4e 30             	mov    ecx,DWORD PTR [esi+0x30]
  ec554c:	51                   	push   ecx
  ec554d:	50                   	push   eax
  ec554e:	8b ce                	mov    ecx,esi
  ec5550:	e8 ab fe ff ff       	call   0xec5400
  ec5555:	8b 0f                	mov    ecx,DWORD PTR [edi]
  ec5557:	85 c9                	test   ecx,ecx
  ec5559:	74 a2                	je     0xec54fd
  ec555b:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  ec5561:	8b 11                	mov    edx,DWORD PTR [ecx]
  ec5563:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  ec5566:	ff d0                	call   eax
  ec5568:	5d                   	pop    ebp
  ec5569:	5f                   	pop    edi
  ec556a:	5e                   	pop    esi
  ec556b:	c2 08 00             	ret    0x8
  ec556e:	8b 7e 18             	mov    edi,DWORD PTR [esi+0x18]
  ec5571:	8b 4e 24             	mov    ecx,DWORD PTR [esi+0x24]
  ec5574:	8b 57 f8             	mov    edx,DWORD PTR [edi-0x8]
  ec5577:	83 ef 08             	sub    edi,0x8
  ec557a:	85 c9                	test   ecx,ecx
  ec557c:	89 56 24             	mov    DWORD PTR [esi+0x24],edx
  ec557f:	74 07                	je     0xec5588
  ec5581:	8b 01                	mov    eax,DWORD PTR [ecx]
  ec5583:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  ec5586:	ff d2                	call   edx
  ec5588:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  ec558b:	89 46 28             	mov    DWORD PTR [esi+0x28],eax
  ec558e:	83 46 18 f8          	add    DWORD PTR [esi+0x18],0xfffffff8
  ec5592:	8b 0f                	mov    ecx,DWORD PTR [edi]
  ec5594:	85 c9                	test   ecx,ecx
  ec5596:	0f 84 62 ff ff ff    	je     0xec54fe
  ec559c:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  ec559f:	8b 11                	mov    edx,DWORD PTR [ecx]
  ec55a1:	8b 52 18             	mov    edx,DWORD PTR [edx+0x18]
  ec55a4:	50                   	push   eax
  ec55a5:	56                   	push   esi
  ec55a6:	ff d2                	call   edx
  ec55a8:	5f                   	pop    edi
  ec55a9:	5e                   	pop    esi
  ec55aa:	c2 08 00             	ret    0x8
