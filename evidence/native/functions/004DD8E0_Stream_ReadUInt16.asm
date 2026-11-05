# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dd8e0 <.text+0xdc8e0>:
  4dd8e0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  4dd8e4:	8b 01                	mov    eax,DWORD PTR [ecx]
  4dd8e6:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  4dd8e9:	56                   	push   esi
  4dd8ea:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  4dd8ee:	6a 02                	push   0x2
  4dd8f0:	56                   	push   esi
  4dd8f1:	ff d2                	call   edx
  4dd8f3:	83 f8 02             	cmp    eax,0x2
  4dd8f6:	75 17                	jne    0x4dd90f
  4dd8f8:	b8 01 00 00 00       	mov    eax,0x1
  4dd8fd:	39 44 24 10          	cmp    DWORD PTR [esp+0x10],eax
  4dd901:	74 0e                	je     0x4dd911
  4dd903:	66 8b 0e             	mov    cx,WORD PTR [esi]
  4dd906:	66 c1 c1 08          	rol    cx,0x8
  4dd90a:	66 89 0e             	mov    WORD PTR [esi],cx
  4dd90d:	5e                   	pop    esi
  4dd90e:	c3                   	ret
  4dd90f:	32 c0                	xor    al,al
  4dd911:	5e                   	pop    esi
  4dd912:	c3                   	ret
