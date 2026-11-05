# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x007c0290, 0x007c084b).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_ParseTreeUserDataFields (analyst-assigned)
Entry: 0x007c0290
Ghidra body envelope: 0x007c0290..0x007c084a inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

007c0290 <.text+0x3bf290>:
  7c0290:	55                   	push   ebp
  7c0291:	8b ec                	mov    ebp,esp
  7c0293:	83 e4 f0             	and    esp,0xfffffff0
  7c0296:	83 ec 44             	sub    esp,0x44
  7c0299:	53                   	push   ebx
  7c029a:	56                   	push   esi
  7c029b:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  7c029e:	85 f6                	test   esi,esi
  7c02a0:	57                   	push   edi
  7c02a1:	0f 84 9b 05 00 00    	je     0x7c0842
  7c02a7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c02aa:	c6 40 60 00          	mov    BYTE PTR [eax+0x60],0x0
  7c02ae:	c6 40 61 00          	mov    BYTE PTR [eax+0x61],0x0
  7c02b2:	c6 40 62 00          	mov    BYTE PTR [eax+0x62],0x0
  7c02b6:	c6 40 63 00          	mov    BYTE PTR [eax+0x63],0x0
  7c02ba:	c6 40 64 00          	mov    BYTE PTR [eax+0x64],0x0
  7c02be:	c6 40 65 00          	mov    BYTE PTR [eax+0x65],0x0
  7c02c2:	8b de                	mov    ebx,esi
  7c02c4:	8a 03                	mov    al,BYTE PTR [ebx]
  7c02c6:	3c 20                	cmp    al,0x20
  7c02c8:	74 0c                	je     0x7c02d6
  7c02ca:	3c 09                	cmp    al,0x9
  7c02cc:	74 08                	je     0x7c02d6
  7c02ce:	3c 0a                	cmp    al,0xa
  7c02d0:	74 04                	je     0x7c02d6
  7c02d2:	3c 0d                	cmp    al,0xd
  7c02d4:	75 05                	jne    0x7c02db
  7c02d6:	83 c3 01             	add    ebx,0x1
  7c02d9:	eb e9                	jmp    0x7c02c4
  7c02db:	8a 03                	mov    al,BYTE PTR [ebx]
  7c02dd:	84 c0                	test   al,al
  7c02df:	0f 84 54 05 00 00    	je     0x7c0839
  7c02e5:	0f b6 c0             	movzx  eax,al
  7c02e8:	50                   	push   eax
  7c02e9:	ff 15 90 66 f9 00    	call   DWORD PTR ds:0xf96690
  7c02ef:	83 c4 04             	add    esp,0x4
  7c02f2:	85 c0                	test   eax,eax
  7c02f4:	8d 73 01             	lea    esi,[ebx+0x1]
  7c02f7:	0f 84 45 05 00 00    	je     0x7c0842
  7c02fd:	0f b6 06             	movzx  eax,BYTE PTR [esi]
  7c0300:	8b 3d 9c 66 f9 00    	mov    edi,DWORD PTR ds:0xf9669c
  7c0306:	50                   	push   eax
  7c0307:	ff d7                	call   edi
  7c0309:	83 c4 04             	add    esp,0x4
  7c030c:	85 c0                	test   eax,eax
  7c030e:	74 11                	je     0x7c0321
  7c0310:	0f b6 4e 01          	movzx  ecx,BYTE PTR [esi+0x1]
  7c0314:	83 c6 01             	add    esi,0x1
  7c0317:	51                   	push   ecx
  7c0318:	ff d7                	call   edi
  7c031a:	83 c4 04             	add    esp,0x4
  7c031d:	85 c0                	test   eax,eax
  7c031f:	75 ef                	jne    0x7c0310
  7c0321:	bf 7a 8f f9 00       	mov    edi,0xf98f7a
  7c0326:	8b ce                	mov    ecx,esi
  7c0328:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  7c032c:	8d 64 24 00          	lea    esp,[esp+0x0]
  7c0330:	8a 06                	mov    al,BYTE PTR [esi]
  7c0332:	3c 20                	cmp    al,0x20
  7c0334:	74 0c                	je     0x7c0342
  7c0336:	3c 09                	cmp    al,0x9
  7c0338:	74 08                	je     0x7c0342
  7c033a:	3c 0a                	cmp    al,0xa
  7c033c:	74 04                	je     0x7c0342
  7c033e:	3c 0d                	cmp    al,0xd
  7c0340:	75 05                	jne    0x7c0347
  7c0342:	83 c6 01             	add    esi,0x1
  7c0345:	eb e9                	jmp    0x7c0330
  7c0347:	80 3e 3d             	cmp    BYTE PTR [esi],0x3d
  7c034a:	75 6a                	jne    0x7c03b6
  7c034c:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
  7c034f:	83 c6 01             	add    esi,0x1
  7c0352:	3c 20                	cmp    al,0x20
  7c0354:	74 f6                	je     0x7c034c
  7c0356:	3c 09                	cmp    al,0x9
  7c0358:	74 f2                	je     0x7c034c
  7c035a:	3c 0a                	cmp    al,0xa
  7c035c:	74 ee                	je     0x7c034c
  7c035e:	3c 0d                	cmp    al,0xd
  7c0360:	74 ea                	je     0x7c034c
  7c0362:	3c 22                	cmp    al,0x22
  7c0364:	75 28                	jne    0x7c038e
  7c0366:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
  7c0369:	83 c6 01             	add    esi,0x1
  7c036c:	84 c0                	test   al,al
  7c036e:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  7c0372:	74 0e                	je     0x7c0382
  7c0374:	3c 22                	cmp    al,0x22
  7c0376:	74 0a                	je     0x7c0382
  7c0378:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
  7c037b:	83 c6 01             	add    esi,0x1
  7c037e:	84 c0                	test   al,al
  7c0380:	75 f2                	jne    0x7c0374
  7c0382:	80 3e 22             	cmp    BYTE PTR [esi],0x22
  7c0385:	8b fe                	mov    edi,esi
  7c0387:	75 2d                	jne    0x7c03b6
  7c0389:	83 c6 01             	add    esi,0x1
  7c038c:	eb 28                	jmp    0x7c03b6
  7c038e:	3c 3b                	cmp    al,0x3b
  7c0390:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  7c0394:	74 1e                	je     0x7c03b4
  7c0396:	3c 20                	cmp    al,0x20
  7c0398:	74 1a                	je     0x7c03b4
  7c039a:	3c 09                	cmp    al,0x9
  7c039c:	74 16                	je     0x7c03b4
  7c039e:	3c 0a                	cmp    al,0xa
  7c03a0:	74 12                	je     0x7c03b4
  7c03a2:	3c 0d                	cmp    al,0xd
  7c03a4:	74 0e                	je     0x7c03b4
  7c03a6:	84 c0                	test   al,al
  7c03a8:	74 0a                	je     0x7c03b4
  7c03aa:	8a 46 01             	mov    al,BYTE PTR [esi+0x1]
  7c03ad:	83 c6 01             	add    esi,0x1
  7c03b0:	3c 3b                	cmp    al,0x3b
  7c03b2:	75 e2                	jne    0x7c0396
  7c03b4:	8b fe                	mov    edi,esi
  7c03b6:	2b cb                	sub    ecx,ebx
  7c03b8:	8b c1                	mov    eax,ecx
  7c03ba:	83 f8 05             	cmp    eax,0x5
  7c03bd:	75 31                	jne    0x7c03f0
  7c03bf:	51                   	push   ecx
  7c03c0:	68 8c 7b 01 01       	push   0x1017b8c
  7c03c5:	53                   	push   ebx
  7c03c6:	ff 15 94 66 f9 00    	call   DWORD PTR ds:0xf96694
  7c03cc:	83 c4 0c             	add    esp,0xc
  7c03cf:	85 c0                	test   eax,eax
  7c03d1:	0f 85 39 04 00 00    	jne    0x7c0810
  7c03d7:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  7c03db:	50                   	push   eax
  7c03dc:	52                   	push   edx
  7c03dd:	e8 0e f8 d3 ff       	call   0x4ffbf0
  7c03e2:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c03e5:	d9 58 04             	fstp   DWORD PTR [eax+0x4]
  7c03e8:	83 c4 08             	add    esp,0x8
  7c03eb:	e9 20 04 00 00       	jmp    0x7c0810
  7c03f0:	83 f8 06             	cmp    eax,0x6
  7c03f3:	75 36                	jne    0x7c042b
  7c03f5:	50                   	push   eax
  7c03f6:	68 84 7b 01 01       	push   0x1017b84
  7c03fb:	53                   	push   ebx
  7c03fc:	ff 15 94 66 f9 00    	call   DWORD PTR ds:0xf96694
  7c0402:	83 c4 0c             	add    esp,0xc
  7c0405:	85 c0                	test   eax,eax
  7c0407:	0f 85 03 04 00 00    	jne    0x7c0810
  7c040d:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7c0411:	50                   	push   eax
  7c0412:	51                   	push   ecx
  7c0413:	e8 d8 f7 d3 ff       	call   0x4ffbf0
  7c0418:	d8 0d 44 7a 01 01    	fmul   DWORD PTR ds:0x1017a44
  7c041e:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  7c0421:	83 c4 08             	add    esp,0x8
  7c0424:	d9 1a                	fstp   DWORD PTR [edx]
  7c0426:	e9 e5 03 00 00       	jmp    0x7c0810
  7c042b:	83 f8 04             	cmp    eax,0x4
  7c042e:	0f 85 b4 00 00 00    	jne    0x7c04e8
  7c0434:	50                   	push   eax
  7c0435:	68 00 8a fb 00       	push   0xfb8a00
  7c043a:	53                   	push   ebx
  7c043b:	ff 15 94 66 f9 00    	call   DWORD PTR ds:0xf96694
  7c0441:	83 c4 0c             	add    esp,0xc
  7c0444:	85 c0                	test   eax,eax
  7c0446:	0f 85 c4 03 00 00    	jne    0x7c0810
  7c044c:	2b 7c 24 14          	sub    edi,DWORD PTR [esp+0x14]
  7c0450:	8b c7                	mov    eax,edi
  7c0452:	83 f8 05             	cmp    eax,0x5
  7c0455:	0f 85 b5 03 00 00    	jne    0x7c0810
  7c045b:	8b 1d 94 66 f9 00    	mov    ebx,DWORD PTR ds:0xf96694
  7c0461:	57                   	push   edi
  7c0462:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  7c0466:	68 80 b0 fa 00       	push   0xfab080
  7c046b:	57                   	push   edi
  7c046c:	ff d3                	call   ebx
  7c046e:	83 c4 0c             	add    esp,0xc
  7c0471:	85 c0                	test   eax,eax
  7c0473:	75 0f                	jne    0x7c0484
  7c0475:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c0478:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
  7c047f:	e9 8c 03 00 00       	jmp    0x7c0810
  7c0484:	6a 05                	push   0x5
  7c0486:	68 e4 b1 fa 00       	push   0xfab1e4
  7c048b:	57                   	push   edi
  7c048c:	ff d3                	call   ebx
  7c048e:	83 c4 0c             	add    esp,0xc
  7c0491:	85 c0                	test   eax,eax
  7c0493:	75 0f                	jne    0x7c04a4
  7c0495:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  7c0498:	c7 41 08 01 00 00 00 	mov    DWORD PTR [ecx+0x8],0x1
  7c049f:	e9 6c 03 00 00       	jmp    0x7c0810
  7c04a4:	6a 05                	push   0x5
  7c04a6:	68 7c 7b 01 01       	push   0x1017b7c
  7c04ab:	57                   	push   edi
  7c04ac:	ff d3                	call   ebx
  7c04ae:	83 c4 0c             	add    esp,0xc
  7c04b1:	85 c0                	test   eax,eax
  7c04b3:	75 0f                	jne    0x7c04c4
  7c04b5:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  7c04b8:	c7 42 08 02 00 00 00 	mov    DWORD PTR [edx+0x8],0x2
  7c04bf:	e9 4c 03 00 00       	jmp    0x7c0810
  7c04c4:	6a 05                	push   0x5
  7c04c6:	68 74 7b 01 01       	push   0x1017b74
  7c04cb:	57                   	push   edi
  7c04cc:	ff d3                	call   ebx
  7c04ce:	83 c4 0c             	add    esp,0xc
  7c04d1:	85 c0                	test   eax,eax
  7c04d3:	0f 85 37 03 00 00    	jne    0x7c0810
  7c04d9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c04dc:	c7 40 08 03 00 00 00 	mov    DWORD PTR [eax+0x8],0x3
  7c04e3:	e9 28 03 00 00       	jmp    0x7c0810
  7c04e8:	83 f8 15             	cmp    eax,0x15
  7c04eb:	75 46                	jne    0x7c0533
  7c04ed:	50                   	push   eax
  7c04ee:	68 5c 7b 01 01       	push   0x1017b5c
  7c04f3:	53                   	push   ebx
  7c04f4:	ff 15 94 66 f9 00    	call   DWORD PTR ds:0xf96694
  7c04fa:	83 c4 0c             	add    esp,0xc
  7c04fd:	85 c0                	test   eax,eax
  7c04ff:	0f 85 0b 03 00 00    	jne    0x7c0810
  7c0505:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c0508:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7c050c:	50                   	push   eax
  7c050d:	51                   	push   ecx
  7c050e:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
  7c0515:	e8 06 f9 ff ff       	call   0x7bfe20
  7c051a:	83 c4 08             	add    esp,0x8
  7c051d:	80 3e 3b             	cmp    BYTE PTR [esi],0x3b
  7c0520:	0f 84 ea 02 00 00    	je     0x7c0810
  7c0526:	83 c6 01             	add    esi,0x1
  7c0529:	80 3e 3b             	cmp    BYTE PTR [esi],0x3b
  7c052c:	75 f8                	jne    0x7c0526
  7c052e:	e9 dd 02 00 00       	jmp    0x7c0810
  7c0533:	83 f8 10             	cmp    eax,0x10
  7c0536:	75 46                	jne    0x7c057e
  7c0538:	50                   	push   eax
  7c0539:	68 48 7b 01 01       	push   0x1017b48
  7c053e:	53                   	push   ebx
  7c053f:	ff 15 94 66 f9 00    	call   DWORD PTR ds:0xf96694
  7c0545:	83 c4 0c             	add    esp,0xc
  7c0548:	85 c0                	test   eax,eax
  7c054a:	0f 85 c0 02 00 00    	jne    0x7c0810
  7c0550:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c0553:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  7c0557:	50                   	push   eax
  7c0558:	52                   	push   edx
  7c0559:	c7 40 10 00 00 00 00 	mov    DWORD PTR [eax+0x10],0x0
  7c0560:	e8 bb f8 ff ff       	call   0x7bfe20
  7c0565:	83 c4 08             	add    esp,0x8
  7c0568:	80 3e 3b             	cmp    BYTE PTR [esi],0x3b
  7c056b:	0f 84 9f 02 00 00    	je     0x7c0810
  7c0571:	83 c6 01             	add    esi,0x1
  7c0574:	80 3e 3b             	cmp    BYTE PTR [esi],0x3b
  7c0577:	75 f8                	jne    0x7c0571
  7c0579:	e9 92 02 00 00       	jmp    0x7c0810
  7c057e:	83 f8 11             	cmp    eax,0x11
  7c0581:	75 4a                	jne    0x7c05cd
  7c0583:	50                   	push   eax
  7c0584:	68 34 7b 01 01       	push   0x1017b34
  7c0589:	53                   	push   ebx
  7c058a:	ff 15 94 66 f9 00    	call   DWORD PTR ds:0xf96694
  7c0590:	83 c4 0c             	add    esp,0xc
  7c0593:	85 c0                	test   eax,eax
  7c0595:	0f 85 75 02 00 00    	jne    0x7c0810
  7c059b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c059e:	50                   	push   eax
  7c059f:	c7 40 14 00 00 00 00 	mov    DWORD PTR [eax+0x14],0x0
  7c05a6:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  7c05aa:	50                   	push   eax
  7c05ab:	e8 70 f8 ff ff       	call   0x7bfe20
  7c05b0:	83 c4 08             	add    esp,0x8
  7c05b3:	80 3e 3b             	cmp    BYTE PTR [esi],0x3b
  7c05b6:	0f 84 54 02 00 00    	je     0x7c0810
  7c05bc:	8d 64 24 00          	lea    esp,[esp+0x0]
  7c05c0:	83 c6 01             	add    esi,0x1
  7c05c3:	80 3e 3b             	cmp    BYTE PTR [esi],0x3b
  7c05c6:	75 f8                	jne    0x7c05c0
  7c05c8:	e9 43 02 00 00       	jmp    0x7c0810
  7c05cd:	83 f8 0a             	cmp    eax,0xa
  7c05d0:	0f 85 f3 00 00 00    	jne    0x7c06c9
  7c05d6:	8b 3d 94 66 f9 00    	mov    edi,DWORD PTR ds:0xf96694
  7c05dc:	50                   	push   eax
  7c05dd:	68 28 7b 01 01       	push   0x1017b28
  7c05e2:	53                   	push   ebx
  7c05e3:	ff d7                	call   edi
  7c05e5:	83 c4 0c             	add    esp,0xc
  7c05e8:	85 c0                	test   eax,eax
  7c05ea:	75 64                	jne    0x7c0650
  7c05ec:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  7c05f0:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  7c05f4:	51                   	push   ecx
  7c05f5:	52                   	push   edx
  7c05f6:	e8 85 fa ff ff       	call   0x7c0080
  7c05fb:	83 c4 08             	add    esp,0x8
  7c05fe:	84 c0                	test   al,al
  7c0600:	0f 84 0a 02 00 00    	je     0x7c0810
  7c0606:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c0609:	0f 28 48 20          	movaps xmm1,XMMWORD PTR [eax+0x20]
  7c060d:	0f 28 54 24 20       	movaps xmm2,XMMWORD PTR [esp+0x20]
  7c0612:	0f 28 c1             	movaps xmm0,xmm1
  7c0615:	0f c6 c2 05          	shufps xmm0,xmm2,0x5
  7c0619:	0f c6 c1 e2          	shufps xmm0,xmm1,0xe2
  7c061d:	0f 29 40 20          	movaps XMMWORD PTR [eax+0x20],xmm0
  7c0621:	0f 28 48 20          	movaps xmm1,XMMWORD PTR [eax+0x20]
  7c0625:	0f 28 c1             	movaps xmm0,xmm1
  7c0628:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  7c062c:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  7c0630:	0f 29 40 20          	movaps XMMWORD PTR [eax+0x20],xmm0
  7c0634:	0f 28 40 20          	movaps xmm0,XMMWORD PTR [eax+0x20]
  7c0638:	0f 28 c8             	movaps xmm1,xmm0
  7c063b:	0f c6 ca af          	shufps xmm1,xmm2,0xaf
  7c063f:	0f c6 c1 24          	shufps xmm0,xmm1,0x24
  7c0643:	0f 29 40 20          	movaps XMMWORD PTR [eax+0x20],xmm0
  7c0647:	c6 40 60 01          	mov    BYTE PTR [eax+0x60],0x1
  7c064b:	e9 c0 01 00 00       	jmp    0x7c0810
  7c0650:	6a 0a                	push   0xa
  7c0652:	68 1c 7b 01 01       	push   0x1017b1c
  7c0657:	53                   	push   ebx
  7c0658:	ff d7                	call   edi
  7c065a:	83 c4 0c             	add    esp,0xc
  7c065d:	85 c0                	test   eax,eax
  7c065f:	0f 85 7b 01 00 00    	jne    0x7c07e0
  7c0665:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7c0669:	8d 44 24 30          	lea    eax,[esp+0x30]
  7c066d:	50                   	push   eax
  7c066e:	51                   	push   ecx
  7c066f:	e8 0c fa ff ff       	call   0x7c0080
  7c0674:	83 c4 08             	add    esp,0x8
  7c0677:	84 c0                	test   al,al
  7c0679:	0f 84 91 01 00 00    	je     0x7c0810
  7c067f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c0682:	0f 28 48 30          	movaps xmm1,XMMWORD PTR [eax+0x30]
  7c0686:	0f 28 54 24 30       	movaps xmm2,XMMWORD PTR [esp+0x30]
  7c068b:	0f 28 c1             	movaps xmm0,xmm1
  7c068e:	0f c6 c2 05          	shufps xmm0,xmm2,0x5
  7c0692:	0f c6 c1 e2          	shufps xmm0,xmm1,0xe2
  7c0696:	0f 29 40 30          	movaps XMMWORD PTR [eax+0x30],xmm0
  7c069a:	0f 28 48 30          	movaps xmm1,XMMWORD PTR [eax+0x30]
  7c069e:	0f 28 c1             	movaps xmm0,xmm1
  7c06a1:	0f c6 c2 50          	shufps xmm0,xmm2,0x50
  7c06a5:	0f c6 c1 e8          	shufps xmm0,xmm1,0xe8
  7c06a9:	0f 29 40 30          	movaps XMMWORD PTR [eax+0x30],xmm0
  7c06ad:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  7c06b1:	0f 28 c8             	movaps xmm1,xmm0
  7c06b4:	0f c6 ca af          	shufps xmm1,xmm2,0xaf
  7c06b8:	0f c6 c1 24          	shufps xmm0,xmm1,0x24
  7c06bc:	0f 29 40 30          	movaps XMMWORD PTR [eax+0x30],xmm0
  7c06c0:	c6 40 61 01          	mov    BYTE PTR [eax+0x61],0x1
  7c06c4:	e9 47 01 00 00       	jmp    0x7c0810
  7c06c9:	83 f8 0d             	cmp    eax,0xd
  7c06cc:	75 47                	jne    0x7c0715
  7c06ce:	50                   	push   eax
  7c06cf:	68 0c 7b 01 01       	push   0x1017b0c
  7c06d4:	53                   	push   ebx
  7c06d5:	ff 15 94 66 f9 00    	call   DWORD PTR ds:0xf96694
  7c06db:	83 c4 0c             	add    esp,0xc
  7c06de:	85 c0                	test   eax,eax
  7c06e0:	0f 85 2a 01 00 00    	jne    0x7c0810
  7c06e6:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  7c06ea:	8d 54 24 40          	lea    edx,[esp+0x40]
  7c06ee:	52                   	push   edx
  7c06ef:	50                   	push   eax
  7c06f0:	e8 db fa ff ff       	call   0x7c01d0
  7c06f5:	83 c4 08             	add    esp,0x8
  7c06f8:	84 c0                	test   al,al
  7c06fa:	0f 84 10 01 00 00    	je     0x7c0810
  7c0700:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c0703:	0f 28 44 24 40       	movaps xmm0,XMMWORD PTR [esp+0x40]
  7c0708:	0f 29 40 40          	movaps XMMWORD PTR [eax+0x40],xmm0
  7c070c:	c6 40 64 01          	mov    BYTE PTR [eax+0x64],0x1
  7c0710:	e9 fb 00 00 00       	jmp    0x7c0810
  7c0715:	83 f8 0e             	cmp    eax,0xe
  7c0718:	0f 85 f2 00 00 00    	jne    0x7c0810
  7c071e:	8b 3d 94 66 f9 00    	mov    edi,DWORD PTR ds:0xf96694
  7c0724:	50                   	push   eax
  7c0725:	68 fc 7a 01 01       	push   0x1017afc
  7c072a:	53                   	push   ebx
  7c072b:	ff d7                	call   edi
  7c072d:	83 c4 0c             	add    esp,0xc
  7c0730:	85 c0                	test   eax,eax
  7c0732:	75 51                	jne    0x7c0785
  7c0734:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  7c0738:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  7c073f:	00
  7c0740:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  7c0744:	51                   	push   ecx
  7c0745:	52                   	push   edx
  7c0746:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  7c074c:	e8 7f f6 ff ff       	call   0x7bfdd0
  7c0751:	83 c4 08             	add    esp,0x8
  7c0754:	84 c0                	test   al,al
  7c0756:	0f 84 b4 00 00 00    	je     0x7c0810
  7c075c:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c075f:	0f 28 40 20          	movaps xmm0,XMMWORD PTR [eax+0x20]
  7c0763:	f3 0f 10 4c 24 18    	movss  xmm1,DWORD PTR [esp+0x18]
  7c0769:	0f 28 d0             	movaps xmm2,xmm0
  7c076c:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  7c0770:	0f c6 d1 0a          	shufps xmm2,xmm1,0xa
  7c0774:	0f c6 c2 84          	shufps xmm0,xmm2,0x84
  7c0778:	0f 29 40 20          	movaps XMMWORD PTR [eax+0x20],xmm0
  7c077c:	c6 40 62 01          	mov    BYTE PTR [eax+0x62],0x1
  7c0780:	e9 8b 00 00 00       	jmp    0x7c0810
  7c0785:	6a 0e                	push   0xe
  7c0787:	68 ec 7a 01 01       	push   0x1017aec
  7c078c:	53                   	push   ebx
  7c078d:	ff d7                	call   edi
  7c078f:	83 c4 0c             	add    esp,0xc
  7c0792:	85 c0                	test   eax,eax
  7c0794:	75 7a                	jne    0x7c0810
  7c0796:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7c079a:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  7c07a1:	00
  7c07a2:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  7c07a6:	50                   	push   eax
  7c07a7:	51                   	push   ecx
  7c07a8:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  7c07ae:	e8 1d f6 ff ff       	call   0x7bfdd0
  7c07b3:	83 c4 08             	add    esp,0x8
  7c07b6:	84 c0                	test   al,al
  7c07b8:	74 56                	je     0x7c0810
  7c07ba:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  7c07bd:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  7c07c1:	f3 0f 10 4c 24 1c    	movss  xmm1,DWORD PTR [esp+0x1c]
  7c07c7:	0f 28 d0             	movaps xmm2,xmm0
  7c07ca:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  7c07ce:	0f c6 d1 0a          	shufps xmm2,xmm1,0xa
  7c07d2:	0f c6 c2 84          	shufps xmm0,xmm2,0x84
  7c07d6:	0f 29 40 30          	movaps XMMWORD PTR [eax+0x30],xmm0
  7c07da:	c6 40 63 01          	mov    BYTE PTR [eax+0x63],0x1
  7c07de:	eb 30                	jmp    0x7c0810
  7c07e0:	6a 0a                	push   0xa
  7c07e2:	68 e0 7a 01 01       	push   0x1017ae0
  7c07e7:	53                   	push   ebx
  7c07e8:	ff d7                	call   edi
  7c07ea:	83 c4 0c             	add    esp,0xc
  7c07ed:	85 c0                	test   eax,eax
  7c07ef:	75 1f                	jne    0x7c0810
  7c07f1:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  7c07f4:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  7c07f8:	8d 57 50             	lea    edx,[edi+0x50]
  7c07fb:	52                   	push   edx
  7c07fc:	50                   	push   eax
  7c07fd:	e8 2e f9 ff ff       	call   0x7c0130
  7c0802:	83 c4 08             	add    esp,0x8
  7c0805:	84 c0                	test   al,al
  7c0807:	74 07                	je     0x7c0810
  7c0809:	c6 47 65 01          	mov    BYTE PTR [edi+0x65],0x1
  7c080d:	8d 49 00             	lea    ecx,[ecx+0x0]
  7c0810:	8a 06                	mov    al,BYTE PTR [esi]
  7c0812:	3c 20                	cmp    al,0x20
  7c0814:	74 0c                	je     0x7c0822
  7c0816:	3c 09                	cmp    al,0x9
  7c0818:	74 08                	je     0x7c0822
  7c081a:	3c 0a                	cmp    al,0xa
  7c081c:	74 04                	je     0x7c0822
  7c081e:	3c 0d                	cmp    al,0xd
  7c0820:	75 05                	jne    0x7c0827
  7c0822:	83 c6 01             	add    esi,0x1
  7c0825:	eb e9                	jmp    0x7c0810
  7c0827:	8a 06                	mov    al,BYTE PTR [esi]
  7c0829:	84 c0                	test   al,al
  7c082b:	74 0c                	je     0x7c0839
  7c082d:	3c 3b                	cmp    al,0x3b
  7c082f:	75 11                	jne    0x7c0842
  7c0831:	83 c6 01             	add    esi,0x1
  7c0834:	e9 89 fa ff ff       	jmp    0x7c02c2
  7c0839:	b0 01                	mov    al,0x1
  7c083b:	5f                   	pop    edi
  7c083c:	5e                   	pop    esi
  7c083d:	5b                   	pop    ebx
  7c083e:	8b e5                	mov    esp,ebp
  7c0840:	5d                   	pop    ebp
  7c0841:	c3                   	ret
  7c0842:	5f                   	pop    edi
  7c0843:	5e                   	pop    esi
  7c0844:	32 c0                	xor    al,al
  7c0846:	5b                   	pop    ebx
  7c0847:	8b e5                	mov    esp,ebp
  7c0849:	5d                   	pop    ebp
  7c084a:	c3                   	ret
