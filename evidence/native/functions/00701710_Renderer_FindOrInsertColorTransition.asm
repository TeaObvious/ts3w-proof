# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00701710 (Renderer_FindOrInsertColorTransition)
Full Ghidra function-body envelope: 0x00701710..0x007017bb (exclusive end)
Ghidra body ranges: [[00701710, 007017ba]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00701710 <.text+0x300710>:
  701710:	55                   	push   ebp
  701711:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
  701715:	56                   	push   esi
  701716:	8b f1                	mov    esi,ecx
  701718:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  70171b:	85 c9                	test   ecx,ecx
  70171d:	57                   	push   edi
  70171e:	8d 46 04             	lea    eax,[esi+0x4]
  701721:	b2 01                	mov    dl,0x1
  701723:	74 2f                	je     0x701754
  701725:	8b 7d 00             	mov    edi,DWORD PTR [ebp+0x0]
  701728:	53                   	push   ebx
  701729:	8b 5d 04             	mov    ebx,DWORD PTR [ebp+0x4]
  70172c:	8d 64 24 00          	lea    esp,[esp+0x0]
  701730:	3b 59 14             	cmp    ebx,DWORD PTR [ecx+0x14]
  701733:	77 0b                	ja     0x701740
  701735:	72 05                	jb     0x70173c
  701737:	3b 79 10             	cmp    edi,DWORD PTR [ecx+0x10]
  70173a:	73 04                	jae    0x701740
  70173c:	b2 01                	mov    dl,0x1
  70173e:	eb 02                	jmp    0x701742
  701740:	32 d2                	xor    dl,dl
  701742:	84 d2                	test   dl,dl
  701744:	8b c1                	mov    eax,ecx
  701746:	74 05                	je     0x70174d
  701748:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  70174b:	eb 02                	jmp    0x70174f
  70174d:	8b 09                	mov    ecx,DWORD PTR [ecx]
  70174f:	85 c9                	test   ecx,ecx
  701751:	75 dd                	jne    0x701730
  701753:	5b                   	pop    ebx
  701754:	84 d2                	test   dl,dl
  701756:	8b f8                	mov    edi,eax
  701758:	74 0e                	je     0x701768
  70175a:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  70175d:	74 26                	je     0x701785
  70175f:	50                   	push   eax
  701760:	e8 0b f9 dd ff       	call   0x4e1070
  701765:	83 c4 04             	add    esp,0x4
  701768:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  70176b:	3b 55 04             	cmp    edx,DWORD PTR [ebp+0x4]
  70176e:	77 39                	ja     0x7017a9
  701770:	72 08                	jb     0x70177a
  701772:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  701775:	3b 4d 00             	cmp    ecx,DWORD PTR [ebp+0x0]
  701778:	73 2f                	jae    0x7017a9
  70177a:	6a 00                	push   0x0
  70177c:	55                   	push   ebp
  70177d:	57                   	push   edi
  70177e:	8d 54 24 20          	lea    edx,[esp+0x20]
  701782:	52                   	push   edx
  701783:	eb 09                	jmp    0x70178e
  701785:	6a 00                	push   0x0
  701787:	55                   	push   ebp
  701788:	50                   	push   eax
  701789:	8d 44 24 20          	lea    eax,[esp+0x20]
  70178d:	50                   	push   eax
  70178e:	8b ce                	mov    ecx,esi
  701790:	e8 eb f2 ff ff       	call   0x700a80
  701795:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  701799:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  70179d:	5f                   	pop    edi
  70179e:	5e                   	pop    esi
  70179f:	89 08                	mov    DWORD PTR [eax],ecx
  7017a1:	c6 40 04 01          	mov    BYTE PTR [eax+0x4],0x1
  7017a5:	5d                   	pop    ebp
  7017a6:	c2 0c 00             	ret    0xc
  7017a9:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  7017ad:	5f                   	pop    edi
  7017ae:	5e                   	pop    esi
  7017af:	89 01                	mov    DWORD PTR [ecx],eax
  7017b1:	c6 41 04 00          	mov    BYTE PTR [ecx+0x4],0x0
  7017b5:	8b c1                	mov    eax,ecx
  7017b7:	5d                   	pop    ebp
  7017b8:	c2 0c 00             	ret    0xc
