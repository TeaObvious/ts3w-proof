# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d65a0 <.text+0x3d55a0>:
  7d65a0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  7d65a4:	83 ec 08             	sub    esp,0x8
  7d65a7:	53                   	push   ebx
  7d65a8:	8b 18                	mov    ebx,DWORD PTR [eax]
  7d65aa:	55                   	push   ebp
  7d65ab:	56                   	push   esi
  7d65ac:	8b f1                	mov    esi,ecx
  7d65ae:	33 d2                	xor    edx,edx
  7d65b0:	57                   	push   edi
  7d65b1:	8b 7e 08             	mov    edi,DWORD PTR [esi+0x8]
  7d65b4:	8b c3                	mov    eax,ebx
  7d65b6:	f7 f7                	div    edi
  7d65b8:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d65bb:	8b ea                	mov    ebp,edx
  7d65bd:	8d 14 a9             	lea    edx,[ecx+ebp*4]
  7d65c0:	8b 0a                	mov    ecx,DWORD PTR [edx]
  7d65c2:	85 c9                	test   ecx,ecx
  7d65c4:	74 0f                	je     0x7d65d5
  7d65c6:	3b 19                	cmp    ebx,DWORD PTR [ecx]
  7d65c8:	0f 84 a6 00 00 00    	je     0x7d6674
  7d65ce:	8b 49 18             	mov    ecx,DWORD PTR [ecx+0x18]
  7d65d1:	85 c9                	test   ecx,ecx
  7d65d3:	75 f1                	jne    0x7d65c6
  7d65d5:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  7d65d8:	6a 01                	push   0x1
  7d65da:	52                   	push   edx
  7d65db:	57                   	push   edi
  7d65dc:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  7d65e0:	50                   	push   eax
  7d65e1:	8d 4e 10             	lea    ecx,[esi+0x10]
  7d65e4:	e8 d7 a8 d0 ff       	call   0x4e0ec0
  7d65e9:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  7d65ec:	68 e7 00 00 00       	push   0xe7
  7d65f1:	68 88 99 f9 00       	push   0xf99988
  7d65f6:	6a 00                	push   0x0
  7d65f8:	6a 00                	push   0x0
  7d65fa:	51                   	push   ecx
  7d65fb:	6a 20                	push   0x20
  7d65fd:	e8 fe de d0 ff       	call   0x4e4500
  7d6602:	8b f8                	mov    edi,eax
  7d6604:	33 c0                	xor    eax,eax
  7d6606:	83 c4 18             	add    esp,0x18
  7d6609:	3b f8                	cmp    edi,eax
  7d660b:	74 14                	je     0x7d6621
  7d660d:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  7d6611:	8b 0a                	mov    ecx,DWORD PTR [edx]
  7d6613:	89 0f                	mov    DWORD PTR [edi],ecx
  7d6615:	89 47 08             	mov    DWORD PTR [edi+0x8],eax
  7d6618:	89 47 0c             	mov    DWORD PTR [edi+0xc],eax
  7d661b:	89 47 10             	mov    DWORD PTR [edi+0x10],eax
  7d661e:	89 47 14             	mov    DWORD PTR [edi+0x14],eax
  7d6621:	89 47 18             	mov    DWORD PTR [edi+0x18],eax
  7d6624:	38 44 24 10          	cmp    BYTE PTR [esp+0x10],al
  7d6628:	74 14                	je     0x7d663e
  7d662a:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  7d662e:	33 d2                	xor    edx,edx
  7d6630:	8b c3                	mov    eax,ebx
  7d6632:	f7 f1                	div    ecx
  7d6634:	51                   	push   ecx
  7d6635:	8b ce                	mov    ecx,esi
  7d6637:	8b ea                	mov    ebp,edx
  7d6639:	e8 62 26 45 00       	call   0xc28ca0
  7d663e:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  7d6641:	8d 0c ad 00 00 00 00 	lea    ecx,[ebp*4+0x0]
  7d6648:	8b 04 11             	mov    eax,DWORD PTR [ecx+edx*1]
  7d664b:	89 47 18             	mov    DWORD PTR [edi+0x18],eax
  7d664e:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  7d6651:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  7d6655:	89 3c 11             	mov    DWORD PTR [ecx+edx*1],edi
  7d6658:	83 46 0c 01          	add    DWORD PTR [esi+0xc],0x1
  7d665c:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  7d665f:	89 38                	mov    DWORD PTR [eax],edi
  7d6661:	5f                   	pop    edi
  7d6662:	5e                   	pop    esi
  7d6663:	03 d1                	add    edx,ecx
  7d6665:	5d                   	pop    ebp
  7d6666:	c6 40 08 01          	mov    BYTE PTR [eax+0x8],0x1
  7d666a:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  7d666d:	5b                   	pop    ebx
  7d666e:	83 c4 08             	add    esp,0x8
  7d6671:	c2 0c 00             	ret    0xc
  7d6674:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  7d6678:	5f                   	pop    edi
  7d6679:	5e                   	pop    esi
  7d667a:	5d                   	pop    ebp
  7d667b:	89 08                	mov    DWORD PTR [eax],ecx
  7d667d:	c6 40 08 00          	mov    BYTE PTR [eax+0x8],0x0
  7d6681:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  7d6684:	5b                   	pop    ebx
  7d6685:	83 c4 08             	add    esp,0x8
  7d6688:	c2 0c 00             	ret    0xc
