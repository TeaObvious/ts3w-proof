# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095fa20 <.text+0x55ea20>:
  95fa20:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  95fa24:	85 c9                	test   ecx,ecx
  95fa26:	74 1c                	je     0x95fa44
  95fa28:	a1 a8 a2 1e 01       	mov    eax,ds:0x11ea2a8
  95fa2d:	50                   	push   eax
  95fa2e:	e8 2d 48 fd ff       	call   0x934260
  95fa33:	85 c0                	test   eax,eax
  95fa35:	74 0d                	je     0x95fa44
  95fa37:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  95fa3b:	51                   	push   ecx
  95fa3c:	8b c8                	mov    ecx,eax
  95fa3e:	e8 4d fe ff ff       	call   0x95f890
  95fa43:	c3                   	ret
  95fa44:	b0 01                	mov    al,0x1
  95fa46:	c3                   	ret
