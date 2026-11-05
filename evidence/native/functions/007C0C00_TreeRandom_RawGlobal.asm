# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c0c00 <.text+0x3bfc00>:
  7c0c00:	51                   	push   ecx
  7c0c01:	dd 05 68 98 1d 01    	fld    QWORD PTR ds:0x11d9868
  7c0c07:	e8 14 ea 7b 00       	call   0xf7f620
  7c0c0c:	8b c8                	mov    ecx,eax
  7c0c0e:	b8 5f 0b 4e 83       	mov    eax,0x834e0b5f
  7c0c13:	f7 e9                	imul   ecx
  7c0c15:	03 d1                	add    edx,ecx
  7c0c17:	69 c9 a7 41 00 00    	imul   ecx,ecx,0x41a7
  7c0c1d:	c1 fa 10             	sar    edx,0x10
  7c0c20:	8b c2                	mov    eax,edx
  7c0c22:	c1 e8 1f             	shr    eax,0x1f
  7c0c25:	03 c2                	add    eax,edx
  7c0c27:	69 c0 ff ff ff 7f    	imul   eax,eax,0x7fffffff
  7c0c2d:	2b c8                	sub    ecx,eax
  7c0c2f:	85 c9                	test   ecx,ecx
  7c0c31:	89 0c 24             	mov    DWORD PTR [esp],ecx
  7c0c34:	7f 09                	jg     0x7c0c3f
  7c0c36:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
  7c0c3c:	89 0c 24             	mov    DWORD PTR [esp],ecx
  7c0c3f:	db 04 24             	fild   DWORD PTR [esp]
  7c0c42:	dd 15 68 98 1d 01    	fst    QWORD PTR ds:0x11d9868
  7c0c48:	d8 0d f4 7b 01 01    	fmul   DWORD PTR ds:0x1017bf4
  7c0c4e:	59                   	pop    ecx
  7c0c4f:	c3                   	ret
