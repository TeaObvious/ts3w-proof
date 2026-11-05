# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0068ede0 <.text+0x28dde0>:
  68ede0:	56                   	push   esi
  68ede1:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  68ede5:	85 f6                	test   esi,esi
  68ede7:	75 0e                	jne    0x68edf7
  68ede9:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  68eded:	f7 d8                	neg    eax
  68edef:	1b c0                	sbb    eax,eax
  68edf1:	23 44 24 0c          	and    eax,DWORD PTR [esp+0xc]
  68edf5:	5e                   	pop    esi
  68edf6:	c3                   	ret
  68edf7:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  68edfb:	33 c0                	xor    eax,eax
  68edfd:	85 d2                	test   edx,edx
  68edff:	57                   	push   edi
  68ee00:	7e 14                	jle    0x68ee16
  68ee02:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  68ee06:	8b cf                	mov    ecx,edi
  68ee08:	39 31                	cmp    DWORD PTR [ecx],esi
  68ee0a:	74 0f                	je     0x68ee1b
  68ee0c:	83 c0 01             	add    eax,0x1
  68ee0f:	83 c1 14             	add    ecx,0x14
  68ee12:	3b c2                	cmp    eax,edx
  68ee14:	7c f2                	jl     0x68ee08
  68ee16:	5f                   	pop    edi
  68ee17:	33 c0                	xor    eax,eax
  68ee19:	5e                   	pop    esi
  68ee1a:	c3                   	ret
  68ee1b:	8d 04 80             	lea    eax,[eax+eax*4]
  68ee1e:	8d 04 87             	lea    eax,[edi+eax*4]
  68ee21:	5f                   	pop    edi
  68ee22:	5e                   	pop    esi
  68ee23:	c3                   	ret
