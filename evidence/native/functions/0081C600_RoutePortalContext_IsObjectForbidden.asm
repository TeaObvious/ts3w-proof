# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0081c600,0x0081c636); analyst name RoutePortalContext_IsObjectForbidden.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0081c600 <.text+0x41b600>:
  81c600:	8b 51 6c             	mov    edx,DWORD PTR [ecx+0x6c]
  81c603:	8b 41 68             	mov    eax,DWORD PTR [ecx+0x68]
  81c606:	3b c2                	cmp    eax,edx
  81c608:	74 20                	je     0x81c62a
  81c60a:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  81c60e:	56                   	push   esi
  81c60f:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  81c613:	57                   	push   edi
  81c614:	8b 38                	mov    edi,DWORD PTR [eax]
  81c616:	3b fe                	cmp    edi,esi
  81c618:	75 07                	jne    0x81c621
  81c61a:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  81c61d:	3b f9                	cmp    edi,ecx
  81c61f:	74 07                	je     0x81c628
  81c621:	83 c0 08             	add    eax,0x8
  81c624:	3b c2                	cmp    eax,edx
  81c626:	75 ec                	jne    0x81c614
  81c628:	5f                   	pop    edi
  81c629:	5e                   	pop    esi
  81c62a:	33 c9                	xor    ecx,ecx
  81c62c:	3b c2                	cmp    eax,edx
  81c62e:	0f 95 c1             	setne  cl
  81c631:	8a c1                	mov    al,cl
  81c633:	c2 08 00             	ret    0x8
