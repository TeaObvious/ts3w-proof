# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

008157c0 <.text+0x4147c0>:
  8157c0:	53                   	push   ebx
  8157c1:	55                   	push   ebp
  8157c2:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
  8157c6:	56                   	push   esi
  8157c7:	57                   	push   edi
  8157c8:	68 e7 00 00 00       	push   0xe7
  8157cd:	68 88 99 f9 00       	push   0xf99988
  8157d2:	8b f1                	mov    esi,ecx
  8157d4:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  8157d7:	6a 00                	push   0x0
  8157d9:	68 00 00 40 00       	push   0x400000
  8157de:	8d 3c ad 00 00 00 00 	lea    edi,[ebp*4+0x0]
  8157e5:	50                   	push   eax
  8157e6:	8d 4f 04             	lea    ecx,[edi+0x4]
  8157e9:	51                   	push   ecx
  8157ea:	e8 11 ed cc ff       	call   0x4e4500
  8157ef:	57                   	push   edi
  8157f0:	8b d8                	mov    ebx,eax
  8157f2:	6a 00                	push   0x0
  8157f4:	53                   	push   ebx
  8157f5:	e8 9e 9a 76 00       	call   0xf7f298
  8157fa:	c7 04 1f ff ff ff ff 	mov    DWORD PTR [edi+ebx*1],0xffffffff
  815801:	33 ff                	xor    edi,edi
  815803:	83 c4 24             	add    esp,0x24
  815806:	39 7e 08             	cmp    DWORD PTR [esi+0x8],edi
  815809:	76 45                	jbe    0x815850
  81580b:	eb 03                	jmp    0x815810
  81580d:	8d 49 00             	lea    ecx,[ecx+0x0]
  815810:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  815813:	8b 0c ba             	mov    ecx,DWORD PTR [edx+edi*4]
  815816:	85 c9                	test   ecx,ecx
  815818:	74 2a                	je     0x815844
  81581a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  815820:	8b 01                	mov    eax,DWORD PTR [ecx]
  815822:	33 d2                	xor    edx,edx
  815824:	f7 74 24 14          	div    DWORD PTR [esp+0x14]
  815828:	8b 69 0c             	mov    ebp,DWORD PTR [ecx+0xc]
  81582b:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  81582e:	89 2c b8             	mov    DWORD PTR [eax+edi*4],ebp
  815831:	8b 04 93             	mov    eax,DWORD PTR [ebx+edx*4]
  815834:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
  815837:	89 0c 93             	mov    DWORD PTR [ebx+edx*4],ecx
  81583a:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  81583d:	8b 0c b9             	mov    ecx,DWORD PTR [ecx+edi*4]
  815840:	85 c9                	test   ecx,ecx
  815842:	75 dc                	jne    0x815820
  815844:	83 c7 01             	add    edi,0x1
  815847:	3b 7e 08             	cmp    edi,DWORD PTR [esi+0x8]
  81584a:	72 c4                	jb     0x815810
  81584c:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  815850:	83 7e 08 01          	cmp    DWORD PTR [esi+0x8],0x1
  815854:	76 0c                	jbe    0x815862
  815856:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  815859:	52                   	push   edx
  81585a:	e8 81 ec cc ff       	call   0x4e44e0
  81585f:	83 c4 04             	add    esp,0x4
  815862:	5f                   	pop    edi
  815863:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  815866:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  815869:	5e                   	pop    esi
  81586a:	5d                   	pop    ebp
  81586b:	5b                   	pop    ebx
  81586c:	c2 04 00             	ret    0x4
