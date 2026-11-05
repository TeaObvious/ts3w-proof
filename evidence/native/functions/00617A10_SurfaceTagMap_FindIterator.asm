# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00617a10 <.text+0x216a10>:
  617a10:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  617a14:	83 ec 08             	sub    esp,0x8
  617a17:	56                   	push   esi
  617a18:	8b 30                	mov    esi,DWORD PTR [eax]
  617a1a:	33 d2                	xor    edx,edx
  617a1c:	57                   	push   edi
  617a1d:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
  617a20:	8b c6                	mov    eax,esi
  617a22:	f7 f7                	div    edi
  617a24:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  617a27:	8b 04 91             	mov    eax,DWORD PTR [ecx+edx*4]
  617a2a:	85 c0                	test   eax,eax
  617a2c:	8d 14 91             	lea    edx,[ecx+edx*4]
  617a2f:	74 0b                	je     0x617a3c
  617a31:	3b 30                	cmp    esi,DWORD PTR [eax]
  617a33:	74 2e                	je     0x617a63
  617a35:	8b 40 28             	mov    eax,DWORD PTR [eax+0x28]
  617a38:	85 c0                	test   eax,eax
  617a3a:	75 f5                	jne    0x617a31
  617a3c:	8d 04 b9             	lea    eax,[ecx+edi*4]
  617a3f:	8b 08                	mov    ecx,DWORD PTR [eax]
  617a41:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  617a45:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  617a49:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  617a4d:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  617a51:	8b 11                	mov    edx,DWORD PTR [ecx]
  617a53:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  617a56:	5f                   	pop    edi
  617a57:	89 10                	mov    DWORD PTR [eax],edx
  617a59:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  617a5c:	5e                   	pop    esi
  617a5d:	83 c4 08             	add    esp,0x8
  617a60:	c2 08 00             	ret    0x8
  617a63:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  617a67:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  617a6b:	eb dc                	jmp    0x617a49
