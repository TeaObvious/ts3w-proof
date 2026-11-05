# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c222b0 <.text+0x8212b0>:
  c222b0:	83 ec 4c             	sub    esp,0x4c
  c222b3:	55                   	push   ebp
  c222b4:	56                   	push   esi
  c222b5:	8b 74 24 58          	mov    esi,DWORD PTR [esp+0x58]
  c222b9:	57                   	push   edi
  c222ba:	8b f9                	mov    edi,ecx
  c222bc:	8d 44 24 14          	lea    eax,[esp+0x14]
  c222c0:	50                   	push   eax
  c222c1:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c222c5:	51                   	push   ecx
  c222c6:	33 ed                	xor    ebp,ebp
  c222c8:	56                   	push   esi
  c222c9:	8b cf                	mov    ecx,edi
  c222cb:	89 6c 24 34          	mov    DWORD PTR [esp+0x34],ebp
  c222cf:	c7 44 24 20 01 00 00 	mov    DWORD PTR [esp+0x20],0x1
  c222d6:	00 
  c222d7:	e8 b4 e0 ff ff       	call   0xc20390
  c222dc:	84 c0                	test   al,al
  c222de:	0f 84 c8 00 00 00    	je     0xc223ac
  c222e4:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  c222e8:	52                   	push   edx
  c222e9:	56                   	push   esi
  c222ea:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  c222ee:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  c222f2:	e8 e9 70 bb ff       	call   0x7d93e0
  c222f7:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  c222fb:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  c222ff:	50                   	push   eax
  c22300:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  c22304:	51                   	push   ecx
  c22305:	52                   	push   edx
  c22306:	e8 75 b6 8b ff       	call   0x4dd980
  c2230b:	83 c4 0c             	add    esp,0xc
  c2230e:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c22312:	50                   	push   eax
  c22313:	e8 d8 56 bb ff       	call   0x7d79f0
  c22318:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  c2231c:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  c22320:	50                   	push   eax
  c22321:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  c22325:	51                   	push   ecx
  c22326:	52                   	push   edx
  c22327:	e8 54 b6 8b ff       	call   0x4dd980
  c2232c:	83 c4 0c             	add    esp,0xc
  c2232f:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c22333:	50                   	push   eax
  c22334:	e8 b7 56 bb ff       	call   0x7d79f0
  c22339:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  c2233d:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  c22341:	50                   	push   eax
  c22342:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  c22346:	51                   	push   ecx
  c22347:	52                   	push   edx
  c22348:	e8 33 b6 8b ff       	call   0x4dd980
  c2234d:	83 c4 0c             	add    esp,0xc
  c22350:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c22354:	50                   	push   eax
  c22355:	e8 96 56 bb ff       	call   0x7d79f0
  c2235a:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  c2235e:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  c22362:	50                   	push   eax
  c22363:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  c22367:	51                   	push   ecx
  c22368:	52                   	push   edx
  c22369:	e8 12 b6 8b ff       	call   0x4dd980
  c2236e:	83 c4 0c             	add    esp,0xc
  c22371:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c22375:	50                   	push   eax
  c22376:	e8 75 56 bb ff       	call   0x7d79f0
  c2237b:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  c2237f:	8b 54 24 48          	mov    edx,DWORD PTR [esp+0x48]
  c22383:	50                   	push   eax
  c22384:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c22388:	51                   	push   ecx
  c22389:	52                   	push   edx
  c2238a:	e8 f1 b5 8b ff       	call   0x4dd980
  c2238f:	83 c4 0c             	add    esp,0xc
  c22392:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c22396:	50                   	push   eax
  c22397:	e8 54 56 bb ff       	call   0x7d79f0
  c2239c:	80 7c 24 54 00       	cmp    BYTE PTR [esp+0x54],0x0
  c223a1:	75 14                	jne    0xc223b7
  c223a3:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c223a7:	e8 e4 55 bb ff       	call   0x7d7990
  c223ac:	5f                   	pop    edi
  c223ad:	5e                   	pop    esi
  c223ae:	32 c0                	xor    al,al
  c223b0:	5d                   	pop    ebp
  c223b1:	83 c4 4c             	add    esp,0x4c
  c223b4:	c2 04 00             	ret    0x4
  c223b7:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c223bb:	53                   	push   ebx
  c223bc:	32 db                	xor    bl,bl
  c223be:	83 f8 10             	cmp    eax,0x10
  c223c1:	75 1b                	jne    0xc223de
  c223c3:	39 44 24 24          	cmp    DWORD PTR [esp+0x24],eax
  c223c7:	74 2a                	je     0xc223f3
  c223c9:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c223cd:	e8 be 55 bb ff       	call   0x7d7990
  c223d2:	5b                   	pop    ebx
  c223d3:	5f                   	pop    edi
  c223d4:	5e                   	pop    esi
  c223d5:	32 c0                	xor    al,al
  c223d7:	5d                   	pop    ebp
  c223d8:	83 c4 4c             	add    esp,0x4c
  c223db:	c2 04 00             	ret    0x4
  c223de:	3b 44 24 24          	cmp    eax,DWORD PTR [esp+0x24]
  c223e2:	0f 85 48 02 00 00    	jne    0xc22630
  c223e8:	83 f8 10             	cmp    eax,0x10
  c223eb:	0f 82 3f 02 00 00    	jb     0xc22630
  c223f1:	b3 01                	mov    bl,0x1
  c223f3:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  c223f7:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  c223fb:	50                   	push   eax
  c223fc:	51                   	push   ecx
  c223fd:	8b cf                	mov    ecx,edi
  c223ff:	e8 4c fe ff ff       	call   0xc22250
  c22404:	84 c0                	test   al,al
  c22406:	0f 84 24 02 00 00    	je     0xc22630
  c2240c:	84 db                	test   bl,bl
  c2240e:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  c22412:	74 39                	je     0xc2244d
  c22414:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  c22418:	0f af 44 24 20       	imul   eax,DWORD PTR [esp+0x20]
  c2241d:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  c22423:	6a 00                	push   0x0
  c22425:	50                   	push   eax
  c22426:	e8 f5 4a 8c ff       	call   0x4e6f20
  c2242b:	85 c0                	test   eax,eax
  c2242d:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c22431:	0f 84 f9 01 00 00    	je     0xc22630
  c22437:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  c2243b:	8b 47 10             	mov    eax,DWORD PTR [edi+0x10]
  c2243e:	c1 e9 04             	shr    ecx,0x4
  c22441:	33 d2                	xor    edx,edx
  c22443:	f7 f1                	div    ecx
  c22445:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  c22449:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  c2244d:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  c22451:	52                   	push   edx
  c22452:	8d 4c 24 48          	lea    ecx,[esp+0x48]
  c22456:	e8 55 60 94 ff       	call   0x5684b0
  c2245b:	80 7c 24 58 00       	cmp    BYTE PTR [esp+0x58],0x0
  c22460:	0f 84 ba 01 00 00    	je     0xc22620
  c22466:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  c2246b:	0f 84 a3 01 00 00    	je     0xc22614
  c22471:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  c22475:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
  c22479:	83 6c 24 1c 01       	sub    DWORD PTR [esp+0x1c],0x1
  c2247e:	50                   	push   eax
  c2247f:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  c22483:	51                   	push   ecx
  c22484:	52                   	push   edx
  c22485:	c6 44 24 1d 00       	mov    BYTE PTR [esp+0x1d],0x0
  c2248a:	e8 f1 b4 8b ff       	call   0x4dd980
  c2248f:	83 c4 0c             	add    esp,0xc
  c22492:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c22496:	50                   	push   eax
  c22497:	e8 54 55 bb ff       	call   0x7d79f0
  c2249c:	8b 06                	mov    eax,DWORD PTR [esi]
  c2249e:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  c224a1:	6a 00                	push   0x0
  c224a3:	8b ce                	mov    ecx,esi
  c224a5:	ff d2                	call   edx
  c224a7:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  c224ab:	8b e8                	mov    ebp,eax
  c224ad:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  c224b1:	83 c0 03             	add    eax,0x3
  c224b4:	83 e0 fc             	and    eax,0xfffffffc
  c224b7:	51                   	push   ecx
  c224b8:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  c224bc:	03 e8                	add    ebp,eax
  c224be:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  c224c2:	52                   	push   edx
  c224c3:	50                   	push   eax
  c224c4:	e8 b7 b4 8b ff       	call   0x4dd980
  c224c9:	83 c4 0c             	add    esp,0xc
  c224cc:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c224d0:	50                   	push   eax
  c224d1:	e8 1a 55 bb ff       	call   0x7d79f0
  c224d6:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
  c224da:	8d 4c 24 11          	lea    ecx,[esp+0x11]
  c224de:	51                   	push   ecx
  c224df:	52                   	push   edx
  c224e0:	e8 ab b3 8b ff       	call   0x4dd890
  c224e5:	83 c4 08             	add    esp,0x8
  c224e8:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c224ec:	50                   	push   eax
  c224ed:	e8 fe 54 bb ff       	call   0x7d79f0
  c224f2:	80 7c 24 58 00       	cmp    BYTE PTR [esp+0x58],0x0
  c224f7:	0f 84 48 01 00 00    	je     0xc22645
  c224fd:	8d 44 24 11          	lea    eax,[esp+0x11]
  c22501:	50                   	push   eax
  c22502:	8b cf                	mov    ecx,edi
  c22504:	e8 17 f9 ff ff       	call   0xc21e20
  c22509:	84 c0                	test   al,al
  c2250b:	0f 84 e8 00 00 00    	je     0xc225f9
  c22511:	8b 4f 20             	mov    ecx,DWORD PTR [edi+0x20]
  c22514:	2b 4f 1c             	sub    ecx,DWORD PTR [edi+0x1c]
  c22517:	0f b6 44 24 11       	movzx  eax,BYTE PTR [esp+0x11]
  c2251c:	c1 f9 02             	sar    ecx,0x2
  c2251f:	3b c1                	cmp    eax,ecx
  c22521:	0f 83 d2 00 00 00    	jae    0xc225f9
  c22527:	8b 57 1c             	mov    edx,DWORD PTR [edi+0x1c]
  c2252a:	8b 34 82             	mov    esi,DWORD PTR [edx+eax*4]
  c2252d:	85 f6                	test   esi,esi
  c2252f:	0f 84 c0 00 00 00    	je     0xc225f5
  c22535:	83 7c 24 18 00       	cmp    DWORD PTR [esp+0x18],0x0
  c2253a:	0f 84 b0 00 00 00    	je     0xc225f0
  c22540:	8b 4c 24 4c          	mov    ecx,DWORD PTR [esp+0x4c]
  c22544:	83 6c 24 18 01       	sub    DWORD PTR [esp+0x18],0x1
  c22549:	8d 44 24 12          	lea    eax,[esp+0x12]
  c2254d:	50                   	push   eax
  c2254e:	51                   	push   ecx
  c2254f:	e8 3c b3 8b ff       	call   0x4dd890
  c22554:	83 c4 08             	add    esp,0x8
  c22557:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c2255b:	50                   	push   eax
  c2255c:	e8 8f 54 bb ff       	call   0x7d79f0
  c22561:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  c22565:	8d 54 24 13          	lea    edx,[esp+0x13]
  c22569:	52                   	push   edx
  c2256a:	50                   	push   eax
  c2256b:	e8 20 b3 8b ff       	call   0x4dd890
  c22570:	83 c4 08             	add    esp,0x8
  c22573:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c22577:	50                   	push   eax
  c22578:	e8 73 54 bb ff       	call   0x7d79f0
  c2257d:	8b 54 24 4c          	mov    edx,DWORD PTR [esp+0x4c]
  c22581:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  c22585:	51                   	push   ecx
  c22586:	52                   	push   edx
  c22587:	e8 04 b3 8b ff       	call   0x4dd890
  c2258c:	83 c4 08             	add    esp,0x8
  c2258f:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c22593:	50                   	push   eax
  c22594:	e8 57 54 bb ff       	call   0x7d79f0
  c22599:	80 7c 24 58 00       	cmp    BYTE PTR [esp+0x58],0x0
  c2259e:	0f 84 a1 00 00 00    	je     0xc22645
  c225a4:	0f b6 44 24 12       	movzx  eax,BYTE PTR [esp+0x12]
  c225a9:	0f b6 4c 24 13       	movzx  ecx,BYTE PTR [esp+0x13]
  c225ae:	c1 e0 08             	shl    eax,0x8
  c225b1:	03 c1                	add    eax,ecx
  c225b3:	3b 47 18             	cmp    eax,DWORD PTR [edi+0x18]
  c225b6:	73 3d                	jae    0xc225f5
  c225b8:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  c225bc:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  c225c0:	52                   	push   edx
  c225c1:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  c225c5:	51                   	push   ecx
  c225c6:	52                   	push   edx
  c225c7:	50                   	push   eax
  c225c8:	8b 44 24 4c          	mov    eax,DWORD PTR [esp+0x4c]
  c225cc:	50                   	push   eax
  c225cd:	56                   	push   esi
  c225ce:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  c225d2:	51                   	push   ecx
  c225d3:	8b cf                	mov    ecx,edi
  c225d5:	e8 06 e0 ff ff       	call   0xc205e0
  c225da:	84 c0                	test   al,al
  c225dc:	74 17                	je     0xc225f5
  c225de:	80 7c 24 58 00       	cmp    BYTE PTR [esp+0x58],0x0
  c225e3:	74 60                	je     0xc22645
  c225e5:	83 7c 24 18 00       	cmp    DWORD PTR [esp+0x18],0x0
  c225ea:	0f 85 50 ff ff ff    	jne    0xc22540
  c225f0:	83 6c 24 18 01       	sub    DWORD PTR [esp+0x18],0x1
  c225f5:	8b 74 24 60          	mov    esi,DWORD PTR [esp+0x60]
  c225f9:	8b 16                	mov    edx,DWORD PTR [esi]
  c225fb:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  c225fe:	6a 00                	push   0x0
  c22600:	55                   	push   ebp
  c22601:	8b ce                	mov    ecx,esi
  c22603:	ff d0                	call   eax
  c22605:	83 7c 24 1c 00       	cmp    DWORD PTR [esp+0x1c],0x0
  c2260a:	0f 85 61 fe ff ff    	jne    0xc22471
  c22610:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  c22614:	83 6c 24 1c 01       	sub    DWORD PTR [esp+0x1c],0x1
  c22619:	80 7c 24 58 00       	cmp    BYTE PTR [esp+0x58],0x0
  c2261e:	75 30                	jne    0xc22650
  c22620:	85 ed                	test   ebp,ebp
  c22622:	74 0c                	je     0xc22630
  c22624:	55                   	push   ebp
  c22625:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  c2262b:	e8 40 38 8c ff       	call   0x4e5e70
  c22630:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c22634:	e8 57 53 bb ff       	call   0x7d7990
  c22639:	5b                   	pop    ebx
  c2263a:	5f                   	pop    edi
  c2263b:	5e                   	pop    esi
  c2263c:	32 c0                	xor    al,al
  c2263e:	5d                   	pop    ebp
  c2263f:	83 c4 4c             	add    esp,0x4c
  c22642:	c2 04 00             	ret    0x4
  c22645:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c22649:	85 c0                	test   eax,eax
  c2264b:	74 e3                	je     0xc22630
  c2264d:	50                   	push   eax
  c2264e:	eb d5                	jmp    0xc22625
  c22650:	85 ed                	test   ebp,ebp
  c22652:	74 0c                	je     0xc22660
  c22654:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  c2265a:	55                   	push   ebp
  c2265b:	e8 10 38 8c ff       	call   0x4e5e70
  c22660:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c22664:	e8 27 53 bb ff       	call   0x7d7990
  c22669:	5b                   	pop    ebx
  c2266a:	5f                   	pop    edi
  c2266b:	5e                   	pop    esi
  c2266c:	b0 01                	mov    al,0x1
  c2266e:	5d                   	pop    ebp
  c2266f:	83 c4 4c             	add    esp,0x4c
  c22672:	c2 04 00             	ret    0x4
