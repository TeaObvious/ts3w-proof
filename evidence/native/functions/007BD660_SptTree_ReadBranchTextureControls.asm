# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007bd660 <.text+0x3bc660>:
  7bd660:	83 ec 08             	sub    esp,0x8
  7bd663:	53                   	push   ebx
  7bd664:	55                   	push   ebp
  7bd665:	56                   	push   esi
  7bd666:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  7bd66a:	33 c0                	xor    eax,eax
  7bd66c:	57                   	push   edi
  7bd66d:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  7bd671:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  7bd675:	eb 0d                	jmp    0x7bd684
  7bd677:	eb 07                	jmp    0x7bd680
  7bd679:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  7bd680:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7bd684:	8b 51 5c             	mov    edx,DWORD PTR [ecx+0x5c]
  7bd687:	2b 51 58             	sub    edx,DWORD PTR [ecx+0x58]
  7bd68a:	c1 fa 02             	sar    edx,0x2
  7bd68d:	3b c2                	cmp    eax,edx
  7bd68f:	73 08                	jae    0x7bd699
  7bd691:	8b 49 58             	mov    ecx,DWORD PTR [ecx+0x58]
  7bd694:	8b 04 81             	mov    eax,DWORD PTR [ecx+eax*4]
  7bd697:	eb 06                	jmp    0x7bd69f
  7bd699:	8b 81 24 01 00 00    	mov    eax,DWORD PTR [ecx+0x124]
  7bd69f:	8d b8 64 36 01 00    	lea    edi,[eax+0x13664]
  7bd6a5:	bd 07 00 00 00       	mov    ebp,0x7
  7bd6aa:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  7bd6b0:	8b ce                	mov    ecx,esi
  7bd6b2:	e8 79 c4 fe ff       	call   0x7a9b30
  7bd6b7:	8b ce                	mov    ecx,esi
  7bd6b9:	e8 72 c4 fe ff       	call   0x7a9b30
  7bd6be:	8b d8                	mov    ebx,eax
  7bd6c0:	8d 83 ad 3c ff ff    	lea    eax,[ebx-0xc353]
  7bd6c6:	83 f8 0f             	cmp    eax,0xf
  7bd6c9:	0f 87 06 01 00 00    	ja     0x7bd7d5
  7bd6cf:	ff 24 85 20 d8 7b 00 	jmp    DWORD PTR [eax*4+0x7bd820]
  7bd6d6:	8b ce                	mov    ecx,esi
  7bd6d8:	e8 03 c4 fe ff       	call   0x7a9ae0
  7bd6dd:	d9 5f fc             	fstp   DWORD PTR [edi-0x4]
  7bd6e0:	e9 f0 00 00 00       	jmp    0x7bd7d5
  7bd6e5:	8b ce                	mov    ecx,esi
  7bd6e7:	e8 f4 c3 fe ff       	call   0x7a9ae0
  7bd6ec:	d9 1f                	fstp   DWORD PTR [edi]
  7bd6ee:	e9 e2 00 00 00       	jmp    0x7bd7d5
  7bd6f3:	8b 06                	mov    eax,DWORD PTR [esi]
  7bd6f5:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7bd6f8:	8d 50 01             	lea    edx,[eax+0x1]
  7bd6fb:	89 16                	mov    DWORD PTR [esi],edx
  7bd6fd:	80 3c 08 00          	cmp    BYTE PTR [eax+ecx*1],0x0
  7bd701:	0f 95 c2             	setne  dl
  7bd704:	88 57 10             	mov    BYTE PTR [edi+0x10],dl
  7bd707:	e9 c9 00 00 00       	jmp    0x7bd7d5
  7bd70c:	8b 06                	mov    eax,DWORD PTR [esi]
  7bd70e:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  7bd711:	8d 48 01             	lea    ecx,[eax+0x1]
  7bd714:	89 0e                	mov    DWORD PTR [esi],ecx
  7bd716:	80 3c 10 00          	cmp    BYTE PTR [eax+edx*1],0x0
  7bd71a:	0f 95 c0             	setne  al
  7bd71d:	88 47 11             	mov    BYTE PTR [edi+0x11],al
  7bd720:	e9 b0 00 00 00       	jmp    0x7bd7d5
  7bd725:	8b 06                	mov    eax,DWORD PTR [esi]
  7bd727:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  7bd72a:	8d 48 01             	lea    ecx,[eax+0x1]
  7bd72d:	89 0e                	mov    DWORD PTR [esi],ecx
  7bd72f:	80 3c 10 00          	cmp    BYTE PTR [eax+edx*1],0x0
  7bd733:	0f 95 c0             	setne  al
  7bd736:	88 47 12             	mov    BYTE PTR [edi+0x12],al
  7bd739:	e9 97 00 00 00       	jmp    0x7bd7d5
  7bd73e:	8b ce                	mov    ecx,esi
  7bd740:	e8 9b c3 fe ff       	call   0x7a9ae0
  7bd745:	d9 5f 04             	fstp   DWORD PTR [edi+0x4]
  7bd748:	e9 88 00 00 00       	jmp    0x7bd7d5
  7bd74d:	8b ce                	mov    ecx,esi
  7bd74f:	e8 8c c3 fe ff       	call   0x7a9ae0
  7bd754:	d9 5f 0c             	fstp   DWORD PTR [edi+0xc]
  7bd757:	eb 7c                	jmp    0x7bd7d5
  7bd759:	8b ce                	mov    ecx,esi
  7bd75b:	e8 80 c3 fe ff       	call   0x7a9ae0
  7bd760:	d9 5f 08             	fstp   DWORD PTR [edi+0x8]
  7bd763:	eb 70                	jmp    0x7bd7d5
  7bd765:	8b 06                	mov    eax,DWORD PTR [esi]
  7bd767:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  7bd76a:	8d 48 01             	lea    ecx,[eax+0x1]
  7bd76d:	89 0e                	mov    DWORD PTR [esi],ecx
  7bd76f:	80 3c 10 00          	cmp    BYTE PTR [eax+edx*1],0x0
  7bd773:	0f 95 c0             	setne  al
  7bd776:	88 47 13             	mov    BYTE PTR [edi+0x13],al
  7bd779:	eb 5a                	jmp    0x7bd7d5
  7bd77b:	8b 06                	mov    eax,DWORD PTR [esi]
  7bd77d:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  7bd780:	8d 48 01             	lea    ecx,[eax+0x1]
  7bd783:	89 0e                	mov    DWORD PTR [esi],ecx
  7bd785:	80 3c 10 00          	cmp    BYTE PTR [eax+edx*1],0x0
  7bd789:	0f 95 c0             	setne  al
  7bd78c:	88 47 14             	mov    BYTE PTR [edi+0x14],al
  7bd78f:	eb 44                	jmp    0x7bd7d5
  7bd791:	8b ce                	mov    ecx,esi
  7bd793:	e8 48 c3 fe ff       	call   0x7a9ae0
  7bd798:	d9 5f ec             	fstp   DWORD PTR [edi-0x14]
  7bd79b:	eb 38                	jmp    0x7bd7d5
  7bd79d:	8b ce                	mov    ecx,esi
  7bd79f:	e8 3c c3 fe ff       	call   0x7a9ae0
  7bd7a4:	d9 5f f0             	fstp   DWORD PTR [edi-0x10]
  7bd7a7:	eb 2c                	jmp    0x7bd7d5
  7bd7a9:	8b ce                	mov    ecx,esi
  7bd7ab:	e8 30 c3 fe ff       	call   0x7a9ae0
  7bd7b0:	d9 5f f4             	fstp   DWORD PTR [edi-0xc]
  7bd7b3:	eb 20                	jmp    0x7bd7d5
  7bd7b5:	8b ce                	mov    ecx,esi
  7bd7b7:	e8 24 c3 fe ff       	call   0x7a9ae0
  7bd7bc:	d9 5f f8             	fstp   DWORD PTR [edi-0x8]
  7bd7bf:	eb 14                	jmp    0x7bd7d5
  7bd7c1:	8b 06                	mov    eax,DWORD PTR [esi]
  7bd7c3:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  7bd7c6:	8d 48 01             	lea    ecx,[eax+0x1]
  7bd7c9:	89 0e                	mov    DWORD PTR [esi],ecx
  7bd7cb:	80 3c 10 00          	cmp    BYTE PTR [eax+edx*1],0x0
  7bd7cf:	0f 95 c0             	setne  al
  7bd7d2:	88 47 15             	mov    BYTE PTR [edi+0x15],al
  7bd7d5:	81 fb 53 c3 00 00    	cmp    ebx,0xc353
  7bd7db:	0f 85 d6 fe ff ff    	jne    0x7bd6b7
  7bd7e1:	83 c7 2c             	add    edi,0x2c
  7bd7e4:	83 ed 01             	sub    ebp,0x1
  7bd7e7:	0f 85 c3 fe ff ff    	jne    0x7bd6b0
  7bd7ed:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7bd7f1:	8b 51 5c             	mov    edx,DWORD PTR [ecx+0x5c]
  7bd7f4:	2b 51 58             	sub    edx,DWORD PTR [ecx+0x58]
  7bd7f7:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  7bd7fb:	83 c0 01             	add    eax,0x1
  7bd7fe:	c1 fa 02             	sar    edx,0x2
  7bd801:	3b c2                	cmp    eax,edx
  7bd803:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  7bd807:	0f 86 73 fe ff ff    	jbe    0x7bd680
  7bd80d:	8b ce                	mov    ecx,esi
  7bd80f:	e8 1c c3 fe ff       	call   0x7a9b30
  7bd814:	5f                   	pop    edi
  7bd815:	5e                   	pop    esi
  7bd816:	5d                   	pop    ebp
  7bd817:	5b                   	pop    ebx
  7bd818:	83 c4 08             	add    esp,0x8
  7bd81b:	c2 04 00             	ret    0x4
