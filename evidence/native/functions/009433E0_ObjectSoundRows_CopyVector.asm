# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009433e0 <.text+0x5423e0>:
  9433e0:	56                   	push   esi
  9433e1:	8b f1                	mov    esi,ecx
  9433e3:	33 c9                	xor    ecx,ecx
  9433e5:	89 0e                	mov    DWORD PTR [esi],ecx
  9433e7:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  9433ea:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  9433ed:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  9433f1:	c7 46 0c 7c 99 f9 00 	mov    DWORD PTR [esi+0xc],0xf9997c
  9433f8:	8d 46 14             	lea    eax,[esi+0x14]
  9433fb:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  9433fe:	8b 51 0c             	mov    edx,DWORD PTR [ecx+0xc]
  943401:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  943404:	89 06                	mov    DWORD PTR [esi],eax
  943406:	83 c0 14             	add    eax,0x14
  943409:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  94340c:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  943410:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  943413:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  943416:	50                   	push   eax
  943417:	8b 01                	mov    eax,DWORD PTR [ecx]
  943419:	52                   	push   edx
  94341a:	50                   	push   eax
  94341b:	8b ce                	mov    ecx,esi
  94341d:	e8 de f4 ff ff       	call   0x942900
  943422:	8b c6                	mov    eax,esi
  943424:	5e                   	pop    esi
  943425:	c2 04 00             	ret    0x4
