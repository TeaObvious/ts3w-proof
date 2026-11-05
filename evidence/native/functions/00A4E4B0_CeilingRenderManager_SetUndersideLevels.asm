# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a4e4b0 CeilingRenderManager_SetUndersideLevels
# Complete Ghidra body [00a4e4b0, 00a4e73d] inclusive: 241 body instructions, 654 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 654 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A4E4B0_CeilingRenderManager_SetUndersideLevels.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a4e4b0 <.text+0x64d4b0>:
  a4e4b0:	83 ec 24                                        	sub    esp,0x24
  a4e4b3:	55                                              	push   ebp
  a4e4b4:	8b e9                                           	mov    ebp,ecx
  a4e4b6:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  a4e4ba:	8d 45 64                                        	lea    eax,[ebp+0x64]
  a4e4bd:	51                                              	push   ecx
  a4e4be:	50                                              	push   eax
  a4e4bf:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  a4e4c3:	e8 d8 f6 ff ff                                  	call   0xa4dba0
  a4e4c8:	83 c4 08                                        	add    esp,0x8
  a4e4cb:	84 c0                                           	test   al,al
  a4e4cd:	0f 85 64 02 00 00                               	jne    0xa4e737
  a4e4d3:	e8 98 9c c9 ff                                  	call   0x6e8170
  a4e4d8:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  a4e4dc:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  a4e4df:	8b 48 6c                                        	mov    ecx,DWORD PTR [eax+0x6c]
  a4e4e2:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
  a4e4e5:	3b d1                                           	cmp    edx,ecx
  a4e4e7:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  a4e4eb:	c6 44 24 07 00                                  	mov    BYTE PTR [esp+0x7],0x0
  a4e4f0:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  a4e4f4:	0f 8f 14 02 00 00                               	jg     0xa4e70e
  a4e4fa:	53                                              	push   ebx
  a4e4fb:	56                                              	push   esi
  a4e4fc:	57                                              	push   edi
  a4e4fd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  a4e500:	8b 7d 68                                        	mov    edi,DWORD PTR [ebp+0x68]
  a4e503:	8b 75 64                                        	mov    esi,DWORD PTR [ebp+0x64]
  a4e506:	8b cf                                           	mov    ecx,edi
  a4e508:	2b ce                                           	sub    ecx,esi
  a4e50a:	85 c9                                           	test   ecx,ecx
  a4e50c:	7e 1e                                           	jle    0xa4e52c
  a4e50e:	8b ff                                           	mov    edi,edi
  a4e510:	8b c1                                           	mov    eax,ecx
  a4e512:	d1 f8                                           	sar    eax,1
  a4e514:	38 14 30                                        	cmp    BYTE PTR [eax+esi*1],dl
  a4e517:	7d 0d                                           	jge    0xa4e526
  a4e519:	83 cb ff                                        	or     ebx,0xffffffff
  a4e51c:	2b d8                                           	sub    ebx,eax
  a4e51e:	8d 74 30 01                                     	lea    esi,[eax+esi*1+0x1]
  a4e522:	03 cb                                           	add    ecx,ebx
  a4e524:	eb 02                                           	jmp    0xa4e528
  a4e526:	8b c8                                           	mov    ecx,eax
  a4e528:	85 c9                                           	test   ecx,ecx
  a4e52a:	7f e4                                           	jg     0xa4e510
  a4e52c:	3b f7                                           	cmp    esi,edi
  a4e52e:	74 0b                                           	je     0xa4e53b
  a4e530:	3a 16                                           	cmp    dl,BYTE PTR [esi]
  a4e532:	7c 07                                           	jl     0xa4e53b
  a4e534:	8d 46 01                                        	lea    eax,[esi+0x1]
  a4e537:	3b f0                                           	cmp    esi,eax
  a4e539:	75 02                                           	jne    0xa4e53d
  a4e53b:	8b f7                                           	mov    esi,edi
  a4e53d:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  a4e541:	3b f7                                           	cmp    esi,edi
  a4e543:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
  a4e546:	8b 30                                           	mov    esi,DWORD PTR [eax]
  a4e548:	0f 95 c3                                        	setne  bl
  a4e54b:	8b c7                                           	mov    eax,edi
  a4e54d:	2b c6                                           	sub    eax,esi
  a4e54f:	85 c0                                           	test   eax,eax
  a4e551:	7e 20                                           	jle    0xa4e573
  a4e553:	8b c8                                           	mov    ecx,eax
  a4e555:	d1 f9                                           	sar    ecx,1
  a4e557:	38 14 31                                        	cmp    BYTE PTR [ecx+esi*1],dl
  a4e55a:	7d 11                                           	jge    0xa4e56d
  a4e55c:	83 cd ff                                        	or     ebp,0xffffffff
  a4e55f:	2b e9                                           	sub    ebp,ecx
  a4e561:	03 c5                                           	add    eax,ebp
  a4e563:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
  a4e567:	8d 74 31 01                                     	lea    esi,[ecx+esi*1+0x1]
  a4e56b:	eb 02                                           	jmp    0xa4e56f
  a4e56d:	8b c1                                           	mov    eax,ecx
  a4e56f:	85 c0                                           	test   eax,eax
  a4e571:	7f e0                                           	jg     0xa4e553
  a4e573:	3b f7                                           	cmp    esi,edi
  a4e575:	74 0b                                           	je     0xa4e582
  a4e577:	3a 16                                           	cmp    dl,BYTE PTR [esi]
  a4e579:	7c 07                                           	jl     0xa4e582
  a4e57b:	8d 46 01                                        	lea    eax,[esi+0x1]
  a4e57e:	3b f0                                           	cmp    esi,eax
  a4e580:	75 02                                           	jne    0xa4e584
  a4e582:	8b f7                                           	mov    esi,edi
  a4e584:	3b f7                                           	cmp    esi,edi
  a4e586:	0f 84 65 01 00 00                               	je     0xa4e6f1
  a4e58c:	84 db                                           	test   bl,bl
  a4e58e:	0f 84 66 01 00 00                               	je     0xa4e6fa
  a4e594:	8b 75 1c                                        	mov    esi,DWORD PTR [ebp+0x1c]
  a4e597:	8b 6d 20                                        	mov    ebp,DWORD PTR [ebp+0x20]
  a4e59a:	3b f5                                           	cmp    esi,ebp
  a4e59c:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
  a4e5a0:	74 38                                           	je     0xa4e5da
  a4e5a2:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  a4e5a5:	83 c0 01                                        	add    eax,0x1
  a4e5a8:	3b c2                                           	cmp    eax,edx
  a4e5aa:	75 27                                           	jne    0xa4e5d3
  a4e5ac:	8b 06                                           	mov    eax,DWORD PTR [esi]
  a4e5ae:	85 c0                                           	test   eax,eax
  a4e5b0:	74 21                                           	je     0xa4e5d3
  a4e5b2:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  a4e5b6:	50                                              	push   eax
  a4e5b7:	e8 34 9d c9 ff                                  	call   0x6e82f0
  a4e5bc:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  a4e5be:	85 c9                                           	test   ecx,ecx
  a4e5c0:	74 0d                                           	je     0xa4e5cf
  a4e5c2:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  a4e5c8:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  a4e5ca:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  a4e5cd:	ff d0                                           	call   eax
  a4e5cf:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  a4e5d3:	83 c6 10                                        	add    esi,0x10
  a4e5d6:	3b f5                                           	cmp    esi,ebp
  a4e5d8:	75 c8                                           	jne    0xa4e5a2
  a4e5da:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  a4e5de:	8b 78 20                                        	mov    edi,DWORD PTR [eax+0x20]
  a4e5e1:	83 c0 1c                                        	add    eax,0x1c
  a4e5e4:	8b 00                                           	mov    eax,DWORD PTR [eax]
  a4e5e6:	3b c7                                           	cmp    eax,edi
  a4e5e8:	74 16                                           	je     0xa4e600
  a4e5ea:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  a4e5f0:	83 38 00                                        	cmp    DWORD PTR [eax],0x0
  a4e5f3:	0f 84 c7 00 00 00                               	je     0xa4e6c0
  a4e5f9:	83 c0 10                                        	add    eax,0x10
  a4e5fc:	3b c7                                           	cmp    eax,edi
  a4e5fe:	75 f0                                           	jne    0xa4e5f0
  a4e600:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  a4e604:	8b d8                                           	mov    ebx,eax
  a4e606:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  a4e60a:	83 c0 1c                                        	add    eax,0x1c
  a4e60d:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
  a4e610:	3b e8                                           	cmp    ebp,eax
  a4e612:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  a4e616:	8b fb                                           	mov    edi,ebx
  a4e618:	74 7c                                           	je     0xa4e696
  a4e61a:	2b dd                                           	sub    ebx,ebp
  a4e61c:	8d 75 08                                        	lea    esi,[ebp+0x8]
  a4e61f:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  a4e623:	8b 6e f8                                        	mov    ebp,DWORD PTR [esi-0x8]
  a4e626:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  a4e628:	3b eb                                           	cmp    ebp,ebx
  a4e62a:	74 1c                                           	je     0xa4e648
  a4e62c:	85 ed                                           	test   ebp,ebp
  a4e62e:	74 09                                           	je     0xa4e639
  a4e630:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  a4e633:	8b 02                                           	mov    eax,DWORD PTR [edx]
  a4e635:	8b cd                                           	mov    ecx,ebp
  a4e637:	ff d0                                           	call   eax
  a4e639:	85 db                                           	test   ebx,ebx
  a4e63b:	89 2f                                           	mov    DWORD PTR [edi],ebp
  a4e63d:	74 09                                           	je     0xa4e648
  a4e63f:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  a4e641:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  a4e644:	8b cb                                           	mov    ecx,ebx
  a4e646:	ff d0                                           	call   eax
  a4e648:	8b 6e fc                                        	mov    ebp,DWORD PTR [esi-0x4]
  a4e64b:	8b 5f 04                                        	mov    ebx,DWORD PTR [edi+0x4]
  a4e64e:	3b eb                                           	cmp    ebp,ebx
  a4e650:	74 1e                                           	je     0xa4e670
  a4e652:	85 ed                                           	test   ebp,ebp
  a4e654:	74 0a                                           	je     0xa4e660
  a4e656:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  a4e659:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  a4e65c:	8b cd                                           	mov    ecx,ebp
  a4e65e:	ff d0                                           	call   eax
  a4e660:	85 db                                           	test   ebx,ebx
  a4e662:	89 6f 04                                        	mov    DWORD PTR [edi+0x4],ebp
  a4e665:	74 09                                           	je     0xa4e670
  a4e667:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  a4e669:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  a4e66c:	8b cb                                           	mov    ecx,ebx
  a4e66e:	ff d0                                           	call   eax
  a4e670:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  a4e672:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  a4e676:	89 0c 32                                        	mov    DWORD PTR [edx+esi*1],ecx
  a4e679:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  a4e67c:	83 c6 10                                        	add    esi,0x10
  a4e67f:	89 47 0c                                        	mov    DWORD PTR [edi+0xc],eax
  a4e682:	8d 4e f8                                        	lea    ecx,[esi-0x8]
  a4e685:	83 c7 10                                        	add    edi,0x10
  a4e688:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
  a4e68c:	75 95                                           	jne    0xa4e623
  a4e68e:	8b 6c 24 2c                                     	mov    ebp,DWORD PTR [esp+0x2c]
  a4e692:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
  a4e696:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  a4e69a:	8b 56 20                                        	mov    edx,DWORD PTR [esi+0x20]
  a4e69d:	83 c6 1c                                        	add    esi,0x1c
  a4e6a0:	52                                              	push   edx
  a4e6a1:	57                                              	push   edi
  a4e6a2:	8b ce                                           	mov    ecx,esi
  a4e6a4:	e8 d7 f9 ff ff                                  	call   0xa4e080
  a4e6a9:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  a4e6ad:	2b eb                                           	sub    ebp,ebx
  a4e6af:	c1 fd 04                                        	sar    ebp,0x4
  a4e6b2:	f7 dd                                           	neg    ebp
  a4e6b4:	c1 e5 04                                        	shl    ebp,0x4
  a4e6b7:	01 6e 04                                        	add    DWORD PTR [esi+0x4],ebp
  a4e6ba:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
  a4e6be:	eb 3a                                           	jmp    0xa4e6fa
  a4e6c0:	3b c7                                           	cmp    eax,edi
  a4e6c2:	0f 84 38 ff ff ff                               	je     0xa4e600
  a4e6c8:	8d 70 10                                        	lea    esi,[eax+0x10]
  a4e6cb:	3b f7                                           	cmp    esi,edi
  a4e6cd:	8b d8                                           	mov    ebx,eax
  a4e6cf:	74 17                                           	je     0xa4e6e8
  a4e6d1:	83 3e 00                                        	cmp    DWORD PTR [esi],0x0
  a4e6d4:	74 0b                                           	je     0xa4e6e1
  a4e6d6:	56                                              	push   esi
  a4e6d7:	8b cb                                           	mov    ecx,ebx
  a4e6d9:	e8 52 f5 ff ff                                  	call   0xa4dc30
  a4e6de:	83 c3 10                                        	add    ebx,0x10
  a4e6e1:	83 c6 10                                        	add    esi,0x10
  a4e6e4:	3b f7                                           	cmp    esi,edi
  a4e6e6:	75 e9                                           	jne    0xa4e6d1
  a4e6e8:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  a4e6ec:	e9 15 ff ff ff                                  	jmp    0xa4e606
  a4e6f1:	84 db                                           	test   bl,bl
  a4e6f3:	75 05                                           	jne    0xa4e6fa
  a4e6f5:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
  a4e6fa:	83 c2 01                                        	add    edx,0x1
  a4e6fd:	3b 54 24 30                                     	cmp    edx,DWORD PTR [esp+0x30]
  a4e701:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  a4e705:	0f 8e f5 fd ff ff                               	jle    0xa4e500
  a4e70b:	5f                                              	pop    edi
  a4e70c:	5e                                              	pop    esi
  a4e70d:	5b                                              	pop    ebx
  a4e70e:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  a4e712:	50                                              	push   eax
  a4e713:	8d 4d 64                                        	lea    ecx,[ebp+0x64]
  a4e716:	e8 f5 a4 bb ff                                  	call   0x608c10
  a4e71b:	80 7c 24 07 00                                  	cmp    BYTE PTR [esp+0x7],0x0
  a4e720:	74 15                                           	je     0xa4e737
  a4e722:	33 c0                                           	xor    eax,eax
  a4e724:	8b cd                                           	mov    ecx,ebp
  a4e726:	89 45 30                                        	mov    DWORD PTR [ebp+0x30],eax
  a4e729:	89 45 34                                        	mov    DWORD PTR [ebp+0x34],eax
  a4e72c:	89 45 38                                        	mov    DWORD PTR [ebp+0x38],eax
  a4e72f:	89 45 3c                                        	mov    DWORD PTR [ebp+0x3c],eax
  a4e732:	e8 09 f4 ff ff                                  	call   0xa4db40
  a4e737:	5d                                              	pop    ebp
  a4e738:	83 c4 24                                        	add    esp,0x24
  a4e73b:	c2 04 00                                        	ret    0x4
