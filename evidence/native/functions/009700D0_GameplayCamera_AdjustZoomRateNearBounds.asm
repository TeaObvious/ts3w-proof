# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x009700d0, 0x00970236).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: GameplayCamera_AdjustZoomRateNearBounds.
Paired annotated Ghidra pseudocode: 009700D0_GameplayCamera_AdjustZoomRateNearBounds.c
Complete Ghidra-body envelope [0x009700d0,0x00970236); inferred boundaries.
Original instructions govern decompiler ABI/SIMD interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

009700d0 <.text+0x56f0d0>:
  9700d0:	55                   	push   ebp
  9700d1:	8b ec                	mov    ebp,esp
  9700d3:	83 e4 f0             	and    esp,0xfffffff0
  9700d6:	83 ec 20             	sub    esp,0x20
  9700d9:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  9700e0:	00
  9700e1:	f3 0f 10 81 e0 08 00 	movss  xmm0,DWORD PTR [ecx+0x8e0]
  9700e8:	00
  9700e9:	f3 0f 10 55 10       	movss  xmm2,DWORD PTR [ebp+0x10]
  9700ee:	f3 0f 10 6d 08       	movss  xmm5,DWORD PTR [ebp+0x8]
  9700f3:	0f 57 f6             	xorps  xmm6,xmm6
  9700f6:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  9700fa:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9700fe:	0f 5c c1             	subps  xmm0,xmm1
  970101:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  970105:	0f 59 c2             	mulps  xmm0,xmm2
  970108:	f3 0f 10 55 0c       	movss  xmm2,DWORD PTR [ebp+0xc]
  97010d:	0f 58 c1             	addps  xmm0,xmm1
  970110:	f3 0f 10 89 00 08 00 	movss  xmm1,DWORD PTR [ecx+0x800]
  970117:	00
  970118:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  97011c:	0f 59 c1             	mulps  xmm0,xmm1
  97011f:	f3 0f 10 4d 18       	movss  xmm1,DWORD PTR [ebp+0x18]
  970124:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  970129:	f3 0f 10 5c 24 10    	movss  xmm3,DWORD PTR [esp+0x10]
  97012f:	0f 28 c2             	movaps xmm0,xmm2
  970132:	f3 0f 5c 45 14       	subss  xmm0,DWORD PTR [ebp+0x14]
  970137:	f3 0f 5c ca          	subss  xmm1,xmm2
  97013b:	f3 0f 10 91 90 09 00 	movss  xmm2,DWORD PTR [ecx+0x990]
  970142:	00
  970143:	0f 2f d0             	comiss xmm2,xmm0
  970146:	f3 0f 11 5c 24 0c    	movss  DWORD PTR [esp+0xc],xmm3
  97014c:	76 65                	jbe    0x9701b3
  97014e:	0f 2f f5             	comiss xmm6,xmm5
  970151:	76 60                	jbe    0x9701b3
  970153:	80 b9 b0 08 00 00 00 	cmp    BYTE PTR [ecx+0x8b0],0x0
  97015a:	75 0f                	jne    0x97016b
  97015c:	c6 81 b0 08 00 00 01 	mov    BYTE PTR [ecx+0x8b0],0x1
  970163:	f3 0f 11 99 ac 08 00 	movss  DWORD PTR [ecx+0x8ac],xmm3
  97016a:	00
  97016b:	f3 0f 10 1d b4 2f 07 	movss  xmm3,DWORD PTR ds:0x1072fb4
  970172:	01
  970173:	f3 0f 10 89 ac 08 00 	movss  xmm1,DWORD PTR [ecx+0x8ac]
  97017a:	00
  97017b:	f3 0f 5e c2          	divss  xmm0,xmm2
  97017f:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970183:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  970187:	f3 0f 10 c0          	movss  xmm0,xmm0
  97018b:	0f 5c cb             	subps  xmm1,xmm3
  97018e:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  970192:	0f 59 c8             	mulps  xmm1,xmm0
  970195:	0f 58 cb             	addps  xmm1,xmm3
  970198:	0f 29 4c 24 10       	movaps XMMWORD PTR [esp+0x10],xmm1
  97019d:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  9701a3:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  9701a9:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  9701ad:	8b e5                	mov    esp,ebp
  9701af:	5d                   	pop    ebp
  9701b0:	c2 14 00             	ret    0x14
  9701b3:	f3 0f 10 a1 94 09 00 	movss  xmm4,DWORD PTR [ecx+0x994]
  9701ba:	00
  9701bb:	0f 2f e1             	comiss xmm4,xmm1
  9701be:	76 65                	jbe    0x970225
  9701c0:	0f 2f ee             	comiss xmm5,xmm6
  9701c3:	76 60                	jbe    0x970225
  9701c5:	80 b9 b0 08 00 00 00 	cmp    BYTE PTR [ecx+0x8b0],0x0
  9701cc:	75 0f                	jne    0x9701dd
  9701ce:	c6 81 b0 08 00 00 01 	mov    BYTE PTR [ecx+0x8b0],0x1
  9701d5:	f3 0f 11 99 ac 08 00 	movss  DWORD PTR [ecx+0x8ac],xmm3
  9701dc:	00
  9701dd:	f3 0f 10 15 7c 48 04 	movss  xmm2,DWORD PTR ds:0x104487c
  9701e4:	01
  9701e5:	f3 0f 10 81 ac 08 00 	movss  xmm0,DWORD PTR [ecx+0x8ac]
  9701ec:	00
  9701ed:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  9701f1:	f3 0f 5e cc          	divss  xmm1,xmm4
  9701f5:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  9701f9:	0f 5c c2             	subps  xmm0,xmm2
  9701fc:	f3 0f 10 c9          	movss  xmm1,xmm1
  970200:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  970204:	0f 59 c1             	mulps  xmm0,xmm1
  970207:	0f 58 c2             	addps  xmm0,xmm2
  97020a:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  97020f:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  970215:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  97021b:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  97021f:	8b e5                	mov    esp,ebp
  970221:	5d                   	pop    ebp
  970222:	c2 14 00             	ret    0x14
  970225:	c6 81 b0 08 00 00 00 	mov    BYTE PTR [ecx+0x8b0],0x0
  97022c:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  970230:	8b e5                	mov    esp,ebp
  970232:	5d                   	pop    ebp
  970233:	c2 14 00             	ret    0x14
