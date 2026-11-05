# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c0da0 <.text+0x3bfda0>:
  7c0da0:	f3 0f 10 44 24 04    	movss  xmm0,DWORD PTR [esp+0x4]
  7c0da6:	f3 0f 10 15 18 7c 01 	movss  xmm2,DWORD PTR ds:0x1017c18
  7c0dad:	01 
  7c0dae:	0f 28 c8             	movaps xmm1,xmm0
  7c0db1:	f3 0f 59 ca          	mulss  xmm1,xmm2
  7c0db5:	f3 0f 2c c1          	cvttss2si eax,xmm1
  7c0db9:	3d f3 01 00 00       	cmp    eax,0x1f3
  7c0dbe:	75 0a                	jne    0x7c0dca
  7c0dc0:	f3 0f 10 81 9c 0f 00 	movss  xmm0,DWORD PTR [ecx+0xf9c]
  7c0dc7:	00 
  7c0dc8:	eb 2c                	jmp    0x7c0df6
  7c0dca:	f3 0f 10 4c c1 04    	movss  xmm1,DWORD PTR [ecx+eax*8+0x4]
  7c0dd0:	f3 0f 2a d8          	cvtsi2ss xmm3,eax
  7c0dd4:	f3 0f 59 1d 14 7c 01 	mulss  xmm3,DWORD PTR ds:0x1017c14
  7c0ddb:	01 
  7c0ddc:	f3 0f 5c c3          	subss  xmm0,xmm3
  7c0de0:	f3 0f 59 c2          	mulss  xmm0,xmm2
  7c0de4:	f3 0f 10 54 c1 0c    	movss  xmm2,DWORD PTR [ecx+eax*8+0xc]
  7c0dea:	f3 0f 5c d1          	subss  xmm2,xmm1
  7c0dee:	f3 0f 59 c2          	mulss  xmm0,xmm2
  7c0df2:	f3 0f 58 c1          	addss  xmm0,xmm1
  7c0df6:	d9 81 8c 14 00 00    	fld    DWORD PTR [ecx+0x148c]
  7c0dfc:	f3 0f 11 44 24 04    	movss  DWORD PTR [esp+0x4],xmm0
  7c0e02:	d9 81 90 14 00 00    	fld    DWORD PTR [ecx+0x1490]
  7c0e08:	d8 e1                	fsub   st,st(1)
  7c0e0a:	d8 4c 24 04          	fmul   DWORD PTR [esp+0x4]
  7c0e0e:	de c1                	faddp  st(1),st
  7c0e10:	c2 04 00             	ret    0x4
