# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x008542e0,0x0085465c); analyst name AnimatedStairsBody_Transition.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

008542e0 <.text+0x4532e0>:
  8542e0:	55                   	push   ebp
  8542e1:	8b ec                	mov    ebp,esp
  8542e3:	83 e4 f8             	and    esp,0xfffffff8
  8542e6:	83 ec 24             	sub    esp,0x24
  8542e9:	53                   	push   ebx
  8542ea:	56                   	push   esi
  8542eb:	57                   	push   edi
  8542ec:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  8542ef:	8b f1                	mov    esi,ecx
  8542f1:	33 db                	xor    ebx,ebx
  8542f3:	8b 86 44 01 00 00    	mov    eax,DWORD PTR [esi+0x144]
  8542f9:	3b c3                	cmp    eax,ebx
  8542fb:	74 38                	je     0x854335
  8542fd:	8d 4e 18             	lea    ecx,[esi+0x18]
  854300:	51                   	push   ecx
  854301:	8d 48 0c             	lea    ecx,[eax+0xc]
  854304:	e8 87 26 d1 ff       	call   0x566990
  854309:	8b 8e 44 01 00 00    	mov    ecx,DWORD PTR [esi+0x144]
  85430f:	3b cb                	cmp    ecx,ebx
  854311:	89 9e 44 01 00 00    	mov    DWORD PTR [esi+0x144],ebx
  854317:	74 1c                	je     0x854335
  854319:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  85431c:	83 c0 ff             	add    eax,0xffffffff
  85431f:	3b c3                	cmp    eax,ebx
  854321:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  854324:	75 0f                	jne    0x854335
  854326:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  85432d:	8b 11                	mov    edx,DWORD PTR [ecx]
  85432f:	8b 02                	mov    eax,DWORD PTR [edx]
  854331:	6a 01                	push   0x1
  854333:	ff d0                	call   eax
  854335:	39 9e 4c 01 00 00    	cmp    DWORD PTR [esi+0x14c],ebx
  85433b:	74 5c                	je     0x854399
  85433d:	8d 47 ff             	lea    eax,[edi-0x1]
  854340:	83 f8 09             	cmp    eax,0x9
  854343:	77 54                	ja     0x854399
  854345:	ff 24 85 5c 46 85 00 	jmp    DWORD PTR [eax*4+0x85465c]
  85434c:	8b 4e 78             	mov    ecx,DWORD PTR [esi+0x78]
  85434f:	51                   	push   ecx
  854350:	e8 3b 9a d0 ff       	call   0x55dd90
  854355:	83 c4 04             	add    esp,0x4
  854358:	f6 d8                	neg    al
  85435a:	1b c0                	sbb    eax,eax
  85435c:	f7 d8                	neg    eax
  85435e:	83 c0 06             	add    eax,0x6
  854361:	8b f8                	mov    edi,eax
  854363:	eb 8e                	jmp    0x8542f3
  854365:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  854368:	8b 11                	mov    edx,DWORD PTR [ecx]
  85436a:	8b 52 6c             	mov    edx,DWORD PTR [edx+0x6c]
  85436d:	8d 86 a0 00 00 00    	lea    eax,[esi+0xa0]
  854373:	50                   	push   eax
  854374:	ff d2                	call   edx
  854376:	84 c0                	test   al,al
  854378:	0f 84 17 01 00 00    	je     0x854495
  85437e:	bf 08 00 00 00       	mov    edi,0x8
  854383:	e9 6b ff ff ff       	jmp    0x8542f3
  854388:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  85438b:	8b 01                	mov    eax,DWORD PTR [ecx]
  85438d:	8b 40 58             	mov    eax,DWORD PTR [eax+0x58]
  854390:	8d 96 a0 00 00 00    	lea    edx,[esi+0xa0]
  854396:	52                   	push   edx
  854397:	ff d0                	call   eax
  854399:	89 be 48 01 00 00    	mov    DWORD PTR [esi+0x148],edi
  85439f:	5f                   	pop    edi
  8543a0:	5e                   	pop    esi
  8543a1:	5b                   	pop    ebx
  8543a2:	8b e5                	mov    esp,ebp
  8543a4:	5d                   	pop    ebp
  8543a5:	c2 04 00             	ret    0x4
  8543a8:	8b 8e 4c 01 00 00    	mov    ecx,DWORD PTR [esi+0x14c]
  8543ae:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  8543b2:	8b 4e 20             	mov    ecx,DWORD PTR [esi+0x20]
  8543b5:	3b cb                	cmp    ecx,ebx
  8543b7:	0f 57 c0             	xorps  xmm0,xmm0
  8543ba:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  8543c0:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  8543c6:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  8543cc:	88 5c 24 28          	mov    BYTE PTR [esp+0x28],bl
  8543d0:	88 5c 24 29          	mov    BYTE PTR [esp+0x29],bl
  8543d4:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  8543d8:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  8543dc:	88 5c 24 10          	mov    BYTE PTR [esp+0x10],bl
  8543e0:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  8543e6:	74 47                	je     0x85442f
  8543e8:	8b 11                	mov    edx,DWORD PTR [ecx]
  8543ea:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  8543ed:	8d 44 24 0c          	lea    eax,[esp+0xc]
  8543f1:	50                   	push   eax
  8543f2:	8d 44 24 18          	lea    eax,[esp+0x18]
  8543f6:	50                   	push   eax
  8543f7:	ff d2                	call   edx
  8543f9:	84 c0                	test   al,al
  8543fb:	74 32                	je     0x85442f
  8543fd:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  854401:	3b c3                	cmp    eax,ebx
  854403:	74 2a                	je     0x85442f
  854405:	57                   	push   edi
  854406:	50                   	push   eax
  854407:	8b ce                	mov    ecx,esi
  854409:	e8 22 fc ff ff       	call   0x854030
  85440e:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  854412:	e8 09 19 d1 ff       	call   0x565d20
  854417:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  85441b:	e8 f0 4a ff ff       	call   0x848f10
  854420:	89 be 48 01 00 00    	mov    DWORD PTR [esi+0x148],edi
  854426:	5f                   	pop    edi
  854427:	5e                   	pop    esi
  854428:	5b                   	pop    ebx
  854429:	8b e5                	mov    esp,ebp
  85442b:	5d                   	pop    ebp
  85442c:	c2 04 00             	ret    0x4
  85442f:	53                   	push   ebx
  854430:	53                   	push   ebx
  854431:	8d 8e 20 01 00 00    	lea    ecx,[esi+0x120]
  854437:	e8 54 5b 00 00       	call   0x859f90
  85443c:	6a 0a                	push   0xa
  85443e:	8b ce                	mov    ecx,esi
  854440:	e8 9b fe ff ff       	call   0x8542e0
  854445:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  854448:	8b 01                	mov    eax,DWORD PTR [ecx]
  85444a:	8b 50 58             	mov    edx,DWORD PTR [eax+0x58]
  85444d:	81 c6 a0 00 00 00    	add    esi,0xa0
  854453:	56                   	push   esi
  854454:	ff d2                	call   edx
  854456:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  85445a:	e8 c1 18 d1 ff       	call   0x565d20
  85445f:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  854463:	e8 a8 4a ff ff       	call   0x848f10
  854468:	5f                   	pop    edi
  854469:	5e                   	pop    esi
  85446a:	5b                   	pop    ebx
  85446b:	8b e5                	mov    esp,ebp
  85446d:	5d                   	pop    ebp
  85446e:	c2 04 00             	ret    0x4
  854471:	8b 86 4c 01 00 00    	mov    eax,DWORD PTR [esi+0x14c]
  854477:	8b 4e 64             	mov    ecx,DWORD PTR [esi+0x64]
  85447a:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  85447e:	e9 32 ff ff ff       	jmp    0x8543b5
  854483:	8b 86 4c 01 00 00    	mov    eax,DWORD PTR [esi+0x14c]
  854489:	8b 4e 68             	mov    ecx,DWORD PTR [esi+0x68]
  85448c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  854490:	e9 20 ff ff ff       	jmp    0x8543b5
  854495:	0f 57 c0             	xorps  xmm0,xmm0
  854498:	8b 4e 78             	mov    ecx,DWORD PTR [esi+0x78]
  85449b:	8b 86 4c 01 00 00    	mov    eax,DWORD PTR [esi+0x14c]
  8544a1:	51                   	push   ecx
  8544a2:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  8544a6:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  8544ac:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  8544b2:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  8544b8:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  8544be:	88 5c 24 2d          	mov    BYTE PTR [esp+0x2d],bl
  8544c2:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  8544c6:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  8544ca:	88 5c 24 14          	mov    BYTE PTR [esp+0x14],bl
  8544ce:	e8 bd 98 d0 ff       	call   0x55dd90
  8544d3:	83 c4 04             	add    esp,0x4
  8544d6:	84 c0                	test   al,al
  8544d8:	75 0c                	jne    0x8544e6
  8544da:	38 9e 84 00 00 00    	cmp    BYTE PTR [esi+0x84],bl
  8544e0:	74 04                	je     0x8544e6
  8544e2:	b0 01                	mov    al,0x1
  8544e4:	eb 02                	jmp    0x8544e8
  8544e6:	32 c0                	xor    al,al
  8544e8:	8a 96 80 00 00 00    	mov    dl,BYTE PTR [esi+0x80]
  8544ee:	33 c9                	xor    ecx,ecx
  8544f0:	83 be 48 01 00 00 07 	cmp    DWORD PTR [esi+0x148],0x7
  8544f7:	88 54 24 28          	mov    BYTE PTR [esp+0x28],dl
  8544fb:	0f 94 c1             	sete   cl
  8544fe:	0f b6 d0             	movzx  edx,al
  854501:	33 ca                	xor    ecx,edx
  854503:	74 1a                	je     0x85451f
  854505:	8b 4e 54             	mov    ecx,DWORD PTR [esi+0x54]
  854508:	3b cb                	cmp    ecx,ebx
  85450a:	74 37                	je     0x854543
  85450c:	8b 01                	mov    eax,DWORD PTR [ecx]
  85450e:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  854511:	8d 54 24 0c          	lea    edx,[esp+0xc]
  854515:	52                   	push   edx
  854516:	8d 54 24 18          	lea    edx,[esp+0x18]
  85451a:	52                   	push   edx
  85451b:	ff d0                	call   eax
  85451d:	eb 18                	jmp    0x854537
  85451f:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  854522:	3b cb                	cmp    ecx,ebx
  854524:	74 1d                	je     0x854543
  854526:	8b 11                	mov    edx,DWORD PTR [ecx]
  854528:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  85452b:	8d 44 24 0c          	lea    eax,[esp+0xc]
  85452f:	50                   	push   eax
  854530:	8d 44 24 18          	lea    eax,[esp+0x18]
  854534:	50                   	push   eax
  854535:	ff d2                	call   edx
  854537:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  85453b:	3b c3                	cmp    eax,ebx
  85453d:	0f 85 c2 fe ff ff    	jne    0x854405
  854543:	6a 0a                	push   0xa
  854545:	8b ce                	mov    ecx,esi
  854547:	e8 94 fd ff ff       	call   0x8542e0
  85454c:	e9 05 ff ff ff       	jmp    0x854456
  854551:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  854554:	3b cb                	cmp    ecx,ebx
  854556:	0f 57 c0             	xorps  xmm0,xmm0
  854559:	8b 86 4c 01 00 00    	mov    eax,DWORD PTR [esi+0x14c]
  85455f:	88 5c 24 10          	mov    BYTE PTR [esp+0x10],bl
  854563:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  854567:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  85456b:	88 5c 24 29          	mov    BYTE PTR [esp+0x29],bl
  85456f:	88 5c 24 28          	mov    BYTE PTR [esp+0x28],bl
  854573:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  854579:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  85457f:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  854585:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  85458b:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  85458f:	0f 84 9a fe ff ff    	je     0x85442f
  854595:	8b 11                	mov    edx,DWORD PTR [ecx]
  854597:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  85459a:	8d 44 24 0c          	lea    eax,[esp+0xc]
  85459e:	50                   	push   eax
  85459f:	8d 44 24 18          	lea    eax,[esp+0x18]
  8545a3:	50                   	push   eax
  8545a4:	ff d2                	call   edx
  8545a6:	e9 52 fe ff ff       	jmp    0x8543fd
  8545ab:	8b 4e 50             	mov    ecx,DWORD PTR [esi+0x50]
  8545ae:	eb a4                	jmp    0x854554
  8545b0:	83 be 48 01 00 00 06 	cmp    DWORD PTR [esi+0x148],0x6
  8545b7:	0f 57 c0             	xorps  xmm0,xmm0
  8545ba:	8b 86 4c 01 00 00    	mov    eax,DWORD PTR [esi+0x14c]
  8545c0:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  8545c4:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  8545ca:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  8545d0:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  8545d6:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  8545dc:	88 5c 24 28          	mov    BYTE PTR [esp+0x28],bl
  8545e0:	88 5c 24 29          	mov    BYTE PTR [esp+0x29],bl
  8545e4:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  8545e8:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  8545ec:	88 5c 24 10          	mov    BYTE PTR [esp+0x10],bl
  8545f0:	75 1a                	jne    0x85460c
  8545f2:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  8545f5:	3b cb                	cmp    ecx,ebx
  8545f7:	74 37                	je     0x854630
  8545f9:	8b 11                	mov    edx,DWORD PTR [ecx]
  8545fb:	8b 52 0c             	mov    edx,DWORD PTR [edx+0xc]
  8545fe:	8d 44 24 0c          	lea    eax,[esp+0xc]
  854602:	50                   	push   eax
  854603:	8d 44 24 18          	lea    eax,[esp+0x18]
  854607:	50                   	push   eax
  854608:	ff d2                	call   edx
  85460a:	eb 18                	jmp    0x854624
  85460c:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  85460f:	3b cb                	cmp    ecx,ebx
  854611:	74 1d                	je     0x854630
  854613:	8b 01                	mov    eax,DWORD PTR [ecx]
  854615:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  854618:	8d 54 24 0c          	lea    edx,[esp+0xc]
  85461c:	52                   	push   edx
  85461d:	8d 54 24 18          	lea    edx,[esp+0x18]
  854621:	52                   	push   edx
  854622:	ff d0                	call   eax
  854624:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  854628:	3b c3                	cmp    eax,ebx
  85462a:	0f 85 d5 fd ff ff    	jne    0x854405
  854630:	53                   	push   ebx
  854631:	53                   	push   ebx
  854632:	8d 8e 20 01 00 00    	lea    ecx,[esi+0x120]
  854638:	e8 53 59 00 00       	call   0x859f90
  85463d:	6a 0a                	push   0xa
  85463f:	8b ce                	mov    ecx,esi
  854641:	e8 9a fc ff ff       	call   0x8542e0
  854646:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  854649:	8b 11                	mov    edx,DWORD PTR [ecx]
  85464b:	8b 42 58             	mov    eax,DWORD PTR [edx+0x58]
  85464e:	81 c6 a0 00 00 00    	add    esi,0xa0
  854654:	56                   	push   esi
  854655:	ff d0                	call   eax
  854657:	e9 fa fd ff ff       	jmp    0x854456
