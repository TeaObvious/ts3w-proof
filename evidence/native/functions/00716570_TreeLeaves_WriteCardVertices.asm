# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00716570 <.text+0x315570>:
  716570:	83 ec 7c             	sub    esp,0x7c
  716573:	53                   	push   ebx
  716574:	55                   	push   ebp
  716575:	56                   	push   esi
  716576:	8b b4 24 90 00 00 00 	mov    esi,DWORD PTR [esp+0x90]
  71657d:	8b 46 34             	mov    eax,DWORD PTR [esi+0x34]
  716580:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  716583:	8b 6e 1c             	mov    ebp,DWORD PTR [esi+0x1c]
  716586:	8b 56 18             	mov    edx,DWORD PTR [esi+0x18]
  716589:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  71658d:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  716590:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  716594:	57                   	push   edi
  716595:	8b 7e 28             	mov    edi,DWORD PTR [esi+0x28]
  716598:	b9 80 37 1d 01       	mov    ecx,0x11d3780
  71659d:	89 6c 24 34          	mov    DWORD PTR [esp+0x34],ebp
  7165a1:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  7165a5:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  7165a9:	e8 72 c3 0a 00       	call   0x7c2920
  7165ae:	b9 80 37 1d 01       	mov    ecx,0x11d3780
  7165b3:	8b d8                	mov    ebx,eax
  7165b5:	e8 a6 c3 0a 00       	call   0x7c2960
  7165ba:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  7165be:	a1 88 c4 15 01       	mov    eax,ds:0x115c488
  7165c3:	85 c0                	test   eax,eax
  7165c5:	74 19                	je     0x7165e0
  7165c7:	80 b8 d8 01 00 00 00 	cmp    BYTE PTR [eax+0x1d8],0x0
  7165ce:	75 09                	jne    0x7165d9
  7165d0:	80 b8 d9 01 00 00 00 	cmp    BYTE PTR [eax+0x1d9],0x0
  7165d7:	74 07                	je     0x7165e0
  7165d9:	c6 44 24 12 01       	mov    BYTE PTR [esp+0x12],0x1
  7165de:	eb 05                	jmp    0x7165e5
  7165e0:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  7165e5:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7165e8:	83 f9 05             	cmp    ecx,0x5
  7165eb:	72 14                	jb     0x716601
  7165ed:	0f bf d1             	movsx  edx,cx
  7165f0:	b8 cd cc cc cc       	mov    eax,0xcccccccd
  7165f5:	f7 e2                	mul    edx
  7165f7:	c1 ea 02             	shr    edx,0x2
  7165fa:	66 89 54 24 14       	mov    WORD PTR [esp+0x14],dx
  7165ff:	eb 07                	jmp    0x716608
  716601:	66 c7 44 24 14 00 00 	mov    WORD PTR [esp+0x14],0x0
  716608:	b8 0a 00 00 00       	mov    eax,0xa
  71660d:	66 39 44 24 14       	cmp    WORD PTR [esp+0x14],ax
  716612:	66 c7 44 24 16 00 00 	mov    WORD PTR [esp+0x16],0x0
  716619:	76 05                	jbe    0x716620
  71661b:	66 89 44 24 14       	mov    WORD PTR [esp+0x14],ax
  716620:	83 fb 01             	cmp    ebx,0x1
  716623:	7d 07                	jge    0x71662c
  716625:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  71662a:	eb 07                	jmp    0x716633
  71662c:	80 eb 01             	sub    bl,0x1
  71662f:	88 5c 24 13          	mov    BYTE PTR [esp+0x13],bl
  716633:	33 db                	xor    ebx,ebx
  716635:	85 c9                	test   ecx,ecx
  716637:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  71663b:	0f 86 eb 02 00 00    	jbe    0x71692c
  716641:	83 c7 08             	add    edi,0x8
  716644:	89 7c 24 2c          	mov    DWORD PTR [esp+0x2c],edi
  716648:	eb 06                	jmp    0x716650
  71664a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  716650:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  716655:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  716659:	0f b6 00             	movzx  eax,BYTE PTR [eax]
  71665c:	8b 56 44             	mov    edx,DWORD PTR [esi+0x44]
  71665f:	8d 0c c0             	lea    ecx,[eax+eax*8]
  716662:	8d 3c 8a             	lea    edi,[edx+ecx*4]
  716665:	89 7c 24 50          	mov    DWORD PTR [esp+0x50],edi
  716669:	74 16                	je     0x716681
  71666b:	66 83 7c 24 14 00    	cmp    WORD PTR [esp+0x14],0x0
  716671:	7e 0e                	jle    0x716681
  716673:	53                   	push   ebx
  716674:	e8 c7 bc 0b 00       	call   0x7d2340
  716679:	83 c4 04             	add    esp,0x4
  71667c:	66 89 44 24 16       	mov    WORD PTR [esp+0x16],ax
  716681:	83 7f 20 00          	cmp    DWORD PTR [edi+0x20],0x0
  716685:	0f 85 6c 02 00 00    	jne    0x7168f7
  71668b:	33 d2                	xor    edx,edx
  71668d:	8b c3                	mov    eax,ebx
  71668f:	f7 74 24 64          	div    DWORD PTR [esp+0x64]
  716693:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  716697:	8a 00                	mov    al,BYTE PTR [eax]
  716699:	8a 4c 24 13          	mov    cl,BYTE PTR [esp+0x13]
  71669d:	3a c1                	cmp    al,cl
  71669f:	f3 0f 10 05 b4 b5 f9 	movss  xmm0,DWORD PTR ds:0xf9b5b4
  7166a6:	00 
  7166a7:	f3 0f 10 67 08       	movss  xmm4,DWORD PTR [edi+0x8]
  7166ac:	f3 0f 10 6f 0c       	movss  xmm5,DWORD PTR [edi+0xc]
  7166b1:	8b 77 18             	mov    esi,DWORD PTR [edi+0x18]
  7166b4:	f3 0f 10 4d 00       	movss  xmm1,DWORD PTR [ebp+0x0]
  7166b9:	f3 0f 10 55 04       	movss  xmm2,DWORD PTR [ebp+0x4]
  7166be:	f3 0f 10 5d 08       	movss  xmm3,DWORD PTR [ebp+0x8]
  7166c3:	f3 0f 5c e0          	subss  xmm4,xmm0
  7166c7:	f3 0f 5c e8          	subss  xmm5,xmm0
  7166cb:	88 54 24 1a          	mov    BYTE PTR [esp+0x1a],dl
  7166cf:	76 02                	jbe    0x7166d3
  7166d1:	8a c1                	mov    al,cl
  7166d3:	f3 0f 10 05 b0 ce ff 	movss  xmm0,DWORD PTR ds:0xffceb0
  7166da:	00 
  7166db:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
  7166df:	b1 03                	mov    cl,0x3
  7166e1:	f6 e9                	imul   cl
  7166e3:	f3 0f 59 c8          	mulss  xmm1,xmm0
  7166e7:	8b ee                	mov    ebp,esi
  7166e9:	8b b4 24 90 00 00 00 	mov    esi,DWORD PTR [esp+0x90]
  7166f0:	f3 0f 11 4c 24 68    	movss  DWORD PTR [esp+0x68],xmm1
  7166f6:	0f 57 c9             	xorps  xmm1,xmm1
  7166f9:	f3 0f 59 d0          	mulss  xmm2,xmm0
  7166fd:	f3 0f 59 d8          	mulss  xmm3,xmm0
  716701:	32 db                	xor    bl,bl
  716703:	f3 0f 11 54 24 6c    	movss  DWORD PTR [esp+0x6c],xmm2
  716709:	f3 0f 11 5c 24 70    	movss  DWORD PTR [esp+0x70],xmm3
  71670f:	f3 0f 11 64 24 74    	movss  DWORD PTR [esp+0x74],xmm4
  716715:	f3 0f 11 6c 24 78    	movss  DWORD PTR [esp+0x78],xmm5
  71671b:	f3 0f 11 4c 24 7c    	movss  DWORD PTR [esp+0x7c],xmm1
  716721:	88 44 24 1b          	mov    BYTE PTR [esp+0x1b],al
  716725:	83 c6 0a             	add    esi,0xa
  716728:	eb 0e                	jmp    0x716738
  71672a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  716730:	f3 0f 10 05 b0 ce ff 	movss  xmm0,DWORD PTR ds:0xffceb0
  716737:	00 
  716738:	f3 0f 10 4f f8       	movss  xmm1,DWORD PTR [edi-0x8]
  71673d:	8b 54 24 28          	mov    edx,DWORD PTR [esp+0x28]
  716741:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  716745:	f3 0f 11 4c 24 54    	movss  DWORD PTR [esp+0x54],xmm1
  71674b:	f3 0f 10 4f fc       	movss  xmm1,DWORD PTR [edi-0x4]
  716750:	f3 0f 11 4c 24 58    	movss  DWORD PTR [esp+0x58],xmm1
  716756:	f3 0f 10 0f          	movss  xmm1,DWORD PTR [edi]
  71675a:	f3 0f 11 4c 24 5c    	movss  DWORD PTR [esp+0x5c],xmm1
  716760:	f3 0f 10 0a          	movss  xmm1,DWORD PTR [edx]
  716764:	f3 0f 11 4c 24 60    	movss  DWORD PTR [esp+0x60],xmm1
  71676a:	f3 0f 10 4d 00       	movss  xmm1,DWORD PTR [ebp+0x0]
  71676f:	f3 0f 11 4c 24 44    	movss  DWORD PTR [esp+0x44],xmm1
  716775:	f3 0f 10 4d 04       	movss  xmm1,DWORD PTR [ebp+0x4]
  71677a:	f3 0f 11 4c 24 48    	movss  DWORD PTR [esp+0x48],xmm1
  716780:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  716785:	f3 0f 59 c8          	mulss  xmm1,xmm0
  716789:	f3 0f 11 8c 24 80 00 	movss  DWORD PTR [esp+0x80],xmm1
  716790:	00 00 
  716792:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  716796:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  71679a:	8d 4e f6             	lea    ecx,[esi-0xa]
  71679d:	f3 0f 59 c8          	mulss  xmm1,xmm0
  7167a1:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  7167a5:	51                   	push   ecx
  7167a6:	8d 54 24 6c          	lea    edx,[esp+0x6c]
  7167aa:	52                   	push   edx
  7167ab:	f3 0f 11 8c 24 8c 00 	movss  DWORD PTR [esp+0x8c],xmm1
  7167b2:	00 00 
  7167b4:	f3 0f 11 84 24 90 00 	movss  DWORD PTR [esp+0x90],xmm0
  7167bb:	00 00 
  7167bd:	e8 fe f9 ff ff       	call   0x7161c0
  7167c2:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  7167c9:	00 
  7167ca:	f3 0f 10 15 f0 47 fe 	movss  xmm2,DWORD PTR ds:0xfe47f0
  7167d1:	00 
  7167d2:	f3 0f 10 44 24 68    	movss  xmm0,DWORD PTR [esp+0x68]
  7167d8:	f3 0f 58 c1          	addss  xmm0,xmm1
  7167dc:	f3 0f 59 c2          	mulss  xmm0,xmm2
  7167e0:	f3 0f 2c c0          	cvttss2si eax,xmm0
  7167e4:	f3 0f 10 44 24 64    	movss  xmm0,DWORD PTR [esp+0x64]
  7167ea:	f3 0f 58 c1          	addss  xmm0,xmm1
  7167ee:	f3 0f 59 c2          	mulss  xmm0,xmm2
  7167f2:	f3 0f 2c c8          	cvttss2si ecx,xmm0
  7167f6:	f3 0f 10 44 24 60    	movss  xmm0,DWORD PTR [esp+0x60]
  7167fc:	f3 0f 58 c1          	addss  xmm0,xmm1
  716800:	f3 0f 59 c2          	mulss  xmm0,xmm2
  716804:	f3 0f 2c d0          	cvttss2si edx,xmm0
  716808:	f3 0f 10 44 24 5c    	movss  xmm0,DWORD PTR [esp+0x5c]
  71680e:	f3 0f 58 c1          	addss  xmm0,xmm1
  716812:	f3 0f 10 0d e8 ce ff 	movss  xmm1,DWORD PTR ds:0xffcee8
  716819:	00 
  71681a:	f3 0f 59 c2          	mulss  xmm0,xmm2
  71681e:	88 46 01             	mov    BYTE PTR [esi+0x1],al
  716821:	f3 0f 2c c0          	cvttss2si eax,xmm0
  716825:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  71682b:	f3 0f 59 c1          	mulss  xmm0,xmm1
  71682f:	83 c4 08             	add    esp,0x8
  716832:	88 0e                	mov    BYTE PTR [esi],cl
  716834:	88 56 ff             	mov    BYTE PTR [esi-0x1],dl
  716837:	88 46 fe             	mov    BYTE PTR [esi-0x2],al
  71683a:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  716840:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  716844:	db 5c 24 38          	fistp  DWORD PTR [esp+0x38]
  716848:	66 8b 4c 24 38       	mov    cx,WORD PTR [esp+0x38]
  71684d:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  716853:	f3 0f 59 c1          	mulss  xmm0,xmm1
  716857:	66 89 4e 02          	mov    WORD PTR [esi+0x2],cx
  71685b:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  716861:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  716865:	db 5c 24 30          	fistp  DWORD PTR [esp+0x30]
  716869:	0f b7 54 24 30       	movzx  edx,WORD PTR [esp+0x30]
  71686e:	8d 46 06             	lea    eax,[esi+0x6]
  716871:	50                   	push   eax
  716872:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  716879:	51                   	push   ecx
  71687a:	66 89 56 04          	mov    WORD PTR [esi+0x4],dx
  71687e:	e8 3d f9 ff ff       	call   0x7161c0
  716883:	8d 56 0e             	lea    edx,[esi+0xe]
  716886:	52                   	push   edx
  716887:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  71688e:	50                   	push   eax
  71688f:	e8 2c f9 ff ff       	call   0x7161c0
  716894:	0f b6 4c 24 2b       	movzx  ecx,BYTE PTR [esp+0x2b]
  716899:	8a 54 24 2a          	mov    dl,BYTE PTR [esp+0x2a]
  71689d:	8b 84 24 a8 00 00 00 	mov    eax,DWORD PTR [esp+0xa8]
  7168a4:	83 c4 10             	add    esp,0x10
  7168a7:	88 4e 16             	mov    BYTE PTR [esi+0x16],cl
  7168aa:	88 56 17             	mov    BYTE PTR [esi+0x17],dl
  7168ad:	88 5e 18             	mov    BYTE PTR [esi+0x18],bl
  7168b0:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
  7168b3:	0f b7 54 24 14       	movzx  edx,WORD PTR [esp+0x14]
  7168b8:	66 8b 44 24 16       	mov    ax,WORD PTR [esp+0x16]
  7168bd:	88 4e 19             	mov    BYTE PTR [esi+0x19],cl
  7168c0:	66 89 56 1a          	mov    WORD PTR [esi+0x1a],dx
  7168c4:	66 89 46 1c          	mov    WORD PTR [esi+0x1c],ax
  7168c8:	80 c3 01             	add    bl,0x1
  7168cb:	83 c7 0c             	add    edi,0xc
  7168ce:	83 c5 08             	add    ebp,0x8
  7168d1:	83 c6 28             	add    esi,0x28
  7168d4:	80 fb 04             	cmp    bl,0x4
  7168d7:	0f 82 53 fe ff ff    	jb     0x716730
  7168dd:	81 84 24 90 00 00 00 	add    DWORD PTR [esp+0x90],0xa0
  7168e4:	a0 00 00 00 
  7168e8:	8b 6c 24 34          	mov    ebp,DWORD PTR [esp+0x34]
  7168ec:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  7168f0:	8b b4 24 94 00 00 00 	mov    esi,DWORD PTR [esp+0x94]
  7168f7:	83 44 24 2c 30       	add    DWORD PTR [esp+0x2c],0x30
  7168fc:	b9 01 00 00 00       	mov    ecx,0x1
  716901:	01 4c 24 1c          	add    DWORD PTR [esp+0x1c],ecx
  716905:	01 4c 24 20          	add    DWORD PTR [esp+0x20],ecx
  716909:	b8 04 00 00 00       	mov    eax,0x4
  71690e:	01 44 24 28          	add    DWORD PTR [esp+0x28],eax
  716912:	01 44 24 24          	add    DWORD PTR [esp+0x24],eax
  716916:	03 d9                	add    ebx,ecx
  716918:	83 c5 0c             	add    ebp,0xc
  71691b:	3b 5e 08             	cmp    ebx,DWORD PTR [esi+0x8]
  71691e:	89 6c 24 34          	mov    DWORD PTR [esp+0x34],ebp
  716922:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  716926:	0f 82 24 fd ff ff    	jb     0x716650
  71692c:	8b 84 24 90 00 00 00 	mov    eax,DWORD PTR [esp+0x90]
  716933:	5f                   	pop    edi
  716934:	5e                   	pop    esi
  716935:	5d                   	pop    ebp
  716936:	5b                   	pop    ebx
  716937:	83 c4 7c             	add    esp,0x7c
  71693a:	c3                   	ret
