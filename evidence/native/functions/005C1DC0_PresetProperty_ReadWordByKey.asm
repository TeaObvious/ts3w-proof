# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005c1dc0 <.text+0x1c0dc0>:
  5c1dc0:	53                   	push   ebx
  5c1dc1:	56                   	push   esi
  5c1dc2:	8b 71 4c             	mov    esi,DWORD PTR [ecx+0x4c]
  5c1dc5:	57                   	push   edi
  5c1dc6:	8b 79 50             	mov    edi,DWORD PTR [ecx+0x50]
  5c1dc9:	3b f7                	cmp    esi,edi
  5c1dcb:	74 1b                	je     0x5c1de8
  5c1dcd:	8b 5c 24 10          	mov    ebx,DWORD PTR [esp+0x10]
  5c1dd1:	8b 06                	mov    eax,DWORD PTR [esi]
  5c1dd3:	50                   	push   eax
  5c1dd4:	e8 27 fa ff ff       	call   0x5c1800
  5c1dd9:	83 c4 04             	add    esp,0x4
  5c1ddc:	39 58 04             	cmp    DWORD PTR [eax+0x4],ebx
  5c1ddf:	74 0f                	je     0x5c1df0
  5c1de1:	83 c6 04             	add    esi,0x4
  5c1de4:	3b f7                	cmp    esi,edi
  5c1de6:	75 e9                	jne    0x5c1dd1
  5c1de8:	5f                   	pop    edi
  5c1de9:	5e                   	pop    esi
  5c1dea:	32 c0                	xor    al,al
  5c1dec:	5b                   	pop    ebx
  5c1ded:	c2 0c 00             	ret    0xc
  5c1df0:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  5c1df3:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  5c1df7:	81 e1 ff 00 00 00    	and    ecx,0xff
  5c1dfd:	89 0a                	mov    DWORD PTR [edx],ecx
  5c1dff:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  5c1e03:	8b 10                	mov    edx,DWORD PTR [eax]
  5c1e05:	8b 52 04             	mov    edx,DWORD PTR [edx+0x4]
  5c1e08:	6a 04                	push   0x4
  5c1e0a:	51                   	push   ecx
  5c1e0b:	8b c8                	mov    ecx,eax
  5c1e0d:	ff d2                	call   edx
  5c1e0f:	5f                   	pop    edi
  5c1e10:	5e                   	pop    esi
  5c1e11:	5b                   	pop    ebx
  5c1e12:	c2 0c 00             	ret    0xc
