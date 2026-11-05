# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x009622c0, 0x009623fa).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: CameraInput_AccumulateBankOutputs.
Paired annotated Ghidra pseudocode: 009622C0_CameraInput_AccumulateBankOutputs.c
Complete Ghidra-body envelope [0x009622c0,0x009623fa); inferred boundaries.
Original instructions govern decompiler ABI/SIMD interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

009622c0 <.text+0x5612c0>:
  9622c0:	55                   	push   ebp
  9622c1:	8b ec                	mov    ebp,esp
  9622c3:	83 e4 f0             	and    esp,0xfffffff0
  9622c6:	83 ec 10             	sub    esp,0x10
  9622c9:	f3 0f 10 01          	movss  xmm0,DWORD PTR [ecx]
  9622cd:	f3 0f 10 49 04       	movss  xmm1,DWORD PTR [ecx+0x4]
  9622d2:	0f 57 ed             	xorps  xmm5,xmm5
  9622d5:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  9622db:	f3 0f 11 44 24 08    	movss  DWORD PTR [esp+0x8],xmm0
  9622e1:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  9622e6:	f3 0f 10 41 2c       	movss  xmm0,DWORD PTR [ecx+0x2c]
  9622eb:	f3 0f 59 41 10       	mulss  xmm0,DWORD PTR [ecx+0x10]
  9622f0:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  9622f6:	0f 28 1c 24          	movaps xmm3,XMMWORD PTR [esp]
  9622fa:	f3 0f 10 49 18       	movss  xmm1,DWORD PTR [ecx+0x18]
  9622ff:	f3 0f 11 4c 24 08    	movss  DWORD PTR [esp+0x8],xmm1
  962305:	f3 0f 10 49 30       	movss  xmm1,DWORD PTR [ecx+0x30]
  96230a:	f3 0f 59 49 14       	mulss  xmm1,DWORD PTR [ecx+0x14]
  96230f:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  962315:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  96231a:	f3 0f 10 81 90 00 00 	movss  xmm0,DWORD PTR [ecx+0x90]
  962321:	00
  962322:	f3 0f 58 41 60       	addss  xmm0,DWORD PTR [ecx+0x60]
  962327:	0f 2f c5             	comiss xmm0,xmm5
  96232a:	f3 0f 11 4c 24 04    	movss  DWORD PTR [esp+0x4],xmm1
  962330:	0f 28 24 24          	movaps xmm4,XMMWORD PTR [esp]
  962334:	76 07                	jbe    0x96233d
  962336:	f3 0f 10 51 08       	movss  xmm2,DWORD PTR [ecx+0x8]
  96233b:	eb 05                	jmp    0x962342
  96233d:	f3 0f 10 51 0c       	movss  xmm2,DWORD PTR [ecx+0xc]
  962342:	f3 0f 10 89 f0 00 00 	movss  xmm1,DWORD PTR [ecx+0xf0]
  962349:	00
  96234a:	f3 0f 58 89 c0 00 00 	addss  xmm1,DWORD PTR [ecx+0xc0]
  962351:	00
  962352:	0f 2f cd             	comiss xmm1,xmm5
  962355:	f3 0f 59 d0          	mulss  xmm2,xmm0
  962359:	76 07                	jbe    0x962362
  96235b:	f3 0f 10 41 08       	movss  xmm0,DWORD PTR [ecx+0x8]
  962360:	eb 05                	jmp    0x962367
  962362:	f3 0f 10 41 0c       	movss  xmm0,DWORD PTR [ecx+0xc]
  962367:	0f 28 71 40          	movaps xmm6,XMMWORD PTR [ecx+0x40]
  96236b:	0f 28 69 70          	movaps xmm5,XMMWORD PTR [ecx+0x70]
  96236f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  962372:	0f 58 ee             	addps  xmm5,xmm6
  962375:	0f 28 30             	movaps xmm6,XMMWORD PTR [eax]
  962378:	0f 59 eb             	mulps  xmm5,xmm3
  96237b:	0f 58 ee             	addps  xmm5,xmm6
  96237e:	0f 29 28             	movaps XMMWORD PTR [eax],xmm5
  962381:	0f 28 71 50          	movaps xmm6,XMMWORD PTR [ecx+0x50]
  962385:	0f 28 a9 80 00 00 00 	movaps xmm5,XMMWORD PTR [ecx+0x80]
  96238c:	0f 58 ee             	addps  xmm5,xmm6
  96238f:	0f 28 70 10          	movaps xmm6,XMMWORD PTR [eax+0x10]
  962393:	0f 59 ec             	mulps  xmm5,xmm4
  962396:	0f 58 ee             	addps  xmm5,xmm6
  962399:	0f 29 68 10          	movaps XMMWORD PTR [eax+0x10],xmm5
  96239d:	f3 0f 58 50 20       	addss  xmm2,DWORD PTR [eax+0x20]
  9623a2:	f3 0f 11 50 20       	movss  DWORD PTR [eax+0x20],xmm2
  9623a7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  9623aa:	0f 28 91 d0 00 00 00 	movaps xmm2,XMMWORD PTR [ecx+0xd0]
  9623b1:	0f 28 a9 a0 00 00 00 	movaps xmm5,XMMWORD PTR [ecx+0xa0]
  9623b8:	0f 58 d5             	addps  xmm2,xmm5
  9623bb:	0f 59 d3             	mulps  xmm2,xmm3
  9623be:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  9623c1:	0f 58 d3             	addps  xmm2,xmm3
  9623c4:	0f 29 10             	movaps XMMWORD PTR [eax],xmm2
  9623c7:	0f 28 99 b0 00 00 00 	movaps xmm3,XMMWORD PTR [ecx+0xb0]
  9623ce:	0f 28 91 e0 00 00 00 	movaps xmm2,XMMWORD PTR [ecx+0xe0]
  9623d5:	0f 58 d3             	addps  xmm2,xmm3
  9623d8:	0f 28 58 10          	movaps xmm3,XMMWORD PTR [eax+0x10]
  9623dc:	0f 59 d4             	mulps  xmm2,xmm4
  9623df:	0f 58 d3             	addps  xmm2,xmm3
  9623e2:	0f 29 50 10          	movaps XMMWORD PTR [eax+0x10],xmm2
  9623e6:	f3 0f 59 c1          	mulss  xmm0,xmm1
  9623ea:	f3 0f 58 40 20       	addss  xmm0,DWORD PTR [eax+0x20]
  9623ef:	f3 0f 11 40 20       	movss  DWORD PTR [eax+0x20],xmm0
  9623f4:	8b e5                	mov    esp,ebp
  9623f6:	5d                   	pop    ebp
  9623f7:	c2 08 00             	ret    0x8
