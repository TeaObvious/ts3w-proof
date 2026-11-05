# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b3aec0 <.text+0x739ec0>:
  b3aec0:	80 7c 24 18 00       	cmp    BYTE PTR [esp+0x18],0x0
  b3aec5:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  b3aec9:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  b3aecd:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  b3aed2:	f3 0f 5c 49 04       	subss  xmm1,DWORD PTR [ecx+0x4]
  b3aed7:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  b3aedb:	f3 0f 5c 01          	subss  xmm0,DWORD PTR [ecx]
  b3aedf:	0f 28 d1             	movaps xmm2,xmm1
  b3aee2:	f3 0f 59 d1          	mulss  xmm2,xmm1
  b3aee6:	0f 28 c8             	movaps xmm1,xmm0
  b3aee9:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b3aeed:	f3 0f 58 d1          	addss  xmm2,xmm1
  b3aef1:	f3 0f 11 54 24 10    	movss  DWORD PTR [esp+0x10],xmm2
  b3aef7:	74 0a                	je     0xb3af03
  b3aef9:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  b3af00:	00 
  b3af01:	eb 03                	jmp    0xb3af06
  b3af03:	0f 57 c0             	xorps  xmm0,xmm0
  b3af06:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  b3af0a:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  b3af10:	d8 25 f8 98 f9 00    	fsub   DWORD PTR ds:0xf998f8
  b3af16:	d9 e1                	fabs
  b3af18:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  b3af1c:	d8 05 04 d7 06 01    	fadd   DWORD PTR ds:0x106d704
  b3af22:	df f1                	fcomip st,st(1)
  b3af24:	dd d8                	fstp   st(0)
  b3af26:	76 14                	jbe    0xb3af3c
  b3af28:	f3 0f 10 44 24 0c    	movss  xmm0,DWORD PTR [esp+0xc]
  b3af2e:	0f 2e 44 24 04       	ucomiss xmm0,DWORD PTR [esp+0x4]
  b3af33:	9f                   	lahf
  b3af34:	f6 c4 44             	test   ah,0x44
  b3af37:	7a 03                	jp     0xb3af3c
  b3af39:	b0 01                	mov    al,0x1
  b3af3b:	c3                   	ret
  b3af3c:	32 c0                	xor    al,al
  b3af3e:	c3                   	ret
