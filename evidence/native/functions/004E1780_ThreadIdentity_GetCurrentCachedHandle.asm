# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 004e1780..004e182b; ThreadIdentity_GetCurrentCachedHandle
  4e1780:	51                   	push   ecx
  4e1781:	a1 08 d9 14 01       	mov    eax,ds:0x114d908
  4e1786:	83 f8 ff             	cmp    eax,0xffffffff
  4e1789:	53                   	push   ebx
  4e178a:	8b 1d 08 62 f9 00    	mov    ebx,DWORD PTR ds:0xf96208
  4e1790:	74 0b                	je     0x4e179d
  4e1792:	50                   	push   eax
  4e1793:	ff d3                	call   ebx
  4e1795:	85 c0                	test   eax,eax
  4e1797:	0f 85 8c 00 00 00    	jne    0x4e1829
  4e179d:	56                   	push   esi
  4e179e:	57                   	push   edi
  4e179f:	ff 15 ac 63 f9 00    	call   DWORD PTR ds:0xf963ac
  4e17a5:	8b 3d a4 63 f9 00    	mov    edi,DWORD PTR ds:0xf963a4
  4e17ab:	6a 02                	push   0x2
  4e17ad:	6a 01                	push   0x1
  4e17af:	8b f0                	mov    esi,eax
  4e17b1:	6a 00                	push   0x0
  4e17b3:	8d 44 24 18          	lea    eax,[esp+0x18]
  4e17b7:	50                   	push   eax
  4e17b8:	ff d7                	call   edi
  4e17ba:	50                   	push   eax
  4e17bb:	56                   	push   esi
  4e17bc:	ff d7                	call   edi
  4e17be:	50                   	push   eax
  4e17bf:	ff 15 0c 62 f9 00    	call   DWORD PTR ds:0xf9620c
  4e17c5:	85 c0                	test   eax,eax
  4e17c7:	74 5a                	je     0x4e1823
  4e17c9:	83 3d 08 d9 14 01 ff 	cmp    DWORD PTR ds:0x114d908,0xffffffff
  4e17d0:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  4e17d4:	75 10                	jne    0x4e17e6
  4e17d6:	ff 15 00 62 f9 00    	call   DWORD PTR ds:0xf96200
  4e17dc:	83 f8 ff             	cmp    eax,0xffffffff
  4e17df:	a3 08 d9 14 01       	mov    ds:0x114d908,eax
  4e17e4:	74 3d                	je     0x4e1823
  4e17e6:	6a 00                	push   0x0
  4e17e8:	b9 60 8e 1c 01       	mov    ecx,0x11c8e60
  4e17ed:	e8 fe fd ff ff       	call   0x4e15f0
  4e17f2:	85 f6                	test   esi,esi
  4e17f4:	74 05                	je     0x4e17fb
  4e17f6:	6a 01                	push   0x1
  4e17f8:	56                   	push   esi
  4e17f9:	eb 10                	jmp    0x4e180b
  4e17fb:	8b 0d 08 d9 14 01    	mov    ecx,DWORD PTR ds:0x114d908
  4e1801:	51                   	push   ecx
  4e1802:	ff d3                	call   ebx
  4e1804:	85 c0                	test   eax,eax
  4e1806:	74 0d                	je     0x4e1815
  4e1808:	6a 00                	push   0x0
  4e180a:	50                   	push   eax
  4e180b:	b9 60 8e 1c 01       	mov    ecx,0x11c8e60
  4e1810:	e8 5b fe ff ff       	call   0x4e1670
  4e1815:	8b 15 08 d9 14 01    	mov    edx,DWORD PTR ds:0x114d908
  4e181b:	56                   	push   esi
  4e181c:	52                   	push   edx
  4e181d:	ff 15 04 62 f9 00    	call   DWORD PTR ds:0xf96204
  4e1823:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  4e1827:	5f                   	pop    edi
  4e1828:	5e                   	pop    esi
  4e1829:	5b                   	pop    ebx
  4e182a:	59                   	pop    ecx
  4e182b:	c3                   	ret
