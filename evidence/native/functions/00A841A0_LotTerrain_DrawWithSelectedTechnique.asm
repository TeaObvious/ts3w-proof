# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00a841a0,0x00a8463e); analyst name LotTerrain_DrawWithSelectedTechnique.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a841a0 <.text+0x6831a0>:
  a841a0:	83 ec 2c             	sub    esp,0x2c
  a841a3:	53                   	push   ebx
  a841a4:	8b d9                	mov    ebx,ecx
  a841a6:	8b 83 68 02 00 00    	mov    eax,DWORD PTR [ebx+0x268]
  a841ac:	3b 83 6c 02 00 00    	cmp    eax,DWORD PTR [ebx+0x26c]
  a841b2:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  a841b6:	0f 84 7b 04 00 00    	je     0xa84637
  a841bc:	83 7c 24 3c 00       	cmp    DWORD PTR [esp+0x3c],0x0
  a841c1:	0f 84 70 04 00 00    	je     0xa84637
  a841c7:	55                   	push   ebp
  a841c8:	56                   	push   esi
  a841c9:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  a841cd:	f6 46 20 01          	test   BYTE PTR [esi+0x20],0x1
  a841d1:	57                   	push   edi
  a841d2:	0f 84 bf 00 00 00    	je     0xa84297
  a841d8:	8b 8b 24 03 00 00    	mov    ecx,DWORD PTR [ebx+0x324]
  a841de:	8b ab 44 03 00 00    	mov    ebp,DWORD PTR [ebx+0x344]
  a841e4:	2b 8b 20 03 00 00    	sub    ecx,DWORD PTR [ebx+0x320]
  a841ea:	2b ab 40 03 00 00    	sub    ebp,DWORD PTR [ebx+0x340]
  a841f0:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  a841f3:	2d e8 03 00 00       	sub    eax,0x3e8
  a841f8:	c1 f9 02             	sar    ecx,0x2
  a841fb:	c1 fd 02             	sar    ebp,0x2
  a841fe:	3b c1                	cmp    eax,ecx
  a84200:	8d 3c 85 00 00 00 00 	lea    edi,[eax*4+0x0]
  a84207:	0f 83 86 00 00 00    	jae    0xa84293
  a8420d:	8b 35 30 85 1d 01    	mov    esi,DWORD PTR ds:0x11d8530
  a84213:	a1 bc c2 1e 01       	mov    eax,ds:0x11ec2bc
  a84218:	8d 93 28 02 00 00    	lea    edx,[ebx+0x228]
  a8421e:	52                   	push   edx
  a8421f:	50                   	push   eax
  a84220:	8b ce                	mov    ecx,esi
  a84222:	e8 99 36 b7 ff       	call   0x5f78c0
  a84227:	8b 8b 20 03 00 00    	mov    ecx,DWORD PTR [ebx+0x320]
  a8422d:	8b 14 39             	mov    edx,DWORD PTR [ecx+edi*1]
  a84230:	a1 b8 c2 1e 01       	mov    eax,ds:0x11ec2b8
  a84235:	52                   	push   edx
  a84236:	50                   	push   eax
  a84237:	8b ce                	mov    ecx,esi
  a84239:	e8 82 36 b7 ff       	call   0x5f78c0
  a8423e:	33 d2                	xor    edx,edx
  a84240:	3b fd                	cmp    edi,ebp
  a84242:	73 1b                	jae    0xa8425f
  a84244:	8b 8b 40 03 00 00    	mov    ecx,DWORD PTR [ebx+0x340]
  a8424a:	8d 04 b9             	lea    eax,[ecx+edi*4]
  a8424d:	8b 08                	mov    ecx,DWORD PTR [eax]
  a8424f:	f6 c1 03             	test   cl,0x3
  a84252:	75 0b                	jne    0xa8425f
  a84254:	8b 00                	mov    eax,DWORD PTR [eax]
  a84256:	85 c0                	test   eax,eax
  a84258:	74 05                	je     0xa8425f
  a8425a:	8d 48 28             	lea    ecx,[eax+0x28]
  a8425d:	eb 02                	jmp    0xa84261
  a8425f:	33 c9                	xor    ecx,ecx
  a84261:	8b 82 a8 c2 1e 01    	mov    eax,DWORD PTR [edx+0x11ec2a8]
  a84267:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  a8426a:	73 18                	jae    0xa84284
  a8426c:	c1 e0 04             	shl    eax,0x4
  a8426f:	03 46 04             	add    eax,DWORD PTR [esi+0x4]
  a84272:	83 00 01             	add    DWORD PTR [eax],0x1
  a84275:	66 8b 5e 12          	mov    bx,WORD PTR [esi+0x12]
  a84279:	66 89 58 04          	mov    WORD PTR [eax+0x4],bx
  a8427d:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  a84281:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  a84284:	83 c2 04             	add    edx,0x4
  a84287:	83 c7 01             	add    edi,0x1
  a8428a:	83 fa 10             	cmp    edx,0x10
  a8428d:	72 b1                	jb     0xa84240
  a8428f:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
  a84293:	b0 01                	mov    al,0x1
  a84295:	eb 02                	jmp    0xa84299
  a84297:	32 c0                	xor    al,al
  a84299:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  a8429d:	f6 42 04 80          	test   BYTE PTR [edx+0x4],0x80
  a842a1:	a2 c5 c2 1e 01       	mov    ds:0x11ec2c5,al
  a842a6:	74 08                	je     0xa842b0
  a842a8:	84 c0                	test   al,al
  a842aa:	0f 85 84 03 00 00    	jne    0xa84634
  a842b0:	e8 5b a6 b8 ff       	call   0x60e910
  a842b5:	8b c8                	mov    ecx,eax
  a842b7:	e8 e4 af b8 ff       	call   0x60f2a0
  a842bc:	83 7e 18 00          	cmp    DWORD PTR [esi+0x18],0x0
  a842c0:	7e 12                	jle    0xa842d4
  a842c2:	6a 01                	push   0x1
  a842c4:	e8 47 a6 b8 ff       	call   0x60e910
  a842c9:	8b c8                	mov    ecx,eax
  a842cb:	e8 c0 bc b8 ff       	call   0x60ff90
  a842d0:	6a 00                	push   0x0
  a842d2:	eb 10                	jmp    0xa842e4
  a842d4:	6a 00                	push   0x0
  a842d6:	e8 35 a6 b8 ff       	call   0x60e910
  a842db:	8b c8                	mov    ecx,eax
  a842dd:	e8 ae bc b8 ff       	call   0x60ff90
  a842e2:	6a 01                	push   0x1
  a842e4:	e8 27 a6 b8 ff       	call   0x60e910
  a842e9:	8b c8                	mov    ecx,eax
  a842eb:	e8 10 bb b8 ff       	call   0x60fe00
  a842f0:	8b 83 14 02 00 00    	mov    eax,DWORD PTR [ebx+0x214]
  a842f6:	80 b8 d8 03 00 00 00 	cmp    BYTE PTR [eax+0x3d8],0x0
  a842fd:	74 0e                	je     0xa8430d
  a842ff:	80 b8 da 03 00 00 00 	cmp    BYTE PTR [eax+0x3da],0x0
  a84306:	c6 44 24 20 01       	mov    BYTE PTR [esp+0x20],0x1
  a8430b:	74 05                	je     0xa84312
  a8430d:	c6 44 24 20 00       	mov    BYTE PTR [esp+0x20],0x0
  a84312:	8b b3 68 02 00 00    	mov    esi,DWORD PTR [ebx+0x268]
  a84318:	8b 9b 6c 02 00 00    	mov    ebx,DWORD PTR [ebx+0x26c]
  a8431e:	3b f3                	cmp    esi,ebx
  a84320:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  a84324:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  a84328:	0f 84 fa 02 00 00    	je     0xa84628
  a8432e:	8b ff                	mov    edi,edi
  a84330:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  a84334:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  a84337:	8b 06                	mov    eax,DWORD PTR [esi]
  a84339:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
  a8433c:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  a8433f:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  a84343:	51                   	push   ecx
  a84344:	8b 88 18 02 00 00    	mov    ecx,DWORD PTR [eax+0x218]
  a8434a:	c1 eb 07             	shr    ebx,0x7
  a8434d:	80 e3 01             	and    bl,0x1
  a84350:	52                   	push   edx
  a84351:	88 5c 24 1b          	mov    BYTE PTR [esp+0x1b],bl
  a84355:	e8 e6 8b 01 00       	call   0xa9cf40
  a8435a:	8b 6c 24 44          	mov    ebp,DWORD PTR [esp+0x44]
  a8435e:	8a c8                	mov    cl,al
  a84360:	8a 45 20             	mov    al,BYTE PTR [ebp+0x20]
  a84363:	8a d0                	mov    dl,al
  a84365:	d0 ea                	shr    dl,1
  a84367:	32 d0                	xor    dl,al
  a84369:	f6 c2 04             	test   dl,0x4
  a8436c:	88 4c 24 1c          	mov    BYTE PTR [esp+0x1c],cl
  a84370:	74 19                	je     0xa8438b
  a84372:	84 c9                	test   cl,cl
  a84374:	0f 94 c0             	sete   al
  a84377:	84 c0                	test   al,al
  a84379:	74 06                	je     0xa84381
  a8437b:	f6 45 20 08          	test   BYTE PTR [ebp+0x20],0x8
  a8437f:	eb 04                	jmp    0xa84385
  a84381:	f6 45 20 04          	test   BYTE PTR [ebp+0x20],0x4
  a84385:	0f 84 8c 02 00 00    	je     0xa84617
  a8438b:	8b 06                	mov    eax,DWORD PTR [esi]
  a8438d:	80 78 02 00          	cmp    BYTE PTR [eax+0x2],0x0
  a84391:	8b 74 24 48          	mov    esi,DWORD PTR [esp+0x48]
  a84395:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  a84399:	8b fe                	mov    edi,esi
  a8439b:	74 4f                	je     0xa843ec
  a8439d:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
  a843a0:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  a843a3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  a843a7:	51                   	push   ecx
  a843a8:	8b 88 18 02 00 00    	mov    ecx,DWORD PTR [eax+0x218]
  a843ae:	52                   	push   edx
  a843af:	e8 ac 92 01 00       	call   0xa9d660
  a843b4:	f6 45 20 01          	test   BYTE PTR [ebp+0x20],0x1
  a843b8:	74 0e                	je     0xa843c8
  a843ba:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  a843be:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  a843c2:	51                   	push   ecx
  a843c3:	52                   	push   edx
  a843c4:	6a 01                	push   0x1
  a843c6:	eb 36                	jmp    0xa843fe
  a843c8:	8b 4c 24 4c          	mov    ecx,DWORD PTR [esp+0x4c]
  a843cc:	85 c9                	test   ecx,ecx
  a843ce:	74 3e                	je     0xa8440e
  a843d0:	84 db                	test   bl,bl
  a843d2:	75 07                	jne    0xa843db
  a843d4:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  a843d7:	8b f9                	mov    edi,ecx
  a843d9:	eb 2d                	jmp    0xa84408
  a843db:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  a843df:	80 7a 64 00          	cmp    BYTE PTR [edx+0x64],0x0
  a843e3:	6a 00                	push   0x0
  a843e5:	0f 44 f9             	cmove  edi,ecx
  a843e8:	8b cf                	mov    ecx,edi
  a843ea:	eb 1d                	jmp    0xa84409
  a843ec:	f6 45 20 01          	test   BYTE PTR [ebp+0x20],0x1
  a843f0:	74 1c                	je     0xa8440e
  a843f2:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  a843f6:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  a843fa:	50                   	push   eax
  a843fb:	51                   	push   ecx
  a843fc:	6a 00                	push   0x0
  a843fe:	e8 8d f7 ff ff       	call   0xa83b90
  a84403:	83 c4 0c             	add    esp,0xc
  a84406:	8b ce                	mov    ecx,esi
  a84408:	50                   	push   eax
  a84409:	e8 92 62 d1 ff       	call   0x79a6a0
  a8440e:	8a 45 20             	mov    al,BYTE PTR [ebp+0x20]
  a84411:	a8 04                	test   al,0x4
  a84413:	74 3c                	je     0xa84451
  a84415:	a8 02                	test   al,0x2
  a84417:	74 38                	je     0xa84451
  a84419:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  a8441c:	8d 44 24 28          	lea    eax,[esp+0x28]
  a84420:	50                   	push   eax
  a84421:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  a84425:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
  a84428:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  a8442c:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  a8442f:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  a84433:	51                   	push   ecx
  a84434:	8b 88 18 02 00 00    	mov    ecx,DWORD PTR [eax+0x218]
  a8443a:	52                   	push   edx
  a8443b:	e8 f0 90 01 00       	call   0xa9d530
  a84440:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  a84444:	3b 45 1c             	cmp    eax,DWORD PTR [ebp+0x1c]
  a84447:	74 08                	je     0xa84451
  a84449:	50                   	push   eax
  a8444a:	8b ce                	mov    ecx,esi
  a8444c:	e8 4f 62 d1 ff       	call   0x79a6a0
  a84451:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  a84455:	32 db                	xor    bl,bl
  a84457:	38 58 65             	cmp    BYTE PTR [eax+0x65],bl
  a8445a:	75 09                	jne    0xa84465
  a8445c:	38 58 66             	cmp    BYTE PTR [eax+0x66],bl
  a8445f:	0f 84 30 01 00 00    	je     0xa84595
  a84465:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  a8446a:	0f 85 25 01 00 00    	jne    0xa84595
  a84470:	f6 45 20 01          	test   BYTE PTR [ebp+0x20],0x1
  a84474:	0f 85 1b 01 00 00    	jne    0xa84595
  a8447a:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  a8447f:	0f 85 10 01 00 00    	jne    0xa84595
  a84485:	f6 05 fc c2 1e 01 01 	test   BYTE PTR ds:0x11ec2fc,0x1
  a8448c:	75 19                	jne    0xa844a7
  a8448e:	83 0d fc c2 1e 01 01 	or     DWORD PTR ds:0x11ec2fc,0x1
  a84495:	68 e0 34 06 01       	push   0x10634e0
  a8449a:	e8 51 bc d4 ff       	call   0x7d00f0
  a8449f:	83 c4 04             	add    esp,0x4
  a844a2:	a3 f8 c2 1e 01       	mov    ds:0x11ec2f8,eax
  a844a7:	f6 05 fc c2 1e 01 02 	test   BYTE PTR ds:0x11ec2fc,0x2
  a844ae:	75 19                	jne    0xa844c9
  a844b0:	83 0d fc c2 1e 01 02 	or     DWORD PTR ds:0x11ec2fc,0x2
  a844b7:	68 c4 34 06 01       	push   0x10634c4
  a844bc:	e8 2f bc d4 ff       	call   0x7d00f0
  a844c1:	83 c4 04             	add    esp,0x4
  a844c4:	a3 f4 c2 1e 01       	mov    ds:0x11ec2f4,eax
  a844c9:	f6 05 fc c2 1e 01 04 	test   BYTE PTR ds:0x11ec2fc,0x4
  a844d0:	75 19                	jne    0xa844eb
  a844d2:	83 0d fc c2 1e 01 04 	or     DWORD PTR ds:0x11ec2fc,0x4
  a844d9:	68 ac 34 06 01       	push   0x10634ac
  a844de:	e8 0d bc d4 ff       	call   0x7d00f0
  a844e3:	83 c4 04             	add    esp,0x4
  a844e6:	a3 f0 c2 1e 01       	mov    ds:0x11ec2f0,eax
  a844eb:	f6 05 fc c2 1e 01 08 	test   BYTE PTR ds:0x11ec2fc,0x8
  a844f2:	75 19                	jne    0xa8450d
  a844f4:	83 0d fc c2 1e 01 08 	or     DWORD PTR ds:0x11ec2fc,0x8
  a844fb:	68 94 34 06 01       	push   0x1063494
  a84500:	e8 eb bb d4 ff       	call   0x7d00f0
  a84505:	83 c4 04             	add    esp,0x4
  a84508:	a3 ec c2 1e 01       	mov    ds:0x11ec2ec,eax
  a8450d:	f6 05 fc c2 1e 01 10 	test   BYTE PTR ds:0x11ec2fc,0x10
  a84514:	75 19                	jne    0xa8452f
  a84516:	83 0d fc c2 1e 01 10 	or     DWORD PTR ds:0x11ec2fc,0x10
  a8451d:	68 80 34 06 01       	push   0x1063480
  a84522:	e8 c9 bb d4 ff       	call   0x7d00f0
  a84527:	83 c4 04             	add    esp,0x4
  a8452a:	a3 e8 c2 1e 01       	mov    ds:0x11ec2e8,eax
  a8452f:	f6 05 fc c2 1e 01 20 	test   BYTE PTR ds:0x11ec2fc,0x20
  a84536:	75 19                	jne    0xa84551
  a84538:	83 0d fc c2 1e 01 20 	or     DWORD PTR ds:0x11ec2fc,0x20
  a8453f:	68 60 34 06 01       	push   0x1063460
  a84544:	e8 a7 bb d4 ff       	call   0x7d00f0
  a84549:	83 c4 04             	add    esp,0x4
  a8454c:	a3 e4 c2 1e 01       	mov    ds:0x11ec2e4,eax
  a84551:	f6 45 20 02          	test   BYTE PTR [ebp+0x20],0x2
  a84555:	74 28                	je     0xa8457f
  a84557:	81 7d 18 d0 07 00 00 	cmp    DWORD PTR [ebp+0x18],0x7d0
  a8455e:	75 18                	jne    0xa84578
  a84560:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  a84564:	80 79 66 00          	cmp    BYTE PTR [ecx+0x66],0x0
  a84568:	74 07                	je     0xa84571
  a8456a:	a1 e4 c2 1e 01       	mov    eax,ds:0x11ec2e4
  a8456f:	eb 58                	jmp    0xa845c9
  a84571:	a1 f0 c2 1e 01       	mov    eax,ds:0x11ec2f0
  a84576:	eb 51                	jmp    0xa845c9
  a84578:	a1 ec c2 1e 01       	mov    eax,ds:0x11ec2ec
  a8457d:	eb 4a                	jmp    0xa845c9
  a8457f:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  a84583:	80 7a 66 00          	cmp    BYTE PTR [edx+0x66],0x0
  a84587:	a1 f4 c2 1e 01       	mov    eax,ds:0x11ec2f4
  a8458c:	75 3b                	jne    0xa845c9
  a8458e:	a1 f8 c2 1e 01       	mov    eax,ds:0x11ec2f8
  a84593:	eb 34                	jmp    0xa845c9
  a84595:	f6 45 20 03          	test   BYTE PTR [ebp+0x20],0x3
  a84599:	75 40                	jne    0xa845db
  a8459b:	80 7c 24 1c 00       	cmp    BYTE PTR [esp+0x1c],0x0
  a845a0:	74 39                	je     0xa845db
  a845a2:	f6 05 fc c2 1e 01 40 	test   BYTE PTR ds:0x11ec2fc,0x40
  a845a9:	75 19                	jne    0xa845c4
  a845ab:	83 0d fc c2 1e 01 40 	or     DWORD PTR ds:0x11ec2fc,0x40
  a845b2:	68 50 34 06 01       	push   0x1063450
  a845b7:	e8 34 bb d4 ff       	call   0x7d00f0
  a845bc:	83 c4 04             	add    esp,0x4
  a845bf:	a3 e0 c2 1e 01       	mov    ds:0x11ec2e0,eax
  a845c4:	a1 e0 c2 1e 01       	mov    eax,ds:0x11ec2e0
  a845c9:	50                   	push   eax
  a845ca:	8b cf                	mov    ecx,edi
  a845cc:	e8 2f 61 d1 ff       	call   0x79a700
  a845d1:	50                   	push   eax
  a845d2:	8b cf                	mov    ecx,edi
  a845d4:	e8 c7 60 d1 ff       	call   0x79a6a0
  a845d9:	b3 01                	mov    bl,0x1
  a845db:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  a845df:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  a845e3:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  a845e7:	89 4c 24 30          	mov    DWORD PTR [esp+0x30],ecx
  a845eb:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  a845ef:	51                   	push   ecx
  a845f0:	68 a0 2f a8 00       	push   0xa82fa0
  a845f5:	8b cf                	mov    ecx,edi
  a845f7:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
  a845fb:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  a845ff:	e8 cc 60 d1 ff       	call   0x79a6d0
  a84604:	84 db                	test   bl,bl
  a84606:	74 0b                	je     0xa84613
  a84608:	8b 55 1c             	mov    edx,DWORD PTR [ebp+0x1c]
  a8460b:	52                   	push   edx
  a8460c:	8b cf                	mov    ecx,edi
  a8460e:	e8 8d 60 d1 ff       	call   0x79a6a0
  a84613:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
  a84617:	83 c6 04             	add    esi,0x4
  a8461a:	3b 74 24 2c          	cmp    esi,DWORD PTR [esp+0x2c]
  a8461e:	89 74 24 24          	mov    DWORD PTR [esp+0x24],esi
  a84622:	0f 85 08 fd ff ff    	jne    0xa84330
  a84628:	e8 e3 a2 b8 ff       	call   0x60e910
  a8462d:	8b c8                	mov    ecx,eax
  a8462f:	e8 fc bc b8 ff       	call   0x610330
  a84634:	5f                   	pop    edi
  a84635:	5e                   	pop    esi
  a84636:	5d                   	pop    ebp
  a84637:	5b                   	pop    ebx
  a84638:	83 c4 2c             	add    esp,0x2c
  a8463b:	c2 14 00             	ret    0x14
