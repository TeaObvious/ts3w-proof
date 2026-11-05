# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942730 <.text+0x541730>:
  942730:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  942734:	85 c9                	test   ecx,ecx
  942736:	74 0b                	je     0x942743
  942738:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  94273c:	50                   	push   eax
  94273d:	e8 2e ff ff ff       	call   0x942670
  942742:	c3                   	ret
  942743:	33 c0                	xor    eax,eax
  942745:	c3                   	ret
