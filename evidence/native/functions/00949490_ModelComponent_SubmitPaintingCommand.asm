# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00949490 <.text+0x548490>:
  949490:	55                   	push   ebp
  949491:	8b ec                	mov    ebp,esp
  949493:	83 e4 f0             	and    esp,0xfffffff0
  949496:	83 ec 50             	sub    esp,0x50
  949499:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  94949c:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  94949f:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  9494a2:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  9494a6:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  9494a9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9494ac:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  9494b0:	8b 08                	mov    ecx,DWORD PTR [eax]
  9494b2:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  9494b6:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  9494b9:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  9494bd:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  9494c0:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  9494c3:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  9494c7:	8d 0c 24             	lea    ecx,[esp]
  9494ca:	51                   	push   ecx
  9494cb:	c7 44 24 04 a9 f1 bf 	mov    DWORD PTR [esp+0x4],0x5bff1a9
  9494d2:	05 
  9494d3:	c7 44 24 08 ac c9 17 	mov    DWORD PTR [esp+0x8],0x117c9ac
  9494da:	01 
  9494db:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  9494df:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  9494e3:	e8 98 9e d4 ff       	call   0x693380
  9494e8:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  9494ec:	83 c4 04             	add    esp,0x4
  9494ef:	85 c9                	test   ecx,ecx
  9494f1:	74 0b                	je     0x9494fe
  9494f3:	8b 11                	mov    edx,DWORD PTR [ecx]
  9494f5:	8b 12                	mov    edx,DWORD PTR [edx]
  9494f7:	8d 44 24 10          	lea    eax,[esp+0x10]
  9494fb:	50                   	push   eax
  9494fc:	ff d2                	call   edx
  9494fe:	8b e5                	mov    esp,ebp
  949500:	5d                   	pop    ebp
  949501:	c2 08 00             	ret    0x8
