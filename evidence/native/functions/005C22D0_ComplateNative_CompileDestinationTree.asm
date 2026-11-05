# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original PC1.67 TS3W.exe function envelope; actual annotated Ghidra C: 005C22D0_ComplateNative_CompileDestinationTree.c.
# Ghidra body ranges: [[005c22d0, 005c2436] [005c2440, 005c27fc] [005c2800, 005c2a31]]; interior alignment bytes retained.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

005c22d0 <.text+0x1c12d0>:
  5c22d0:	81 ec a4 06 00 00                               	sub    esp,0x6a4
  5c22d6:	53                                              	push   ebx
  5c22d7:	8b d9                                           	mov    ebx,ecx
  5c22d9:	83 7b 60 00                                     	cmp    DWORD PTR [ebx+0x60],0x0
  5c22dd:	89 5c 24 04                                     	mov    DWORD PTR [esp+0x4],ebx
  5c22e1:	75 0c                                           	jne    0x5c22ef
  5c22e3:	32 c0                                           	xor    al,al
  5c22e5:	5b                                              	pop    ebx
  5c22e6:	81 c4 a4 06 00 00                               	add    esp,0x6a4
  5c22ec:	c2 0c 00                                        	ret    0xc
  5c22ef:	55                                              	push   ebp
  5c22f0:	56                                              	push   esi
  5c22f1:	57                                              	push   edi
  5c22f2:	e8 89 db ee ff                                  	call   0x4afe80
  5c22f7:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5c22fb:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  5c22ff:	e8 cc 00 04 00                                  	call   0x6023d0
  5c2304:	8d 84 24 b4 04 00 00                            	lea    eax,[esp+0x4b4]
  5c230b:	89 84 24 a8 04 00 00                            	mov    DWORD PTR [esp+0x4a8],eax
  5c2312:	8b c8                                           	mov    ecx,eax
  5c2314:	89 8c 24 a4 04 00 00                            	mov    DWORD PTR [esp+0x4a4],ecx
  5c231b:	8d 84 24 94 00 00 00                            	lea    eax,[esp+0x94]
  5c2322:	89 84 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],eax
  5c2329:	8b c8                                           	mov    ecx,eax
  5c232b:	8d 94 24 b4 06 00 00                            	lea    edx,[esp+0x6b4]
  5c2332:	89 94 24 ac 04 00 00                            	mov    DWORD PTR [esp+0x4ac],edx
  5c2339:	8d 84 24 a4 02 00 00                            	lea    eax,[esp+0x2a4]
  5c2340:	89 8c 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],ecx
  5c2347:	89 84 24 98 02 00 00                            	mov    DWORD PTR [esp+0x298],eax
  5c234e:	8d 94 24 94 02 00 00                            	lea    edx,[esp+0x294]
  5c2355:	8b c8                                           	mov    ecx,eax
  5c2357:	8b 43 60                                        	mov    eax,DWORD PTR [ebx+0x60]
  5c235a:	89 94 24 8c 00 00 00                            	mov    DWORD PTR [esp+0x8c],edx
  5c2361:	83 c0 58                                        	add    eax,0x58
  5c2364:	8d 94 24 a4 04 00 00                            	lea    edx,[esp+0x4a4]
  5c236b:	c6 84 24 b4 04 00 00 00                         	mov    BYTE PTR [esp+0x4b4],0x0
  5c2373:	c6 84 24 94 00 00 00 00                         	mov    BYTE PTR [esp+0x94],0x0
  5c237b:	89 8c 24 94 02 00 00                            	mov    DWORD PTR [esp+0x294],ecx
  5c2382:	89 94 24 9c 02 00 00                            	mov    DWORD PTR [esp+0x29c],edx
  5c2389:	c6 84 24 a4 02 00 00 00                         	mov    BYTE PTR [esp+0x2a4],0x0
  5c2391:	8b 38                                           	mov    edi,DWORD PTR [eax]
  5c2393:	8b 68 04                                        	mov    ebp,DWORD PTR [eax+0x4]
  5c2396:	3b fd                                           	cmp    edi,ebp
  5c2398:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  5c239c:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
  5c23a0:	0f 84 fd 05 00 00                               	je     0x5c29a3
  5c23a6:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5c23a8:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5c23ab:	68 a6 86 fa 5f                                  	push   0x5ffa86a6
  5c23b0:	8b cf                                           	mov    ecx,edi
  5c23b2:	ff d2                                           	call   edx
  5c23b4:	8b 8c 24 a4 04 00 00                            	mov    ecx,DWORD PTR [esp+0x4a4]
  5c23bb:	3b c8                                           	cmp    ecx,eax
  5c23bd:	74 3c                                           	je     0x5c23fb
  5c23bf:	3b 8c 24 a8 04 00 00                            	cmp    ecx,DWORD PTR [esp+0x4a8]
  5c23c6:	74 11                                           	je     0x5c23d9
  5c23c8:	c6 01 00                                        	mov    BYTE PTR [ecx],0x0
  5c23cb:	8b 8c 24 a4 04 00 00                            	mov    ecx,DWORD PTR [esp+0x4a4]
  5c23d2:	89 8c 24 a8 04 00 00                            	mov    DWORD PTR [esp+0x4a8],ecx
  5c23d9:	8b c8                                           	mov    ecx,eax
  5c23db:	8d 71 01                                        	lea    esi,[ecx+0x1]
  5c23de:	8b ff                                           	mov    edi,edi
  5c23e0:	8a 11                                           	mov    dl,BYTE PTR [ecx]
  5c23e2:	83 c1 01                                        	add    ecx,0x1
  5c23e5:	84 d2                                           	test   dl,dl
  5c23e7:	75 f7                                           	jne    0x5c23e0
  5c23e9:	2b ce                                           	sub    ecx,esi
  5c23eb:	03 c8                                           	add    ecx,eax
  5c23ed:	51                                              	push   ecx
  5c23ee:	50                                              	push   eax
  5c23ef:	8d 8c 24 ac 04 00 00                            	lea    ecx,[esp+0x4ac]
  5c23f6:	e8 85 d4 fc ff                                  	call   0x58f880
  5c23fb:	8b 4b 60                                        	mov    ecx,DWORD PTR [ebx+0x60]
  5c23fe:	8d 94 24 a4 04 00 00                            	lea    edx,[esp+0x4a4]
  5c2405:	52                                              	push   edx
  5c2406:	e8 95 6e ff ff                                  	call   0x5b92a0
  5c240b:	8d 84 24 a4 04 00 00                            	lea    eax,[esp+0x4a4]
  5c2412:	50                                              	push   eax
  5c2413:	e8 38 e4 ff ff                                  	call   0x5c0850
  5c2418:	8b 4f 1c                                        	mov    ecx,DWORD PTR [edi+0x1c]
  5c241b:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  5c241f:	8b 47 18                                        	mov    eax,DWORD PTR [edi+0x18]
  5c2422:	83 c4 04                                        	add    esp,0x4
  5c2425:	3b c1                                           	cmp    eax,ecx
  5c2427:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5c242b:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
  5c242f:	0f 84 5f 05 00 00                               	je     0x5c2994
  5c2435:	eb 09                                           	jmp    0x5c2440
  5c2437:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  5c243e:	8b ff                                           	mov    edi,edi
  5c2440:	8b 4b 60                                        	mov    ecx,DWORD PTR [ebx+0x60]
  5c2443:	80 b9 85 00 00 00 00                            	cmp    BYTE PTR [ecx+0x85],0x0
  5c244a:	6a 00                                           	push   0x0
  5c244c:	6a 00                                           	push   0x0
  5c244e:	6a 00                                           	push   0x0
  5c2450:	6a 00                                           	push   0x0
  5c2452:	74 20                                           	je     0x5c2474
  5c2454:	68 38 3d fe 00                                  	push   0xfe3d38
  5c2459:	6a 68                                           	push   0x68
  5c245b:	e8 a0 20 f2 ff                                  	call   0x4e4500
  5c2460:	83 c4 18                                        	add    esp,0x18
  5c2463:	85 c0                                           	test   eax,eax
  5c2465:	0f 84 af 05 00 00                               	je     0x5c2a1a
  5c246b:	8b c8                                           	mov    ecx,eax
  5c246d:	e8 5e e6 03 00                                  	call   0x600ad0
  5c2472:	eb 1e                                           	jmp    0x5c2492
  5c2474:	68 10 3d fe 00                                  	push   0xfe3d10
  5c2479:	6a 68                                           	push   0x68
  5c247b:	e8 80 20 f2 ff                                  	call   0x4e4500
  5c2480:	83 c4 18                                        	add    esp,0x18
  5c2483:	85 c0                                           	test   eax,eax
  5c2485:	0f 84 8f 05 00 00                               	je     0x5c2a1a
  5c248b:	8b c8                                           	mov    ecx,eax
  5c248d:	e8 9e e5 03 00                                  	call   0x600a30
  5c2492:	8b e8                                           	mov    ebp,eax
  5c2494:	85 ed                                           	test   ebp,ebp
  5c2496:	0f 84 7e 05 00 00                               	je     0x5c2a1a
  5c249c:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5c249f:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5c24a1:	8b cd                                           	mov    ecx,ebp
  5c24a3:	ff d0                                           	call   eax
  5c24a5:	85 ed                                           	test   ebp,ebp
  5c24a7:	0f 84 6d 05 00 00                               	je     0x5c2a1a
  5c24ad:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  5c24b1:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  5c24b5:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  5c24b9:	89 4d 58                                        	mov    DWORD PTR [ebp+0x58],ecx
  5c24bc:	8b 42 60                                        	mov    eax,DWORD PTR [edx+0x60]
  5c24bf:	33 c9                                           	xor    ecx,ecx
  5c24c1:	38 88 84 00 00 00                               	cmp    BYTE PTR [eax+0x84],cl
  5c24c7:	b8 93 24 49 92                                  	mov    eax,0x92492493
  5c24cc:	0f 95 c1                                        	setne  cl
  5c24cf:	89 4d 54                                        	mov    DWORD PTR [ebp+0x54],ecx
  5c24d2:	8b 4e 1c                                        	mov    ecx,DWORD PTR [esi+0x1c]
  5c24d5:	2b 4e 18                                        	sub    ecx,DWORD PTR [esi+0x18]
  5c24d8:	f7 e9                                           	imul   ecx
  5c24da:	03 d1                                           	add    edx,ecx
  5c24dc:	c1 fa 04                                        	sar    edx,0x4
  5c24df:	8b c2                                           	mov    eax,edx
  5c24e1:	c1 e8 1f                                        	shr    eax,0x1f
  5c24e4:	03 c2                                           	add    eax,edx
  5c24e6:	50                                              	push   eax
  5c24e7:	8b cd                                           	mov    ecx,ebp
  5c24e9:	e8 02 c6 03 00                                  	call   0x5feaf0
  5c24ee:	8b 7e 18                                        	mov    edi,DWORD PTR [esi+0x18]
  5c24f1:	8b 5e 1c                                        	mov    ebx,DWORD PTR [esi+0x1c]
  5c24f4:	3b fb                                           	cmp    edi,ebx
  5c24f6:	0f 84 f4 00 00 00                               	je     0x5c25f0
  5c24fc:	c7 44 24 34 05 00 00 00                         	mov    DWORD PTR [esp+0x34],0x5
  5c2504:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5c2506:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5c2509:	68 4c bf cb f8                                  	push   0xf8cbbf4c
  5c250e:	8b cf                                           	mov    ecx,edi
  5c2510:	ff d0                                           	call   eax
  5c2512:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
  5c2519:	3b c8                                           	cmp    ecx,eax
  5c251b:	74 3e                                           	je     0x5c255b
  5c251d:	3b 8c 24 88 00 00 00                            	cmp    ecx,DWORD PTR [esp+0x88]
  5c2524:	74 11                                           	je     0x5c2537
  5c2526:	c6 01 00                                        	mov    BYTE PTR [ecx],0x0
  5c2529:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
  5c2530:	89 8c 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],ecx
  5c2537:	8b c8                                           	mov    ecx,eax
  5c2539:	8d 71 01                                        	lea    esi,[ecx+0x1]
  5c253c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  5c2540:	8a 11                                           	mov    dl,BYTE PTR [ecx]
  5c2542:	83 c1 01                                        	add    ecx,0x1
  5c2545:	84 d2                                           	test   dl,dl
  5c2547:	75 f7                                           	jne    0x5c2540
  5c2549:	2b ce                                           	sub    ecx,esi
  5c254b:	03 c8                                           	add    ecx,eax
  5c254d:	51                                              	push   ecx
  5c254e:	50                                              	push   eax
  5c254f:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  5c2556:	e8 25 d3 fc ff                                  	call   0x58f880
  5c255b:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5c255f:	8b 48 60                                        	mov    ecx,DWORD PTR [eax+0x60]
  5c2562:	8d 94 24 84 00 00 00                            	lea    edx,[esp+0x84]
  5c2569:	52                                              	push   edx
  5c256a:	e8 31 6d ff ff                                  	call   0x5b92a0
  5c256f:	8b b4 24 88 00 00 00                            	mov    esi,DWORD PTR [esp+0x88]
  5c2576:	8b 84 24 84 00 00 00                            	mov    eax,DWORD PTR [esp+0x84]
  5c257d:	2b f0                                           	sub    esi,eax
  5c257f:	83 fe 05                                        	cmp    esi,0x5
  5c2582:	89 74 24 38                                     	mov    DWORD PTR [esp+0x38],esi
  5c2586:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  5c258a:	7f 04                                           	jg     0x5c2590
  5c258c:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5c2590:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  5c2592:	51                                              	push   ecx
  5c2593:	68 00 9c f9 00                                  	push   0xf99c00
  5c2598:	50                                              	push   eax
  5c2599:	e8 62 ca ed ff                                  	call   0x49f000
  5c259e:	83 c4 0c                                        	add    esp,0xc
  5c25a1:	85 c0                                           	test   eax,eax
  5c25a3:	75 0f                                           	jne    0x5c25b4
  5c25a5:	83 fe 05                                        	cmp    esi,0x5
  5c25a8:	7c 0a                                           	jl     0x5c25b4
  5c25aa:	83 fe 05                                        	cmp    esi,0x5
  5c25ad:	0f 9f c0                                        	setg   al
  5c25b0:	85 c0                                           	test   eax,eax
  5c25b2:	74 31                                           	je     0x5c25e5
  5c25b4:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5c25b8:	e8 43 eb 03 00                                  	call   0x601100
  5c25bd:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  5c25c1:	8b 42 60                                        	mov    eax,DWORD PTR [edx+0x60]
  5c25c4:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5c25c8:	51                                              	push   ecx
  5c25c9:	50                                              	push   eax
  5c25ca:	8b cf                                           	mov    ecx,edi
  5c25cc:	e8 cf 7e ff ff                                  	call   0x5ba4a0
  5c25d1:	84 c0                                           	test   al,al
  5c25d3:	8b cd                                           	mov    ecx,ebp
  5c25d5:	0f 84 15 04 00 00                               	je     0x5c29f0
  5c25db:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  5c25df:	52                                              	push   edx
  5c25e0:	e8 bb 4a 04 00                                  	call   0x6070a0
  5c25e5:	83 c7 1c                                        	add    edi,0x1c
  5c25e8:	3b fb                                           	cmp    edi,ebx
  5c25ea:	0f 85 14 ff ff ff                               	jne    0x5c2504
  5c25f0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5c25f4:	8b 40 24                                        	mov    eax,DWORD PTR [eax+0x24]
  5c25f7:	85 c0                                           	test   eax,eax
  5c25f9:	0f 84 8f 01 00 00                               	je     0x5c278e
  5c25ff:	50                                              	push   eax
  5c2600:	e8 0b 30 03 00                                  	call   0x5f5610
  5c2605:	8b 8c 24 bc 06 00 00                            	mov    ecx,DWORD PTR [esp+0x6bc]
  5c260c:	8b 49 60                                        	mov    ecx,DWORD PTR [ecx+0x60]
  5c260f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5c2611:	83 c4 04                                        	add    esp,0x4
  5c2614:	8b f8                                           	mov    edi,eax
  5c2616:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5c2619:	68 8e a0 23 a3                                  	push   0xa323a08e
  5c261e:	ff d0                                           	call   eax
  5c2620:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
  5c2627:	3b c8                                           	cmp    ecx,eax
  5c2629:	74 40                                           	je     0x5c266b
  5c262b:	3b 8c 24 88 00 00 00                            	cmp    ecx,DWORD PTR [esp+0x88]
  5c2632:	74 11                                           	je     0x5c2645
  5c2634:	c6 01 00                                        	mov    BYTE PTR [ecx],0x0
  5c2637:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
  5c263e:	89 8c 24 88 00 00 00                            	mov    DWORD PTR [esp+0x88],ecx
  5c2645:	8b c8                                           	mov    ecx,eax
  5c2647:	8d 71 01                                        	lea    esi,[ecx+0x1]
  5c264a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  5c2650:	8a 11                                           	mov    dl,BYTE PTR [ecx]
  5c2652:	83 c1 01                                        	add    ecx,0x1
  5c2655:	84 d2                                           	test   dl,dl
  5c2657:	75 f7                                           	jne    0x5c2650
  5c2659:	2b ce                                           	sub    ecx,esi
  5c265b:	03 c8                                           	add    ecx,eax
  5c265d:	51                                              	push   ecx
  5c265e:	50                                              	push   eax
  5c265f:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  5c2666:	e8 15 d2 fc ff                                  	call   0x58f880
  5c266b:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  5c266d:	8b c1                                           	mov    eax,ecx
  5c266f:	8d 70 01                                        	lea    esi,[eax+0x1]
  5c2672:	8a 10                                           	mov    dl,BYTE PTR [eax]
  5c2674:	83 c0 01                                        	add    eax,0x1
  5c2677:	84 d2                                           	test   dl,dl
  5c2679:	75 f7                                           	jne    0x5c2672
  5c267b:	2b c6                                           	sub    eax,esi
  5c267d:	03 c1                                           	add    eax,ecx
  5c267f:	50                                              	push   eax
  5c2680:	51                                              	push   ecx
  5c2681:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  5c2688:	e8 f3 d1 fc ff                                  	call   0x58f880
  5c268d:	8b 8c 24 84 00 00 00                            	mov    ecx,DWORD PTR [esp+0x84]
  5c2694:	8b 84 24 88 00 00 00                            	mov    eax,DWORD PTR [esp+0x88]
  5c269b:	2b c1                                           	sub    eax,ecx
  5c269d:	50                                              	push   eax
  5c269e:	51                                              	push   ecx
  5c269f:	e8 ac d7 20 00                                  	call   0x7cfe50
  5c26a4:	8b 94 24 c0 06 00 00                            	mov    edx,DWORD PTR [esp+0x6c0]
  5c26ab:	8b 4a 60                                        	mov    ecx,DWORD PTR [edx+0x60]
  5c26ae:	8b f8                                           	mov    edi,eax
  5c26b0:	83 c4 08                                        	add    esp,0x8
  5c26b3:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  5c26b7:	33 db                                           	xor    ebx,ebx
  5c26b9:	50                                              	push   eax
  5c26ba:	57                                              	push   edi
  5c26bb:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  5c26bf:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  5c26c3:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  5c26c7:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
  5c26cb:	e8 20 5c ff ff                                  	call   0x5b82f0
  5c26d0:	84 c0                                           	test   al,al
  5c26d2:	0f 84 38 03 00 00                               	je     0x5c2a10
  5c26d8:	38 9c 24 c0 06 00 00                            	cmp    BYTE PTR [esp+0x6c0],bl
  5c26df:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5c26e3:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5c26e7:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  5c26eb:	89 4d 08                                        	mov    DWORD PTR [ebp+0x8],ecx
  5c26ee:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5c26f2:	89 55 0c                                        	mov    DWORD PTR [ebp+0xc],edx
  5c26f5:	89 45 10                                        	mov    DWORD PTR [ebp+0x10],eax
  5c26f8:	89 4d 14                                        	mov    DWORD PTR [ebp+0x14],ecx
  5c26fb:	74 21                                           	je     0x5c271e
  5c26fd:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5c2701:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5c2704:	8b 32                                           	mov    esi,DWORD PTR [edx]
  5c2706:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5c2709:	6a 01                                           	push   0x1
  5c270b:	68 d1 9e 26 02                                  	push   0x2269ed1
  5c2710:	8b cd                                           	mov    ecx,ebp
  5c2712:	ff d2                                           	call   edx
  5c2714:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5c2718:	50                                              	push   eax
  5c2719:	8b 46 5c                                        	mov    eax,DWORD PTR [esi+0x5c]
  5c271c:	ff d0                                           	call   eax
  5c271e:	8b b4 24 bc 06 00 00                            	mov    esi,DWORD PTR [esp+0x6bc]
  5c2725:	8b 46 04                                        	mov    eax,DWORD PTR [esi+0x4]
  5c2728:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  5c272b:	73 0e                                           	jae    0x5c273b
  5c272d:	3b c3                                           	cmp    eax,ebx
  5c272f:	8d 48 0c                                        	lea    ecx,[eax+0xc]
  5c2732:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5c2735:	74 27                                           	je     0x5c275e
  5c2737:	89 18                                           	mov    DWORD PTR [eax],ebx
  5c2739:	eb 23                                           	jmp    0x5c275e
  5c273b:	8d 54 24 78                                     	lea    edx,[esp+0x78]
  5c273f:	52                                              	push   edx
  5c2740:	50                                              	push   eax
  5c2741:	8b ce                                           	mov    ecx,esi
  5c2743:	89 9c 24 80 00 00 00                            	mov    DWORD PTR [esp+0x80],ebx
  5c274a:	e8 b1 ec ff ff                                  	call   0x5c1400
  5c274f:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  5c2753:	3b cb                                           	cmp    ecx,ebx
  5c2755:	74 07                                           	je     0x5c275e
  5c2757:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5c2759:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5c275c:	ff d2                                           	call   edx
  5c275e:	8b 76 04                                        	mov    esi,DWORD PTR [esi+0x4]
  5c2761:	83 ee 0c                                        	sub    esi,0xc
  5c2764:	89 7e 04                                        	mov    DWORD PTR [esi+0x4],edi
  5c2767:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  5c2769:	3b ef                                           	cmp    ebp,edi
  5c276b:	74 18                                           	je     0x5c2785
  5c276d:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  5c2770:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5c2772:	8b cd                                           	mov    ecx,ebp
  5c2774:	ff d2                                           	call   edx
  5c2776:	3b fb                                           	cmp    edi,ebx
  5c2778:	89 2e                                           	mov    DWORD PTR [esi],ebp
  5c277a:	74 09                                           	je     0x5c2785
  5c277c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5c277e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5c2781:	8b cf                                           	mov    ecx,edi
  5c2783:	ff d2                                           	call   edx
  5c2785:	c6 46 08 00                                     	mov    BYTE PTR [esi+0x8],0x0
  5c2789:	e9 db 01 00 00                                  	jmp    0x5c2969
  5c278e:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5c2792:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5c2794:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5c2797:	68 ef de 0f d9                                  	push   0xd90fdeef
  5c279c:	ff d2                                           	call   edx
  5c279e:	8b b4 24 94 02 00 00                            	mov    esi,DWORD PTR [esp+0x294]
  5c27a5:	3b f0                                           	cmp    esi,eax
  5c27a7:	74 41                                           	je     0x5c27ea
  5c27a9:	3b b4 24 98 02 00 00                            	cmp    esi,DWORD PTR [esp+0x298]
  5c27b0:	74 11                                           	je     0x5c27c3
  5c27b2:	c6 06 00                                        	mov    BYTE PTR [esi],0x0
  5c27b5:	8b 8c 24 94 02 00 00                            	mov    ecx,DWORD PTR [esp+0x294]
  5c27bc:	89 8c 24 98 02 00 00                            	mov    DWORD PTR [esp+0x298],ecx
  5c27c3:	8b c8                                           	mov    ecx,eax
  5c27c5:	8d 71 01                                        	lea    esi,[ecx+0x1]
  5c27c8:	8a 11                                           	mov    dl,BYTE PTR [ecx]
  5c27ca:	83 c1 01                                        	add    ecx,0x1
  5c27cd:	84 d2                                           	test   dl,dl
  5c27cf:	75 f7                                           	jne    0x5c27c8
  5c27d1:	2b ce                                           	sub    ecx,esi
  5c27d3:	03 c8                                           	add    ecx,eax
  5c27d5:	51                                              	push   ecx
  5c27d6:	50                                              	push   eax
  5c27d7:	8d 8c 24 9c 02 00 00                            	lea    ecx,[esp+0x29c]
  5c27de:	e8 9d d0 fc ff                                  	call   0x58f880
  5c27e3:	8b b4 24 94 02 00 00                            	mov    esi,DWORD PTR [esp+0x294]
  5c27ea:	8b bc 24 98 02 00 00                            	mov    edi,DWORD PTR [esp+0x298]
  5c27f1:	3b f7                                           	cmp    esi,edi
  5c27f3:	73 2b                                           	jae    0x5c2820
  5c27f5:	8b 1d c0 66 f9 00                               	mov    ebx,DWORD PTR ds:0xf966c0
  5c27fb:	eb 03                                           	jmp    0x5c2800
  5c27fd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  5c2800:	0f b6 16                                        	movzx  edx,BYTE PTR [esi]
  5c2803:	52                                              	push   edx
  5c2804:	ff d3                                           	call   ebx
  5c2806:	88 06                                           	mov    BYTE PTR [esi],al
  5c2808:	8b bc 24 9c 02 00 00                            	mov    edi,DWORD PTR [esp+0x29c]
  5c280f:	83 c6 01                                        	add    esi,0x1
  5c2812:	83 c4 04                                        	add    esp,0x4
  5c2815:	3b f7                                           	cmp    esi,edi
  5c2817:	72 e7                                           	jb     0x5c2800
  5c2819:	8b b4 24 94 02 00 00                            	mov    esi,DWORD PTR [esp+0x294]
  5c2820:	8b c7                                           	mov    eax,edi
  5c2822:	2b c6                                           	sub    eax,esi
  5c2824:	83 f8 04                                        	cmp    eax,0x4
  5c2827:	72 1c                                           	jb     0x5c2845
  5c2829:	68 0c 3d fe 00                                  	push   0xfe3d0c
  5c282e:	68 08 3d fe 00                                  	push   0xfe3d08
  5c2833:	57                                              	push   edi
  5c2834:	56                                              	push   esi
  5c2835:	e8 06 be ee ff                                  	call   0x4ae640
  5c283a:	83 c4 10                                        	add    esp,0x10
  5c283d:	3b c7                                           	cmp    eax,edi
  5c283f:	74 04                                           	je     0x5c2845
  5c2841:	2b c6                                           	sub    eax,esi
  5c2843:	eb 03                                           	jmp    0x5c2848
  5c2845:	83 c8 ff                                        	or     eax,0xffffffff
  5c2848:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5c284c:	8b 49 60                                        	mov    ecx,DWORD PTR [ecx+0x60]
  5c284f:	8b bc 24 a4 04 00 00                            	mov    edi,DWORD PTR [esp+0x4a4]
  5c2856:	83 f8 ff                                        	cmp    eax,0xffffffff
  5c2859:	0f 95 c3                                        	setne  bl
  5c285c:	e8 ef 4e ff ff                                  	call   0x5b7750
  5c2861:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5c2863:	56                                              	push   esi
  5c2864:	57                                              	push   edi
  5c2865:	52                                              	push   edx
  5c2866:	8d 84 24 90 00 00 00                            	lea    eax,[esp+0x90]
  5c286d:	68 fc 3c fe 00                                  	push   0xfe3cfc
  5c2872:	50                                              	push   eax
  5c2873:	e8 28 e7 36 00                                  	call   0x930fa0
  5c2878:	8b 8c 24 98 00 00 00                            	mov    ecx,DWORD PTR [esp+0x98]
  5c287f:	8b 84 24 9c 00 00 00                            	mov    eax,DWORD PTR [esp+0x9c]
  5c2886:	2b c1                                           	sub    eax,ecx
  5c2888:	50                                              	push   eax
  5c2889:	51                                              	push   ecx
  5c288a:	e8 c1 d5 20 00                                  	call   0x7cfe50
  5c288f:	83 c4 1c                                        	add    esp,0x1c
  5c2892:	80 bc 24 c0 06 00 00 00                         	cmp    BYTE PTR [esp+0x6c0],0x0
  5c289a:	8b f8                                           	mov    edi,eax
  5c289c:	74 57                                           	je     0x5c28f5
  5c289e:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  5c28a2:	68 35 14 3a 03                                  	push   0x33a1435
  5c28a7:	51                                              	push   ecx
  5c28a8:	e8 53 e0 ff ff                                  	call   0x5c0900
  5c28ad:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
  5c28b1:	83 c4 08                                        	add    esp,0x8
  5c28b4:	85 c0                                           	test   eax,eax
  5c28b6:	0f 84 54 01 00 00                               	je     0x5c2a10
  5c28bc:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  5c28c0:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  5c28c4:	89 55 08                                        	mov    DWORD PTR [ebp+0x8],edx
  5c28c7:	8b 54 24 68                                     	mov    edx,DWORD PTR [esp+0x68]
  5c28cb:	89 4d 0c                                        	mov    DWORD PTR [ebp+0xc],ecx
  5c28ce:	89 45 10                                        	mov    DWORD PTR [ebp+0x10],eax
  5c28d1:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5c28d5:	89 55 14                                        	mov    DWORD PTR [ebp+0x14],edx
  5c28d8:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5c28db:	8b 30                                           	mov    esi,DWORD PTR [eax]
  5c28dd:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5c28e0:	6a 01                                           	push   0x1
  5c28e2:	68 d1 9e 26 02                                  	push   0x2269ed1
  5c28e7:	8b cd                                           	mov    ecx,ebp
  5c28e9:	ff d0                                           	call   eax
  5c28eb:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5c28ef:	8b 56 5c                                        	mov    edx,DWORD PTR [esi+0x5c]
  5c28f2:	50                                              	push   eax
  5c28f3:	ff d2                                           	call   edx
  5c28f5:	8b 8c 24 bc 06 00 00                            	mov    ecx,DWORD PTR [esp+0x6bc]
  5c28fc:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  5c28ff:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
  5c2902:	73 12                                           	jae    0x5c2916
  5c2904:	85 c0                                           	test   eax,eax
  5c2906:	8d 50 0c                                        	lea    edx,[eax+0xc]
  5c2909:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  5c290c:	74 2a                                           	je     0x5c2938
  5c290e:	c7 00 00 00 00 00                               	mov    DWORD PTR [eax],0x0
  5c2914:	eb 22                                           	jmp    0x5c2938
  5c2916:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
  5c291a:	52                                              	push   edx
  5c291b:	50                                              	push   eax
  5c291c:	c7 44 24 74 00 00 00 00                         	mov    DWORD PTR [esp+0x74],0x0
  5c2924:	e8 d7 ea ff ff                                  	call   0x5c1400
  5c2929:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  5c292d:	85 c9                                           	test   ecx,ecx
  5c292f:	74 07                                           	je     0x5c2938
  5c2931:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5c2933:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5c2936:	ff d2                                           	call   edx
  5c2938:	8b 84 24 bc 06 00 00                            	mov    eax,DWORD PTR [esp+0x6bc]
  5c293f:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  5c2942:	83 ee 0c                                        	sub    esi,0xc
  5c2945:	89 7e 04                                        	mov    DWORD PTR [esi+0x4],edi
  5c2948:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  5c294a:	3b ef                                           	cmp    ebp,edi
  5c294c:	74 18                                           	je     0x5c2966
  5c294e:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5c2951:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5c2953:	8b cd                                           	mov    ecx,ebp
  5c2955:	ff d0                                           	call   eax
  5c2957:	85 ff                                           	test   edi,edi
  5c2959:	89 2e                                           	mov    DWORD PTR [esi],ebp
  5c295b:	74 09                                           	je     0x5c2966
  5c295d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5c295f:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5c2962:	8b cf                                           	mov    ecx,edi
  5c2964:	ff d0                                           	call   eax
  5c2966:	88 5e 08                                        	mov    BYTE PTR [esi+0x8],bl
  5c2969:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5c296c:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5c296f:	8b cd                                           	mov    ecx,ebp
  5c2971:	ff d0                                           	call   eax
  5c2973:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5c2977:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  5c297b:	83 c0 28                                        	add    eax,0x28
  5c297e:	3b 44 24 3c                                     	cmp    eax,DWORD PTR [esp+0x3c]
  5c2982:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5c2986:	0f 85 b4 fa ff ff                               	jne    0x5c2440
  5c298c:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  5c2990:	8b 6c 24 30                                     	mov    ebp,DWORD PTR [esp+0x30]
  5c2994:	83 c7 28                                        	add    edi,0x28
  5c2997:	3b fd                                           	cmp    edi,ebp
  5c2999:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  5c299d:	0f 85 03 fa ff ff                               	jne    0x5c23a6
  5c29a3:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  5c29a7:	8b 75 28                                        	mov    esi,DWORD PTR [ebp+0x28]
  5c29aa:	8b 7d 2c                                        	mov    edi,DWORD PTR [ebp+0x2c]
  5c29ad:	3b f7                                           	cmp    esi,edi
  5c29af:	b3 01                                           	mov    bl,0x1
  5c29b1:	74 25                                           	je     0x5c29d8
  5c29b3:	84 db                                           	test   bl,bl
  5c29b5:	74 21                                           	je     0x5c29d8
  5c29b7:	8b 94 24 c0 06 00 00                            	mov    edx,DWORD PTR [esp+0x6c0]
  5c29be:	8b 84 24 bc 06 00 00                            	mov    eax,DWORD PTR [esp+0x6bc]
  5c29c5:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  5c29c7:	52                                              	push   edx
  5c29c8:	50                                              	push   eax
  5c29c9:	55                                              	push   ebp
  5c29ca:	e8 01 f9 ff ff                                  	call   0x5c22d0
  5c29cf:	83 c6 04                                        	add    esi,0x4
  5c29d2:	3b f7                                           	cmp    esi,edi
  5c29d4:	8a d8                                           	mov    bl,al
  5c29d6:	75 db                                           	jne    0x5c29b3
  5c29d8:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5c29dc:	e8 ff f9 03 00                                  	call   0x6023e0
  5c29e1:	5f                                              	pop    edi
  5c29e2:	5e                                              	pop    esi
  5c29e3:	5d                                              	pop    ebp
  5c29e4:	8a c3                                           	mov    al,bl
  5c29e6:	5b                                              	pop    ebx
  5c29e7:	81 c4 a4 06 00 00                               	add    esp,0x6a4
  5c29ed:	c2 0c 00                                        	ret    0xc
  5c29f0:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5c29f3:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5c29f6:	ff d0                                           	call   eax
  5c29f8:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5c29fc:	e8 df f9 03 00                                  	call   0x6023e0
  5c2a01:	5f                                              	pop    edi
  5c2a02:	5e                                              	pop    esi
  5c2a03:	5d                                              	pop    ebp
  5c2a04:	32 c0                                           	xor    al,al
  5c2a06:	5b                                              	pop    ebx
  5c2a07:	81 c4 a4 06 00 00                               	add    esp,0x6a4
  5c2a0d:	c2 0c 00                                        	ret    0xc
  5c2a10:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5c2a13:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5c2a16:	8b cd                                           	mov    ecx,ebp
  5c2a18:	ff d0                                           	call   eax
  5c2a1a:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5c2a1e:	e8 bd f9 03 00                                  	call   0x6023e0
  5c2a23:	5f                                              	pop    edi
  5c2a24:	5e                                              	pop    esi
  5c2a25:	5d                                              	pop    ebp
  5c2a26:	32 c0                                           	xor    al,al
  5c2a28:	5b                                              	pop    ebx
  5c2a29:	81 c4 a4 06 00 00                               	add    esp,0x6a4
  5c2a2f:	c2 0c 00                                        	ret    0xc
