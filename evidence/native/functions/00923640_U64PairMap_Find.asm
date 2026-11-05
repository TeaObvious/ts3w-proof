# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00923640 <.text+0x522640>:
  923640:	83 ec 08             	sub    esp,0x8
  923643:	53                   	push   ebx
  923644:	56                   	push   esi
  923645:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  923649:	8b 06                	mov    eax,DWORD PTR [esi]
  92364b:	33 d2                	xor    edx,edx
  92364d:	57                   	push   edi
  92364e:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
  923651:	f7 f7                	div    edi
  923653:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  923656:	8b 04 91             	mov    eax,DWORD PTR [ecx+edx*4]
  923659:	85 c0                	test   eax,eax
  92365b:	8d 14 91             	lea    edx,[ecx+edx*4]
  92365e:	74 15                	je     0x923675
  923660:	8b 1e                	mov    ebx,DWORD PTR [esi]
  923662:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  923665:	3b 18                	cmp    ebx,DWORD PTR [eax]
  923667:	75 05                	jne    0x92366e
  923669:	3b 70 04             	cmp    esi,DWORD PTR [eax+0x4]
  92366c:	74 2f                	je     0x92369d
  92366e:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
  923671:	85 c0                	test   eax,eax
  923673:	75 f0                	jne    0x923665
  923675:	8d 04 b9             	lea    eax,[ecx+edi*4]
  923678:	8b 08                	mov    ecx,DWORD PTR [eax]
  92367a:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  92367e:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  923682:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  923686:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  92368a:	8b 11                	mov    edx,DWORD PTR [ecx]
  92368c:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  92368f:	5f                   	pop    edi
  923690:	5e                   	pop    esi
  923691:	89 10                	mov    DWORD PTR [eax],edx
  923693:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  923696:	5b                   	pop    ebx
  923697:	83 c4 08             	add    esp,0x8
  92369a:	c2 08 00             	ret    0x8
  92369d:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  9236a1:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  9236a5:	eb db                	jmp    0x923682
