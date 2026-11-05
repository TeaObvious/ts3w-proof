# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00942450 <.text+0x541450>:
  942450:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  942453:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  942456:	2b c8                	sub    ecx,eax
  942458:	83 f9 01             	cmp    ecx,0x1
  94245b:	7e 0b                	jle    0x942468
  94245d:	85 c0                	test   eax,eax
  94245f:	74 07                	je     0x942468
  942461:	50                   	push   eax
  942462:	e8 79 20 ba ff       	call   0x4e44e0
  942467:	59                   	pop    ecx
  942468:	c3                   	ret
