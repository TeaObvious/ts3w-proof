# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00957a90 <.text+0x556a90>:
  957a90:	55                   	push   ebp
  957a91:	8b ec                	mov    ebp,esp
  957a93:	83 e4 f0             	and    esp,0xfffffff0
  957a96:	83 ec 20             	sub    esp,0x20
  957a99:	8d 04 24             	lea    eax,[esp]
  957a9c:	50                   	push   eax
  957a9d:	e8 6e fe ff ff       	call   0x957910
  957aa2:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  957aa5:	f3 0f 10 05 30 58 04 	movss  xmm0,DWORD PTR ds:0x1045830
  957aac:	01 
  957aad:	f3 0f 10 15 b4 b5 f9 	movss  xmm2,DWORD PTR ds:0xf9b5b4
  957ab4:	00 
  957ab5:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  957ab9:	0f 59 c1             	mulps  xmm0,xmm1
  957abc:	0f 57 c9             	xorps  xmm1,xmm1
  957abf:	0f 5c c8             	subps  xmm1,xmm0
  957ac2:	0f 59 c8             	mulps  xmm1,xmm0
  957ac5:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  957ac9:	0f 58 ca             	addps  xmm1,xmm2
  957acc:	0f 28 d0             	movaps xmm2,xmm0
  957acf:	0f c6 d0 09          	shufps xmm2,xmm0,0x9
  957ad3:	0f 59 d0             	mulps  xmm2,xmm0
  957ad6:	0f 28 d8             	movaps xmm3,xmm0
  957ad9:	0f c6 d8 ff          	shufps xmm3,xmm0,0xff
  957add:	0f c6 c0 12          	shufps xmm0,xmm0,0x12
  957ae1:	0f 59 d8             	mulps  xmm3,xmm0
  957ae4:	0f 28 c3             	movaps xmm0,xmm3
  957ae7:	0f 58 c2             	addps  xmm0,xmm2
  957aea:	0f 5c d3             	subps  xmm2,xmm3
  957aed:	0f 28 d9             	movaps xmm3,xmm1
  957af0:	0f c6 d9 09          	shufps xmm3,xmm1,0x9
  957af4:	0f 58 d9             	addps  xmm3,xmm1
  957af7:	0f 28 cb             	movaps xmm1,xmm3
  957afa:	0f c6 c8 01          	shufps xmm1,xmm0,0x1
  957afe:	0f 28 e2             	movaps xmm4,xmm2
  957b01:	0f c6 e3 20          	shufps xmm4,xmm3,0x20
  957b05:	0f c6 e0 18          	shufps xmm4,xmm0,0x18
  957b09:	0f c6 c2 12          	shufps xmm0,xmm2,0x12
  957b0d:	0f c6 c3 08          	shufps xmm0,xmm3,0x8
  957b11:	f3 0f 10 1d f8 98 f9 	movss  xmm3,DWORD PTR ds:0xf998f8
  957b18:	00 
  957b19:	0f c6 ca 28          	shufps xmm1,xmm2,0x28
  957b1d:	0f 28 50 10          	movaps xmm2,XMMWORD PTR [eax+0x10]
  957b21:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  957b24:	0f 28 ea             	movaps xmm5,xmm2
  957b27:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  957b2b:	0f c6 eb fa          	shufps xmm5,xmm3,0xfa
  957b2f:	0f 28 1d 70 06 1b 01 	movaps xmm3,XMMWORD PTR ds:0x11b0670
  957b36:	0f 54 cb             	andps  xmm1,xmm3
  957b39:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  957b3c:	0f 54 e3             	andps  xmm4,xmm3
  957b3f:	0f 29 60 10          	movaps XMMWORD PTR [eax+0x10],xmm4
  957b43:	0f 54 c3             	andps  xmm0,xmm3
  957b46:	0f c6 d5 84          	shufps xmm2,xmm5,0x84
  957b4a:	0f 29 40 20          	movaps XMMWORD PTR [eax+0x20],xmm0
  957b4e:	0f 29 50 30          	movaps XMMWORD PTR [eax+0x30],xmm2
  957b52:	8b e5                	mov    esp,ebp
  957b54:	5d                   	pop    ebp
  957b55:	c2 04 00             	ret    0x4
