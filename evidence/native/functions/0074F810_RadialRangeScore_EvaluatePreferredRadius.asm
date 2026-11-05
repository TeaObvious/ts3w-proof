# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074f810, 0x0074f919); analyst name RadialRangeScore_EvaluatePreferredRadius.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074f810 <.text+0x34e810>:
  74f810:	55                   	push   ebp
  74f811:	8b ec                	mov    ebp,esp
  74f813:	83 e4 f0             	and    esp,0xfffffff0
  74f816:	83 ec 20             	sub    esp,0x20
  74f819:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  74f81c:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  74f81f:	0f 28 09             	movaps xmm1,XMMWORD PTR [ecx]
  74f822:	0f 5c c1             	subps  xmm0,xmm1
  74f825:	0f 59 c0             	mulps  xmm0,xmm0
  74f828:	0f 28 c8             	movaps xmm1,xmm0
  74f82b:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  74f82f:	0f 28 d1             	movaps xmm2,xmm1
  74f832:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  74f836:	0f 58 c2             	addps  xmm0,xmm2
  74f839:	0f 58 c1             	addps  xmm0,xmm1
  74f83c:	f3 0f 10 49 10       	movss  xmm1,DWORD PTR [ecx+0x10]
  74f841:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  74f845:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  74f84a:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  74f850:	0f 2e c1             	ucomiss xmm0,xmm1
  74f853:	9f                   	lahf
  74f854:	f6 c4 44             	test   ah,0x44
  74f857:	7a 08                	jp     0x74f861
  74f859:	d9 e8                	fld1
  74f85b:	8b e5                	mov    esp,ebp
  74f85d:	5d                   	pop    ebp
  74f85e:	c2 04 00             	ret    0x4
  74f861:	0f 57 d2             	xorps  xmm2,xmm2
  74f864:	f3 0f 5c c1          	subss  xmm0,xmm1
  74f868:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  74f870:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  74f876:	81 64 24 08 ff ff ff 7f 	and    DWORD PTR [esp+0x8],0x7fffffff
  74f87e:	f3 0f 10 5c 24 08    	movss  xmm3,DWORD PTR [esp+0x8]
  74f884:	0f 2f d0             	comiss xmm2,xmm0
  74f887:	0f 28 c1             	movaps xmm0,xmm1
  74f88a:	76 07                	jbe    0x74f893
  74f88c:	f3 0f 5e 59 1c       	divss  xmm3,DWORD PTR [ecx+0x1c]
  74f891:	eb 05                	jmp    0x74f898
  74f893:	f3 0f 5e 59 20       	divss  xmm3,DWORD PTR [ecx+0x20]
  74f898:	f3 0f 5c c3          	subss  xmm0,xmm3
  74f89c:	f3 0f 10 1d f0 98 f9 00 	movss  xmm3,DWORD PTR ds:0xf998f0
  74f8a4:	f3 0f 5c d8          	subss  xmm3,xmm0
  74f8a8:	f3 0f 11 5c 24 08    	movss  DWORD PTR [esp+0x8],xmm3
  74f8ae:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  74f8b2:	c1 f8 1f             	sar    eax,0x1f
  74f8b5:	8b c8                	mov    ecx,eax
  74f8b7:	f7 d1                	not    ecx
  74f8b9:	f3 0f 11 54 24 08    	movss  DWORD PTR [esp+0x8],xmm2
  74f8bf:	23 4c 24 08          	and    ecx,DWORD PTR [esp+0x8]
  74f8c3:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  74f8c9:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  74f8cd:	23 d0                	and    edx,eax
  74f8cf:	0b ca                	or     ecx,edx
  74f8d1:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  74f8d5:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  74f8db:	0f 28 d1             	movaps xmm2,xmm1
  74f8de:	f3 0f 5c d0          	subss  xmm2,xmm0
  74f8e2:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  74f8e8:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  74f8ec:	c1 f8 1f             	sar    eax,0x1f
  74f8ef:	8b c8                	mov    ecx,eax
  74f8f1:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  74f8f7:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  74f8fb:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  74f901:	f7 d1                	not    ecx
  74f903:	23 4c 24 0c          	and    ecx,DWORD PTR [esp+0xc]
  74f907:	23 d0                	and    edx,eax
  74f909:	0b ca                	or     ecx,edx
  74f90b:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  74f90f:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  74f913:	8b e5                	mov    esp,ebp
  74f915:	5d                   	pop    ebp
  74f916:	c2 04 00             	ret    0x4
