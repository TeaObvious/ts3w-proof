# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006b7640 <.text+0x2b6640>:
  6b7640:	55                   	push   ebp
  6b7641:	8b ec                	mov    ebp,esp
  6b7643:	83 e4 f0             	and    esp,0xfffffff0
  6b7646:	83 ec 20             	sub    esp,0x20
  6b7649:	0f 28 10             	movaps xmm2,XMMWORD PTR [eax]
  6b764c:	0f 29 14 24          	movaps XMMWORD PTR [esp],xmm2
  6b7650:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [esp]
  6b7655:	0f 28 c8             	movaps xmm1,xmm0
  6b7658:	f3 0f 10 c0          	movss  xmm0,xmm0
  6b765c:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b7660:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6b7666:	f3 0f 10 40 04       	movss  xmm0,DWORD PTR [eax+0x4]
  6b766b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b766f:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  6b7674:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [esp]
  6b7679:	0f 2f 44 24 10       	comiss xmm0,DWORD PTR [esp+0x10]
  6b767e:	76 0b                	jbe    0x6b768b
  6b7680:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  6b7685:	f3 0f 10 4c 24 14    	movss  xmm1,DWORD PTR [esp+0x14]
  6b768b:	f3 0f 10 c1          	movss  xmm0,xmm1
  6b768f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b7693:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  6b7698:	f3 0f 10 40 08       	movss  xmm0,DWORD PTR [eax+0x8]
  6b769d:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b76a1:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  6b76a7:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  6b76ad:	0f 2f 04 24          	comiss xmm0,DWORD PTR [esp]
  6b76b1:	76 0b                	jbe    0x6b76be
  6b76b3:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  6b76b8:	f3 0f 10 4c 24 18    	movss  xmm1,DWORD PTR [esp+0x18]
  6b76be:	f3 0f 10 45 08       	movss  xmm0,DWORD PTR [ebp+0x8]
  6b76c3:	0f 2f c1             	comiss xmm0,xmm1
  6b76c6:	76 03                	jbe    0x6b76cb
  6b76c8:	0f 28 c8             	movaps xmm1,xmm0
  6b76cb:	f3 0f 5e c1          	divss  xmm0,xmm1
  6b76cf:	8b e5                	mov    esp,ebp
  6b76d1:	5d                   	pop    ebp
  6b76d2:	c3                   	ret
