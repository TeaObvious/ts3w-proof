# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c5f5c0 <.text+0x85e5c0>:
  c5f5c0:	a1 c8 db 1e 01       	mov    eax,ds:0x11edbc8
  c5f5c5:	85 c0                	test   eax,eax
  c5f5c7:	74 0a                	je     0xc5f5d3
  c5f5c9:	8b 0d cc db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbcc
  c5f5cf:	51                   	push   ecx
  c5f5d0:	ff d0                	call   eax
  c5f5d2:	59                   	pop    ecx
  c5f5d3:	c3                   	ret
