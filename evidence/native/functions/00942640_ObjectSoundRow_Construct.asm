# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942640 <.text+0x541640>:
  942640:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  942644:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  942648:	56                   	push   esi
  942649:	8b f1                	mov    esi,ecx
  94264b:	89 06                	mov    DWORD PTR [esi],eax
  94264d:	8d 4e 04             	lea    ecx,[esi+0x4]
  942650:	33 c0                	xor    eax,eax
  942652:	89 01                	mov    DWORD PTR [ecx],eax
  942654:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  942657:	89 41 08             	mov    DWORD PTR [ecx+0x8],eax
  94265a:	52                   	push   edx
  94265b:	c7 41 0c e8 45 04 01 	mov    DWORD PTR [ecx+0xc],0x10445e8
  942662:	e8 69 34 ac ff       	call   0x405ad0
  942667:	8b c6                	mov    eax,esi
  942669:	5e                   	pop    esi
  94266a:	c2 08 00             	ret    0x8
