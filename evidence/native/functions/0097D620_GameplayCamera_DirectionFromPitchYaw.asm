# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0097d620, 0x0097d706).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

0097d620 <.text+0x57c620>:
  97d620:	55                   	push   ebp
  97d621:	8b ec                	mov    ebp,esp
  97d623:	83 e4 f0             	and    esp,0xfffffff0
  97d626:	83 ec 60             	sub    esp,0x60
  97d629:	f3 0f 10 45 0c       	movss  xmm0,DWORD PTR [ebp+0xc]
  97d62e:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97d632:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  97d637:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  97d63b:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  97d640:	d9 fe                	fsin
  97d642:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  97d645:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  97d649:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  97d64d:	d9 ff                	fcos
  97d64f:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  97d655:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97d659:	0f 29 4c 24 50       	movaps XMMWORD PTR [esp+0x50],xmm1
  97d65e:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  97d662:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  97d668:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97d66c:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  97d671:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  97d676:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97d67a:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  97d67f:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  97d683:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  97d688:	d9 fe                	fsin
  97d68a:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  97d68e:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  97d692:	d9 ff                	fcos
  97d694:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  97d69a:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97d69e:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  97d6a3:	f3 0f 10 4c 24 30    	movss  xmm1,DWORD PTR [esp+0x30]
  97d6a9:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  97d6ad:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  97d6b3:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97d6b7:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  97d6bc:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  97d6c2:	f3 0f 10 54 24 40    	movss  xmm2,DWORD PTR [esp+0x40]
  97d6c8:	f3 0f 59 c1          	mulss  xmm0,xmm1
  97d6cc:	f3 0f 59 d1          	mulss  xmm2,xmm1
  97d6d0:	f3 0f 10 0d f0 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f0
  97d6d7:	00
  97d6d8:	f3 0f 5c ca          	subss  xmm1,xmm2
  97d6dc:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  97d6e2:	f3 0f 10 4c 24 50    	movss  xmm1,DWORD PTR [esp+0x50]
  97d6e8:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  97d6ee:	f3 0f 11 4c 24 14    	movss  DWORD PTR [esp+0x14],xmm1
  97d6f4:	f3 0f 11 44 24 10    	movss  DWORD PTR [esp+0x10],xmm0
  97d6fa:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [esp+0x10]
  97d6ff:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  97d702:	8b e5                	mov    esp,ebp
  97d704:	5d                   	pop    ebp
  97d705:	c3                   	ret
