# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009cb700,0x009cb80e); analyst name SimStorage_SaveTravelSim.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009cb700 <.text+0x5ca700>:
  9cb700:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  9cb704:	83 ec 78             	sub    esp,0x78
  9cb707:	85 c0                	test   eax,eax
  9cb709:	56                   	push   esi
  9cb70a:	8b f1                	mov    esi,ecx
  9cb70c:	75 09                	jne    0x9cb717
  9cb70e:	32 c0                	xor    al,al
  9cb710:	5e                   	pop    esi
  9cb711:	83 c4 78             	add    esp,0x78
  9cb714:	c2 0c 00             	ret    0xc
  9cb717:	53                   	push   ebx
  9cb718:	68 c4 a6 fb 00       	push   0xfba6c4
  9cb71d:	68 c4 a6 fb 00       	push   0xfba6c4
  9cb722:	8d 8e f4 00 00 00    	lea    ecx,[esi+0xf4]
  9cb728:	89 86 f0 00 00 00    	mov    DWORD PTR [esi+0xf0],eax
  9cb72e:	e8 2d d6 a3 ff       	call   0x408d60
  9cb733:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  9cb737:	e8 a4 42 38 00       	call   0xd4f9e0
  9cb73c:	83 7e 70 00          	cmp    DWORD PTR [esi+0x70],0x0
  9cb740:	0f 95 c0             	setne  al
  9cb743:	84 c0                	test   al,al
  9cb745:	75 29                	jne    0x9cb770
  9cb747:	57                   	push   edi
  9cb748:	8d be 10 01 00 00    	lea    edi,[esi+0x110]
  9cb74e:	57                   	push   edi
  9cb74f:	ff 15 2c 61 f9 00    	call   DWORD PTR ds:0xf9612c
  9cb755:	6a 00                	push   0x0
  9cb757:	8d 46 40             	lea    eax,[esi+0x40]
  9cb75a:	50                   	push   eax
  9cb75b:	8b ce                	mov    ecx,esi
  9cb75d:	e8 9e e2 ff ff       	call   0x9c9a00
  9cb762:	57                   	push   edi
  9cb763:	8a d8                	mov    bl,al
  9cb765:	ff 15 30 61 f9 00    	call   DWORD PTR ds:0xf96130
  9cb76b:	84 db                	test   bl,bl
  9cb76d:	5f                   	pop    edi
  9cb76e:	74 30                	je     0x9cb7a0
  9cb770:	83 be a4 00 00 00 00 	cmp    DWORD PTR [esi+0xa4],0x0
  9cb777:	0f 95 c0             	setne  al
  9cb77a:	84 c0                	test   al,al
  9cb77c:	75 11                	jne    0x9cb78f
  9cb77e:	6a 00                	push   0x0
  9cb780:	8d 4e 74             	lea    ecx,[esi+0x74]
  9cb783:	51                   	push   ecx
  9cb784:	8b ce                	mov    ecx,esi
  9cb786:	e8 75 e2 ff ff       	call   0x9c9a00
  9cb78b:	84 c0                	test   al,al
  9cb78d:	74 11                	je     0x9cb7a0
  9cb78f:	8b 8e a4 00 00 00    	mov    ecx,DWORD PTR [esi+0xa4]
  9cb795:	8b 11                	mov    edx,DWORD PTR [ecx]
  9cb797:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  9cb79a:	ff d0                	call   eax
  9cb79c:	a8 02                	test   al,0x2
  9cb79e:	75 13                	jne    0x9cb7b3
  9cb7a0:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  9cb7a4:	e8 a7 42 38 00       	call   0xd4fa50
  9cb7a9:	5b                   	pop    ebx
  9cb7aa:	32 c0                	xor    al,al
  9cb7ac:	5e                   	pop    esi
  9cb7ad:	83 c4 78             	add    esp,0x78
  9cb7b0:	c2 0c 00             	ret    0xc
  9cb7b3:	8b 8c 24 8c 00 00 00 	mov    ecx,DWORD PTR [esp+0x8c]
  9cb7ba:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [esp+0x88]
  9cb7c1:	51                   	push   ecx
  9cb7c2:	8b 4e 70             	mov    ecx,DWORD PTR [esi+0x70]
  9cb7c5:	52                   	push   edx
  9cb7c6:	8b 96 f0 00 00 00    	mov    edx,DWORD PTR [esi+0xf0]
  9cb7cc:	6a 01                	push   0x1
  9cb7ce:	8d 44 24 14          	lea    eax,[esp+0x14]
  9cb7d2:	50                   	push   eax
  9cb7d3:	51                   	push   ecx
  9cb7d4:	52                   	push   edx
  9cb7d5:	8b ce                	mov    ecx,esi
  9cb7d7:	e8 f4 f8 ff ff       	call   0x9cb0d0
  9cb7dc:	8b 8e f0 00 00 00    	mov    ecx,DWORD PTR [esi+0xf0]
  9cb7e2:	85 c9                	test   ecx,ecx
  9cb7e4:	8a d8                	mov    bl,al
  9cb7e6:	74 09                	je     0x9cb7f1
  9cb7e8:	8b 01                	mov    eax,DWORD PTR [ecx]
  9cb7ea:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9cb7ed:	6a 01                	push   0x1
  9cb7ef:	ff d2                	call   edx
  9cb7f1:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  9cb7f5:	c7 86 f0 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0xf0],0x0
  9cb7ff:	e8 4c 42 38 00       	call   0xd4fa50
  9cb804:	8a c3                	mov    al,bl
  9cb806:	5b                   	pop    ebx
  9cb807:	5e                   	pop    esi
  9cb808:	83 c4 78             	add    esp,0x78
  9cb80b:	c2 0c 00             	ret    0xc
