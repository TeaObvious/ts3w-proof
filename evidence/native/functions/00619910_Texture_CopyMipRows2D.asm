# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00619910 <.text+0x218910>:
  619910:	83 ec 14             	sub    esp,0x14
  619913:	53                   	push   ebx
  619914:	55                   	push   ebp
  619915:	8b e9                	mov    ebp,ecx
  619917:	33 c9                	xor    ecx,ecx
  619919:	f6 45 20 04          	test   BYTE PTR [ebp+0x20],0x4
  61991d:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  619921:	74 05                	je     0x619928
  619923:	b9 00 20 00 00       	mov    ecx,0x2000
  619928:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  61992b:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  61992f:	8b 10                	mov    edx,DWORD PTR [eax]
  619931:	8b 52 4c             	mov    edx,DWORD PTR [edx+0x4c]
  619934:	51                   	push   ecx
  619935:	6a 00                	push   0x0
  619937:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  61993b:	51                   	push   ecx
  61993c:	53                   	push   ebx
  61993d:	50                   	push   eax
  61993e:	ff d2                	call   edx
  619940:	85 c0                	test   eax,eax
  619942:	7d 0a                	jge    0x61994e
  619944:	5d                   	pop    ebp
  619945:	32 c0                	xor    al,al
  619947:	5b                   	pop    ebx
  619948:	83 c4 14             	add    esp,0x14
  61994b:	c2 14 00             	ret    0x14
  61994e:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  619951:	8b 55 18             	mov    edx,DWORD PTR [ebp+0x18]
  619954:	8b cb                	mov    ecx,ebx
  619956:	d3 e8                	shr    eax,cl
  619958:	d3 ea                	shr    edx,cl
  61995a:	85 c0                	test   eax,eax
  61995c:	75 05                	jne    0x619963
  61995e:	b8 01 00 00 00       	mov    eax,0x1
  619963:	85 d2                	test   edx,edx
  619965:	75 05                	jne    0x61996c
  619967:	ba 01 00 00 00       	mov    edx,0x1
  61996c:	56                   	push   esi
  61996d:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  619971:	85 f6                	test   esi,esi
  619973:	57                   	push   edi
  619974:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  619978:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  61997c:	74 2a                	je     0x6199a8
  61997e:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
  619982:	d3 ee                	shr    esi,cl
  619984:	d3 ef                	shr    edi,cl
  619986:	85 f6                	test   esi,esi
  619988:	75 05                	jne    0x61998f
  61998a:	be 01 00 00 00       	mov    esi,0x1
  61998f:	85 ff                	test   edi,edi
  619991:	75 05                	jne    0x619998
  619993:	bf 01 00 00 00       	mov    edi,0x1
  619998:	3b f0                	cmp    esi,eax
  61999a:	73 04                	jae    0x6199a0
  61999c:	89 74 24 10          	mov    DWORD PTR [esp+0x10],esi
  6199a0:	3b fa                	cmp    edi,edx
  6199a2:	73 04                	jae    0x6199a8
  6199a4:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  6199a8:	8b 45 28             	mov    eax,DWORD PTR [ebp+0x28]
  6199ab:	50                   	push   eax
  6199ac:	e8 4f e5 ff ff       	call   0x617f00
  6199b1:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  6199b5:	83 c4 04             	add    esp,0x4
  6199b8:	8b f0                	mov    esi,eax
  6199ba:	51                   	push   ecx
  6199bb:	8b ce                	mov    ecx,esi
  6199bd:	e8 fe e5 ff ff       	call   0x617fc0
  6199c2:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  6199c6:	52                   	push   edx
  6199c7:	8b ce                	mov    ecx,esi
  6199c9:	8b d8                	mov    ebx,eax
  6199cb:	e8 f0 e4 ff ff       	call   0x617ec0
  6199d0:	85 c0                	test   eax,eax
  6199d2:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
  6199d6:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  6199da:	76 20                	jbe    0x6199fc
  6199dc:	8b e8                	mov    ebp,eax
  6199de:	8b ff                	mov    edi,edi
  6199e0:	53                   	push   ebx
  6199e1:	57                   	push   edi
  6199e2:	56                   	push   esi
  6199e3:	e8 9e 58 96 00       	call   0xf7f286
  6199e8:	03 74 24 28          	add    esi,DWORD PTR [esp+0x28]
  6199ec:	03 7c 24 3c          	add    edi,DWORD PTR [esp+0x3c]
  6199f0:	83 c4 0c             	add    esp,0xc
  6199f3:	83 ed 01             	sub    ebp,0x1
  6199f6:	75 e8                	jne    0x6199e0
  6199f8:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  6199fc:	8b 6d 30             	mov    ebp,DWORD PTR [ebp+0x30]
  6199ff:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  619a03:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  619a06:	8b 50 50             	mov    edx,DWORD PTR [eax+0x50]
  619a09:	51                   	push   ecx
  619a0a:	55                   	push   ebp
  619a0b:	ff d2                	call   edx
  619a0d:	5f                   	pop    edi
  619a0e:	5e                   	pop    esi
  619a0f:	85 c0                	test   eax,eax
  619a11:	5d                   	pop    ebp
  619a12:	0f 9d c0             	setge  al
  619a15:	5b                   	pop    ebx
  619a16:	83 c4 14             	add    esp,0x14
  619a19:	c2 14 00             	ret    0x14
