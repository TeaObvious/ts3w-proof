# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c28810 <.text+0x827810>:
  c28810:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  c28814:	83 ec 28             	sub    esp,0x28
  c28817:	56                   	push   esi
  c28818:	8b f1                	mov    esi,ecx
  c2881a:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  c2881e:	50                   	push   eax
  c2881f:	51                   	push   ecx
  c28820:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  c28824:	e8 f7 f0 ba ff       	call   0x7d7920
  c28829:	6a 00                	push   0x0
  c2882b:	6a 00                	push   0x0
  c2882d:	6a 00                	push   0x0
  c2882f:	6a 00                	push   0x0
  c28831:	68 8c 79 07 01       	push   0x107798c
  c28836:	68 88 00 00 00       	push   0x88
  c2883b:	e8 c0 bc 8b ff       	call   0x4e4500
  c28840:	83 c4 18             	add    esp,0x18
  c28843:	85 c0                	test   eax,eax
  c28845:	74 09                	je     0xc28850
  c28847:	8b c8                	mov    ecx,eax
  c28849:	e8 02 88 ff ff       	call   0xc21050
  c2884e:	eb 02                	jmp    0xc28852
  c28850:	33 c0                	xor    eax,eax
  c28852:	6a 00                	push   0x0
  c28854:	8d 54 24 08          	lea    edx,[esp+0x8]
  c28858:	52                   	push   edx
  c28859:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  c2885d:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  c28860:	c7 44 24 0c 01 00 00 	mov    DWORD PTR [esp+0xc],0x1
  c28867:	00 
  c28868:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  c2886f:	00 
  c28870:	c7 44 24 14 d0 32 86 	mov    DWORD PTR [esp+0x14],0x3d8632d0
  c28877:	3d 
  c28878:	c7 44 24 18 00 00 00 	mov    DWORD PTR [esp+0x18],0x0
  c2887f:	00 
  c28880:	e8 bb fc ba ff       	call   0x7d8540
  c28885:	84 c0                	test   al,al
  c28887:	75 26                	jne    0xc288af
  c28889:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  c2888c:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  c2888f:	53                   	push   ebx
  c28890:	50                   	push   eax
  c28891:	51                   	push   ecx
  c28892:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c28895:	e8 b6 99 ff ff       	call   0xc22250
  c2889a:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  c2889e:	8a d8                	mov    bl,al
  c288a0:	e8 eb f0 ba ff       	call   0x7d7990
  c288a5:	8a c3                	mov    al,bl
  c288a7:	5b                   	pop    ebx
  c288a8:	5e                   	pop    esi
  c288a9:	83 c4 28             	add    esp,0x28
  c288ac:	c2 08 00             	ret    0x8
  c288af:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  c288b3:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c288b6:	52                   	push   edx
  c288b7:	e8 f4 99 ff ff       	call   0xc222b0
  c288bc:	84 c0                	test   al,al
  c288be:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  c288c2:	75 0e                	jne    0xc288d2
  c288c4:	e8 c7 f0 ba ff       	call   0x7d7990
  c288c9:	32 c0                	xor    al,al
  c288cb:	5e                   	pop    esi
  c288cc:	83 c4 28             	add    esp,0x28
  c288cf:	c2 08 00             	ret    0x8
  c288d2:	e8 b9 f0 ba ff       	call   0x7d7990
  c288d7:	b0 01                	mov    al,0x1
  c288d9:	5e                   	pop    esi
  c288da:	83 c4 28             	add    esp,0x28
  c288dd:	c2 08 00             	ret    0x8
