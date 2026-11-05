# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00f7f620 <.text+0xb7e620>:
  f7f620:	83 3d 74 53 23 01 00 	cmp    DWORD PTR ds:0x1235374,0x0
  f7f627:	74 2d                	je     0xf7f656
  f7f629:	55                   	push   ebp
  f7f62a:	8b ec                	mov    ebp,esp
  f7f62c:	83 ec 08             	sub    esp,0x8
  f7f62f:	83 e4 f8             	and    esp,0xfffffff8
  f7f632:	dd 1c 24             	fstp   QWORD PTR [esp]
  f7f635:	f2 0f 2c 04 24       	cvttsd2si eax,QWORD PTR [esp]
  f7f63a:	c9                   	leave
  f7f63b:	c3                   	ret
