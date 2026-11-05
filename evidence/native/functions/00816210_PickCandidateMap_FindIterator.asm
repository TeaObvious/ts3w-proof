# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00816210 <.text+0x415210>:
  816210:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  816214:	83 ec 08             	sub    esp,0x8
  816217:	56                   	push   esi
  816218:	8b 30                	mov    esi,DWORD PTR [eax]
  81621a:	33 d2                	xor    edx,edx
  81621c:	57                   	push   edi
  81621d:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
  816220:	8b c6                	mov    eax,esi
  816222:	f7 f7                	div    edi
  816224:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  816227:	8b 04 91             	mov    eax,DWORD PTR [ecx+edx*4]
  81622a:	85 c0                	test   eax,eax
  81622c:	8d 14 91             	lea    edx,[ecx+edx*4]
  81622f:	74 0b                	je     0x81623c
  816231:	3b 30                	cmp    esi,DWORD PTR [eax]
  816233:	74 2e                	je     0x816263
  816235:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  816238:	85 c0                	test   eax,eax
  81623a:	75 f5                	jne    0x816231
  81623c:	8d 04 b9             	lea    eax,[ecx+edi*4]
  81623f:	8b 08                	mov    ecx,DWORD PTR [eax]
  816241:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  816245:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  816249:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  81624d:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  816251:	8b 11                	mov    edx,DWORD PTR [ecx]
  816253:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  816256:	5f                   	pop    edi
  816257:	89 10                	mov    DWORD PTR [eax],edx
  816259:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  81625c:	5e                   	pop    esi
  81625d:	83 c4 08             	add    esp,0x8
  816260:	c2 08 00             	ret    0x8
  816263:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  816267:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  81626b:	eb dc                	jmp    0x816249
