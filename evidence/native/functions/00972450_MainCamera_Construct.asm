# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00972450, 0x00972b64).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


Original PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00972450 <.text+0x571450>:
  972450:	55                   	push   ebp
  972451:	8b ec                	mov    ebp,esp
  972453:	83 e4 f0             	and    esp,0xfffffff0
  972456:	81 ec 04 01 00 00    	sub    esp,0x104
  97245c:	53                   	push   ebx
  97245d:	56                   	push   esi
  97245e:	57                   	push   edi
  97245f:	8b f1                	mov    esi,ecx
  972461:	e8 5a 11 ff ff       	call   0x9635c0
  972466:	c7 46 38 cc 3c fb 00 	mov    DWORD PTR [esi+0x38],0xfb3ccc
  97246d:	33 db                	xor    ebx,ebx
  97246f:	8d 4e 40             	lea    ecx,[esi+0x40]
  972472:	c7 06 00 6d 04 01    	mov    DWORD PTR [esi],0x1046d00
  972478:	c7 46 04 fc 6c 04 01 	mov    DWORD PTR [esi+0x4],0x1046cfc
  97247f:	c7 46 38 f4 6c 04 01 	mov    DWORD PTR [esi+0x38],0x1046cf4
  972486:	89 5e 3c             	mov    DWORD PTR [esi+0x3c],ebx
  972489:	e8 62 07 ff ff       	call   0x962bf0
  97248e:	8d 8e 70 05 00 00    	lea    ecx,[esi+0x570]
  972494:	e8 67 02 ff ff       	call   0x962700
  972499:	8d 8e f0 05 00 00    	lea    ecx,[esi+0x5f0]
  97249f:	e8 fc 05 ff ff       	call   0x962aa0
  9724a4:	8d 8e b0 06 00 00    	lea    ecx,[esi+0x6b0]
  9724aa:	e8 d1 03 ff ff       	call   0x962880
  9724af:	89 9e 1c 08 00 00    	mov    DWORD PTR [esi+0x81c],ebx
  9724b5:	89 9e 34 08 00 00    	mov    DWORD PTR [esi+0x834],ebx
  9724bb:	89 9e 60 08 00 00    	mov    DWORD PTR [esi+0x860],ebx
  9724c1:	89 9e 64 08 00 00    	mov    DWORD PTR [esi+0x864],ebx
  9724c7:	53                   	push   ebx
  9724c8:	88 9e b6 08 00 00    	mov    BYTE PTR [esi+0x8b6],bl
  9724ce:	88 9e b8 08 00 00    	mov    BYTE PTR [esi+0x8b8],bl
  9724d4:	88 9e ba 08 00 00    	mov    BYTE PTR [esi+0x8ba],bl
  9724da:	88 9e bb 08 00 00    	mov    BYTE PTR [esi+0x8bb],bl
  9724e0:	88 9e bc 08 00 00    	mov    BYTE PTR [esi+0x8bc],bl
  9724e6:	88 9e bd 08 00 00    	mov    BYTE PTR [esi+0x8bd],bl
  9724ec:	c6 86 cc 08 00 00 01 	mov    BYTE PTR [esi+0x8cc],0x1
  9724f3:	89 9e b4 09 00 00    	mov    DWORD PTR [esi+0x9b4],ebx
  9724f9:	8d 86 c0 09 00 00    	lea    eax,[esi+0x9c0]
  9724ff:	c7 86 b8 09 00 00 14 	mov    DWORD PTR [esi+0x9b8],0x1024014
  972506:	40 02 01
  972509:	53                   	push   ebx
  97250a:	53                   	push   ebx
  97250b:	89 18                	mov    DWORD PTR [eax],ebx
  97250d:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  972510:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  972513:	89 58 0c             	mov    DWORD PTR [eax+0xc],ebx
  972516:	8b 0d 4c ef 17 01    	mov    ecx,DWORD PTR ds:0x117ef4c
  97251c:	53                   	push   ebx
  97251d:	51                   	push   ecx
  97251e:	50                   	push   eax
  97251f:	e8 1c c9 b3 ff       	call   0x4aee40
  972524:	f3 0f 10 05 a8 e3 fe 	movss  xmm0,DWORD PTR ds:0xfee3a8
  97252b:	00
  97252c:	f3 0f 10 0d 10 f0 fb 	movss  xmm1,DWORD PTR ds:0xfbf010
  972533:	00
  972534:	f3 0f 10 15 00 3c ff 	movss  xmm2,DWORD PTR ds:0xff3c00
  97253b:	00
  97253c:	f3 0f 10 1d ac 2b fa 	movss  xmm3,DWORD PTR ds:0xfa2bac
  972543:	00
  972544:	f3 0f 11 86 d0 09 00 	movss  DWORD PTR [esi+0x9d0],xmm0
  97254b:	00
  97254c:	f3 0f 11 86 d8 09 00 	movss  DWORD PTR [esi+0x9d8],xmm0
  972553:	00
  972554:	f3 0f 11 86 dc 08 00 	movss  DWORD PTR [esi+0x8dc],xmm0
  97255b:	00
  97255c:	f3 0f 10 05 60 fd 03 	movss  xmm0,DWORD PTR ds:0x103fd60
  972563:	01
  972564:	f3 0f 11 8e d4 09 00 	movss  DWORD PTR [esi+0x9d4],xmm1
  97256b:	00
  97256c:	f3 0f 10 0d f4 6b 0f 	movss  xmm1,DWORD PTR ds:0x10f6bf4
  972573:	01
  972574:	f3 0f 11 96 e0 09 00 	movss  DWORD PTR [esi+0x9e0],xmm2
  97257b:	00
  97257c:	f3 0f 10 15 b4 b5 f9 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  972583:	00
  972584:	f3 0f 11 9e d0 08 00 	movss  DWORD PTR [esi+0x8d0],xmm3
  97258b:	00
  97258c:	f3 0f 10 1d ec e6 06 	movss  xmm3,DWORD PTR ds:0x106e6ec
  972593:	01
  972594:	f3 0f 11 86 f4 08 00 	movss  DWORD PTR [esi+0x8f4],xmm0
  97259b:	00
  97259c:	f3 0f 10 05 1c e5 f9 	movss  xmm0,DWORD PTR ds:0xf9e51c
  9725a3:	00
  9725a4:	83 c4 18             	add    esp,0x18
  9725a7:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  9725ab:	f3 0f 11 8e dc 09 00 	movss  DWORD PTR [esi+0x9dc],xmm1
  9725b2:	00
  9725b3:	f3 0f 11 96 e4 09 00 	movss  DWORD PTR [esi+0x9e4],xmm2
  9725ba:	00
  9725bb:	f3 0f 11 9e d4 08 00 	movss  DWORD PTR [esi+0x8d4],xmm3
  9725c2:	00
  9725c3:	f3 0f 11 9e d8 08 00 	movss  DWORD PTR [esi+0x8d8],xmm3
  9725ca:	00
  9725cb:	f3 0f 11 8e e0 08 00 	movss  DWORD PTR [esi+0x8e0],xmm1
  9725d2:	00
  9725d3:	f3 0f 11 96 f8 08 00 	movss  DWORD PTR [esi+0x8f8],xmm2
  9725da:	00
  9725db:	c6 86 5c 09 00 00 01 	mov    BYTE PTR [esi+0x95c],0x1
  9725e2:	f3 0f 11 86 60 09 00 	movss  DWORD PTR [esi+0x960],xmm0
  9725e9:	00
  9725ea:	88 9e b5 08 00 00    	mov    BYTE PTR [esi+0x8b5],bl
  9725f0:	e8 8b fa fe ff       	call   0x962080
  9725f5:	33 ff                	xor    edi,edi
  9725f7:	d9 05 88 fd 03 01    	fld    DWORD PTR ds:0x103fd88
  9725fd:	51                   	push   ecx
  9725fe:	d9 1c 24             	fstp   DWORD PTR [esp]
  972601:	53                   	push   ebx
  972602:	57                   	push   edi
  972603:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  972607:	e8 c4 fa fe ff       	call   0x9620d0
  97260c:	d9 05 88 fd 03 01    	fld    DWORD PTR ds:0x103fd88
  972612:	51                   	push   ecx
  972613:	d9 1c 24             	fstp   DWORD PTR [esp]
  972616:	6a 01                	push   0x1
  972618:	57                   	push   edi
  972619:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  97261d:	e8 ae fa fe ff       	call   0x9620d0
  972622:	d9 05 88 fd 03 01    	fld    DWORD PTR ds:0x103fd88
  972628:	51                   	push   ecx
  972629:	d9 1c 24             	fstp   DWORD PTR [esp]
  97262c:	6a 02                	push   0x2
  97262e:	57                   	push   edi
  97262f:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  972633:	e8 98 fa fe ff       	call   0x9620d0
  972638:	d9 05 88 fd 03 01    	fld    DWORD PTR ds:0x103fd88
  97263e:	51                   	push   ecx
  97263f:	d9 1c 24             	fstp   DWORD PTR [esp]
  972642:	6a 03                	push   0x3
  972644:	57                   	push   edi
  972645:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  972649:	e8 82 fa fe ff       	call   0x9620d0
  97264e:	d9 05 bc 5e 04 01    	fld    DWORD PTR ds:0x1045ebc
  972654:	51                   	push   ecx
  972655:	d9 1c 24             	fstp   DWORD PTR [esp]
  972658:	6a 04                	push   0x4
  97265a:	57                   	push   edi
  97265b:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  97265f:	e8 6c fa fe ff       	call   0x9620d0
  972664:	d9 05 bc 5e 04 01    	fld    DWORD PTR ds:0x1045ebc
  97266a:	51                   	push   ecx
  97266b:	d9 1c 24             	fstp   DWORD PTR [esp]
  97266e:	6a 05                	push   0x5
  972670:	57                   	push   edi
  972671:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  972675:	e8 56 fa fe ff       	call   0x9620d0
  97267a:	d9 05 f0 c6 fc 00    	fld    DWORD PTR ds:0xfcc6f0
  972680:	51                   	push   ecx
  972681:	d9 1c 24             	fstp   DWORD PTR [esp]
  972684:	53                   	push   ebx
  972685:	57                   	push   edi
  972686:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  97268a:	e8 61 fa fe ff       	call   0x9620f0
  97268f:	d9 05 f0 c6 fc 00    	fld    DWORD PTR ds:0xfcc6f0
  972695:	51                   	push   ecx
  972696:	d9 1c 24             	fstp   DWORD PTR [esp]
  972699:	6a 01                	push   0x1
  97269b:	57                   	push   edi
  97269c:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  9726a0:	e8 4b fa fe ff       	call   0x9620f0
  9726a5:	d9 05 f0 c6 fc 00    	fld    DWORD PTR ds:0xfcc6f0
  9726ab:	51                   	push   ecx
  9726ac:	d9 1c 24             	fstp   DWORD PTR [esp]
  9726af:	6a 02                	push   0x2
  9726b1:	57                   	push   edi
  9726b2:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  9726b6:	e8 35 fa fe ff       	call   0x9620f0
  9726bb:	d9 05 f0 c6 fc 00    	fld    DWORD PTR ds:0xfcc6f0
  9726c1:	51                   	push   ecx
  9726c2:	d9 1c 24             	fstp   DWORD PTR [esp]
  9726c5:	6a 03                	push   0x3
  9726c7:	57                   	push   edi
  9726c8:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  9726cc:	e8 1f fa fe ff       	call   0x9620f0
  9726d1:	d9 05 b8 5e 04 01    	fld    DWORD PTR ds:0x1045eb8
  9726d7:	51                   	push   ecx
  9726d8:	d9 1c 24             	fstp   DWORD PTR [esp]
  9726db:	6a 04                	push   0x4
  9726dd:	57                   	push   edi
  9726de:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  9726e2:	e8 09 fa fe ff       	call   0x9620f0
  9726e7:	d9 05 b8 5e 04 01    	fld    DWORD PTR ds:0x1045eb8
  9726ed:	51                   	push   ecx
  9726ee:	d9 1c 24             	fstp   DWORD PTR [esp]
  9726f1:	6a 05                	push   0x5
  9726f3:	57                   	push   edi
  9726f4:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  9726f8:	e8 f3 f9 fe ff       	call   0x9620f0
  9726fd:	83 c7 01             	add    edi,0x1
  972700:	83 ff 04             	cmp    edi,0x4
  972703:	0f 82 ee fe ff ff    	jb     0x9725f7
  972709:	8d 54 24 30          	lea    edx,[esp+0x30]
  97270d:	52                   	push   edx
  97270e:	8d 4e 40             	lea    ecx,[esi+0x40]
  972711:	e8 ea fc fe ff       	call   0x962400
  972716:	f3 0f 10 05 58 e4 fe 	movss  xmm0,DWORD PTR ds:0xfee458
  97271d:	00
  97271e:	f3 0f 10 0d 34 3b ff 	movss  xmm1,DWORD PTR ds:0xff3b34
  972725:	00
  972726:	f3 0f 11 8e fc 08 00 	movss  DWORD PTR [esi+0x8fc],xmm1
  97272d:	00
  97272e:	0f 57 d2             	xorps  xmm2,xmm2
  972731:	f3 0f 10 25 28 4c fe 	movss  xmm4,DWORD PTR ds:0xfe4c28
  972738:	00
  972739:	f3 0f 10 1d 34 c9 fb 	movss  xmm3,DWORD PTR ds:0xfbc934
  972740:	00
  972741:	f3 0f 10 2d f8 69 04 	movss  xmm5,DWORD PTR ds:0x10469f8
  972748:	01
  972749:	f3 0f 10 c9          	movss  xmm1,xmm1
  97274d:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  972751:	f3 0f 11 86 1c 09 00 	movss  DWORD PTR [esi+0x91c],xmm0
  972758:	00
  972759:	f3 0f 10 05 b8 2b fa 	movss  xmm0,DWORD PTR ds:0xfa2bb8
  972760:	00
  972761:	f3 0f 11 86 4c 09 00 	movss  DWORD PTR [esi+0x94c],xmm0
  972768:	00
  972769:	f3 0f 11 a6 0c 09 00 	movss  DWORD PTR [esi+0x90c],xmm4
  972770:	00
  972771:	f3 0f 11 9e 2c 09 00 	movss  DWORD PTR [esi+0x92c],xmm3
  972778:	00
  972779:	f3 0f 11 ae 3c 09 00 	movss  DWORD PTR [esi+0x93c],xmm5
  972780:	00
  972781:	f3 0f 11 96 00 09 00 	movss  DWORD PTR [esi+0x900],xmm2
  972788:	00
  972789:	f3 0f 11 96 10 09 00 	movss  DWORD PTR [esi+0x910],xmm2
  972790:	00
  972791:	f3 0f 10 05 b0 6c 04 	movss  xmm0,DWORD PTR ds:0x1046cb0
  972798:	01
  972799:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97279d:	0f 59 c8             	mulps  xmm1,xmm0
  9727a0:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  9727a5:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  9727ab:	f3 0f 11 8e 20 09 00 	movss  DWORD PTR [esi+0x920],xmm1
  9727b2:	00
  9727b3:	f3 0f 10 0d f0 6c 04 	movss  xmm1,DWORD PTR ds:0x1046cf0
  9727ba:	01
  9727bb:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9727bf:	0f 59 c8             	mulps  xmm1,xmm0
  9727c2:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  9727c7:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  9727cd:	f3 0f 11 8e 30 09 00 	movss  DWORD PTR [esi+0x930],xmm1
  9727d4:	00
  9727d5:	f3 0f 10 0d ec 6c 04 	movss  xmm1,DWORD PTR ds:0x1046cec
  9727dc:	01
  9727dd:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9727e1:	0f 59 c8             	mulps  xmm1,xmm0
  9727e4:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  9727e9:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  9727ef:	f3 0f 11 8e 40 09 00 	movss  DWORD PTR [esi+0x940],xmm1
  9727f6:	00
  9727f7:	f3 0f 10 0d e8 6c 04 	movss  xmm1,DWORD PTR ds:0x1046ce8
  9727fe:	01
  9727ff:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  972803:	0f 59 c8             	mulps  xmm1,xmm0
  972806:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  97280b:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  972811:	f3 0f 11 8e 50 09 00 	movss  DWORD PTR [esi+0x950],xmm1
  972818:	00
  972819:	f3 0f 10 0d c4 d2 fc 	movss  xmm1,DWORD PTR ds:0xfcd2c4
  972820:	00
  972821:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  972825:	0f 59 c8             	mulps  xmm1,xmm0
  972828:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  97282d:	f3 0f 10 74 24 10    	movss  xmm6,DWORD PTR [esp+0x10]
  972833:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  972838:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  97283e:	f3 0f 11 8e 14 09 00 	movss  DWORD PTR [esi+0x914],xmm1
  972845:	00
  972846:	f3 0f 10 0d e4 6c 04 	movss  xmm1,DWORD PTR ds:0x1046ce4
  97284d:	01
  97284e:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  972852:	0f 59 c8             	mulps  xmm1,xmm0
  972855:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  97285a:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  972860:	f3 0f 11 8e 24 09 00 	movss  DWORD PTR [esi+0x924],xmm1
  972867:	00
  972868:	f3 0f 10 0d 34 b6 f9 	movss  xmm1,DWORD PTR ds:0xf9b634
  97286f:	00
  972870:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  972874:	0f 59 c8             	mulps  xmm1,xmm0
  972877:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  97287c:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  972882:	f3 0f 11 8e 34 09 00 	movss  DWORD PTR [esi+0x934],xmm1
  972889:	00
  97288a:	f3 0f 10 0d f4 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f4
  972891:	00
  972892:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  972896:	0f 59 c8             	mulps  xmm1,xmm0
  972899:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  97289e:	f3 0f 11 b6 04 09 00 	movss  DWORD PTR [esi+0x904],xmm6
  9728a5:	00
  9728a6:	f3 0f 10 74 24 10    	movss  xmm6,DWORD PTR [esp+0x10]
  9728ac:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  9728b1:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  9728b7:	f3 0f 11 8e 54 09 00 	movss  DWORD PTR [esi+0x954],xmm1
  9728be:	00
  9728bf:	f3 0f 10 0d fc 69 04 	movss  xmm1,DWORD PTR ds:0x10469fc
  9728c6:	01
  9728c7:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9728cb:	0f 59 c8             	mulps  xmm1,xmm0
  9728ce:	0f 28 c1             	movaps xmm0,xmm1
  9728d1:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  9728d6:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  9728dc:	f3 0f 11 b6 44 09 00 	movss  DWORD PTR [esi+0x944],xmm6
  9728e3:	00
  9728e4:	f3 0f 11 8e 08 09 00 	movss  DWORD PTR [esi+0x908],xmm1
  9728eb:	00
  9728ec:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  9728f1:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  9728f7:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  9728fc:	f3 0f 11 8e 18 09 00 	movss  DWORD PTR [esi+0x918],xmm1
  972903:	00
  972904:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  97290a:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  97290f:	f3 0f 11 8e 28 09 00 	movss  DWORD PTR [esi+0x928],xmm1
  972916:	00
  972917:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  97291d:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  972922:	f3 0f 11 8e 38 09 00 	movss  DWORD PTR [esi+0x938],xmm1
  972929:	00
  97292a:	f3 0f 10 4c 24 10    	movss  xmm1,DWORD PTR [esp+0x10]
  972930:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  972935:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  97293b:	f3 0f 11 86 58 09 00 	movss  DWORD PTR [esi+0x958],xmm0
  972942:	00
  972943:	f3 0f 10 05 e0 6c 04 	movss  xmm0,DWORD PTR ds:0x1046ce0
  97294a:	01
  97294b:	f3 0f 11 8e 48 09 00 	movss  DWORD PTR [esi+0x948],xmm1
  972952:	00
  972953:	f3 0f 11 a6 e4 08 00 	movss  DWORD PTR [esi+0x8e4],xmm4
  97295a:	00
  97295b:	f3 0f 11 9e ec 08 00 	movss  DWORD PTR [esi+0x8ec],xmm3
  972962:	00
  972963:	f3 0f 11 ae e8 08 00 	movss  DWORD PTR [esi+0x8e8],xmm5
  97296a:	00
  97296b:	f3 0f 11 86 f0 08 00 	movss  DWORD PTR [esi+0x8f0],xmm0
  972972:	00
  972973:	88 9e 18 08 00 00    	mov    BYTE PTR [esi+0x818],bl
  972979:	88 9e 19 08 00 00    	mov    BYTE PTR [esi+0x819],bl
  97297f:	8b 8e 1c 08 00 00    	mov    ecx,DWORD PTR [esi+0x81c]
  972985:	3b cb                	cmp    ecx,ebx
  972987:	74 2f                	je     0x9729b8
  972989:	8d 41 04             	lea    eax,[ecx+0x4]
  97298c:	89 9e 1c 08 00 00    	mov    DWORD PTR [esi+0x81c],ebx
  972992:	8b d0                	mov    edx,eax
  972994:	83 cf ff             	or     edi,0xffffffff
  972997:	f0 0f c1 3a          	lock xadd DWORD PTR [edx],edi
  97299b:	4f                   	dec    edi
  97299c:	75 1a                	jne    0x9729b8
  97299e:	ba 01 00 00 00       	mov    edx,0x1
  9729a3:	87 10                	xchg   DWORD PTR [eax],edx
  9729a5:	8b 01                	mov    eax,DWORD PTR [ecx]
  9729a7:	8b 10                	mov    edx,DWORD PTR [eax]
  9729a9:	6a 01                	push   0x1
  9729ab:	ff d2                	call   edx
  9729ad:	0f 57 d2             	xorps  xmm2,xmm2
  9729b0:	f3 0f 10 1d 34 c9 fb 	movss  xmm3,DWORD PTR ds:0xfbc934
  9729b7:	00
  9729b8:	0f 57 c0             	xorps  xmm0,xmm0
  9729bb:	0f 29 86 20 08 00 00 	movaps XMMWORD PTR [esi+0x820],xmm0
  9729c2:	88 9e 30 08 00 00    	mov    BYTE PTR [esi+0x830],bl
  9729c8:	8b 8e 34 08 00 00    	mov    ecx,DWORD PTR [esi+0x834]
  9729ce:	3b cb                	cmp    ecx,ebx
  9729d0:	74 18                	je     0x9729ea
  9729d2:	89 9e 34 08 00 00    	mov    DWORD PTR [esi+0x834],ebx
  9729d8:	8b 01                	mov    eax,DWORD PTR [ecx]
  9729da:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9729dd:	ff d2                	call   edx
  9729df:	0f 57 d2             	xorps  xmm2,xmm2
  9729e2:	f3 0f 10 1d 34 c9 fb 	movss  xmm3,DWORD PTR ds:0xfbc934
  9729e9:	00
  9729ea:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  9729f1:	00
  9729f2:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  9729f8:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  9729fe:	f3 0f 11 54 24 10    	movss  DWORD PTR [esp+0x10],xmm2
  972a04:	f3 0f 10 25 38 c9 fb 	movss  xmm4,DWORD PTR ds:0xfbc938
  972a0b:	00
  972a0c:	f3 0f 11 4c 24 1c    	movss  DWORD PTR [esp+0x1c],xmm1
  972a12:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  972a17:	0f 29 86 40 08 00 00 	movaps XMMWORD PTR [esi+0x840],xmm0
  972a1e:	f3 0f 11 54 24 1c    	movss  DWORD PTR [esp+0x1c],xmm2
  972a24:	f3 0f 11 54 24 18    	movss  DWORD PTR [esp+0x18],xmm2
  972a2a:	f3 0f 11 54 24 14    	movss  DWORD PTR [esp+0x14],xmm2
  972a30:	f3 0f 11 54 24 10    	movss  DWORD PTR [esp+0x10],xmm2
  972a36:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  972a3b:	f3 0f 10 15 a8 e3 fe 	movss  xmm2,DWORD PTR ds:0xfee3a8
  972a42:	00
  972a43:	0f 29 86 50 08 00 00 	movaps XMMWORD PTR [esi+0x850],xmm0
  972a4a:	f3 0f 10 05 c8 2b 06 	movss  xmm0,DWORD PTR ds:0x1062bc8
  972a51:	01
  972a52:	f3 0f 11 96 68 09 00 	movss  DWORD PTR [esi+0x968],xmm2
  972a59:	00
  972a5a:	f3 0f 11 96 70 09 00 	movss  DWORD PTR [esi+0x970],xmm2
  972a61:	00
  972a62:	f3 0f 10 15 88 fd 03 	movss  xmm2,DWORD PTR ds:0x103fd88
  972a69:	01
  972a6a:	f3 0f 11 96 74 09 00 	movss  DWORD PTR [esi+0x974],xmm2
  972a71:	00
  972a72:	f3 0f 11 96 78 09 00 	movss  DWORD PTR [esi+0x978],xmm2
  972a79:	00
  972a7a:	f3 0f 10 15 ec e6 06 	movss  xmm2,DWORD PTR ds:0x106e6ec
  972a81:	01
  972a82:	f3 0f 11 96 80 09 00 	movss  DWORD PTR [esi+0x980],xmm2
  972a89:	00
  972a8a:	f3 0f 10 15 f4 98 f9 	movss  xmm2,DWORD PTR ds:0xf998f4
  972a91:	00
  972a92:	f3 0f 11 96 84 09 00 	movss  DWORD PTR [esi+0x984],xmm2
  972a99:	00
  972a9a:	f3 0f 11 96 8c 09 00 	movss  DWORD PTR [esi+0x98c],xmm2
  972aa1:	00
  972aa2:	f3 0f 10 15 68 fd 03 	movss  xmm2,DWORD PTR ds:0x103fd68
  972aa9:	01
  972aaa:	f3 0f 11 96 90 09 00 	movss  DWORD PTR [esi+0x990],xmm2
  972ab1:	00
  972ab2:	f3 0f 10 15 f4 c6 fc 	movss  xmm2,DWORD PTR ds:0xfcc6f4
  972ab9:	00
  972aba:	f3 0f 11 96 94 09 00 	movss  DWORD PTR [esi+0x994],xmm2
  972ac1:	00
  972ac2:	f3 0f 10 15 90 72 fb 	movss  xmm2,DWORD PTR ds:0xfb7290
  972ac9:	00
  972aca:	f3 0f 11 96 98 09 00 	movss  DWORD PTR [esi+0x998],xmm2
  972ad1:	00
  972ad2:	f3 0f 10 15 00 e5 f9 	movss  xmm2,DWORD PTR ds:0xf9e500
  972ad9:	00
  972ada:	f3 0f 11 96 9c 09 00 	movss  DWORD PTR [esi+0x99c],xmm2
  972ae1:	00
  972ae2:	f3 0f 11 96 a0 09 00 	movss  DWORD PTR [esi+0x9a0],xmm2
  972ae9:	00
  972aea:	f3 0f 10 15 dc 6c 04 	movss  xmm2,DWORD PTR ds:0x1046cdc
  972af1:	01
  972af2:	8b ce                	mov    ecx,esi
  972af4:	f3 0f 11 86 64 09 00 	movss  DWORD PTR [esi+0x964],xmm0
  972afb:	00
  972afc:	f3 0f 11 86 6c 09 00 	movss  DWORD PTR [esi+0x96c],xmm0
  972b03:	00
  972b04:	f3 0f 11 9e 7c 09 00 	movss  DWORD PTR [esi+0x97c],xmm3
  972b0b:	00
  972b0c:	f3 0f 11 a6 88 09 00 	movss  DWORD PTR [esi+0x988],xmm4
  972b13:	00
  972b14:	f3 0f 11 9e a4 09 00 	movss  DWORD PTR [esi+0x9a4],xmm3
  972b1b:	00
  972b1c:	f3 0f 11 96 a8 09 00 	movss  DWORD PTR [esi+0x9a8],xmm2
  972b23:	00
  972b24:	f3 0f 11 8e ac 09 00 	movss  DWORD PTR [esi+0x9ac],xmm1
  972b2b:	00
  972b2c:	f3 0f 11 86 b0 09 00 	movss  DWORD PTR [esi+0x9b0],xmm0
  972b33:	00
  972b34:	e8 e7 d9 ff ff       	call   0x970520
  972b39:	e8 42 d3 b3 ff       	call   0x4afe80
  972b3e:	3b c3                	cmp    eax,ebx
  972b40:	74 19                	je     0x972b5b
  972b42:	8b 10                	mov    edx,DWORD PTR [eax]
  972b44:	53                   	push   ebx
  972b45:	8d 8e b8 09 00 00    	lea    ecx,[esi+0x9b8]
  972b4b:	51                   	push   ecx
  972b4c:	56                   	push   esi
  972b4d:	68 50 06 97 00       	push   0x970650
  972b52:	8b c8                	mov    ecx,eax
  972b54:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  972b57:	6a 01                	push   0x1
  972b59:	ff d0                	call   eax
  972b5b:	5f                   	pop    edi
  972b5c:	8b c6                	mov    eax,esi
  972b5e:	5e                   	pop    esi
  972b5f:	5b                   	pop    ebx
  972b60:	8b e5                	mov    esp,ebp
  972b62:	5d                   	pop    ebp
  972b63:	c3                   	ret
