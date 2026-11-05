# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3PipelineHelper.dll CAW 1.22.10 original-byte window and independent linear disassembly
Export: OptimizeMesh at 0x100366c0
Paired annotated Ghidra pseudocode: 100366C0_OptimizeMesh.c
Window: [0x100366c0, 0x1003689e) (478 bytes, stop exclusive)
Ghidra function-body intervals: [0x100366c0, 0x1003684a), [0x10036850, 0x1003689e)
Boundary rule: entry through the maximum address of the currently defined Ghidra body.
This is a bounded original-file byte window, not a proof of complete function extent;
it can include gaps, padding, or data. Branches and noncontiguous bodies may extend beyond it.
GNU objdump decodes linearly in Intel syntax; verify control flow against bytes and pseudocode.

ORIGINAL BYTES (16 per line)
100366c0: 83 ec 24 b8 ab aa aa aa f7 64 24 2c 53 55 56 57
100366d0: 8b da 8d 44 24 10 50 d1 eb 53 8d 4c 24 2c c7 44
100366e0: 24 18 f0 4d 3a 10 e8 15 a7 19 00 8b 74 24 24 33
100366f0: d2 3b da 76 08 8b cb 33 c0 8b fe f3 ab 8b 4c 24
10036700: 3c 8b 6c 24 38 89 54 24 14 89 54 24 18 89 54 24
10036710: 1c 8b 54 24 3c 51 8d 44 95 00 50 55 8d 4c 24 20
10036720: c7 44 24 2c d4 4d 3a 10 e8 b3 0c 13 00 8b 7c 24
10036730: 40 56 6a 01 57 53 55 e8 f6 5d 02 00 85 c0 7d 28
10036740: 8b 44 24 14 85 c0 74 09 50 e8 92 60 02 00 83 c4
10036750: 04 85 f6 74 09 56 e8 85 60 02 00 83 c4 04 5f 5e
10036760: 5d 33 c0 5b 83 c4 24 c3 85 db 8b d6 76 30 8d 45
10036770: 08 89 5c 24 38 8b 0a 8b 74 24 14 8d 0c 49 8d 0c
10036780: 8e 8b 31 89 70 f8 8b 71 04 89 70 fc 8b 49 08 89
10036790: 08 83 c2 04 83 c0 0c 83 6c 24 38 01 75 d7 85 ff
100367a0: 74 27 68 e7 00 00 00 68 64 47 3a 10 6a 00 6a 00
100367b0: 8d 14 bd 00 00 00 00 68 b8 4d 3a 10 52 e8 3e 60
100367c0: 02 00 83 c4 18 8b f0 eb 02 33 f6 85 ff 76 0c 8b
100367d0: cf 33 c0 8b fe f3 ab 8b 7c 24 40 56 6a 01 57 53
100367e0: 55 e8 46 5d 02 00 85 c0 7d 3d 85 f6 74 09 56 e8
100367f0: ec 5f 02 00 83 c4 04 8b 44 24 14 85 c0 74 09 50
10036800: e8 db 5f 02 00 83 c4 04 8b 44 24 24 85 c0 0f 84
10036810: 4a ff ff ff 50 e8 c6 5f 02 00 83 c4 04 5f 5e 5d
10036820: 33 c0 5b 83 c4 24 c3 33 c0 85 ff 76 11 8b 4c 24
10036830: 44 8b 14 86 89 04 91 83 c0 01 3b c7 72 f3 8b 4c
10036840: 24 3c 33 c0 85 c9 76 1a eb 06 8d 9b 00 00 00 00
10036850: 8b 54 85 00 8b 14 96 89 54 85 00 83 c0 01 3b c1
10036860: 72 ee 85 f6 74 09 56 e8 74 5f 02 00 83 c4 04 8b
10036870: 44 24 14 85 c0 74 09 50 e8 63 5f 02 00 83 c4 04
10036880: 8b 44 24 24 85 c0 74 09 50 e8 52 5f 02 00 83 c4
10036890: 04 5f 5e 5d b8 01 00 00 00 5b 83 c4 24 c3

LINEAR DISASSEMBLY
100366c0 <.text+0x356c0>:
100366c0:	83 ec 24             	sub    esp,0x24
100366c3:	b8 ab aa aa aa       	mov    eax,0xaaaaaaab
100366c8:	f7 64 24 2c          	mul    DWORD PTR [esp+0x2c]
100366cc:	53                   	push   ebx
100366cd:	55                   	push   ebp
100366ce:	56                   	push   esi
100366cf:	57                   	push   edi
100366d0:	8b da                	mov    ebx,edx
100366d2:	8d 44 24 10          	lea    eax,[esp+0x10]
100366d6:	50                   	push   eax
100366d7:	d1 eb                	shr    ebx,1
100366d9:	53                   	push   ebx
100366da:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
100366de:	c7 44 24 18 f0 4d 3a 	mov    DWORD PTR [esp+0x18],0x103a4df0
100366e5:	10 
100366e6:	e8 15 a7 19 00       	call   0x101d0e00
100366eb:	8b 74 24 24          	mov    esi,DWORD PTR [esp+0x24]
100366ef:	33 d2                	xor    edx,edx
100366f1:	3b da                	cmp    ebx,edx
100366f3:	76 08                	jbe    0x100366fd
100366f5:	8b cb                	mov    ecx,ebx
100366f7:	33 c0                	xor    eax,eax
100366f9:	8b fe                	mov    edi,esi
100366fb:	f3 ab                	rep stos DWORD PTR es:[edi],eax
100366fd:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
10036701:	8b 6c 24 38          	mov    ebp,DWORD PTR [esp+0x38]
10036705:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
10036709:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
1003670d:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
10036711:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
10036715:	51                   	push   ecx
10036716:	8d 44 95 00          	lea    eax,[ebp+edx*4+0x0]
1003671a:	50                   	push   eax
1003671b:	55                   	push   ebp
1003671c:	8d 4c 24 20          	lea    ecx,[esp+0x20]
10036720:	c7 44 24 2c d4 4d 3a 	mov    DWORD PTR [esp+0x2c],0x103a4dd4
10036727:	10 
10036728:	e8 b3 0c 13 00       	call   0x101673e0
1003672d:	8b 7c 24 40          	mov    edi,DWORD PTR [esp+0x40]
10036731:	56                   	push   esi
10036732:	6a 01                	push   0x1
10036734:	57                   	push   edi
10036735:	53                   	push   ebx
10036736:	55                   	push   ebp
10036737:	e8 f6 5d 02 00       	call   0x1005c532
1003673c:	85 c0                	test   eax,eax
1003673e:	7d 28                	jge    0x10036768
10036740:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
10036744:	85 c0                	test   eax,eax
10036746:	74 09                	je     0x10036751
10036748:	50                   	push   eax
10036749:	e8 92 60 02 00       	call   0x1005c7e0
1003674e:	83 c4 04             	add    esp,0x4
10036751:	85 f6                	test   esi,esi
10036753:	74 09                	je     0x1003675e
10036755:	56                   	push   esi
10036756:	e8 85 60 02 00       	call   0x1005c7e0
1003675b:	83 c4 04             	add    esp,0x4
1003675e:	5f                   	pop    edi
1003675f:	5e                   	pop    esi
10036760:	5d                   	pop    ebp
10036761:	33 c0                	xor    eax,eax
10036763:	5b                   	pop    ebx
10036764:	83 c4 24             	add    esp,0x24
10036767:	c3                   	ret
10036768:	85 db                	test   ebx,ebx
1003676a:	8b d6                	mov    edx,esi
1003676c:	76 30                	jbe    0x1003679e
1003676e:	8d 45 08             	lea    eax,[ebp+0x8]
10036771:	89 5c 24 38          	mov    DWORD PTR [esp+0x38],ebx
10036775:	8b 0a                	mov    ecx,DWORD PTR [edx]
10036777:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
1003677b:	8d 0c 49             	lea    ecx,[ecx+ecx*2]
1003677e:	8d 0c 8e             	lea    ecx,[esi+ecx*4]
10036781:	8b 31                	mov    esi,DWORD PTR [ecx]
10036783:	89 70 f8             	mov    DWORD PTR [eax-0x8],esi
10036786:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
10036789:	89 70 fc             	mov    DWORD PTR [eax-0x4],esi
1003678c:	8b 49 08             	mov    ecx,DWORD PTR [ecx+0x8]
1003678f:	89 08                	mov    DWORD PTR [eax],ecx
10036791:	83 c2 04             	add    edx,0x4
10036794:	83 c0 0c             	add    eax,0xc
10036797:	83 6c 24 38 01       	sub    DWORD PTR [esp+0x38],0x1
1003679c:	75 d7                	jne    0x10036775
1003679e:	85 ff                	test   edi,edi
100367a0:	74 27                	je     0x100367c9
100367a2:	68 e7 00 00 00       	push   0xe7
100367a7:	68 64 47 3a 10       	push   0x103a4764
100367ac:	6a 00                	push   0x0
100367ae:	6a 00                	push   0x0
100367b0:	8d 14 bd 00 00 00 00 	lea    edx,[edi*4+0x0]
100367b7:	68 b8 4d 3a 10       	push   0x103a4db8
100367bc:	52                   	push   edx
100367bd:	e8 3e 60 02 00       	call   0x1005c800
100367c2:	83 c4 18             	add    esp,0x18
100367c5:	8b f0                	mov    esi,eax
100367c7:	eb 02                	jmp    0x100367cb
100367c9:	33 f6                	xor    esi,esi
100367cb:	85 ff                	test   edi,edi
100367cd:	76 0c                	jbe    0x100367db
100367cf:	8b cf                	mov    ecx,edi
100367d1:	33 c0                	xor    eax,eax
100367d3:	8b fe                	mov    edi,esi
100367d5:	f3 ab                	rep stos DWORD PTR es:[edi],eax
100367d7:	8b 7c 24 40          	mov    edi,DWORD PTR [esp+0x40]
100367db:	56                   	push   esi
100367dc:	6a 01                	push   0x1
100367de:	57                   	push   edi
100367df:	53                   	push   ebx
100367e0:	55                   	push   ebp
100367e1:	e8 46 5d 02 00       	call   0x1005c52c
100367e6:	85 c0                	test   eax,eax
100367e8:	7d 3d                	jge    0x10036827
100367ea:	85 f6                	test   esi,esi
100367ec:	74 09                	je     0x100367f7
100367ee:	56                   	push   esi
100367ef:	e8 ec 5f 02 00       	call   0x1005c7e0
100367f4:	83 c4 04             	add    esp,0x4
100367f7:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
100367fb:	85 c0                	test   eax,eax
100367fd:	74 09                	je     0x10036808
100367ff:	50                   	push   eax
10036800:	e8 db 5f 02 00       	call   0x1005c7e0
10036805:	83 c4 04             	add    esp,0x4
10036808:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
1003680c:	85 c0                	test   eax,eax
1003680e:	0f 84 4a ff ff ff    	je     0x1003675e
10036814:	50                   	push   eax
10036815:	e8 c6 5f 02 00       	call   0x1005c7e0
1003681a:	83 c4 04             	add    esp,0x4
1003681d:	5f                   	pop    edi
1003681e:	5e                   	pop    esi
1003681f:	5d                   	pop    ebp
10036820:	33 c0                	xor    eax,eax
10036822:	5b                   	pop    ebx
10036823:	83 c4 24             	add    esp,0x24
10036826:	c3                   	ret
10036827:	33 c0                	xor    eax,eax
10036829:	85 ff                	test   edi,edi
1003682b:	76 11                	jbe    0x1003683e
1003682d:	8b 4c 24 44          	mov    ecx,DWORD PTR [esp+0x44]
10036831:	8b 14 86             	mov    edx,DWORD PTR [esi+eax*4]
10036834:	89 04 91             	mov    DWORD PTR [ecx+edx*4],eax
10036837:	83 c0 01             	add    eax,0x1
1003683a:	3b c7                	cmp    eax,edi
1003683c:	72 f3                	jb     0x10036831
1003683e:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
10036842:	33 c0                	xor    eax,eax
10036844:	85 c9                	test   ecx,ecx
10036846:	76 1a                	jbe    0x10036862
10036848:	eb 06                	jmp    0x10036850
1003684a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
10036850:	8b 54 85 00          	mov    edx,DWORD PTR [ebp+eax*4+0x0]
10036854:	8b 14 96             	mov    edx,DWORD PTR [esi+edx*4]
10036857:	89 54 85 00          	mov    DWORD PTR [ebp+eax*4+0x0],edx
1003685b:	83 c0 01             	add    eax,0x1
1003685e:	3b c1                	cmp    eax,ecx
10036860:	72 ee                	jb     0x10036850
10036862:	85 f6                	test   esi,esi
10036864:	74 09                	je     0x1003686f
10036866:	56                   	push   esi
10036867:	e8 74 5f 02 00       	call   0x1005c7e0
1003686c:	83 c4 04             	add    esp,0x4
1003686f:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
10036873:	85 c0                	test   eax,eax
10036875:	74 09                	je     0x10036880
10036877:	50                   	push   eax
10036878:	e8 63 5f 02 00       	call   0x1005c7e0
1003687d:	83 c4 04             	add    esp,0x4
10036880:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
10036884:	85 c0                	test   eax,eax
10036886:	74 09                	je     0x10036891
10036888:	50                   	push   eax
10036889:	e8 52 5f 02 00       	call   0x1005c7e0
1003688e:	83 c4 04             	add    esp,0x4
10036891:	5f                   	pop    edi
10036892:	5e                   	pop    esi
10036893:	5d                   	pop    ebp
10036894:	b8 01 00 00 00       	mov    eax,0x1
10036899:	5b                   	pop    ebx
1003689a:	83 c4 24             	add    esp,0x24
1003689d:	c3                   	ret
