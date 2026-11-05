# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006b8350 <.text+0x2b7350>:
  6b8350:	55                   	push   ebp
  6b8351:	8b ec                	mov    ebp,esp
  6b8353:	83 e4 f0             	and    esp,0xfffffff0
  6b8356:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  6b8359:	f3 0f 10 45 0c       	movss  xmm0,DWORD PTR [ebp+0xc]
  6b835e:	83 ec 0c             	sub    esp,0xc
  6b8361:	56                   	push   esi
  6b8362:	8b 30                	mov    esi,DWORD PTR [eax]
  6b8364:	83 fe 04             	cmp    esi,0x4
  6b8367:	73 2b                	jae    0x6b8394
  6b8369:	8d 46 05             	lea    eax,[esi+0x5]
  6b836c:	c1 e0 04             	shl    eax,0x4
  6b836f:	ba 04 00 00 00       	mov    edx,0x4
  6b8374:	f3 0f 10 c8          	movss  xmm1,xmm0
  6b8378:	03 c1                	add    eax,ecx
  6b837a:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  6b837e:	2b d6                	sub    edx,esi
  6b8380:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  6b8383:	0f 28 d1             	movaps xmm2,xmm1
  6b8386:	0f 59 d3             	mulps  xmm2,xmm3
  6b8389:	0f 29 10             	movaps XMMWORD PTR [eax],xmm2
  6b838c:	83 c0 10             	add    eax,0x10
  6b838f:	83 ea 01             	sub    edx,0x1
  6b8392:	75 ec                	jne    0x6b8380
  6b8394:	8d 81 d0 00 00 00    	lea    eax,[ecx+0xd0]
  6b839a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  6b839e:	b9 04 00 00 00       	mov    ecx,0x4
  6b83a3:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  6b83a6:	0f 59 c8             	mulps  xmm1,xmm0
  6b83a9:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  6b83ac:	83 c0 10             	add    eax,0x10
  6b83af:	83 e9 01             	sub    ecx,0x1
  6b83b2:	75 ef                	jne    0x6b83a3
  6b83b4:	5e                   	pop    esi
  6b83b5:	8b e5                	mov    esp,ebp
  6b83b7:	5d                   	pop    ebp
  6b83b8:	c2 08 00             	ret    0x8
