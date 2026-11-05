# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942ab0 <.text+0x541ab0>:
  942ab0:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  942ab3:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  942ab6:	73 21                	jae    0x942ad9
  942ab8:	85 c0                	test   eax,eax
  942aba:	8d 50 14             	lea    edx,[eax+0x14]
  942abd:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  942ac0:	74 22                	je     0x942ae4
  942ac2:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  942ac6:	8b 11                	mov    edx,DWORD PTR [ecx]
  942ac8:	83 c1 04             	add    ecx,0x4
  942acb:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
  942acf:	89 10                	mov    DWORD PTR [eax],edx
  942ad1:	8d 48 04             	lea    ecx,[eax+0x4]
  942ad4:	e9 e7 2e ac ff       	jmp    0x4059c0
  942ad9:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  942add:	52                   	push   edx
  942ade:	50                   	push   eax
  942adf:	e8 bc fc ff ff       	call   0x9427a0
  942ae4:	c2 04 00             	ret    0x4
