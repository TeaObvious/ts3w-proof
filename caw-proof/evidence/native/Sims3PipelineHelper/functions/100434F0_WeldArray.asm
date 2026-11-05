# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3PipelineHelper.dll CAW 1.22.10 original-byte window and independent linear disassembly
Export: WeldArray at 0x100434f0
Paired annotated Ghidra pseudocode: 100434F0_WeldArray.c
Window: [0x100434f0, 0x1004376b) (635 bytes, stop exclusive)
Ghidra function-body intervals: [0x100434f0, 0x1004376b)
Boundary rule: entry through the maximum address of the currently defined Ghidra body.
This is a bounded original-file byte window, not a proof of complete function extent;
it can include gaps, padding, or data. Branches and noncontiguous bodies may extend beyond it.
GNU objdump decodes linearly in Intel syntax; verify control flow against bytes and pseudocode.

ORIGINAL BYTES (16 per line)
100434f0: 8b 44 24 0c 83 c0 ff 83 f8 12 0f 87 6a 02 00 00
10043500: ff 24 85 6c 37 04 10 8b 44 24 18 8b 4c 24 14 8b
10043510: 54 24 10 50 8b 44 24 0c 51 8b 4c 24 0c 52 50 51
10043520: e8 db b8 ff ff 83 c4 14 c3 8b 54 24 18 8b 44 24
10043530: 14 8b 4c 24 10 52 8b 54 24 0c 50 8b 44 24 0c 51
10043540: 52 50 e8 89 b9 ff ff 83 c4 14 c3 8b 4c 24 18 8b
10043550: 54 24 14 8b 44 24 10 51 8b 4c 24 0c 52 8b 54 24
10043560: 0c 50 51 52 e8 57 ba ff ff 83 c4 14 c3 8b 44 24
10043570: 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24 0c 51 8b
10043580: 4c 24 0c 52 50 51 e8 75 bb ff ff 83 c4 14 c3 8b
10043590: 54 24 18 8b 44 24 14 8b 4c 24 10 52 8b 54 24 0c
100435a0: 50 8b 44 24 0c 51 52 50 e8 83 bc ff ff 83 c4 14
100435b0: c3 8b 4c 24 18 8b 54 24 14 8b 44 24 10 51 8b 4c
100435c0: 24 0c 52 8b 54 24 0c 50 51 52 e8 41 bd ff ff 83
100435d0: c4 14 c3 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50
100435e0: 8b 44 24 0c 51 8b 4c 24 0c 52 50 51 e8 9f be ff
100435f0: ff 83 c4 14 c3 8b 54 24 18 8b 44 24 14 8b 4c 24
10043600: 10 52 8b 54 24 0c 50 8b 44 24 0c 51 52 50 e8 6d
10043610: c0 ff ff 83 c4 14 c3 8b 4c 24 18 8b 54 24 14 8b
10043620: 44 24 10 51 8b 4c 24 0c 52 8b 54 24 0c 50 51 52
10043630: e8 eb c1 ff ff 83 c4 14 c3 8b 44 24 18 8b 4c 24
10043640: 14 8b 54 24 10 50 8b 44 24 0c 51 8b 4c 24 0c 52
10043650: 50 51 e8 79 c3 ff ff 83 c4 14 c3 8b 54 24 18 8b
10043660: 44 24 14 8b 4c 24 10 52 8b 54 24 0c 50 8b 44 24
10043670: 0c 51 52 50 e8 b7 c4 ff ff 83 c4 14 c3 8b 4c 24
10043680: 18 8b 54 24 14 8b 44 24 10 51 8b 4c 24 0c 52 8b
10043690: 54 24 0c 50 51 52 e8 05 c7 ff ff 83 c4 14 c3 8b
100436a0: 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24 0c
100436b0: 51 8b 4c 24 0c 52 50 51 e8 73 c9 ff ff 83 c4 14
100436c0: c3 8b 54 24 18 8b 44 24 14 8b 4c 24 10 52 8b 54
100436d0: 24 0c 50 8b 44 24 0c 51 52 50 e8 41 cb ff ff 83
100436e0: c4 14 c3 8b 4c 24 18 8b 54 24 14 8b 44 24 10 51
100436f0: 8b 4c 24 0c 52 8b 54 24 0c 50 51 52 e8 df cd ff
10043700: ff 83 c4 14 c3 8b 44 24 18 8b 4c 24 14 8b 54 24
10043710: 10 50 8b 44 24 0c 51 8b 4c 24 0c 52 50 51 e8 8d
10043720: d0 ff ff 83 c4 14 c3 8b 54 24 18 8b 44 24 14 8b
10043730: 4c 24 10 52 8b 54 24 0c 50 8b 44 24 0c 51 52 50
10043740: e8 8b d3 ff ff 83 c4 14 c3 8b 4c 24 18 8b 54 24
10043750: 14 8b 44 24 10 51 8b 4c 24 0c 52 8b 54 24 0c 50
10043760: 51 52 e8 29 d5 ff ff 83 c4 14 c3

LINEAR DISASSEMBLY
100434f0 <.text+0x424f0>:
100434f0:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
100434f4:	83 c0 ff             	add    eax,0xffffffff
100434f7:	83 f8 12             	cmp    eax,0x12
100434fa:	0f 87 6a 02 00 00    	ja     0x1004376a
10043500:	ff 24 85 6c 37 04 10 	jmp    DWORD PTR [eax*4+0x1004376c]
10043507:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
1004350b:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
1004350f:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10043513:	50                   	push   eax
10043514:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
10043518:	51                   	push   ecx
10043519:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1004351d:	52                   	push   edx
1004351e:	50                   	push   eax
1004351f:	51                   	push   ecx
10043520:	e8 db b8 ff ff       	call   0x1003ee00
10043525:	83 c4 14             	add    esp,0x14
10043528:	c3                   	ret
10043529:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
1004352d:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
10043531:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
10043535:	52                   	push   edx
10043536:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
1004353a:	50                   	push   eax
1004353b:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
1004353f:	51                   	push   ecx
10043540:	52                   	push   edx
10043541:	50                   	push   eax
10043542:	e8 89 b9 ff ff       	call   0x1003eed0
10043547:	83 c4 14             	add    esp,0x14
1004354a:	c3                   	ret
1004354b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1004354f:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10043553:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10043557:	51                   	push   ecx
10043558:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1004355c:	52                   	push   edx
1004355d:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
10043561:	50                   	push   eax
10043562:	51                   	push   ecx
10043563:	52                   	push   edx
10043564:	e8 57 ba ff ff       	call   0x1003efc0
10043569:	83 c4 14             	add    esp,0x14
1004356c:	c3                   	ret
1004356d:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10043571:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10043575:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10043579:	50                   	push   eax
1004357a:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
1004357e:	51                   	push   ecx
1004357f:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10043583:	52                   	push   edx
10043584:	50                   	push   eax
10043585:	51                   	push   ecx
10043586:	e8 75 bb ff ff       	call   0x1003f100
1004358b:	83 c4 14             	add    esp,0x14
1004358e:	c3                   	ret
1004358f:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
10043593:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
10043597:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
1004359b:	52                   	push   edx
1004359c:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
100435a0:	50                   	push   eax
100435a1:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
100435a5:	51                   	push   ecx
100435a6:	52                   	push   edx
100435a7:	50                   	push   eax
100435a8:	e8 83 bc ff ff       	call   0x1003f230
100435ad:	83 c4 14             	add    esp,0x14
100435b0:	c3                   	ret
100435b1:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100435b5:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
100435b9:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100435bd:	51                   	push   ecx
100435be:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100435c2:	52                   	push   edx
100435c3:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
100435c7:	50                   	push   eax
100435c8:	51                   	push   ecx
100435c9:	52                   	push   edx
100435ca:	e8 41 bd ff ff       	call   0x1003f310
100435cf:	83 c4 14             	add    esp,0x14
100435d2:	c3                   	ret
100435d3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100435d7:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100435db:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100435df:	50                   	push   eax
100435e0:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
100435e4:	51                   	push   ecx
100435e5:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100435e9:	52                   	push   edx
100435ea:	50                   	push   eax
100435eb:	51                   	push   ecx
100435ec:	e8 9f be ff ff       	call   0x1003f490
100435f1:	83 c4 14             	add    esp,0x14
100435f4:	c3                   	ret
100435f5:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
100435f9:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
100435fd:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
10043601:	52                   	push   edx
10043602:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
10043606:	50                   	push   eax
10043607:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
1004360b:	51                   	push   ecx
1004360c:	52                   	push   edx
1004360d:	50                   	push   eax
1004360e:	e8 6d c0 ff ff       	call   0x1003f680
10043613:	83 c4 14             	add    esp,0x14
10043616:	c3                   	ret
10043617:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1004361b:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
1004361f:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10043623:	51                   	push   ecx
10043624:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
10043628:	52                   	push   edx
10043629:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
1004362d:	50                   	push   eax
1004362e:	51                   	push   ecx
1004362f:	52                   	push   edx
10043630:	e8 eb c1 ff ff       	call   0x1003f820
10043635:	83 c4 14             	add    esp,0x14
10043638:	c3                   	ret
10043639:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
1004363d:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
10043641:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10043645:	50                   	push   eax
10043646:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
1004364a:	51                   	push   ecx
1004364b:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1004364f:	52                   	push   edx
10043650:	50                   	push   eax
10043651:	51                   	push   ecx
10043652:	e8 79 c3 ff ff       	call   0x1003f9d0
10043657:	83 c4 14             	add    esp,0x14
1004365a:	c3                   	ret
1004365b:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
1004365f:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
10043663:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
10043667:	52                   	push   edx
10043668:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
1004366c:	50                   	push   eax
1004366d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
10043671:	51                   	push   ecx
10043672:	52                   	push   edx
10043673:	50                   	push   eax
10043674:	e8 b7 c4 ff ff       	call   0x1003fb30
10043679:	83 c4 14             	add    esp,0x14
1004367c:	c3                   	ret
1004367d:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
10043681:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10043685:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10043689:	51                   	push   ecx
1004368a:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1004368e:	52                   	push   edx
1004368f:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
10043693:	50                   	push   eax
10043694:	51                   	push   ecx
10043695:	52                   	push   edx
10043696:	e8 05 c7 ff ff       	call   0x1003fda0
1004369b:	83 c4 14             	add    esp,0x14
1004369e:	c3                   	ret
1004369f:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
100436a3:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
100436a7:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
100436ab:	50                   	push   eax
100436ac:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
100436b0:	51                   	push   ecx
100436b1:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100436b5:	52                   	push   edx
100436b6:	50                   	push   eax
100436b7:	51                   	push   ecx
100436b8:	e8 73 c9 ff ff       	call   0x10040030
100436bd:	83 c4 14             	add    esp,0x14
100436c0:	c3                   	ret
100436c1:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
100436c5:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
100436c9:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
100436cd:	52                   	push   edx
100436ce:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
100436d2:	50                   	push   eax
100436d3:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
100436d7:	51                   	push   ecx
100436d8:	52                   	push   edx
100436d9:	50                   	push   eax
100436da:	e8 41 cb ff ff       	call   0x10040220
100436df:	83 c4 14             	add    esp,0x14
100436e2:	c3                   	ret
100436e3:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
100436e7:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
100436eb:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
100436ef:	51                   	push   ecx
100436f0:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
100436f4:	52                   	push   edx
100436f5:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
100436f9:	50                   	push   eax
100436fa:	51                   	push   ecx
100436fb:	52                   	push   edx
100436fc:	e8 df cd ff ff       	call   0x100404e0
10043701:	83 c4 14             	add    esp,0x14
10043704:	c3                   	ret
10043705:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
10043709:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
1004370d:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
10043711:	50                   	push   eax
10043712:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
10043716:	51                   	push   ecx
10043717:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1004371b:	52                   	push   edx
1004371c:	50                   	push   eax
1004371d:	51                   	push   ecx
1004371e:	e8 8d d0 ff ff       	call   0x100407b0
10043723:	83 c4 14             	add    esp,0x14
10043726:	c3                   	ret
10043727:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
1004372b:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
1004372f:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
10043733:	52                   	push   edx
10043734:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
10043738:	50                   	push   eax
10043739:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
1004373d:	51                   	push   ecx
1004373e:	52                   	push   edx
1004373f:	50                   	push   eax
10043740:	e8 8b d3 ff ff       	call   0x10040ad0
10043745:	83 c4 14             	add    esp,0x14
10043748:	c3                   	ret
10043749:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
1004374d:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
10043751:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
10043755:	51                   	push   ecx
10043756:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
1004375a:	52                   	push   edx
1004375b:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
1004375f:	50                   	push   eax
10043760:	51                   	push   ecx
10043761:	52                   	push   edx
10043762:	e8 29 d5 ff ff       	call   0x10040c90
10043767:	83 c4 14             	add    esp,0x14
1004376a:	c3                   	ret
