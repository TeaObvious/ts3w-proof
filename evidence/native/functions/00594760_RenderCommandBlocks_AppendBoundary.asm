# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00594760 <.text+0x193760>:
  594760:	55                   	push   ebp
  594761:	8b ec                	mov    ebp,esp
  594763:	83 e4 f0             	and    esp,0xfffffff0
  594766:	83 ec 54             	sub    esp,0x54
  594769:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  59476c:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  59476f:	53                   	push   ebx
  594770:	8b d9                	mov    ebx,ecx
  594772:	8b 08                	mov    ecx,DWORD PTR [eax]
  594774:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  594778:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59477b:	85 c9                	test   ecx,ecx
  59477d:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  594781:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  594784:	56                   	push   esi
  594785:	57                   	push   edi
  594786:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  59478a:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  59478e:	74 12                	je     0x5947a2
  594790:	8b 11                	mov    edx,DWORD PTR [ecx]
  594792:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
  594795:	83 c0 10             	add    eax,0x10
  594798:	50                   	push   eax
  594799:	8d 44 24 24          	lea    eax,[esp+0x24]
  59479d:	50                   	push   eax
  59479e:	ff d2                	call   edx
  5947a0:	eb 0e                	jmp    0x5947b0
  5947a2:	8d 70 10             	lea    esi,[eax+0x10]
  5947a5:	b9 10 00 00 00       	mov    ecx,0x10
  5947aa:	8d 7c 24 20          	lea    edi,[esp+0x20]
  5947ae:	f3 a5                	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  5947b0:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  5947b3:	2b 03                	sub    eax,DWORD PTR [ebx]
  5947b5:	c1 f8 02             	sar    eax,0x2
  5947b8:	83 c0 01             	add    eax,0x1
  5947bb:	3b 43 04             	cmp    eax,DWORD PTR [ebx+0x4]
  5947be:	7c 0b                	jl     0x5947cb
  5947c0:	6a 01                	push   0x1
  5947c2:	6a 01                	push   0x1
  5947c4:	8b cb                	mov    ecx,ebx
  5947c6:	e8 c5 fc ff ff       	call   0x594490
  5947cb:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
  5947ce:	68 fb 00 00 00       	push   0xfb
  5947d3:	68 88 99 f9 00       	push   0xf99988
  5947d8:	6a 00                	push   0x0
  5947da:	6a 00                	push   0x0
  5947dc:	51                   	push   ecx
  5947dd:	6a 00                	push   0x0
  5947df:	6a 10                	push   0x10
  5947e1:	68 40 01 00 00       	push   0x140
  5947e6:	e8 35 fd f4 ff       	call   0x4e4520
  5947eb:	8b 53 24             	mov    edx,DWORD PTR [ebx+0x24]
  5947ee:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  5947f1:	8b 4b 18             	mov    ecx,DWORD PTR [ebx+0x18]
  5947f4:	83 c4 20             	add    esp,0x20
  5947f7:	85 c9                	test   ecx,ecx
  5947f9:	74 0a                	je     0x594805
  5947fb:	8d 44 24 10          	lea    eax,[esp+0x10]
  5947ff:	50                   	push   eax
  594800:	e8 6b f6 ff ff       	call   0x593e70
  594805:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  594808:	83 c0 04             	add    eax,0x4
  59480b:	89 43 24             	mov    DWORD PTR [ebx+0x24],eax
  59480e:	8b 00                	mov    eax,DWORD PTR [eax]
  594810:	89 43 1c             	mov    DWORD PTR [ebx+0x1c],eax
  594813:	05 40 01 00 00       	add    eax,0x140
  594818:	89 43 20             	mov    DWORD PTR [ebx+0x20],eax
  59481b:	8b 4b 1c             	mov    ecx,DWORD PTR [ebx+0x1c]
  59481e:	89 4b 18             	mov    DWORD PTR [ebx+0x18],ecx
  594821:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  594825:	85 c9                	test   ecx,ecx
  594827:	74 0b                	je     0x594834
  594829:	8b 11                	mov    edx,DWORD PTR [ecx]
  59482b:	8b 12                	mov    edx,DWORD PTR [edx]
  59482d:	8d 44 24 20          	lea    eax,[esp+0x20]
  594831:	50                   	push   eax
  594832:	ff d2                	call   edx
  594834:	5f                   	pop    edi
  594835:	5e                   	pop    esi
  594836:	5b                   	pop    ebx
  594837:	8b e5                	mov    esp,ebp
  594839:	5d                   	pop    ebp
  59483a:	c2 04 00             	ret    0x4
