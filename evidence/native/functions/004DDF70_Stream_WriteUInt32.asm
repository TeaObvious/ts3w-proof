# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004ddf70 <.text+0xdcf70>:
  4ddf70:	83 7c 24 0c 01       	cmp    DWORD PTR [esp+0xc],0x1
  4ddf75:	74 2c                	je     0x4ddfa3
  4ddf77:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  4ddf7b:	8b c8                	mov    ecx,eax
  4ddf7d:	8b d0                	mov    edx,eax
  4ddf7f:	c1 ea 10             	shr    edx,0x10
  4ddf82:	81 e1 00 00 ff 00    	and    ecx,0xff0000
  4ddf88:	0b ca                	or     ecx,edx
  4ddf8a:	8b d0                	mov    edx,eax
  4ddf8c:	81 e2 00 ff 00 00    	and    edx,0xff00
  4ddf92:	c1 e0 10             	shl    eax,0x10
  4ddf95:	0b d0                	or     edx,eax
  4ddf97:	c1 e9 08             	shr    ecx,0x8
  4ddf9a:	c1 e2 08             	shl    edx,0x8
  4ddf9d:	0b ca                	or     ecx,edx
  4ddf9f:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  4ddfa3:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  4ddfa7:	8b 01                	mov    eax,DWORD PTR [ecx]
  4ddfa9:	8b 40 38             	mov    eax,DWORD PTR [eax+0x38]
  4ddfac:	6a 04                	push   0x4
  4ddfae:	8d 54 24 0c          	lea    edx,[esp+0xc]
  4ddfb2:	52                   	push   edx
  4ddfb3:	ff d0                	call   eax
  4ddfb5:	c3                   	ret
