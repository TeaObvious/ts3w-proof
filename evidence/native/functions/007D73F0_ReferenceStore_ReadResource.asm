# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d73f0 <.text+0x3d63f0>:
  7d73f0:	83 ec 10             	sub    esp,0x10
  7d73f3:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  7d73f7:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  7d73fb:	56                   	push   esi
  7d73fc:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  7d7400:	57                   	push   edi
  7d7401:	8b f9                	mov    edi,ecx
  7d7403:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  7d7407:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  7d740b:	6a 00                	push   0x0
  7d740d:	8d 44 24 0c          	lea    eax,[esp+0xc]
  7d7411:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  7d7415:	50                   	push   eax
  7d7416:	8b ce                	mov    ecx,esi
  7d7418:	c7 44 24 18 26 12 ed 	mov    DWORD PTR [esp+0x18],0x5ed1226
  7d741f:	05 
  7d7420:	89 54 24 1c          	mov    DWORD PTR [esp+0x1c],edx
  7d7424:	e8 17 11 00 00       	call   0x7d8540
  7d7429:	84 c0                	test   al,al
  7d742b:	74 1f                	je     0x7d744c
  7d742d:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  7d7431:	51                   	push   ecx
  7d7432:	56                   	push   esi
  7d7433:	8b cf                	mov    ecx,edi
  7d7435:	e8 56 f8 ff ff       	call   0x7d6c90
  7d743a:	8b ce                	mov    ecx,esi
  7d743c:	e8 2f 06 00 00       	call   0x7d7a70
  7d7441:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  7d7444:	5f                   	pop    edi
  7d7445:	5e                   	pop    esi
  7d7446:	83 c4 10             	add    esp,0x10
  7d7449:	c2 14 00             	ret    0x14
  7d744c:	5f                   	pop    edi
  7d744d:	32 c0                	xor    al,al
  7d744f:	5e                   	pop    esi
  7d7450:	83 c4 10             	add    esp,0x10
  7d7453:	c2 14 00             	ret    0x14
