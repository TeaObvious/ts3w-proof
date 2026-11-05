# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060d790 <.text+0x20c790>:
  60d790:	55                   	push   ebp
  60d791:	8b ec                	mov    ebp,esp
  60d793:	83 ec 28             	sub    esp,0x28
  60d796:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d799:	e8 d2 05 ea ff       	call   0x4add70
  60d79e:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  60d7a1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  60d7a4:	8b 10                	mov    edx,DWORD PTR [eax]
  60d7a6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d7a9:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  60d7ac:	ff d0                	call   eax
  60d7ae:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
  60d7b1:	89 45 f8             	mov    DWORD PTR [ebp-0x8],eax
  60d7b4:	6a 00                	push   0x0
  60d7b6:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d7b9:	8b 11                	mov    edx,DWORD PTR [ecx]
  60d7bb:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  60d7be:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  60d7c1:	ff d0                	call   eax
  60d7c3:	03 45 fc             	add    eax,DWORD PTR [ebp-0x4]
  60d7c6:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  60d7c9:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  60d7cc:	51                   	push   ecx
  60d7cd:	e8 2e a7 00 00       	call   0x617f00
  60d7d2:	83 c4 04             	add    esp,0x4
  60d7d5:	89 45 f0             	mov    DWORD PTR [ebp-0x10],eax
  60d7d8:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
  60d7df:	83 7d 14 03          	cmp    DWORD PTR [ebp+0x14],0x3
  60d7e3:	73 07                	jae    0x60d7ec
  60d7e5:	32 c0                	xor    al,al
  60d7e7:	e9 e9 00 00 00       	jmp    0x60d8d5
  60d7ec:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
  60d7ef:	83 ea 01             	sub    edx,0x1
  60d7f2:	52                   	push   edx
  60d7f3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  60d7f6:	50                   	push   eax
  60d7f7:	e8 e4 a6 00 00       	call   0x617ee0
  60d7fc:	83 c4 08             	add    esp,0x8
  60d7ff:	83 f8 40             	cmp    eax,0x40
  60d802:	76 07                	jbe    0x60d80b
  60d804:	32 c0                	xor    al,al
  60d806:	e9 ca 00 00 00       	jmp    0x60d8d5
  60d80b:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [ebp-0x14],0x0
  60d812:	eb 09                	jmp    0x60d81d
  60d814:	8b 4d ec             	mov    ecx,DWORD PTR [ebp-0x14]
  60d817:	83 c1 01             	add    ecx,0x1
  60d81a:	89 4d ec             	mov    DWORD PTR [ebp-0x14],ecx
  60d81d:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  60d820:	3b 55 14             	cmp    edx,DWORD PTR [ebp+0x14]
  60d823:	0f 83 a3 00 00 00    	jae    0x60d8cc
  60d829:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
  60d82c:	50                   	push   eax
  60d82d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  60d830:	51                   	push   ecx
  60d831:	e8 aa a6 00 00       	call   0x617ee0
  60d836:	83 c4 08             	add    esp,0x8
  60d839:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
  60d83c:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
  60d83f:	52                   	push   edx
  60d840:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  60d843:	50                   	push   eax
  60d844:	e8 97 a6 00 00       	call   0x617ee0
  60d849:	83 c4 08             	add    esp,0x8
  60d84c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
  60d84f:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
  60d852:	51                   	push   ecx
  60d853:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  60d856:	e8 65 a7 00 00       	call   0x617fc0
  60d85b:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
  60d85e:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
  60d861:	52                   	push   edx
  60d862:	8b 4d f0             	mov    ecx,DWORD PTR [ebp-0x10]
  60d865:	e8 56 a6 00 00       	call   0x617ec0
  60d86a:	0f af 45 dc          	imul   eax,DWORD PTR [ebp-0x24]
  60d86e:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
  60d871:	8b 45 f8             	mov    eax,DWORD PTR [ebp-0x8]
  60d874:	2b 45 fc             	sub    eax,DWORD PTR [ebp-0x4]
  60d877:	3b 45 e0             	cmp    eax,DWORD PTR [ebp-0x20]
  60d87a:	73 04                	jae    0x60d880
  60d87c:	32 c0                	xor    al,al
  60d87e:	eb 55                	jmp    0x60d8d5
  60d880:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  60d883:	83 e9 01             	sub    ecx,0x1
  60d886:	39 4d ec             	cmp    DWORD PTR [ebp-0x14],ecx
  60d889:	75 33                	jne    0x60d8be
  60d88b:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [ebp-0x28],0x0
  60d892:	eb 09                	jmp    0x60d89d
  60d894:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
  60d897:	83 c2 01             	add    edx,0x1
  60d89a:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
  60d89d:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
  60d8a0:	3b 45 e0             	cmp    eax,DWORD PTR [ebp-0x20]
  60d8a3:	73 17                	jae    0x60d8bc
  60d8a5:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  60d8a8:	0f b6 11             	movzx  edx,BYTE PTR [ecx]
  60d8ab:	03 55 f4             	add    edx,DWORD PTR [ebp-0xc]
  60d8ae:	89 55 f4             	mov    DWORD PTR [ebp-0xc],edx
  60d8b1:	8b 45 fc             	mov    eax,DWORD PTR [ebp-0x4]
  60d8b4:	83 c0 01             	add    eax,0x1
  60d8b7:	89 45 fc             	mov    DWORD PTR [ebp-0x4],eax
  60d8ba:	eb d8                	jmp    0x60d894
  60d8bc:	eb 09                	jmp    0x60d8c7
  60d8be:	8b 4d fc             	mov    ecx,DWORD PTR [ebp-0x4]
  60d8c1:	03 4d e0             	add    ecx,DWORD PTR [ebp-0x20]
  60d8c4:	89 4d fc             	mov    DWORD PTR [ebp-0x4],ecx
  60d8c7:	e9 48 ff ff ff       	jmp    0x60d814
  60d8cc:	33 c0                	xor    eax,eax
  60d8ce:	83 7d f4 00          	cmp    DWORD PTR [ebp-0xc],0x0
  60d8d2:	0f 94 c0             	sete   al
  60d8d5:	8b e5                	mov    esp,ebp
  60d8d7:	5d                   	pop    ebp
  60d8d8:	c3                   	ret
