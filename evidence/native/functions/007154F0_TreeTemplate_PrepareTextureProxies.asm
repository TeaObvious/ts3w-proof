# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007154f0 (TreeTemplate_PrepareTextureProxies)
Complete body envelope: 0x007154f0..0x00715aaf (exclusive end)
Body ranges: [[007154f0, 00715aae]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007154f0 <.text+0x3144f0>:
  7154f0:	55                   	push   ebp
  7154f1:	8b ec                	mov    ebp,esp
  7154f3:	83 e4 f0             	and    esp,0xfffffff0
  7154f6:	83 ec 54             	sub    esp,0x54
  7154f9:	53                   	push   ebx
  7154fa:	56                   	push   esi
  7154fb:	8b f1                	mov    esi,ecx
  7154fd:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  715500:	57                   	push   edi
  715501:	e8 fa 1d eb ff       	call   0x5c7300
  715506:	85 c0                	test   eax,eax
  715508:	74 08                	je     0x715512
  71550a:	50                   	push   eax
  71550b:	8b ce                	mov    ecx,esi
  71550d:	e8 0e f7 ff ff       	call   0x714c20
  715512:	8b 3d c4 db 1e 01    	mov    edi,DWORD PTR ds:0x11edbc4
  715518:	85 ff                	test   edi,edi
  71551a:	74 69                	je     0x715585
  71551c:	8b cf                	mov    ecx,edi
  71551e:	e8 0d a4 54 00       	call   0xc5f930
  715523:	83 c0 ff             	add    eax,0xffffffff
  715526:	83 f8 01             	cmp    eax,0x1
  715529:	77 5a                	ja     0x715585
  71552b:	0f 28 4f 10          	movaps xmm1,XMMWORD PTR [edi+0x10]
  71552f:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  715536:	00 
  715537:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  71553b:	0f 59 c1             	mulps  xmm0,xmm1
  71553e:	0f 5f c1             	maxps  xmm0,xmm1
  715541:	f3 0f 10 0d f4 cc ff 	movss  xmm1,DWORD PTR ds:0xffccf4
  715548:	00 
  715549:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  71554d:	0f c2 c1 02          	cmpleps xmm0,xmm1
  715551:	0f 50 c0             	movmskps eax,xmm0
  715554:	83 f8 0f             	cmp    eax,0xf
  715557:	0f 95 c0             	setne  al
  71555a:	84 c0                	test   al,al
  71555c:	88 86 70 01 00 00    	mov    BYTE PTR [esi+0x170],al
  715562:	74 21                	je     0x715585
  715564:	0f 28 47 10          	movaps xmm0,XMMWORD PTR [edi+0x10]
  715568:	0f 29 86 30 01 00 00 	movaps XMMWORD PTR [esi+0x130],xmm0
  71556f:	0f 28 47 20          	movaps xmm0,XMMWORD PTR [edi+0x20]
  715573:	0f 29 86 40 01 00 00 	movaps XMMWORD PTR [esi+0x140],xmm0
  71557a:	0f 28 47 30          	movaps xmm0,XMMWORD PTR [edi+0x30]
  71557e:	0f 29 86 50 01 00 00 	movaps XMMWORD PTR [esi+0x150],xmm0
  715585:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  715589:	e8 22 2f 0a 00       	call   0x7b84b0
  71558e:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  715592:	51                   	push   ecx
  715593:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  715596:	e8 45 46 0a 00       	call   0x7b9be0
  71559b:	e8 e0 a8 d9 ff       	call   0x4afe80
  7155a0:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  7155a4:	33 ff                	xor    edi,edi
  7155a6:	57                   	push   edi
  7155a7:	8b d8                	mov    ebx,eax
  7155a9:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  7155ad:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  7155b1:	89 7c 24 2c          	mov    DWORD PTR [esp+0x2c],edi
  7155b5:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  7155b9:	8b 02                	mov    eax,DWORD PTR [edx]
  7155bb:	57                   	push   edi
  7155bc:	50                   	push   eax
  7155bd:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  7155c1:	51                   	push   ecx
  7155c2:	8b ce                	mov    ecx,esi
  7155c4:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  7155c8:	e8 83 fb ff ff       	call   0x715150
  7155cd:	8b 10                	mov    edx,DWORD PTR [eax]
  7155cf:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  7155d3:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  7155d6:	57                   	push   edi
  7155d7:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  7155db:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7155de:	57                   	push   edi
  7155df:	57                   	push   edi
  7155e0:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  7155e4:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  7155e8:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  7155eb:	51                   	push   ecx
  7155ec:	8d 4e 68             	lea    ecx,[esi+0x68]
  7155ef:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  7155f3:	e8 f8 d8 00 00       	call   0x722ef0
  7155f8:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  7155fc:	8b 02                	mov    eax,DWORD PTR [edx]
  7155fe:	57                   	push   edi
  7155ff:	57                   	push   edi
  715600:	50                   	push   eax
  715601:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  715605:	51                   	push   ecx
  715606:	8b ce                	mov    ecx,esi
  715608:	e8 43 fb ff ff       	call   0x715150
  71560d:	8b 10                	mov    edx,DWORD PTR [eax]
  71560f:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  715613:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  715616:	57                   	push   edi
  715617:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  71561b:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  71561e:	57                   	push   edi
  71561f:	57                   	push   edi
  715620:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  715624:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  715628:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  71562b:	51                   	push   ecx
  71562c:	8d 8e 80 00 00 00    	lea    ecx,[esi+0x80]
  715632:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  715636:	e8 b5 d8 00 00       	call   0x722ef0
  71563b:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  71563f:	57                   	push   edi
  715640:	57                   	push   edi
  715641:	52                   	push   edx
  715642:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  715646:	50                   	push   eax
  715647:	8b ce                	mov    ecx,esi
  715649:	e8 02 fb ff ff       	call   0x715150
  71564e:	8b 08                	mov    ecx,DWORD PTR [eax]
  715650:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  715654:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  715657:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  71565b:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  71565e:	57                   	push   edi
  71565f:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  715663:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  715666:	57                   	push   edi
  715667:	89 54 24 34          	mov    DWORD PTR [esp+0x34],edx
  71566b:	57                   	push   edi
  71566c:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  715670:	50                   	push   eax
  715671:	8d 8e b0 00 00 00    	lea    ecx,[esi+0xb0]
  715677:	e8 74 d8 00 00       	call   0x722ef0
  71567c:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  715680:	8b 11                	mov    edx,DWORD PTR [ecx]
  715682:	57                   	push   edi
  715683:	57                   	push   edi
  715684:	52                   	push   edx
  715685:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  715689:	50                   	push   eax
  71568a:	8b ce                	mov    ecx,esi
  71568c:	e8 bf fa ff ff       	call   0x715150
  715691:	8b 08                	mov    ecx,DWORD PTR [eax]
  715693:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  715697:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  71569a:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  71569e:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  7156a1:	57                   	push   edi
  7156a2:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  7156a6:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  7156a9:	57                   	push   edi
  7156aa:	57                   	push   edi
  7156ab:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  7156af:	50                   	push   eax
  7156b0:	8d 4e 38             	lea    ecx,[esi+0x38]
  7156b3:	89 54 24 3c          	mov    DWORD PTR [esp+0x3c],edx
  7156b7:	e8 34 d8 00 00       	call   0x722ef0
  7156bc:	89 be 28 01 00 00    	mov    DWORD PTR [esi+0x128],edi
  7156c2:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  7156c7:	3b c7                	cmp    eax,edi
  7156c9:	0f 84 dc 01 00 00    	je     0x7158ab
  7156cf:	80 b8 d8 01 00 00 00 	cmp    BYTE PTR [eax+0x1d8],0x0
  7156d6:	75 0d                	jne    0x7156e5
  7156d8:	80 b8 d9 01 00 00 00 	cmp    BYTE PTR [eax+0x1d9],0x0
  7156df:	0f 84 c6 01 00 00    	je     0x7158ab
  7156e5:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  7156e9:	8b 11                	mov    edx,DWORD PTR [ecx]
  7156eb:	6a 01                	push   0x1
  7156ed:	68 e8 cd ff 00       	push   0xffcde8
  7156f2:	52                   	push   edx
  7156f3:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  7156f7:	50                   	push   eax
  7156f8:	8b ce                	mov    ecx,esi
  7156fa:	e8 51 fa ff ff       	call   0x715150
  7156ff:	8b 08                	mov    ecx,DWORD PTR [eax]
  715701:	3b 0d d0 3a 1d 01    	cmp    ecx,DWORD PTR ds:0x11d3ad0
  715707:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  71570b:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  71570e:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  715712:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  715715:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  715719:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  71571c:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  715720:	75 18                	jne    0x71573a
  715722:	3b 15 d8 3a 1d 01    	cmp    edx,DWORD PTR ds:0x11d3ad8
  715728:	75 10                	jne    0x71573a
  71572a:	3b 05 dc 3a 1d 01    	cmp    eax,DWORD PTR ds:0x11d3adc
  715730:	75 08                	jne    0x71573a
  715732:	3b 3d d4 3a 1d 01    	cmp    edi,DWORD PTR ds:0x11d3ad4
  715738:	74 1d                	je     0x715757
  71573a:	83 8e 28 01 00 00 01 	or     DWORD PTR [esi+0x128],0x1
  715741:	6a 00                	push   0x0
  715743:	6a 00                	push   0x0
  715745:	6a 00                	push   0x0
  715747:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  71574b:	51                   	push   ecx
  71574c:	8d 8e c8 00 00 00    	lea    ecx,[esi+0xc8]
  715752:	e8 99 d7 00 00       	call   0x722ef0
  715757:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  71575b:	8b 02                	mov    eax,DWORD PTR [edx]
  71575d:	6a 01                	push   0x1
  71575f:	68 d4 cd ff 00       	push   0xffcdd4
  715764:	50                   	push   eax
  715765:	8d 4c 24 3c          	lea    ecx,[esp+0x3c]
  715769:	51                   	push   ecx
  71576a:	8b ce                	mov    ecx,esi
  71576c:	e8 df f9 ff ff       	call   0x715150
  715771:	8b 08                	mov    ecx,DWORD PTR [eax]
  715773:	3b 0d d0 3a 1d 01    	cmp    ecx,DWORD PTR ds:0x11d3ad0
  715779:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  71577d:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  715780:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  715784:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  715787:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  71578b:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  71578e:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  715792:	75 18                	jne    0x7157ac
  715794:	3b 15 d8 3a 1d 01    	cmp    edx,DWORD PTR ds:0x11d3ad8
  71579a:	75 10                	jne    0x7157ac
  71579c:	3b 05 dc 3a 1d 01    	cmp    eax,DWORD PTR ds:0x11d3adc
  7157a2:	75 08                	jne    0x7157ac
  7157a4:	3b 3d d4 3a 1d 01    	cmp    edi,DWORD PTR ds:0x11d3ad4
  7157aa:	74 1d                	je     0x7157c9
  7157ac:	83 8e 28 01 00 00 02 	or     DWORD PTR [esi+0x128],0x2
  7157b3:	6a 00                	push   0x0
  7157b5:	6a 00                	push   0x0
  7157b7:	6a 00                	push   0x0
  7157b9:	8d 54 24 2c          	lea    edx,[esp+0x2c]
  7157bd:	52                   	push   edx
  7157be:	8d 8e e0 00 00 00    	lea    ecx,[esi+0xe0]
  7157c4:	e8 27 d7 00 00       	call   0x722ef0
  7157c9:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  7157cd:	8b 08                	mov    ecx,DWORD PTR [eax]
  7157cf:	6a 01                	push   0x1
  7157d1:	68 e8 cd ff 00       	push   0xffcde8
  7157d6:	51                   	push   ecx
  7157d7:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  7157db:	52                   	push   edx
  7157dc:	8b ce                	mov    ecx,esi
  7157de:	e8 6d f9 ff ff       	call   0x715150
  7157e3:	8b 08                	mov    ecx,DWORD PTR [eax]
  7157e5:	3b 0d d0 3a 1d 01    	cmp    ecx,DWORD PTR ds:0x11d3ad0
  7157eb:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  7157ef:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  7157f2:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  7157f6:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7157f9:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  7157fd:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  715800:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  715804:	75 18                	jne    0x71581e
  715806:	3b 15 d8 3a 1d 01    	cmp    edx,DWORD PTR ds:0x11d3ad8
  71580c:	75 10                	jne    0x71581e
  71580e:	3b 05 dc 3a 1d 01    	cmp    eax,DWORD PTR ds:0x11d3adc
  715814:	75 08                	jne    0x71581e
  715816:	3b 3d d4 3a 1d 01    	cmp    edi,DWORD PTR ds:0x11d3ad4
  71581c:	74 1d                	je     0x71583b
  71581e:	83 8e 28 01 00 00 08 	or     DWORD PTR [esi+0x128],0x8
  715825:	6a 00                	push   0x0
  715827:	6a 00                	push   0x0
  715829:	6a 00                	push   0x0
  71582b:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  71582f:	50                   	push   eax
  715830:	8d 8e 10 01 00 00    	lea    ecx,[esi+0x110]
  715836:	e8 b5 d6 00 00       	call   0x722ef0
  71583b:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  71583f:	6a 01                	push   0x1
  715841:	68 e8 cd ff 00       	push   0xffcde8
  715846:	51                   	push   ecx
  715847:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  71584b:	52                   	push   edx
  71584c:	8b ce                	mov    ecx,esi
  71584e:	e8 fd f8 ff ff       	call   0x715150
  715853:	8b 08                	mov    ecx,DWORD PTR [eax]
  715855:	3b 0d d0 3a 1d 01    	cmp    ecx,DWORD PTR ds:0x11d3ad0
  71585b:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  71585f:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  715862:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  715866:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  715869:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  71586d:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  715870:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
  715874:	75 18                	jne    0x71588e
  715876:	3b 15 d8 3a 1d 01    	cmp    edx,DWORD PTR ds:0x11d3ad8
  71587c:	75 10                	jne    0x71588e
  71587e:	3b 05 dc 3a 1d 01    	cmp    eax,DWORD PTR ds:0x11d3adc
  715884:	75 08                	jne    0x71588e
  715886:	3b 3d d4 3a 1d 01    	cmp    edi,DWORD PTR ds:0x11d3ad4
  71588c:	74 1d                	je     0x7158ab
  71588e:	83 8e 28 01 00 00 04 	or     DWORD PTR [esi+0x128],0x4
  715895:	6a 00                	push   0x0
  715897:	6a 00                	push   0x0
  715899:	6a 00                	push   0x0
  71589b:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  71589f:	50                   	push   eax
  7158a0:	8d 8e f8 00 00 00    	lea    ecx,[esi+0xf8]
  7158a6:	e8 45 d6 00 00       	call   0x722ef0
  7158ab:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  7158af:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  7158b2:	8d 78 01             	lea    edi,[eax+0x1]
  7158b5:	8a 08                	mov    cl,BYTE PTR [eax]
  7158b7:	83 c0 01             	add    eax,0x1
  7158ba:	84 c9                	test   cl,cl
  7158bc:	75 f7                	jne    0x7158b5
  7158be:	2b c7                	sub    eax,edi
  7158c0:	74 54                	je     0x715916
  7158c2:	8b 4a 04             	mov    ecx,DWORD PTR [edx+0x4]
  7158c5:	6a 00                	push   0x0
  7158c7:	6a 00                	push   0x0
  7158c9:	51                   	push   ecx
  7158ca:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  7158ce:	52                   	push   edx
  7158cf:	8b ce                	mov    ecx,esi
  7158d1:	e8 7a f8 ff ff       	call   0x715150
  7158d6:	8b 08                	mov    ecx,DWORD PTR [eax]
  7158d8:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  7158dc:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7158df:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  7158e3:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  7158e6:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  7158ea:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  7158ed:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  7158f1:	8b 03                	mov    eax,DWORD PTR [ebx]
  7158f3:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
  7158f6:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  7158fa:	51                   	push   ecx
  7158fb:	8b cb                	mov    ecx,ebx
  7158fd:	ff d2                	call   edx
  7158ff:	85 c0                	test   eax,eax
  715901:	74 13                	je     0x715916
  715903:	6a 00                	push   0x0
  715905:	6a 00                	push   0x0
  715907:	6a 00                	push   0x0
  715909:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  71590d:	50                   	push   eax
  71590e:	8d 4e 50             	lea    ecx,[esi+0x50]
  715911:	e8 da d5 00 00       	call   0x722ef0
  715916:	8b 54 24 58          	mov    edx,DWORD PTR [esp+0x58]
  71591a:	c6 86 72 01 00 00 00 	mov    BYTE PTR [esi+0x172],0x0
  715921:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  715924:	8d 78 01             	lea    edi,[eax+0x1]
  715927:	8a 08                	mov    cl,BYTE PTR [eax]
  715929:	83 c0 01             	add    eax,0x1
  71592c:	84 c9                	test   cl,cl
  71592e:	75 f7                	jne    0x715927
  715930:	2b c7                	sub    eax,edi
  715932:	74 5e                	je     0x715992
  715934:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  715937:	6a 00                	push   0x0
  715939:	6a 00                	push   0x0
  71593b:	51                   	push   ecx
  71593c:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  715940:	52                   	push   edx
  715941:	8b ce                	mov    ecx,esi
  715943:	e8 08 f8 ff ff       	call   0x715150
  715948:	8b 08                	mov    ecx,DWORD PTR [eax]
  71594a:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  71594e:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  715951:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  715955:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  715958:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  71595c:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  71595f:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  715963:	8b 03                	mov    eax,DWORD PTR [ebx]
  715965:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
  715968:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  71596c:	51                   	push   ecx
  71596d:	8b cb                	mov    ecx,ebx
  71596f:	ff d2                	call   edx
  715971:	85 c0                	test   eax,eax
  715973:	74 1d                	je     0x715992
  715975:	6a 00                	push   0x0
  715977:	6a 00                	push   0x0
  715979:	6a 00                	push   0x0
  71597b:	8d 44 24 2c          	lea    eax,[esp+0x2c]
  71597f:	50                   	push   eax
  715980:	8d 8e 98 00 00 00    	lea    ecx,[esi+0x98]
  715986:	e8 65 d5 00 00       	call   0x722ef0
  71598b:	c6 86 72 01 00 00 01 	mov    BYTE PTR [esi+0x172],0x1
  715992:	8d 9e 98 00 00 00    	lea    ebx,[esi+0x98]
  715998:	8b cb                	mov    ecx,ebx
  71599a:	e8 01 d5 00 00       	call   0x722ea0
  71599f:	84 c0                	test   al,al
  7159a1:	75 76                	jne    0x715a19
  7159a3:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  7159a7:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  7159aa:	8d 78 01             	lea    edi,[eax+0x1]
  7159ad:	8d 49 00             	lea    ecx,[ecx+0x0]
  7159b0:	8a 08                	mov    cl,BYTE PTR [eax]
  7159b2:	83 c0 01             	add    eax,0x1
  7159b5:	84 c9                	test   cl,cl
  7159b7:	75 f7                	jne    0x7159b0
  7159b9:	2b c7                	sub    eax,edi
  7159bb:	74 5c                	je     0x715a19
  7159bd:	8b 4a 08             	mov    ecx,DWORD PTR [edx+0x8]
  7159c0:	6a 00                	push   0x0
  7159c2:	6a 00                	push   0x0
  7159c4:	51                   	push   ecx
  7159c5:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  7159c9:	52                   	push   edx
  7159ca:	8b ce                	mov    ecx,esi
  7159cc:	e8 7f f7 ff ff       	call   0x715150
  7159d1:	8b 08                	mov    ecx,DWORD PTR [eax]
  7159d3:	89 4c 24 20          	mov    DWORD PTR [esp+0x20],ecx
  7159d7:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7159da:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  7159de:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  7159e1:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  7159e5:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  7159e8:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  7159ec:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
  7159f0:	8b 01                	mov    eax,DWORD PTR [ecx]
  7159f2:	8b 40 44             	mov    eax,DWORD PTR [eax+0x44]
  7159f5:	8d 54 24 20          	lea    edx,[esp+0x20]
  7159f9:	52                   	push   edx
  7159fa:	ff d0                	call   eax
  7159fc:	85 c0                	test   eax,eax
  7159fe:	74 19                	je     0x715a19
  715a00:	6a 00                	push   0x0
  715a02:	6a 00                	push   0x0
  715a04:	6a 00                	push   0x0
  715a06:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  715a0a:	51                   	push   ecx
  715a0b:	8b cb                	mov    ecx,ebx
  715a0d:	e8 de d4 00 00       	call   0x722ef0
  715a12:	c6 86 72 01 00 00 01 	mov    BYTE PTR [esi+0x172],0x1
  715a19:	83 be 80 01 00 00 00 	cmp    DWORD PTR [esi+0x180],0x0
  715a20:	75 7b                	jne    0x715a9d
  715a22:	6a 00                	push   0x0
  715a24:	6a 00                	push   0x0
  715a26:	6a 00                	push   0x0
  715a28:	6a 00                	push   0x0
  715a2a:	68 5c cd ff 00       	push   0xffcd5c
  715a2f:	6a 00                	push   0x0
  715a31:	6a 10                	push   0x10
  715a33:	68 30 03 00 00       	push   0x330
  715a38:	e8 e3 ea dc ff       	call   0x4e4520
  715a3d:	83 c4 20             	add    esp,0x20
  715a40:	85 c0                	test   eax,eax
  715a42:	74 0e                	je     0x715a52
  715a44:	6a 00                	push   0x0
  715a46:	56                   	push   esi
  715a47:	8b c8                	mov    ecx,eax
  715a49:	e8 22 14 00 00       	call   0x716e70
  715a4e:	8b f8                	mov    edi,eax
  715a50:	eb 02                	jmp    0x715a54
  715a52:	33 ff                	xor    edi,edi
  715a54:	8b 9e 80 01 00 00    	mov    ebx,DWORD PTR [esi+0x180]
  715a5a:	3b fb                	cmp    edi,ebx
  715a5c:	74 1c                	je     0x715a7a
  715a5e:	85 ff                	test   edi,edi
  715a60:	74 07                	je     0x715a69
  715a62:	8b cf                	mov    ecx,edi
  715a64:	e8 c7 02 00 00       	call   0x715d30
  715a69:	85 db                	test   ebx,ebx
  715a6b:	89 be 80 01 00 00    	mov    DWORD PTR [esi+0x180],edi
  715a71:	74 07                	je     0x715a7a
  715a73:	8b cb                	mov    ecx,ebx
  715a75:	e8 c6 15 00 00       	call   0x717040
  715a7a:	8b b6 80 01 00 00    	mov    esi,DWORD PTR [esi+0x180]
  715a80:	85 f6                	test   esi,esi
  715a82:	75 12                	jne    0x715a96
  715a84:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  715a88:	e8 03 3c 0a 00       	call   0x7b9690
  715a8d:	32 c0                	xor    al,al
  715a8f:	5f                   	pop    edi
  715a90:	5e                   	pop    esi
  715a91:	5b                   	pop    ebx
  715a92:	8b e5                	mov    esp,ebp
  715a94:	5d                   	pop    ebp
  715a95:	c3                   	ret
  715a96:	8b ce                	mov    ecx,esi
  715a98:	e8 c3 27 00 00       	call   0x718260
  715a9d:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  715aa1:	e8 ea 3b 0a 00       	call   0x7b9690
  715aa6:	5f                   	pop    edi
  715aa7:	5e                   	pop    esi
  715aa8:	b0 01                	mov    al,0x1
  715aaa:	5b                   	pop    ebx
  715aab:	8b e5                	mov    esp,ebp
  715aad:	5d                   	pop    ebp
  715aae:	c3                   	ret
