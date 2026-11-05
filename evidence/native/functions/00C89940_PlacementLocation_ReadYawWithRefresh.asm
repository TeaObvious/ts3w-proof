# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c89940 <.text+0x888940>:
  c89940:	56                   	push   esi
  c89941:	8b f1                	mov    esi,ecx
  c89943:	f6 46 2c 10          	test   BYTE PTR [esi+0x2c],0x10
  c89947:	74 05                	je     0xc8994e
  c89949:	e8 02 fb ff ff       	call   0xc89450
  c8994e:	d9 46 28             	fld    DWORD PTR [esi+0x28]
  c89951:	5e                   	pop    esi
  c89952:	c3                   	ret
