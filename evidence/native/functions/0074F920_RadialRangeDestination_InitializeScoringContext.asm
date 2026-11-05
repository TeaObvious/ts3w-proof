# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074f920, 0x0074fa99); analyst name RadialRangeDestination_InitializeScoringContext.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074f920 <.text+0x34e920>:
  74f920:	55                   	push   ebp
  74f921:	8b ec                	mov    ebp,esp
  74f923:	83 e4 f0             	and    esp,0xfffffff0
  74f926:	83 ec 1c             	sub    esp,0x1c
  74f929:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  74f92c:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  74f92f:	56                   	push   esi
  74f930:	8b f1                	mov    esi,ecx
  74f932:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  74f935:	0f 28 19             	movaps xmm3,XMMWORD PTR [ecx]
  74f938:	0f 5c c3             	subps  xmm0,xmm3
  74f93b:	0f 59 c0             	mulps  xmm0,xmm0
  74f93e:	0f 28 c8             	movaps xmm1,xmm0
  74f941:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  74f945:	0f 28 d1             	movaps xmm2,xmm1
  74f948:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  74f94c:	0f 58 c2             	addps  xmm0,xmm2
  74f94f:	f3 0f 10 56 64       	movss  xmm2,DWORD PTR [esi+0x64]
  74f954:	0f 58 c1             	addps  xmm0,xmm1
  74f957:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  74f95b:	0f 51 c0             	sqrtps xmm0,xmm0
  74f95e:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  74f963:	f3 0f 10 46 60       	movss  xmm0,DWORD PTR [esi+0x60]
  74f968:	0f 2f d0             	comiss xmm2,xmm0
  74f96b:	0f 28 c8             	movaps xmm1,xmm0
  74f96e:	f3 0f 58 ca          	addss  xmm1,xmm2
  74f972:	f3 0f 59 0d b4 b5 f9 00 	mulss  xmm1,DWORD PTR ds:0xf9b5b4
  74f97a:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  74f980:	0f 28 c8             	movaps xmm1,xmm0
  74f983:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  74f989:	72 09                	jb     0x74f994
  74f98b:	0f 28 ca             	movaps xmm1,xmm2
  74f98e:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  74f994:	f3 0f 10 46 68       	movss  xmm0,DWORD PTR [esi+0x68]
  74f999:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  74f9a0:	72 06                	jb     0x74f9a8
  74f9a2:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  74f9a8:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  74f9ae:	d9 44 24 08          	fld    DWORD PTR [esp+0x8]
  74f9b2:	f3 0f 58 c1          	addss  xmm0,xmm1
  74f9b6:	0f 28 d0             	movaps xmm2,xmm0
  74f9b9:	f3 0f 59 d0          	mulss  xmm2,xmm0
  74f9bd:	f3 0f 11 15 f0 17 16 01 	movss  DWORD PTR ds:0x11617f0,xmm2
  74f9c5:	0f 29 1d e0 17 16 01 	movaps XMMWORD PTR ds:0x11617e0,xmm3
  74f9cc:	0f 28 11             	movaps xmm2,XMMWORD PTR [ecx]
  74f9cf:	0f 29 15 10 18 16 01 	movaps XMMWORD PTR ds:0x1161810,xmm2
  74f9d6:	0f 28 d0             	movaps xmm2,xmm0
  74f9d9:	f3 0f 59 d0          	mulss  xmm2,xmm0
  74f9dd:	f3 0f 11 15 20 18 16 01 	movss  DWORD PTR ds:0x1161820,xmm2
  74f9e5:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  74f9e8:	0f 29 05 40 18 16 01 	movaps XMMWORD PTR ds:0x1161840,xmm0
  74f9ef:	0f 28 c1             	movaps xmm0,xmm1
  74f9f2:	f3 0f 59 c1          	mulss  xmm0,xmm1
  74f9f6:	83 ec 0c             	sub    esp,0xc
  74f9f9:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  74f9fd:	f3 0f 11 05 50 18 16 01 	movss  DWORD PTR ds:0x1161850,xmm0
  74fa05:	0f 28 08             	movaps xmm1,XMMWORD PTR [eax]
  74fa08:	0f 29 0d 70 18 16 01 	movaps XMMWORD PTR ds:0x1161870,xmm1
  74fa0f:	f3 0f 11 05 80 18 16 01 	movss  DWORD PTR ds:0x1161880,xmm0
  74fa17:	d9 46 60             	fld    DWORD PTR [esi+0x60]
  74fa1a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  74fa1e:	b9 30 51 1d 01       	mov    ecx,0x11d5130
  74fa23:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  74fa27:	d9 1c 24             	fstp   DWORD PTR [esp]
  74fa2a:	50                   	push   eax
  74fa2b:	e8 70 fa ff ff       	call   0x74f4a0
  74fa30:	f3 0f 10 4e 0c       	movss  xmm1,DWORD PTR [esi+0xc]
  74fa35:	0f 57 c0             	xorps  xmm0,xmm0
  74fa38:	33 c0                	xor    eax,eax
  74fa3a:	0f 2f c8             	comiss xmm1,xmm0
  74fa3d:	76 05                	jbe    0x74fa44
  74fa3f:	b8 01 00 00 00       	mov    eax,0x1
  74fa44:	f3 0f 10 4e 10       	movss  xmm1,DWORD PTR [esi+0x10]
  74fa49:	0f 2f c8             	comiss xmm1,xmm0
  74fa4c:	76 03                	jbe    0x74fa51
  74fa4e:	83 c0 01             	add    eax,0x1
  74fa51:	f3 0f 10 4e 14       	movss  xmm1,DWORD PTR [esi+0x14]
  74fa56:	0f 2f c8             	comiss xmm1,xmm0
  74fa59:	76 03                	jbe    0x74fa5e
  74fa5b:	83 c0 01             	add    eax,0x1
  74fa5e:	f3 0f 10 4e 18       	movss  xmm1,DWORD PTR [esi+0x18]
  74fa63:	0f 2f c8             	comiss xmm1,xmm0
  74fa66:	76 03                	jbe    0x74fa6b
  74fa68:	83 c0 01             	add    eax,0x1
  74fa6b:	f3 0f 10 4e 1c       	movss  xmm1,DWORD PTR [esi+0x1c]
  74fa70:	0f 2f c8             	comiss xmm1,xmm0
  74fa73:	76 03                	jbe    0x74fa78
  74fa75:	83 c0 01             	add    eax,0x1
  74fa78:	f3 0f 10 4e 20       	movss  xmm1,DWORD PTR [esi+0x20]
  74fa7d:	0f 2f c8             	comiss xmm1,xmm0
  74fa80:	76 03                	jbe    0x74fa85
  74fa82:	83 c0 01             	add    eax,0x1
  74fa85:	f3 0f 10 4e 24       	movss  xmm1,DWORD PTR [esi+0x24]
  74fa8a:	0f 2f c8             	comiss xmm1,xmm0
  74fa8d:	76 03                	jbe    0x74fa92
  74fa8f:	83 c0 01             	add    eax,0x1
  74fa92:	5e                   	pop    esi
  74fa93:	8b e5                	mov    esp,ebp
  74fa95:	5d                   	pop    ebp
  74fa96:	c2 08 00             	ret    0x8
