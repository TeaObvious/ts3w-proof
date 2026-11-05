# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c205e0 <.text+0x81f5e0>:
  c205e0:	83 ec 28             	sub    esp,0x28
  c205e3:	53                   	push   ebx
  c205e4:	55                   	push   ebp
  c205e5:	56                   	push   esi
  c205e6:	57                   	push   edi
  c205e7:	8b 7c 24 4c          	mov    edi,DWORD PTR [esp+0x4c]
  c205eb:	8b ef                	mov    ebp,edi
  c205ed:	c1 ed 04             	shr    ebp,0x4
  c205f0:	83 fd 01             	cmp    ebp,0x1
  c205f3:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  c205f7:	89 6c 24 28          	mov    DWORD PTR [esp+0x28],ebp
  c205fb:	0f 86 d4 02 00 00    	jbe    0xc208d5
  c20601:	83 7c 24 54 00       	cmp    DWORD PTR [esp+0x54],0x0
  c20606:	75 0c                	jne    0xc20614
  c20608:	5f                   	pop    edi
  c20609:	5e                   	pop    esi
  c2060a:	5d                   	pop    ebp
  c2060b:	32 c0                	xor    al,al
  c2060d:	5b                   	pop    ebx
  c2060e:	83 c4 28             	add    esp,0x28
  c20611:	c2 1c 00             	ret    0x1c
  c20614:	8b 5c 24 50          	mov    ebx,DWORD PTR [esp+0x50]
  c20618:	85 db                	test   ebx,ebx
  c2061a:	74 ec                	je     0xc20608
  c2061c:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  c20620:	8b c1                	mov    eax,ecx
  c20622:	33 d2                	xor    edx,edx
  c20624:	f7 f3                	div    ebx
  c20626:	8b f0                	mov    esi,eax
  c20628:	0f af c3             	imul   eax,ebx
  c2062b:	2b c8                	sub    ecx,eax
  c2062d:	0f b6 44 24 44       	movzx  eax,BYTE PTR [esp+0x44]
  c20632:	83 e8 00             	sub    eax,0x0
  c20635:	8b d9                	mov    ebx,ecx
  c20637:	0f 84 b0 00 00 00    	je     0xc206ed
  c2063d:	83 e8 01             	sub    eax,0x1
  c20640:	75 c6                	jne    0xc20608
  c20642:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  c20646:	51                   	push   ecx
  c20647:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  c2064b:	e8 a0 e4 95 ff       	call   0x57eaf0
  c20650:	33 c0                	xor    eax,eax
  c20652:	85 ed                	test   ebp,ebp
  c20654:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  c20658:	0f 86 f5 02 00 00    	jbe    0xc20953
  c2065e:	8b cb                	mov    ecx,ebx
  c20660:	8b 5c 24 40          	mov    ebx,DWORD PTR [esp+0x40]
  c20664:	0f af cd             	imul   ecx,ebp
  c20667:	0f af f5             	imul   esi,ebp
  c2066a:	89 4c 24 50          	mov    DWORD PTR [esp+0x50],ecx
  c2066e:	89 74 24 48          	mov    DWORD PTR [esp+0x48],esi
  c20672:	eb 04                	jmp    0xc20678
  c20674:	8b 74 24 48          	mov    esi,DWORD PTR [esp+0x48]
  c20678:	03 f0                	add    esi,eax
  c2067a:	89 74 24 40          	mov    DWORD PTR [esp+0x40],esi
  c2067e:	33 ff                	xor    edi,edi
  c20680:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  c20684:	8b 72 10             	mov    esi,DWORD PTR [edx+0x10]
  c20687:	0f af 74 24 40       	imul   esi,DWORD PTR [esp+0x40]
  c2068c:	0f b6 44 24 44       	movzx  eax,BYTE PTR [esp+0x44]
  c20691:	8b 13                	mov    edx,DWORD PTR [ebx]
  c20693:	03 f1                	add    esi,ecx
  c20695:	03 f7                	add    esi,edi
  c20697:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  c2069b:	8b 04 b2             	mov    eax,DWORD PTR [edx+esi*4]
  c2069e:	85 c0                	test   eax,eax
  c206a0:	74 20                	je     0xc206c2
  c206a2:	3d ff 00 00 00       	cmp    eax,0xff
  c206a7:	76 10                	jbe    0xc206b9
  c206a9:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  c206af:	50                   	push   eax
  c206b0:	e8 bb 57 8c ff       	call   0x4e5e70
  c206b5:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  c206b9:	8b 03                	mov    eax,DWORD PTR [ebx]
  c206bb:	c7 04 b0 00 00 00 00 	mov    DWORD PTR [eax+esi*4],0x0
  c206c2:	8b 13                	mov    edx,DWORD PTR [ebx]
  c206c4:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  c206c8:	83 c7 01             	add    edi,0x1
  c206cb:	3b fd                	cmp    edi,ebp
  c206cd:	89 04 b2             	mov    DWORD PTR [edx+esi*4],eax
  c206d0:	72 ae                	jb     0xc20680
  c206d2:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  c206d6:	83 c0 01             	add    eax,0x1
  c206d9:	3b c5                	cmp    eax,ebp
  c206db:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  c206df:	72 93                	jb     0xc20674
  c206e1:	5f                   	pop    edi
  c206e2:	5e                   	pop    esi
  c206e3:	5d                   	pop    ebp
  c206e4:	b0 01                	mov    al,0x1
  c206e6:	5b                   	pop    ebx
  c206e7:	83 c4 28             	add    esp,0x28
  c206ea:	c2 1c 00             	ret    0x1c
  c206ed:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  c206f1:	8b cf                	mov    ecx,edi
  c206f3:	0f af cf             	imul   ecx,edi
  c206f6:	51                   	push   ecx
  c206f7:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  c206fb:	52                   	push   edx
  c206fc:	e8 bf cb 99 ff       	call   0x5bd2c0
  c20701:	33 c0                	xor    eax,eax
  c20703:	85 ed                	test   ebp,ebp
  c20705:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  c20709:	0f 86 44 02 00 00    	jbe    0xc20953
  c2070f:	8b 54 24 54          	mov    edx,DWORD PTR [esp+0x54]
  c20713:	0f af dd             	imul   ebx,ebp
  c20716:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
  c2071a:	33 db                	xor    ebx,ebx
  c2071c:	c1 e7 04             	shl    edi,0x4
  c2071f:	0f af f5             	imul   esi,ebp
  c20722:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  c20726:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  c2072a:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  c2072e:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  c20732:	89 74 24 48          	mov    DWORD PTR [esp+0x48],esi
  c20736:	eb 04                	jmp    0xc2073c
  c20738:	8b 74 24 48          	mov    esi,DWORD PTR [esp+0x48]
  c2073c:	03 f0                	add    esi,eax
  c2073e:	33 c0                	xor    eax,eax
  c20740:	b9 10 00 00 00       	mov    ecx,0x10
  c20745:	8b ea                	mov    ebp,edx
  c20747:	2b ca                	sub    ecx,edx
  c20749:	89 74 24 30          	mov    DWORD PTR [esp+0x30],esi
  c2074d:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  c20751:	89 6c 24 20          	mov    DWORD PTR [esp+0x20],ebp
  c20755:	89 4c 24 2c          	mov    DWORD PTR [esp+0x2c],ecx
  c20759:	eb 09                	jmp    0xc20764
  c2075b:	eb 03                	jmp    0xc20760
  c2075d:	8d 49 00             	lea    ecx,[ecx+0x0]
  c20760:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  c20764:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  c20768:	8b 72 10             	mov    esi,DWORD PTR [edx+0x10]
  c2076b:	0f af 74 24 30       	imul   esi,DWORD PTR [esp+0x30]
  c20770:	03 74 24 50          	add    esi,DWORD PTR [esp+0x50]
  c20774:	8b f8                	mov    edi,eax
  c20776:	03 f0                	add    esi,eax
  c20778:	8a 45 00             	mov    al,BYTE PTR [ebp+0x0]
  c2077b:	88 44 24 44          	mov    BYTE PTR [esp+0x44],al
  c2077f:	03 cd                	add    ecx,ebp
  c20781:	8d 43 10             	lea    eax,[ebx+0x10]
  c20784:	c1 e7 04             	shl    edi,0x4
  c20787:	3b d8                	cmp    ebx,eax
  c20789:	8b eb                	mov    ebp,ebx
  c2078b:	73 2c                	jae    0xc207b9
  c2078d:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  c20791:	3b f9                	cmp    edi,ecx
  c20793:	8b c7                	mov    eax,edi
  c20795:	73 14                	jae    0xc207ab
  c20797:	8a 5c 24 44          	mov    bl,BYTE PTR [esp+0x44]
  c2079b:	38 1c 02             	cmp    BYTE PTR [edx+eax*1],bl
  c2079e:	75 51                	jne    0xc207f1
  c207a0:	83 c0 01             	add    eax,0x1
  c207a3:	3b c1                	cmp    eax,ecx
  c207a5:	72 f0                	jb     0xc20797
  c207a7:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  c207ab:	03 54 24 4c          	add    edx,DWORD PTR [esp+0x4c]
  c207af:	83 c5 01             	add    ebp,0x1
  c207b2:	8d 43 10             	lea    eax,[ebx+0x10]
  c207b5:	3b e8                	cmp    ebp,eax
  c207b7:	72 d8                	jb     0xc20791
  c207b9:	8b 7c 24 40          	mov    edi,DWORD PTR [esp+0x40]
  c207bd:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c207bf:	8b 04 b1             	mov    eax,DWORD PTR [ecx+esi*4]
  c207c2:	85 c0                	test   eax,eax
  c207c4:	74 1c                	je     0xc207e2
  c207c6:	3d ff 00 00 00       	cmp    eax,0xff
  c207cb:	76 0c                	jbe    0xc207d9
  c207cd:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  c207d3:	50                   	push   eax
  c207d4:	e8 97 56 8c ff       	call   0x4e5e70
  c207d9:	8b 17                	mov    edx,DWORD PTR [edi]
  c207db:	c7 04 b2 00 00 00 00 	mov    DWORD PTR [edx+esi*4],0x0
  c207e2:	0f b6 44 24 44       	movzx  eax,BYTE PTR [esp+0x44]
  c207e7:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c207e9:	89 04 b1             	mov    DWORD PTR [ecx+esi*4],eax
  c207ec:	e9 8a 00 00 00       	jmp    0xc2087b
  c207f1:	8b 6c 24 40          	mov    ebp,DWORD PTR [esp+0x40]
  c207f5:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  c207f8:	8b 1c b2             	mov    ebx,DWORD PTR [edx+esi*4]
  c207fb:	85 db                	test   ebx,ebx
  c207fd:	74 08                	je     0xc20807
  c207ff:	81 fb ff 00 00 00    	cmp    ebx,0xff
  c20805:	77 36                	ja     0xc2083d
  c20807:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  c2080d:	6a 00                	push   0x0
  c2080f:	68 00 01 00 00       	push   0x100
  c20814:	88 5c 24 4c          	mov    BYTE PTR [esp+0x4c],bl
  c20818:	e8 03 67 8c ff       	call   0x4e6f20
  c2081d:	8b d8                	mov    ebx,eax
  c2081f:	85 db                	test   ebx,ebx
  c20821:	74 14                	je     0xc20837
  c20823:	0f b6 44 24 44       	movzx  eax,BYTE PTR [esp+0x44]
  c20828:	68 00 01 00 00       	push   0x100
  c2082d:	50                   	push   eax
  c2082e:	53                   	push   ebx
  c2082f:	e8 64 ea 35 00       	call   0xf7f298
  c20834:	83 c4 0c             	add    esp,0xc
  c20837:	8b 4d 00             	mov    ecx,DWORD PTR [ebp+0x0]
  c2083a:	89 1c b1             	mov    DWORD PTR [ecx+esi*4],ebx
  c2083d:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  c20841:	8d 04 3a             	lea    eax,[edx+edi*1]
  c20844:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  c20848:	03 44 24 54          	add    eax,DWORD PTR [esp+0x54]
  c2084c:	83 c2 10             	add    edx,0x10
  c2084f:	2b 54 24 3c          	sub    edx,DWORD PTR [esp+0x3c]
  c20853:	8b cb                	mov    ecx,ebx
  c20855:	8b 30                	mov    esi,DWORD PTR [eax]
  c20857:	89 31                	mov    DWORD PTR [ecx],esi
  c20859:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  c2085c:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
  c2085f:	8b 70 08             	mov    esi,DWORD PTR [eax+0x8]
  c20862:	89 71 08             	mov    DWORD PTR [ecx+0x8],esi
  c20865:	8b 70 0c             	mov    esi,DWORD PTR [eax+0xc]
  c20868:	03 44 24 4c          	add    eax,DWORD PTR [esp+0x4c]
  c2086c:	89 71 0c             	mov    DWORD PTR [ecx+0xc],esi
  c2086f:	83 c1 10             	add    ecx,0x10
  c20872:	83 ea 01             	sub    edx,0x1
  c20875:	75 de                	jne    0xc20855
  c20877:	8b 5c 24 3c          	mov    ebx,DWORD PTR [esp+0x3c]
  c2087b:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  c2087f:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
  c20883:	83 c0 01             	add    eax,0x1
  c20886:	83 c5 10             	add    ebp,0x10
  c20889:	3b 44 24 28          	cmp    eax,DWORD PTR [esp+0x28]
  c2088d:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  c20891:	89 6c 24 20          	mov    DWORD PTR [esp+0x20],ebp
  c20895:	0f 82 c5 fe ff ff    	jb     0xc20760
  c2089b:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  c2089f:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  c208a3:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  c208a7:	01 4c 24 10          	add    DWORD PTR [esp+0x10],ecx
  c208ab:	83 c0 01             	add    eax,0x1
  c208ae:	83 c3 10             	add    ebx,0x10
  c208b1:	03 d1                	add    edx,ecx
  c208b3:	3b 44 24 28          	cmp    eax,DWORD PTR [esp+0x28]
  c208b7:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  c208bb:	89 5c 24 3c          	mov    DWORD PTR [esp+0x3c],ebx
  c208bf:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  c208c3:	0f 82 6f fe ff ff    	jb     0xc20738
  c208c9:	5f                   	pop    edi
  c208ca:	5e                   	pop    esi
  c208cb:	5d                   	pop    ebp
  c208cc:	b0 01                	mov    al,0x1
  c208ce:	5b                   	pop    ebx
  c208cf:	83 c4 28             	add    esp,0x28
  c208d2:	c2 1c 00             	ret    0x1c
  c208d5:	0f b6 44 24 44       	movzx  eax,BYTE PTR [esp+0x44]
  c208da:	83 e8 00             	sub    eax,0x0
  c208dd:	74 46                	je     0xc20925
  c208df:	83 e8 01             	sub    eax,0x1
  c208e2:	0f 85 20 fd ff ff    	jne    0xc20608
  c208e8:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
  c208ec:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c208ef:	8d 44 24 44          	lea    eax,[esp+0x44]
  c208f3:	50                   	push   eax
  c208f4:	51                   	push   ecx
  c208f5:	e8 96 cf 8b ff       	call   0x4dd890
  c208fa:	83 c4 08             	add    esp,0x8
  c208fd:	8b ce                	mov    ecx,esi
  c208ff:	50                   	push   eax
  c20900:	e8 eb 70 bb ff       	call   0x7d79f0
  c20905:	0f b6 54 24 44       	movzx  edx,BYTE PTR [esp+0x44]
  c2090a:	8b 44 24 48          	mov    eax,DWORD PTR [esp+0x48]
  c2090e:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  c20912:	52                   	push   edx
  c20913:	50                   	push   eax
  c20914:	e8 77 fc ff ff       	call   0xc20590
  c20919:	5f                   	pop    edi
  c2091a:	5e                   	pop    esi
  c2091b:	5d                   	pop    ebp
  c2091c:	b0 01                	mov    al,0x1
  c2091e:	5b                   	pop    ebx
  c2091f:	83 c4 28             	add    esp,0x28
  c20922:	c2 1c 00             	ret    0x1c
  c20925:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  c20929:	6a 00                	push   0x0
  c2092b:	51                   	push   ecx
  c2092c:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  c20930:	e8 fb fb ff ff       	call   0xc20530
  c20935:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
  c20939:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c2093c:	68 00 01 00 00       	push   0x100
  c20941:	50                   	push   eax
  c20942:	52                   	push   edx
  c20943:	e8 68 cf 8b ff       	call   0x4dd8b0
  c20948:	83 c4 0c             	add    esp,0xc
  c2094b:	8b ce                	mov    ecx,esi
  c2094d:	50                   	push   eax
  c2094e:	e8 9d 70 bb ff       	call   0x7d79f0
  c20953:	5f                   	pop    edi
  c20954:	5e                   	pop    esi
  c20955:	5d                   	pop    ebp
  c20956:	b0 01                	mov    al,0x1
  c20958:	5b                   	pop    ebx
  c20959:	83 c4 28             	add    esp,0x28
  c2095c:	c2 1c 00             	ret    0x1c
