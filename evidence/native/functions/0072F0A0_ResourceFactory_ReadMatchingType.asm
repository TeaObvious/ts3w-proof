# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0072f0a0 <.text+0x32e0a0>:
  72f0a0:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  72f0a4:	53                   	push   ebx
  72f0a5:	56                   	push   esi
  72f0a6:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  72f0aa:	57                   	push   edi
  72f0ab:	8b f9                	mov    edi,ecx
  72f0ad:	32 db                	xor    bl,bl
  72f0af:	3b 47 0c             	cmp    eax,DWORD PTR [edi+0xc]
  72f0b2:	75 31                	jne    0x72f0e5
  72f0b4:	8b 16                	mov    edx,DWORD PTR [esi]
  72f0b6:	8b 42 10             	mov    eax,DWORD PTR [edx+0x10]
  72f0b9:	8b ce                	mov    ecx,esi
  72f0bb:	ff d0                	call   eax
  72f0bd:	8b 10                	mov    edx,DWORD PTR [eax]
  72f0bf:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  72f0c3:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  72f0c6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  72f0c9:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  72f0cc:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  72f0cf:	89 51 10             	mov    DWORD PTR [ecx+0x10],edx
  72f0d2:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  72f0d5:	89 41 14             	mov    DWORD PTR [ecx+0x14],eax
  72f0d8:	8b 17                	mov    edx,DWORD PTR [edi]
  72f0da:	8b 42 3c             	mov    eax,DWORD PTR [edx+0x3c]
  72f0dd:	51                   	push   ecx
  72f0de:	56                   	push   esi
  72f0df:	8b cf                	mov    ecx,edi
  72f0e1:	ff d0                	call   eax
  72f0e3:	8a d8                	mov    bl,al
  72f0e5:	8b 16                	mov    edx,DWORD PTR [esi]
  72f0e7:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  72f0ea:	8b ce                	mov    ecx,esi
  72f0ec:	ff d0                	call   eax
  72f0ee:	5f                   	pop    edi
  72f0ef:	5e                   	pop    esi
  72f0f0:	8a c3                	mov    al,bl
  72f0f2:	5b                   	pop    ebx
  72f0f3:	c2 10 00             	ret    0x10
