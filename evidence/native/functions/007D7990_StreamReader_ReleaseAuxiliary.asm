# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d7990 <.text+0x3d6990>:
  7d7990:	56                   	push   esi
  7d7991:	8b f1                	mov    esi,ecx
  7d7993:	83 7e 04 00          	cmp    DWORD PTR [esi+0x4],0x0
  7d7997:	74 15                	je     0x7d79ae
  7d7999:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d799c:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d799e:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  7d79a1:	ff d2                	call   edx
  7d79a3:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  7d79a6:	8b 01                	mov    eax,DWORD PTR [ecx]
  7d79a8:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7d79ab:	5e                   	pop    esi
  7d79ac:	ff e2                	jmp    edx
  7d79ae:	5e                   	pop    esi
  7d79af:	c3                   	ret
