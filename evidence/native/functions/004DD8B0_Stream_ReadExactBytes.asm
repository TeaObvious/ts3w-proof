# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dd8b0 <.text+0xdc8b0>:
  4dd8b0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  4dd8b4:	8b 01                	mov    eax,DWORD PTR [ecx]
  4dd8b6:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  4dd8ba:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
  4dd8bd:	56                   	push   esi
  4dd8be:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  4dd8c2:	56                   	push   esi
  4dd8c3:	52                   	push   edx
  4dd8c4:	ff d0                	call   eax
  4dd8c6:	33 c9                	xor    ecx,ecx
  4dd8c8:	3b c6                	cmp    eax,esi
  4dd8ca:	0f 94 c1             	sete   cl
  4dd8cd:	8a c1                	mov    al,cl
  4dd8cf:	5e                   	pop    esi
  4dd8d0:	c3                   	ret
