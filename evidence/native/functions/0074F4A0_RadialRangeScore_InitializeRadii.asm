# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074f4a0, 0x0074f573); analyst name RadialRangeScore_InitializeRadii.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074f4a0 <.text+0x34e4a0>:
  74f4a0:	55                   	push   ebp
  74f4a1:	8b ec                	mov    ebp,esp
  74f4a3:	83 e4 f0             	and    esp,0xfffffff0
  74f4a6:	83 ec 0c             	sub    esp,0xc
  74f4a9:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  74f4ac:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  74f4af:	f3 0f 10 55 0c       	movss  xmm2,DWORD PTR [ebp+0xc]
  74f4b4:	f3 0f 10 4d 10       	movss  xmm1,DWORD PTR [ebp+0x10]
  74f4b9:	0f 29 01             	movaps XMMWORD PTR [ecx],xmm0
  74f4bc:	f3 0f 10 45 14       	movss  xmm0,DWORD PTR [ebp+0x14]
  74f4c1:	f3 0f 59 d2          	mulss  xmm2,xmm2
  74f4c5:	f3 0f 59 c0          	mulss  xmm0,xmm0
  74f4c9:	0f 28 d8             	movaps xmm3,xmm0
  74f4cc:	0f 28 e2             	movaps xmm4,xmm2
  74f4cf:	f3 0f 5c e3          	subss  xmm4,xmm3
  74f4d3:	f3 0f 11 64 24 04    	movss  DWORD PTR [esp+0x4],xmm4
  74f4d9:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  74f4dd:	c1 f8 1f             	sar    eax,0x1f
  74f4e0:	56                   	push   esi
  74f4e1:	f3 0f 11 54 24 0c    	movss  DWORD PTR [esp+0xc],xmm2
  74f4e7:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  74f4eb:	f3 0f 11 5c 24 08    	movss  DWORD PTR [esp+0x8],xmm3
  74f4f1:	8b d0                	mov    edx,eax
  74f4f3:	f7 d2                	not    edx
  74f4f5:	23 54 24 08          	and    edx,DWORD PTR [esp+0x8]
  74f4f9:	23 f0                	and    esi,eax
  74f4fb:	0b d6                	or     edx,esi
  74f4fd:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  74f501:	f3 0f 10 5c 24 0c    	movss  xmm3,DWORD PTR [esp+0xc]
  74f507:	f3 0f 59 c9          	mulss  xmm1,xmm1
  74f50b:	0f 28 d1             	movaps xmm2,xmm1
  74f50e:	0f 28 e3             	movaps xmm4,xmm3
  74f511:	f3 0f 5c e2          	subss  xmm4,xmm2
  74f515:	f3 0f 11 64 24 0c    	movss  DWORD PTR [esp+0xc],xmm4
  74f51b:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  74f51f:	c1 f8 1f             	sar    eax,0x1f
  74f522:	f3 0f 11 5c 24 0c    	movss  DWORD PTR [esp+0xc],xmm3
  74f528:	f3 0f 11 54 24 08    	movss  DWORD PTR [esp+0x8],xmm2
  74f52e:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  74f532:	8b d0                	mov    edx,eax
  74f534:	f7 d2                	not    edx
  74f536:	23 54 24 0c          	and    edx,DWORD PTR [esp+0xc]
  74f53a:	23 f0                	and    esi,eax
  74f53c:	0b d6                	or     edx,esi
  74f53e:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  74f542:	f3 0f 10 54 24 0c    	movss  xmm2,DWORD PTR [esp+0xc]
  74f548:	f3 0f 11 41 18       	movss  DWORD PTR [ecx+0x18],xmm0
  74f54d:	0f 28 da             	movaps xmm3,xmm2
  74f550:	f3 0f 5c d9          	subss  xmm3,xmm1
  74f554:	f3 0f 5c c2          	subss  xmm0,xmm2
  74f558:	f3 0f 11 49 14       	movss  DWORD PTR [ecx+0x14],xmm1
  74f55d:	f3 0f 11 51 10       	movss  DWORD PTR [ecx+0x10],xmm2
  74f562:	f3 0f 11 59 1c       	movss  DWORD PTR [ecx+0x1c],xmm3
  74f567:	f3 0f 11 41 20       	movss  DWORD PTR [ecx+0x20],xmm0
  74f56c:	5e                   	pop    esi
  74f56d:	8b e5                	mov    esp,ebp
  74f56f:	5d                   	pop    ebp
  74f570:	c2 10 00             	ret    0x10
