# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00588b40 <.text+0x187b40>:
  588b40:	83 79 08 01          	cmp    DWORD PTR [ecx+0x8],0x1
  588b44:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  588b48:	75 1f                	jne    0x588b69
  588b4a:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  588b4e:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  588b52:	50                   	push   eax
  588b53:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  588b57:	52                   	push   edx
  588b58:	51                   	push   ecx
  588b59:	d9 1c 24             	fstp   DWORD PTR [esp]
  588b5c:	50                   	push   eax
  588b5d:	51                   	push   ecx
  588b5e:	e8 7d d6 ff ff       	call   0x5861e0
  588b63:	83 c4 14             	add    esp,0x14
  588b66:	c2 10 00             	ret    0x10
  588b69:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  588b6d:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  588b71:	52                   	push   edx
  588b72:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  588b76:	50                   	push   eax
  588b77:	51                   	push   ecx
  588b78:	d9 1c 24             	fstp   DWORD PTR [esp]
  588b7b:	52                   	push   edx
  588b7c:	51                   	push   ecx
  588b7d:	e8 de db ff ff       	call   0x586760
  588b82:	83 c4 14             	add    esp,0x14
  588b85:	c2 10 00             	ret    0x10
