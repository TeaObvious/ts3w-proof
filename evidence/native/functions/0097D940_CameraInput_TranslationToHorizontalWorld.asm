# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x0097d940, 0x0097daf8).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: CameraInput_TranslationToHorizontalWorld.
Paired annotated Ghidra pseudocode: 0097D940_CameraInput_TranslationToHorizontalWorld.c
Complete Ghidra-body envelope [0x0097d940,0x0097daf8); inferred boundaries.
Original instructions govern decompiler ABI/SIMD interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

0097d940 <.text+0x57c940>:
  97d940:	55                   	push   ebp
  97d941:	8b ec                	mov    ebp,esp
  97d943:	83 e4 f0             	and    esp,0xfffffff0
  97d946:	83 ec 60             	sub    esp,0x60
  97d949:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  97d94c:	0f 28 28             	movaps xmm5,XMMWORD PTR [eax]
  97d94f:	0f 57 c0             	xorps  xmm0,xmm0
  97d952:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  97d955:	f3 0f 10 1d c0 70 04 	movss  xmm3,DWORD PTR ds:0x10470c0
  97d95c:	01
  97d95d:	0f 29 6c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm5
  97d962:	f3 0f 10 4c 24 24    	movss  xmm1,DWORD PTR [esp+0x24]
  97d968:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  97d96e:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  97d974:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  97d97a:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  97d97f:	0f 28 0c 24          	movaps xmm1,XMMWORD PTR [esp]
  97d983:	0f 29 08             	movaps XMMWORD PTR [eax],xmm1
  97d986:	f3 0f 10 0d 18 b2 fa 	movss  xmm1,DWORD PTR ds:0xfab218
  97d98d:	00
  97d98e:	0f 28 d5             	movaps xmm2,xmm5
  97d991:	0f c6 d5 00          	shufps xmm2,xmm5,0x0
  97d995:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97d999:	0f 28 e1             	movaps xmm4,xmm1
  97d99c:	0f 59 e2             	mulps  xmm4,xmm2
  97d99f:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  97d9a3:	0f 5f e2             	maxps  xmm4,xmm2
  97d9a6:	0f c2 e3 02          	cmpleps xmm4,xmm3
  97d9aa:	0f 50 cc             	movmskps ecx,xmm4
  97d9ad:	83 f9 0f             	cmp    ecx,0xf
  97d9b0:	0f 29 54 24 50       	movaps XMMWORD PTR [esp+0x50],xmm2
  97d9b5:	75 1c                	jne    0x97d9d3
  97d9b7:	0f 28 d5             	movaps xmm2,xmm5
  97d9ba:	0f c6 d5 aa          	shufps xmm2,xmm5,0xaa
  97d9be:	0f 59 ca             	mulps  xmm1,xmm2
  97d9c1:	0f 5f ca             	maxps  xmm1,xmm2
  97d9c4:	0f c2 cb 02          	cmpleps xmm1,xmm3
  97d9c8:	0f 50 d1             	movmskps edx,xmm1
  97d9cb:	3b d1                	cmp    edx,ecx
  97d9cd:	0f 84 21 01 00 00    	je     0x97daf4
  97d9d3:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  97d9d6:	0f 28 09             	movaps xmm1,XMMWORD PTR [ecx]
  97d9d9:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  97d9de:	0f 28 49 20          	movaps xmm1,XMMWORD PTR [ecx+0x20]
  97d9e2:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  97d9e8:	0f 57 d2             	xorps  xmm2,xmm2
  97d9eb:	0f 5c d1             	subps  xmm2,xmm1
  97d9ee:	0f 28 4c 24 20       	movaps xmm1,XMMWORD PTR [esp+0x20]
  97d9f3:	0f 29 54 24 10       	movaps XMMWORD PTR [esp+0x10],xmm2
  97d9f8:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  97d9fe:	0f 59 c9             	mulps  xmm1,xmm1
  97da01:	0f 28 c1             	movaps xmm0,xmm1
  97da04:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  97da08:	0f 28 d1             	movaps xmm2,xmm1
  97da0b:	0f c6 d1 01          	shufps xmm2,xmm1,0x1
  97da0f:	0f 58 c2             	addps  xmm0,xmm2
  97da12:	0f 58 c1             	addps  xmm0,xmm1
  97da15:	f3 0f 10 0d b4 b5 f9 	movss  xmm1,DWORD PTR ds:0xf9b5b4
  97da1c:	00
  97da1d:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97da21:	0f 28 f8             	movaps xmm7,xmm0
  97da24:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  97da2b:	00
  97da2c:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  97da30:	0f 52 df             	rsqrtps xmm3,xmm7
  97da33:	0f 28 e3             	movaps xmm4,xmm3
  97da36:	0f 59 e3             	mulps  xmm4,xmm3
  97da39:	0f 59 e7             	mulps  xmm4,xmm7
  97da3c:	0f 28 d0             	movaps xmm2,xmm0
  97da3f:	0f 5c d4             	subps  xmm2,xmm4
  97da42:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97da46:	0f 28 e1             	movaps xmm4,xmm1
  97da49:	0f 59 e3             	mulps  xmm4,xmm3
  97da4c:	0f 59 d4             	mulps  xmm2,xmm4
  97da4f:	0f 28 64 24 10       	movaps xmm4,XMMWORD PTR [esp+0x10]
  97da54:	0f 58 d3             	addps  xmm2,xmm3
  97da57:	0f 59 e4             	mulps  xmm4,xmm4
  97da5a:	0f 28 dc             	movaps xmm3,xmm4
  97da5d:	0f c6 dc 02          	shufps xmm3,xmm4,0x2
  97da61:	0f 28 f4             	movaps xmm6,xmm4
  97da64:	0f c6 f4 01          	shufps xmm6,xmm4,0x1
  97da68:	0f 58 de             	addps  xmm3,xmm6
  97da6b:	0f 58 dc             	addps  xmm3,xmm4
  97da6e:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  97da72:	0f 52 f3             	rsqrtps xmm6,xmm3
  97da75:	0f 29 5c 24 40       	movaps XMMWORD PTR [esp+0x40],xmm3
  97da7a:	0f 28 e6             	movaps xmm4,xmm6
  97da7d:	0f 59 e6             	mulps  xmm4,xmm6
  97da80:	0f 59 e3             	mulps  xmm4,xmm3
  97da83:	0f 29 64 24 30       	movaps XMMWORD PTR [esp+0x30],xmm4
  97da88:	0f 28 5c 24 30       	movaps xmm3,XMMWORD PTR [esp+0x30]
  97da8d:	0f 28 e0             	movaps xmm4,xmm0
  97da90:	0f 5c e3             	subps  xmm4,xmm3
  97da93:	0f 28 d9             	movaps xmm3,xmm1
  97da96:	0f 59 de             	mulps  xmm3,xmm6
  97da99:	0f 59 e3             	mulps  xmm4,xmm3
  97da9c:	0f 58 e6             	addps  xmm4,xmm6
  97da9f:	0f 28 d8             	movaps xmm3,xmm0
  97daa2:	0f 28 f4             	movaps xmm6,xmm4
  97daa5:	0f 59 f4             	mulps  xmm6,xmm4
  97daa8:	0f 59 74 24 40       	mulps  xmm6,XMMWORD PTR [esp+0x40]
  97daad:	0f 5c de             	subps  xmm3,xmm6
  97dab0:	0f 28 f1             	movaps xmm6,xmm1
  97dab3:	0f 59 f4             	mulps  xmm6,xmm4
  97dab6:	0f 59 de             	mulps  xmm3,xmm6
  97dab9:	0f 58 dc             	addps  xmm3,xmm4
  97dabc:	0f 59 5c 24 10       	mulps  xmm3,XMMWORD PTR [esp+0x10]
  97dac1:	0f 28 e2             	movaps xmm4,xmm2
  97dac4:	0f 59 e2             	mulps  xmm4,xmm2
  97dac7:	0f 59 e7             	mulps  xmm4,xmm7
  97daca:	0f 5c c4             	subps  xmm0,xmm4
  97dacd:	0f 59 ca             	mulps  xmm1,xmm2
  97dad0:	0f 59 c1             	mulps  xmm0,xmm1
  97dad3:	0f 28 0c 24          	movaps xmm1,XMMWORD PTR [esp]
  97dad7:	0f 58 c2             	addps  xmm0,xmm2
  97dada:	0f 59 44 24 20       	mulps  xmm0,XMMWORD PTR [esp+0x20]
  97dadf:	0f 59 44 24 50       	mulps  xmm0,XMMWORD PTR [esp+0x50]
  97dae4:	0f c6 ed aa          	shufps xmm5,xmm5,0xaa
  97dae8:	0f 59 dd             	mulps  xmm3,xmm5
  97daeb:	0f 58 c3             	addps  xmm0,xmm3
  97daee:	0f 58 c1             	addps  xmm0,xmm1
  97daf1:	0f 29 00             	movaps XMMWORD PTR [eax],xmm0
  97daf4:	8b e5                	mov    esp,ebp
  97daf6:	5d                   	pop    ebp
  97daf7:	c3                   	ret
