# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00f80590 <.text+0xb7f590>:
  f80590:	55                   	push   ebp
  f80591:	8b ec                	mov    ebp,esp
  f80593:	83 e4 f0             	and    esp,0xfffffff0
  f80596:	83 ec 10             	sub    esp,0x10
  f80599:	83 c8 ff             	or     eax,0xffffffff
  f8059c:	89 04 24             	mov    DWORD PTR [esp],eax
  f8059f:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
  f805a3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  f805a7:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [esp+0xc],0x0
  f805ae:	00 
  f805af:	0f 28 04 24          	movaps xmm0,XMMWORD PTR [esp]
  f805b3:	0f 29 05 70 06 1b 01 	movaps XMMWORD PTR ds:0x11b0670,xmm0
  f805ba:	8b e5                	mov    esp,ebp
  f805bc:	5d                   	pop    ebp
  f805bd:	c3                   	ret
