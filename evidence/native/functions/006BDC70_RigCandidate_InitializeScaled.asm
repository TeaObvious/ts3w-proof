# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006bdc70 <.text+0x2bcc70>:
  6bdc70:	55                   	push   ebp
  6bdc71:	8b ec                	mov    ebp,esp
  6bdc73:	83 e4 f0             	and    esp,0xfffffff0
  6bdc76:	83 ec 1c             	sub    esp,0x1c
  6bdc79:	56                   	push   esi
  6bdc7a:	8b f1                	mov    esi,ecx
  6bdc7c:	b9 b0 1b 1d 01       	mov    ecx,0x11d1bb0
  6bdc81:	e8 1a 75 12 00       	call   0x7e51a0
  6bdc86:	0f 28 05 20 1a 1d 01 	movaps xmm0,XMMWORD PTR ds:0x11d1a20
  6bdc8d:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6bdc90:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  6bdc93:	0f 28 c8             	movaps xmm1,xmm0
  6bdc96:	0f c6 c8 aa          	shufps xmm1,xmm0,0xaa
  6bdc9a:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  6bdc9e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6bdca1:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6bdca5:	0f 59 c8             	mulps  xmm1,xmm0
  6bdca8:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  6bdcab:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  6bdcae:	0f 29 06             	movaps XMMWORD PTR [esi],xmm0
  6bdcb1:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  6bdcb4:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  6bdcb9:	0f 28 09             	movaps xmm1,XMMWORD PTR [ecx]
  6bdcbc:	0f 59 c8             	mulps  xmm1,xmm0
  6bdcbf:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  6bdcc5:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6bdcc9:	0f 59 c8             	mulps  xmm1,xmm0
  6bdccc:	0f 29 4e 10          	movaps XMMWORD PTR [esi+0x10],xmm1
  6bdcd0:	0f 28 05 40 21 1d 01 	movaps xmm0,XMMWORD PTR ds:0x11d2140
  6bdcd7:	0f 28 4e 10          	movaps xmm1,XMMWORD PTR [esi+0x10]
  6bdcdb:	0f 59 c8             	mulps  xmm1,xmm0
  6bdcde:	0f 28 c1             	movaps xmm0,xmm1
  6bdce1:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  6bdce5:	0f 28 d1             	movaps xmm2,xmm1
  6bdce8:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  6bdcec:	0f 58 c2             	addps  xmm0,xmm2
  6bdcef:	0f 58 c1             	addps  xmm0,xmm1
  6bdcf2:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6bdcf6:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  6bdcfb:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  6bdd01:	f3 0f 11 46 28       	movss  DWORD PTR [esi+0x28],xmm0
  6bdd06:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  6bdd09:	5e                   	pop    esi
  6bdd0a:	8b e5                	mov    esp,ebp
  6bdd0c:	5d                   	pop    ebp
  6bdd0d:	c2 10 00             	ret    0x10
