# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

004dd860 <.text+0xdc860>:
  4dd860:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  4dd864:	8b 01                	mov    eax,DWORD PTR [ecx]
  4dd866:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
  4dd869:	6a 01                	push   0x1
  4dd86b:	8d 54 24 08          	lea    edx,[esp+0x8]
  4dd86f:	52                   	push   edx
  4dd870:	ff d0                	call   eax
  4dd872:	83 f8 01             	cmp    eax,0x1
  4dd875:	75 11                	jne    0x4dd888
  4dd877:	80 7c 24 04 00       	cmp    BYTE PTR [esp+0x4],0x0
  4dd87c:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  4dd880:	0f 95 c1             	setne  cl
  4dd883:	88 0a                	mov    BYTE PTR [edx],cl
  4dd885:	8a c0                	mov    al,al
  4dd887:	c3                   	ret
  4dd888:	32 c0                	xor    al,al
  4dd88a:	c3                   	ret
