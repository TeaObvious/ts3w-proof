# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098b330 (ResourceMgr_OpenPackage)
Paired Ghidra pseudocode: 1098B330_ResourceMgr_OpenPackage.c
Window: [0x1098b330, 0x1098b5d0) (672 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098b5d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098b330: 83 ec 2c 55 e8 97 9d f5 ff 8b e8 85 ed 75 08 83
1098b340: c8 ff 5d 83 c4 2c c3 8b 44 24 38 53 56 50 e8 5d
1098b350: f8 ff ff 8b 35 78 80 cb 10 83 c4 04 8d 4c 24 0c
1098b360: 51 8d 54 24 14 8b d8 52 8b ce 89 5c 24 14 e8 9d
1098b370: d0 d1 ff 8b 4e 08 8b 56 04 8b 44 24 10 3b 04 8a
1098b380: 74 25 8b 48 04 8b 01 8b 50 20 ff d2 f7 d0 85 44
1098b390: 24 44 74 0a 5e 5b 83 c8 ff 5d 83 c4 2c c3 5e 8b
1098b3a0: c3 5b 5d 83 c4 2c c3 57 e8 83 74 d9 ff 33 c9 89
1098b3b0: 4c 24 28 89 4c 24 2c 89 44 24 30 8d 44 24 28 89
1098b3c0: 4c 24 34 8b c8 89 4c 24 2c c7 44 24 38 68 6f b9
1098b3d0: 10 89 44 24 28 8b 55 00 8b 52 48 6a 00 50 8b cd
1098b3e0: ff d2 8b 7c 24 28 8d 44 24 28 3b f8 74 33 8b 1d
1098b3f0: 24 b6 aa 10 8b 77 08 8b 16 8b 42 28 8b ce ff d0
1098b400: 8b 4c 24 40 50 51 ff d3 83 c4 08 85 c0 0f 84 a2
1098b410: 00 00 00 8b 3f 8d 54 24 28 3b fa 75 d7 8b 5c 24
1098b420: 10 6a 00 6a 00 6a 00 6a 00 68 94 6f b9 10 68 98
1098b430: 03 00 00 e8 28 dc f8 ff 83 c4 18 85 c0 0f 84 cf
1098b440: 00 00 00 6a 00 6a 00 8b c8 e8 82 3b f5 ff 8b f0
1098b450: 85 f6 74 0a 8b 46 04 8b 10 8d 4e 04 ff d2 8b 4c
1098b460: 24 40 8b 06 8b 50 2c 51 8b ce ff d2 84 c0 0f 85
1098b470: a5 00 00 00 8b 46 04 8b 50 04 8d 4e 04 ff d2 8b
1098b480: 74 24 28 8d 44 24 28 3b f0 74 1f eb 03 8d 49 00
1098b490: 8b 4c 24 30 8b 11 8b c6 8b 36 6a 0c 50 8b 42 0c
1098b4a0: ff d0 8d 4c 24 28 3b f1 75 e6 5f 5e 5b 83 c8 ff
1098b4b0: 5d 83 c4 2c c3 8b 06 8b 50 20 8b ce ff d2 f7 d0
1098b4c0: 85 44 24 48 0f 85 a8 00 00 00 8b 46 04 8b 10 8d
1098b4d0: 4e 04 ff d2 8b 7c 24 10 c6 44 24 10 00 8b 44 24
1098b4e0: 10 50 8d 4c 24 18 51 8b 0d 78 80 cb 10 8d 54 24
1098b4f0: 24 52 89 7c 24 20 89 74 24 24 e8 81 ba c3 ff 8d
1098b500: 4c 24 28 e8 28 30 10 00 8b c7 5f 5e 5b 5d 83 c4
1098b510: 2c c3 33 f6 e9 45 ff ff ff 8b 16 8b 42 04 8b ce
1098b520: ff d0 84 c0 75 1f 8b 56 04 8b 42 04 8d 4e 04 ff
1098b530: d0 8d 4c 24 28 e8 f6 2f 10 00 5f 5e 5b 83 c8 ff
1098b540: 5d 83 c4 2c c3 8b 44 24 4c 8b 4c 24 48 8b 16 8b
1098b550: 52 18 6a 00 50 51 8b ce ff d2 84 c0 75 28 8b 06
1098b560: 8b 50 08 8b ce ff d2 8b 46 04 8b 50 04 8d 4e 04
1098b570: ff d2 8d 4c 24 28 e8 b5 2f 10 00 5f 5e 5b 83 c8
1098b580: ff 5d 83 c4 2c c3 c6 44 24 10 00 8b 44 24 10 50
1098b590: 8d 4c 24 18 51 8b 0d 78 80 cb 10 8d 54 24 24 52
1098b5a0: 89 5c 24 20 89 74 24 24 e8 d3 b9 c3 ff 8b 45 00
1098b5b0: 8b 50 34 6a 00 56 6a 01 8b cd ff d2 8d 4c 24 28
1098b5c0: e8 6b 2f 10 00 5f 5e 8b c3 5b 5d 83 c4 2c c3 cc

LINEAR DISASSEMBLY
1098b330 <.text+0x98a330>:
1098b330:	83 ec 2c                                        	sub    esp,0x2c
1098b333:	55                                              	push   ebp
1098b334:	e8 97 9d f5 ff                                  	call   0x108e50d0
1098b339:	8b e8                                           	mov    ebp,eax
1098b33b:	85 ed                                           	test   ebp,ebp
1098b33d:	75 08                                           	jne    0x1098b347
1098b33f:	83 c8 ff                                        	or     eax,0xffffffff
1098b342:	5d                                              	pop    ebp
1098b343:	83 c4 2c                                        	add    esp,0x2c
1098b346:	c3                                              	ret
1098b347:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1098b34b:	53                                              	push   ebx
1098b34c:	56                                              	push   esi
1098b34d:	50                                              	push   eax
1098b34e:	e8 5d f8 ff ff                                  	call   0x1098abb0
1098b353:	8b 35 78 80 cb 10                               	mov    esi,DWORD PTR ds:0x10cb8078
1098b359:	83 c4 04                                        	add    esp,0x4
1098b35c:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098b360:	51                                              	push   ecx
1098b361:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098b365:	8b d8                                           	mov    ebx,eax
1098b367:	52                                              	push   edx
1098b368:	8b ce                                           	mov    ecx,esi
1098b36a:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
1098b36e:	e8 9d d0 d1 ff                                  	call   0x106a8410
1098b373:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
1098b376:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1098b379:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098b37d:	3b 04 8a                                        	cmp    eax,DWORD PTR [edx+ecx*4]
1098b380:	74 25                                           	je     0x1098b3a7
1098b382:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
1098b385:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098b387:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1098b38a:	ff d2                                           	call   edx
1098b38c:	f7 d0                                           	not    eax
1098b38e:	85 44 24 44                                     	test   DWORD PTR [esp+0x44],eax
1098b392:	74 0a                                           	je     0x1098b39e
1098b394:	5e                                              	pop    esi
1098b395:	5b                                              	pop    ebx
1098b396:	83 c8 ff                                        	or     eax,0xffffffff
1098b399:	5d                                              	pop    ebp
1098b39a:	83 c4 2c                                        	add    esp,0x2c
1098b39d:	c3                                              	ret
1098b39e:	5e                                              	pop    esi
1098b39f:	8b c3                                           	mov    eax,ebx
1098b3a1:	5b                                              	pop    ebx
1098b3a2:	5d                                              	pop    ebp
1098b3a3:	83 c4 2c                                        	add    esp,0x2c
1098b3a6:	c3                                              	ret
1098b3a7:	57                                              	push   edi
1098b3a8:	e8 83 74 d9 ff                                  	call   0x10722830
1098b3ad:	33 c9                                           	xor    ecx,ecx
1098b3af:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
1098b3b3:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
1098b3b7:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
1098b3bb:	8d 44 24 28                                     	lea    eax,[esp+0x28]
1098b3bf:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
1098b3c3:	8b c8                                           	mov    ecx,eax
1098b3c5:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
1098b3c9:	c7 44 24 38 68 6f b9 10                         	mov    DWORD PTR [esp+0x38],0x10b96f68
1098b3d1:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
1098b3d5:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1098b3d8:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
1098b3db:	6a 00                                           	push   0x0
1098b3dd:	50                                              	push   eax
1098b3de:	8b cd                                           	mov    ecx,ebp
1098b3e0:	ff d2                                           	call   edx
1098b3e2:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
1098b3e6:	8d 44 24 28                                     	lea    eax,[esp+0x28]
1098b3ea:	3b f8                                           	cmp    edi,eax
1098b3ec:	74 33                                           	je     0x1098b421
1098b3ee:	8b 1d 24 b6 aa 10                               	mov    ebx,DWORD PTR ds:0x10aab624
1098b3f4:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
1098b3f7:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b3f9:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
1098b3fc:	8b ce                                           	mov    ecx,esi
1098b3fe:	ff d0                                           	call   eax
1098b400:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1098b404:	50                                              	push   eax
1098b405:	51                                              	push   ecx
1098b406:	ff d3                                           	call   ebx
1098b408:	83 c4 08                                        	add    esp,0x8
1098b40b:	85 c0                                           	test   eax,eax
1098b40d:	0f 84 a2 00 00 00                               	je     0x1098b4b5
1098b413:	8b 3f                                           	mov    edi,DWORD PTR [edi]
1098b415:	8d 54 24 28                                     	lea    edx,[esp+0x28]
1098b419:	3b fa                                           	cmp    edi,edx
1098b41b:	75 d7                                           	jne    0x1098b3f4
1098b41d:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1098b421:	6a 00                                           	push   0x0
1098b423:	6a 00                                           	push   0x0
1098b425:	6a 00                                           	push   0x0
1098b427:	6a 00                                           	push   0x0
1098b429:	68 94 6f b9 10                                  	push   0x10b96f94
1098b42e:	68 98 03 00 00                                  	push   0x398
1098b433:	e8 28 dc f8 ff                                  	call   0x10919060
1098b438:	83 c4 18                                        	add    esp,0x18
1098b43b:	85 c0                                           	test   eax,eax
1098b43d:	0f 84 cf 00 00 00                               	je     0x1098b512
1098b443:	6a 00                                           	push   0x0
1098b445:	6a 00                                           	push   0x0
1098b447:	8b c8                                           	mov    ecx,eax
1098b449:	e8 82 3b f5 ff                                  	call   0x108defd0
1098b44e:	8b f0                                           	mov    esi,eax
1098b450:	85 f6                                           	test   esi,esi
1098b452:	74 0a                                           	je     0x1098b45e
1098b454:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1098b457:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098b459:	8d 4e 04                                        	lea    ecx,[esi+0x4]
1098b45c:	ff d2                                           	call   edx
1098b45e:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1098b462:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098b464:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
1098b467:	51                                              	push   ecx
1098b468:	8b ce                                           	mov    ecx,esi
1098b46a:	ff d2                                           	call   edx
1098b46c:	84 c0                                           	test   al,al
1098b46e:	0f 85 a5 00 00 00                               	jne    0x1098b519
1098b474:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1098b477:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098b47a:	8d 4e 04                                        	lea    ecx,[esi+0x4]
1098b47d:	ff d2                                           	call   edx
1098b47f:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
1098b483:	8d 44 24 28                                     	lea    eax,[esp+0x28]
1098b487:	3b f0                                           	cmp    esi,eax
1098b489:	74 1f                                           	je     0x1098b4aa
1098b48b:	eb 03                                           	jmp    0x1098b490
1098b48d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098b490:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1098b494:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098b496:	8b c6                                           	mov    eax,esi
1098b498:	8b 36                                           	mov    esi,DWORD PTR [esi]
1098b49a:	6a 0c                                           	push   0xc
1098b49c:	50                                              	push   eax
1098b49d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1098b4a0:	ff d0                                           	call   eax
1098b4a2:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098b4a6:	3b f1                                           	cmp    esi,ecx
1098b4a8:	75 e6                                           	jne    0x1098b490
1098b4aa:	5f                                              	pop    edi
1098b4ab:	5e                                              	pop    esi
1098b4ac:	5b                                              	pop    ebx
1098b4ad:	83 c8 ff                                        	or     eax,0xffffffff
1098b4b0:	5d                                              	pop    ebp
1098b4b1:	83 c4 2c                                        	add    esp,0x2c
1098b4b4:	c3                                              	ret
1098b4b5:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098b4b7:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1098b4ba:	8b ce                                           	mov    ecx,esi
1098b4bc:	ff d2                                           	call   edx
1098b4be:	f7 d0                                           	not    eax
1098b4c0:	85 44 24 48                                     	test   DWORD PTR [esp+0x48],eax
1098b4c4:	0f 85 a8 00 00 00                               	jne    0x1098b572
1098b4ca:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1098b4cd:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098b4cf:	8d 4e 04                                        	lea    ecx,[esi+0x4]
1098b4d2:	ff d2                                           	call   edx
1098b4d4:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
1098b4d8:	c6 44 24 10 00                                  	mov    BYTE PTR [esp+0x10],0x0
1098b4dd:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098b4e1:	50                                              	push   eax
1098b4e2:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098b4e6:	51                                              	push   ecx
1098b4e7:	8b 0d 78 80 cb 10                               	mov    ecx,DWORD PTR ds:0x10cb8078
1098b4ed:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1098b4f1:	52                                              	push   edx
1098b4f2:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1098b4f6:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
1098b4fa:	e8 81 ba c3 ff                                  	call   0x105c6f80
1098b4ff:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098b503:	e8 28 30 10 00                                  	call   0x10a8e530
1098b508:	8b c7                                           	mov    eax,edi
1098b50a:	5f                                              	pop    edi
1098b50b:	5e                                              	pop    esi
1098b50c:	5b                                              	pop    ebx
1098b50d:	5d                                              	pop    ebp
1098b50e:	83 c4 2c                                        	add    esp,0x2c
1098b511:	c3                                              	ret
1098b512:	33 f6                                           	xor    esi,esi
1098b514:	e9 45 ff ff ff                                  	jmp    0x1098b45e
1098b519:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b51b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098b51e:	8b ce                                           	mov    ecx,esi
1098b520:	ff d0                                           	call   eax
1098b522:	84 c0                                           	test   al,al
1098b524:	75 1f                                           	jne    0x1098b545
1098b526:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1098b529:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098b52c:	8d 4e 04                                        	lea    ecx,[esi+0x4]
1098b52f:	ff d0                                           	call   eax
1098b531:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098b535:	e8 f6 2f 10 00                                  	call   0x10a8e530
1098b53a:	5f                                              	pop    edi
1098b53b:	5e                                              	pop    esi
1098b53c:	5b                                              	pop    ebx
1098b53d:	83 c8 ff                                        	or     eax,0xffffffff
1098b540:	5d                                              	pop    ebp
1098b541:	83 c4 2c                                        	add    esp,0x2c
1098b544:	c3                                              	ret
1098b545:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
1098b549:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1098b54d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098b54f:	8b 52 18                                        	mov    edx,DWORD PTR [edx+0x18]
1098b552:	6a 00                                           	push   0x0
1098b554:	50                                              	push   eax
1098b555:	51                                              	push   ecx
1098b556:	8b ce                                           	mov    ecx,esi
1098b558:	ff d2                                           	call   edx
1098b55a:	84 c0                                           	test   al,al
1098b55c:	75 28                                           	jne    0x1098b586
1098b55e:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098b560:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1098b563:	8b ce                                           	mov    ecx,esi
1098b565:	ff d2                                           	call   edx
1098b567:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
1098b56a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098b56d:	8d 4e 04                                        	lea    ecx,[esi+0x4]
1098b570:	ff d2                                           	call   edx
1098b572:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098b576:	e8 b5 2f 10 00                                  	call   0x10a8e530
1098b57b:	5f                                              	pop    edi
1098b57c:	5e                                              	pop    esi
1098b57d:	5b                                              	pop    ebx
1098b57e:	83 c8 ff                                        	or     eax,0xffffffff
1098b581:	5d                                              	pop    ebp
1098b582:	83 c4 2c                                        	add    esp,0x2c
1098b585:	c3                                              	ret
1098b586:	c6 44 24 10 00                                  	mov    BYTE PTR [esp+0x10],0x0
1098b58b:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098b58f:	50                                              	push   eax
1098b590:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098b594:	51                                              	push   ecx
1098b595:	8b 0d 78 80 cb 10                               	mov    ecx,DWORD PTR ds:0x10cb8078
1098b59b:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1098b59f:	52                                              	push   edx
1098b5a0:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
1098b5a4:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
1098b5a8:	e8 d3 b9 c3 ff                                  	call   0x105c6f80
1098b5ad:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
1098b5b0:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
1098b5b3:	6a 00                                           	push   0x0
1098b5b5:	56                                              	push   esi
1098b5b6:	6a 01                                           	push   0x1
1098b5b8:	8b cd                                           	mov    ecx,ebp
1098b5ba:	ff d2                                           	call   edx
1098b5bc:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098b5c0:	e8 6b 2f 10 00                                  	call   0x10a8e530
1098b5c5:	5f                                              	pop    edi
1098b5c6:	5e                                              	pop    esi
1098b5c7:	8b c3                                           	mov    eax,ebx
1098b5c9:	5b                                              	pop    ebx
1098b5ca:	5d                                              	pop    ebp
1098b5cb:	83 c4 2c                                        	add    esp,0x2c
1098b5ce:	c3                                              	ret
1098b5cf:	cc                                              	int3
