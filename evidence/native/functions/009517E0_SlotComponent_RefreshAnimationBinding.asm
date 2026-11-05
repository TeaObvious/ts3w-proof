# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009517e0 <.text+0x5507e0>:
  9517e0:	56                   	push   esi
  9517e1:	8b f1                	mov    esi,ecx
  9517e3:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  9517e6:	85 c9                	test   ecx,ecx
  9517e8:	57                   	push   edi
  9517e9:	74 1e                	je     0x951809
  9517eb:	a1 84 d4 1d 01       	mov    eax,ds:0x11dd484
  9517f0:	50                   	push   eax
  9517f1:	e8 6a 2a fe ff       	call   0x934260
  9517f6:	85 c0                	test   eax,eax
  9517f8:	74 0f                	je     0x951809
  9517fa:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9517fd:	8d 48 08             	lea    ecx,[eax+0x8]
  951800:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  951803:	ff d0                	call   eax
  951805:	8b f8                	mov    edi,eax
  951807:	eb 02                	jmp    0x95180b
  951809:	33 ff                	xor    edi,edi
  95180b:	83 7e 40 00          	cmp    DWORD PTR [esi+0x40],0x0
  95180f:	75 21                	jne    0x951832
  951811:	8b 4e 58             	mov    ecx,DWORD PTR [esi+0x58]
  951814:	2b 4e 54             	sub    ecx,DWORD PTR [esi+0x54]
  951817:	c1 f9 02             	sar    ecx,0x2
  95181a:	03 4e 28             	add    ecx,DWORD PTR [esi+0x28]
  95181d:	03 4e 20             	add    ecx,DWORD PTR [esi+0x20]
  951820:	03 4e 18             	add    ecx,DWORD PTR [esi+0x18]
  951823:	03 4e 10             	add    ecx,DWORD PTR [esi+0x10]
  951826:	03 4e 08             	add    ecx,DWORD PTR [esi+0x8]
  951829:	75 07                	jne    0x951832
  95182b:	8b ce                	mov    ecx,esi
  95182d:	e8 8e f6 ff ff       	call   0x950ec0
  951832:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  951835:	5f                   	pop    edi
  951836:	b0 01                	mov    al,0x1
  951838:	5e                   	pop    esi
  951839:	c2 04 00             	ret    0x4
