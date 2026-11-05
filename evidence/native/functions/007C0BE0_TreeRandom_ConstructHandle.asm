# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c0be0 <.text+0x3bfbe0>:
  7c0be0:	80 3d 50 96 1d 01 00 	cmp    BYTE PTR ds:0x11d9650,0x0
  7c0be7:	56                   	push   esi
  7c0be8:	8b f1                	mov    esi,ecx
  7c0bea:	75 07                	jne    0x7c0bf3
  7c0bec:	6a ff                	push   0xffffffff
  7c0bee:	e8 3d ff ff ff       	call   0x7c0b30
  7c0bf3:	8b c6                	mov    eax,esi
  7c0bf5:	5e                   	pop    esi
  7c0bf6:	c3                   	ret
