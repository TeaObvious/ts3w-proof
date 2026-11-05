# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00619530 <.text+0x218530>:
  619530:	33 c0                	xor    eax,eax
  619532:	83 ec 08             	sub    esp,0x8
  619535:	56                   	push   esi
  619536:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  61953a:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  619540:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
  619547:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  61954a:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  61954d:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  619550:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  619553:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  619556:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  619559:	57                   	push   edi
  61955a:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  61955d:	8b f9                	mov    edi,ecx
  61955f:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  619562:	39 47 2c             	cmp    DWORD PTR [edi+0x2c],eax
  619565:	75 77                	jne    0x6195de
  619567:	39 47 30             	cmp    DWORD PTR [edi+0x30],eax
  61956a:	74 72                	je     0x6195de
  61956c:	53                   	push   ebx
  61956d:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
  619571:	33 c9                	xor    ecx,ecx
  619573:	f6 c3 01             	test   bl,0x1
  619576:	74 05                	je     0x61957d
  619578:	b9 00 20 00 00       	mov    ecx,0x2000
  61957d:	f6 c3 02             	test   bl,0x2
  619580:	74 03                	je     0x619585
  619582:	83 c9 10             	or     ecx,0x10
  619585:	8b 47 30             	mov    eax,DWORD PTR [edi+0x30]
  619588:	8b 10                	mov    edx,DWORD PTR [eax]
  61958a:	8b 52 4c             	mov    edx,DWORD PTR [edx+0x4c]
  61958d:	55                   	push   ebp
  61958e:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
  619592:	51                   	push   ecx
  619593:	6a 00                	push   0x0
  619595:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  619599:	51                   	push   ecx
  61959a:	55                   	push   ebp
  61959b:	50                   	push   eax
  61959c:	ff d2                	call   edx
  61959e:	85 c0                	test   eax,eax
  6195a0:	7c 3a                	jl     0x6195dc
  6195a2:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  6195a6:	3d 00 80 00 00       	cmp    eax,0x8000
  6195ab:	72 2f                	jb     0x6195dc
  6195ad:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  6195b1:	89 06                	mov    DWORD PTR [esi],eax
  6195b3:	8d 56 1c             	lea    edx,[esi+0x1c]
  6195b6:	52                   	push   edx
  6195b7:	8d 46 18             	lea    eax,[esi+0x18]
  6195ba:	50                   	push   eax
  6195bb:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  6195be:	8b 4f 18             	mov    ecx,DWORD PTR [edi+0x18]
  6195c1:	8b 57 14             	mov    edx,DWORD PTR [edi+0x14]
  6195c4:	55                   	push   ebp
  6195c5:	51                   	push   ecx
  6195c6:	52                   	push   edx
  6195c7:	e8 24 ff ff ff       	call   0x6194f0
  6195cc:	83 c4 14             	add    esp,0x14
  6195cf:	c7 46 20 00 00 00 00 	mov    DWORD PTR [esi+0x20],0x0
  6195d6:	89 6e 24             	mov    DWORD PTR [esi+0x24],ebp
  6195d9:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  6195dc:	5d                   	pop    ebp
  6195dd:	5b                   	pop    ebx
  6195de:	5f                   	pop    edi
  6195df:	8b c6                	mov    eax,esi
  6195e1:	5e                   	pop    esi
  6195e2:	83 c4 08             	add    esp,0x8
  6195e5:	c2 0c 00             	ret    0xc
