# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00617c90 <.text+0x216c90>:
  617c90:	83 ec 08             	sub    esp,0x8
  617c93:	56                   	push   esi
  617c94:	8d 71 20             	lea    esi,[ecx+0x20]
  617c97:	8d 44 24 10          	lea    eax,[esp+0x10]
  617c9b:	50                   	push   eax
  617c9c:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  617ca0:	51                   	push   ecx
  617ca1:	8b ce                	mov    ecx,esi
  617ca3:	e8 68 fd ff ff       	call   0x617a10
  617ca8:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  617cab:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  617cae:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  617cb2:	3b 04 91             	cmp    eax,DWORD PTR [ecx+edx*4]
  617cb5:	5e                   	pop    esi
  617cb6:	74 09                	je     0x617cc1
  617cb8:	83 c0 04             	add    eax,0x4
  617cbb:	83 c4 08             	add    esp,0x8
  617cbe:	c2 04 00             	ret    0x4
  617cc1:	33 c0                	xor    eax,eax
  617cc3:	83 c4 08             	add    esp,0x8
  617cc6:	c2 04 00             	ret    0x4
