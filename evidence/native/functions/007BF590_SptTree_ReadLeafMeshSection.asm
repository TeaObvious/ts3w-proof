# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007bf590 <.text+0x3be590>:
  7bf590:	83 ec 70             	sub    esp,0x70
  7bf593:	53                   	push   ebx
  7bf594:	55                   	push   ebp
  7bf595:	56                   	push   esi
  7bf596:	57                   	push   edi
  7bf597:	8b bc 24 84 00 00 00 	mov    edi,DWORD PTR [esp+0x84]
  7bf59e:	8b d9                	mov    ebx,ecx
  7bf5a0:	8b cf                	mov    ecx,edi
  7bf5a2:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  7bf5a6:	e8 85 a5 fe ff       	call   0x7a9b30
  7bf5ab:	eb 07                	jmp    0x7bf5b4
  7bf5ad:	8d 49 00             	lea    ecx,[ecx+0x0]
  7bf5b0:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  7bf5b4:	2d 59 15 01 00       	sub    eax,0x11559
  7bf5b9:	0f 84 27 03 00 00    	je     0x7bf8e6
  7bf5bf:	83 e8 01             	sub    eax,0x1
  7bf5c2:	0f 85 c9 03 00 00    	jne    0x7bf991
  7bf5c8:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7bf5ce:	33 f6                	xor    esi,esi
  7bf5d0:	3b ce                	cmp    ecx,esi
  7bf5d2:	74 0d                	je     0x7bf5e1
  7bf5d4:	8b 01                	mov    eax,DWORD PTR [ecx]
  7bf5d6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7bf5d9:	6a 10                	push   0x10
  7bf5db:	6a 30                	push   0x30
  7bf5dd:	ff d2                	call   edx
  7bf5df:	eb 0e                	jmp    0x7bf5ef
  7bf5e1:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7bf5e7:	56                   	push   esi
  7bf5e8:	6a 30                	push   0x30
  7bf5ea:	e8 31 79 d2 ff       	call   0x4e6f20
  7bf5ef:	3b c6                	cmp    eax,esi
  7bf5f1:	74 3f                	je     0x7bf632
  7bf5f3:	83 05 28 96 1d 01 30 	add    DWORD PTR ds:0x11d9628,0x30
  7bf5fa:	b9 54 79 01 01       	mov    ecx,0x1017954
  7bf5ff:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  7bf602:	c7 00 54 8e 1c 01    	mov    DWORD PTR [eax],0x11c8e54
  7bf608:	c7 40 04 54 8e 1c 01 	mov    DWORD PTR [eax+0x4],0x11c8e54
  7bf60f:	c7 40 08 55 8e 1c 01 	mov    DWORD PTR [eax+0x8],0x11c8e55
  7bf616:	89 70 10             	mov    DWORD PTR [eax+0x10],esi
  7bf619:	89 70 14             	mov    DWORD PTR [eax+0x14],esi
  7bf61c:	89 70 18             	mov    DWORD PTR [eax+0x18],esi
  7bf61f:	89 48 1c             	mov    DWORD PTR [eax+0x1c],ecx
  7bf622:	89 70 20             	mov    DWORD PTR [eax+0x20],esi
  7bf625:	89 70 24             	mov    DWORD PTR [eax+0x24],esi
  7bf628:	89 70 28             	mov    DWORD PTR [eax+0x28],esi
  7bf62b:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  7bf62e:	8b d8                	mov    ebx,eax
  7bf630:	eb 02                	jmp    0x7bf634
  7bf632:	33 db                	xor    ebx,ebx
  7bf634:	8b cf                	mov    ecx,edi
  7bf636:	e8 f5 a4 fe ff       	call   0x7a9b30
  7bf63b:	eb 03                	jmp    0x7bf640
  7bf63d:	8d 49 00             	lea    ecx,[ecx+0x0]
  7bf640:	05 a5 ea fe ff       	add    eax,0xfffeeaa5
  7bf645:	83 f8 0a             	cmp    eax,0xa
  7bf648:	0f 87 48 02 00 00    	ja     0x7bf896
  7bf64e:	0f b6 80 c8 f9 7b 00 	movzx  eax,BYTE PTR [eax+0x7bf9c8]
  7bf655:	ff 24 85 b0 f9 7b 00 	jmp    DWORD PTR [eax*4+0x7bf9b0]
  7bf65c:	53                   	push   ebx
  7bf65d:	8b cf                	mov    ecx,edi
  7bf65f:	e8 4c a6 fe ff       	call   0x7a9cb0
  7bf664:	e9 2d 02 00 00       	jmp    0x7bf896
  7bf669:	8b cf                	mov    ecx,edi
  7bf66b:	e8 c0 a4 fe ff       	call   0x7a9b30
  7bf670:	50                   	push   eax
  7bf671:	8d 4b 10             	lea    ecx,[ebx+0x10]
  7bf674:	e8 07 ef ff ff       	call   0x7be580
  7bf679:	e9 18 02 00 00       	jmp    0x7bf896
  7bf67e:	8b cf                	mov    ecx,edi
  7bf680:	e8 ab a4 fe ff       	call   0x7a9b30
  7bf685:	0f 57 c0             	xorps  xmm0,xmm0
  7bf688:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  7bf68e:	f3 0f 11 44 24 4c    	movss  DWORD PTR [esp+0x4c],xmm0
  7bf694:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  7bf69a:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  7bf6a0:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  7bf6a6:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  7bf6ac:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  7bf6b2:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  7bf6b8:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  7bf6be:	f3 0f 11 44 24 74    	movss  DWORD PTR [esp+0x74],xmm0
  7bf6c4:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  7bf6ca:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  7bf6d0:	05 a2 ea fe ff       	add    eax,0xfffeeaa2
  7bf6d5:	83 f8 04             	cmp    eax,0x4
  7bf6d8:	0f 87 a5 00 00 00    	ja     0x7bf783
  7bf6de:	ff 24 85 d4 f9 7b 00 	jmp    DWORD PTR [eax*4+0x7bf9d4]
  7bf6e5:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  7bf6e9:	51                   	push   ecx
  7bf6ea:	8b cf                	mov    ecx,edi
  7bf6ec:	e8 df a4 fe ff       	call   0x7a9bd0
  7bf6f1:	8b 10                	mov    edx,DWORD PTR [eax]
  7bf6f3:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  7bf6f6:	89 54 24 48          	mov    DWORD PTR [esp+0x48],edx
  7bf6fa:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7bf6fd:	89 4c 24 4c          	mov    DWORD PTR [esp+0x4c],ecx
  7bf701:	89 54 24 50          	mov    DWORD PTR [esp+0x50],edx
  7bf705:	eb 7c                	jmp    0x7bf783
  7bf707:	8d 44 24 24          	lea    eax,[esp+0x24]
  7bf70b:	50                   	push   eax
  7bf70c:	8b cf                	mov    ecx,edi
  7bf70e:	e8 bd a4 fe ff       	call   0x7a9bd0
  7bf713:	8b 08                	mov    ecx,DWORD PTR [eax]
  7bf715:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7bf718:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  7bf71b:	89 4c 24 54          	mov    DWORD PTR [esp+0x54],ecx
  7bf71f:	89 54 24 58          	mov    DWORD PTR [esp+0x58],edx
  7bf723:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  7bf727:	eb 5a                	jmp    0x7bf783
  7bf729:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  7bf72d:	51                   	push   ecx
  7bf72e:	8b cf                	mov    ecx,edi
  7bf730:	e8 9b a4 fe ff       	call   0x7a9bd0
  7bf735:	8b 10                	mov    edx,DWORD PTR [eax]
  7bf737:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  7bf73a:	89 54 24 60          	mov    DWORD PTR [esp+0x60],edx
  7bf73e:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7bf741:	89 4c 24 64          	mov    DWORD PTR [esp+0x64],ecx
  7bf745:	89 54 24 68          	mov    DWORD PTR [esp+0x68],edx
  7bf749:	eb 38                	jmp    0x7bf783
  7bf74b:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  7bf74f:	50                   	push   eax
  7bf750:	8b cf                	mov    ecx,edi
  7bf752:	e8 79 a4 fe ff       	call   0x7a9bd0
  7bf757:	8b 08                	mov    ecx,DWORD PTR [eax]
  7bf759:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7bf75c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  7bf75f:	89 4c 24 6c          	mov    DWORD PTR [esp+0x6c],ecx
  7bf763:	89 54 24 70          	mov    DWORD PTR [esp+0x70],edx
  7bf767:	89 44 24 74          	mov    DWORD PTR [esp+0x74],eax
  7bf76b:	eb 16                	jmp    0x7bf783
  7bf76d:	8b cf                	mov    ecx,edi
  7bf76f:	e8 6c a3 fe ff       	call   0x7a9ae0
  7bf774:	d9 5c 24 78          	fstp   DWORD PTR [esp+0x78]
  7bf778:	8b cf                	mov    ecx,edi
  7bf77a:	e8 61 a3 fe ff       	call   0x7a9ae0
  7bf77f:	d9 5c 24 7c          	fstp   DWORD PTR [esp+0x7c]
  7bf783:	8b cf                	mov    ecx,edi
  7bf785:	e8 a6 a3 fe ff       	call   0x7a9b30
  7bf78a:	3d 63 15 01 00       	cmp    eax,0x11563
  7bf78f:	0f 85 3b ff ff ff    	jne    0x7bf6d0
  7bf795:	8b 43 14             	mov    eax,DWORD PTR [ebx+0x14]
  7bf798:	3b 43 18             	cmp    eax,DWORD PTR [ebx+0x18]
  7bf79b:	8d 4b 10             	lea    ecx,[ebx+0x10]
  7bf79e:	73 29                	jae    0x7bf7c9
  7bf7a0:	3b c6                	cmp    eax,esi
  7bf7a2:	8d 50 38             	lea    edx,[eax+0x38]
  7bf7a5:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  7bf7a8:	0f 84 e8 00 00 00    	je     0x7bf896
  7bf7ae:	b9 0e 00 00 00       	mov    ecx,0xe
  7bf7b3:	8d 74 24 48          	lea    esi,[esp+0x48]
  7bf7b7:	8b f8                	mov    edi,eax
  7bf7b9:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  7bf7bb:	8b bc 24 84 00 00 00 	mov    edi,DWORD PTR [esp+0x84]
  7bf7c2:	33 f6                	xor    esi,esi
  7bf7c4:	e9 cd 00 00 00       	jmp    0x7bf896
  7bf7c9:	8d 54 24 48          	lea    edx,[esp+0x48]
  7bf7cd:	52                   	push   edx
  7bf7ce:	50                   	push   eax
  7bf7cf:	e8 cc 8f 39 00       	call   0xb587a0
  7bf7d4:	e9 bd 00 00 00       	jmp    0x7bf896
  7bf7d9:	8b cf                	mov    ecx,edi
  7bf7db:	e8 50 a3 fe ff       	call   0x7a9b30
  7bf7e0:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
  7bf7e3:	8b e8                	mov    ebp,eax
  7bf7e5:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  7bf7e8:	2b c8                	sub    ecx,eax
  7bf7ea:	c1 f9 02             	sar    ecx,0x2
  7bf7ed:	3b e9                	cmp    ebp,ecx
  7bf7ef:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  7bf7f3:	0f 86 9d 00 00 00    	jbe    0x7bf896
  7bf7f9:	3b ee                	cmp    ebp,esi
  7bf7fb:	8b 7b 24             	mov    edi,DWORD PTR [ebx+0x24]
  7bf7fe:	74 26                	je     0x7bf826
  7bf800:	8b 53 2c             	mov    edx,DWORD PTR [ebx+0x2c]
  7bf803:	68 e7 00 00 00       	push   0xe7
  7bf808:	68 88 99 f9 00       	push   0xf99988
  7bf80d:	56                   	push   esi
  7bf80e:	56                   	push   esi
  7bf80f:	52                   	push   edx
  7bf810:	8d 04 ad 00 00 00 00 	lea    eax,[ebp*4+0x0]
  7bf817:	50                   	push   eax
  7bf818:	e8 e3 4c d2 ff       	call   0x4e4500
  7bf81d:	8b f0                	mov    esi,eax
  7bf81f:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  7bf823:	83 c4 18             	add    esp,0x18
  7bf826:	2b f8                	sub    edi,eax
  7bf828:	57                   	push   edi
  7bf829:	50                   	push   eax
  7bf82a:	56                   	push   esi
  7bf82b:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  7bf831:	8b 43 20             	mov    eax,DWORD PTR [ebx+0x20]
  7bf834:	83 c4 0c             	add    esp,0xc
  7bf837:	85 c0                	test   eax,eax
  7bf839:	74 09                	je     0x7bf844
  7bf83b:	50                   	push   eax
  7bf83c:	e8 9f 4c d2 ff       	call   0x4e44e0
  7bf841:	83 c4 04             	add    esp,0x4
  7bf844:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  7bf847:	2b 43 20             	sub    eax,DWORD PTR [ebx+0x20]
  7bf84a:	8b bc 24 84 00 00 00 	mov    edi,DWORD PTR [esp+0x84]
  7bf851:	c1 f8 02             	sar    eax,0x2
  7bf854:	8d 0c 86             	lea    ecx,[esi+eax*4]
  7bf857:	8d 14 ae             	lea    edx,[esi+ebp*4]
  7bf85a:	89 73 20             	mov    DWORD PTR [ebx+0x20],esi
  7bf85d:	89 4b 24             	mov    DWORD PTR [ebx+0x24],ecx
  7bf860:	89 53 28             	mov    DWORD PTR [ebx+0x28],edx
  7bf863:	33 f6                	xor    esi,esi
  7bf865:	eb 2f                	jmp    0x7bf896
  7bf867:	8b cf                	mov    ecx,edi
  7bf869:	e8 c2 a2 fe ff       	call   0x7a9b30
  7bf86e:	8b 53 24             	mov    edx,DWORD PTR [ebx+0x24]
  7bf871:	3b 53 28             	cmp    edx,DWORD PTR [ebx+0x28]
  7bf874:	8d 4b 20             	lea    ecx,[ebx+0x20]
  7bf877:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  7bf87b:	73 0e                	jae    0x7bf88b
  7bf87d:	3b d6                	cmp    edx,esi
  7bf87f:	8d 6a 04             	lea    ebp,[edx+0x4]
  7bf882:	89 69 04             	mov    DWORD PTR [ecx+0x4],ebp
  7bf885:	74 0f                	je     0x7bf896
  7bf887:	89 02                	mov    DWORD PTR [edx],eax
  7bf889:	eb 0b                	jmp    0x7bf896
  7bf88b:	8d 44 24 14          	lea    eax,[esp+0x14]
  7bf88f:	50                   	push   eax
  7bf890:	52                   	push   edx
  7bf891:	e8 8a 2b 1c 00       	call   0x982420
  7bf896:	8b cf                	mov    ecx,edi
  7bf898:	e8 93 a2 fe ff       	call   0x7a9b30
  7bf89d:	3d 66 15 01 00       	cmp    eax,0x11566
  7bf8a2:	0f 85 98 fd ff ff    	jne    0x7bf640
  7bf8a8:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7bf8ac:	8b 81 2c 01 00 00    	mov    eax,DWORD PTR [ecx+0x12c]
  7bf8b2:	81 c1 28 01 00 00    	add    ecx,0x128
  7bf8b8:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  7bf8bb:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  7bf8bf:	73 15                	jae    0x7bf8d6
  7bf8c1:	3b c6                	cmp    eax,esi
  7bf8c3:	8d 50 04             	lea    edx,[eax+0x4]
  7bf8c6:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  7bf8c9:	0f 84 c2 00 00 00    	je     0x7bf991
  7bf8cf:	89 18                	mov    DWORD PTR [eax],ebx
  7bf8d1:	e9 bb 00 00 00       	jmp    0x7bf991
  7bf8d6:	8d 54 24 14          	lea    edx,[esp+0x14]
  7bf8da:	52                   	push   edx
  7bf8db:	50                   	push   eax
  7bf8dc:	e8 3f 2b 1c 00       	call   0x982420
  7bf8e1:	e9 ab 00 00 00       	jmp    0x7bf991
  7bf8e6:	8b cf                	mov    ecx,edi
  7bf8e8:	e8 43 a2 fe ff       	call   0x7a9b30
  7bf8ed:	8b 8b 30 01 00 00    	mov    ecx,DWORD PTR [ebx+0x130]
  7bf8f3:	8b f0                	mov    esi,eax
  7bf8f5:	8b 83 28 01 00 00    	mov    eax,DWORD PTR [ebx+0x128]
  7bf8fb:	2b c8                	sub    ecx,eax
  7bf8fd:	c1 f9 02             	sar    ecx,0x2
  7bf900:	3b f1                	cmp    esi,ecx
  7bf902:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  7bf906:	0f 86 85 00 00 00    	jbe    0x7bf991
  7bf90c:	85 f6                	test   esi,esi
  7bf90e:	8b ab 2c 01 00 00    	mov    ebp,DWORD PTR [ebx+0x12c]
  7bf914:	74 2d                	je     0x7bf943
  7bf916:	8b 93 34 01 00 00    	mov    edx,DWORD PTR [ebx+0x134]
  7bf91c:	68 e7 00 00 00       	push   0xe7
  7bf921:	68 88 99 f9 00       	push   0xf99988
  7bf926:	6a 00                	push   0x0
  7bf928:	6a 00                	push   0x0
  7bf92a:	52                   	push   edx
  7bf92b:	8d 04 b5 00 00 00 00 	lea    eax,[esi*4+0x0]
  7bf932:	50                   	push   eax
  7bf933:	e8 c8 4b d2 ff       	call   0x4e4500
  7bf938:	8b d8                	mov    ebx,eax
  7bf93a:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  7bf93e:	83 c4 18             	add    esp,0x18
  7bf941:	eb 02                	jmp    0x7bf945
  7bf943:	33 db                	xor    ebx,ebx
  7bf945:	2b e8                	sub    ebp,eax
  7bf947:	55                   	push   ebp
  7bf948:	50                   	push   eax
  7bf949:	53                   	push   ebx
  7bf94a:	ff 15 88 66 f9 00    	call   DWORD PTR ds:0xf96688
  7bf950:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  7bf954:	8b 85 28 01 00 00    	mov    eax,DWORD PTR [ebp+0x128]
  7bf95a:	83 c4 0c             	add    esp,0xc
  7bf95d:	85 c0                	test   eax,eax
  7bf95f:	74 09                	je     0x7bf96a
  7bf961:	50                   	push   eax
  7bf962:	e8 79 4b d2 ff       	call   0x4e44e0
  7bf967:	83 c4 04             	add    esp,0x4
  7bf96a:	8b 85 2c 01 00 00    	mov    eax,DWORD PTR [ebp+0x12c]
  7bf970:	2b 85 28 01 00 00    	sub    eax,DWORD PTR [ebp+0x128]
  7bf976:	8d 14 b3             	lea    edx,[ebx+esi*4]
  7bf979:	c1 f8 02             	sar    eax,0x2
  7bf97c:	8d 0c 83             	lea    ecx,[ebx+eax*4]
  7bf97f:	89 9d 28 01 00 00    	mov    DWORD PTR [ebp+0x128],ebx
  7bf985:	89 8d 2c 01 00 00    	mov    DWORD PTR [ebp+0x12c],ecx
  7bf98b:	89 95 30 01 00 00    	mov    DWORD PTR [ebp+0x130],edx
  7bf991:	8b cf                	mov    ecx,edi
  7bf993:	e8 98 a1 fe ff       	call   0x7a9b30
  7bf998:	3d 67 15 01 00       	cmp    eax,0x11567
  7bf99d:	0f 85 0d fc ff ff    	jne    0x7bf5b0
  7bf9a3:	5f                   	pop    edi
  7bf9a4:	5e                   	pop    esi
  7bf9a5:	5d                   	pop    ebp
  7bf9a6:	5b                   	pop    ebx
  7bf9a7:	83 c4 70             	add    esp,0x70
  7bf9aa:	c2 04 00             	ret    0x4
