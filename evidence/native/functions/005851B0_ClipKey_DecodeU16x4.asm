# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005851b0 <.text+0x1841b0>:
  5851b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  5851b4:	66 8b 48 02          	mov    cx,WORD PTR [eax+0x2]
  5851b8:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  5851bc:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  5851c3:	00 
  5851c4:	f3 0f 10 25 18 b2 fa 	movss  xmm4,DWORD PTR ds:0xfab218
  5851cb:	00 
  5851cc:	66 89 0a             	mov    WORD PTR [edx],cx
  5851cf:	f6 40 02 01          	test   BYTE PTR [eax+0x2],0x1
  5851d3:	0f 28 d0             	movaps xmm2,xmm0
  5851d6:	0f 28 c8             	movaps xmm1,xmm0
  5851d9:	0f 28 d8             	movaps xmm3,xmm0
  5851dc:	74 03                	je     0x5851e1
  5851de:	0f 28 d4             	movaps xmm2,xmm4
  5851e1:	0f b7 48 02          	movzx  ecx,WORD PTR [eax+0x2]
  5851e5:	f6 c1 02             	test   cl,0x2
  5851e8:	74 03                	je     0x5851ed
  5851ea:	0f 28 cc             	movaps xmm1,xmm4
  5851ed:	f6 c1 04             	test   cl,0x4
  5851f0:	74 03                	je     0x5851f5
  5851f2:	0f 28 c4             	movaps xmm0,xmm4
  5851f5:	f6 c1 08             	test   cl,0x8
  5851f8:	74 03                	je     0x5851fd
  5851fa:	0f 28 dc             	movaps xmm3,xmm4
  5851fd:	f6 c1 70             	test   cl,0x70
  585200:	74 6d                	je     0x58526f
  585202:	f6 c1 10             	test   cl,0x10
  585205:	74 1b                	je     0x585222
  585207:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  58520b:	0f 57 c0             	xorps  xmm0,xmm0
  58520e:	f3 0f 11 40 0c       	movss  DWORD PTR [eax+0xc],xmm0
  585213:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  585218:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  58521d:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  585221:	c3                   	ret
  585222:	f6 c1 20             	test   cl,0x20
  585225:	74 18                	je     0x58523f
  585227:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  58522b:	f3 0f 11 10          	movss  DWORD PTR [eax],xmm2
  58522f:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  585234:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  585239:	f3 0f 11 58 0c       	movss  DWORD PTR [eax+0xc],xmm3
  58523e:	c3                   	ret
  58523f:	f6 c1 40             	test   cl,0x40
  585242:	0f 84 86 00 00 00    	je     0x5852ce
  585248:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  58524c:	0f 57 e4             	xorps  xmm4,xmm4
  58524f:	f3 0f 59 d4          	mulss  xmm2,xmm4
  585253:	f3 0f 59 cc          	mulss  xmm1,xmm4
  585257:	f3 0f 59 c4          	mulss  xmm0,xmm4
  58525b:	f3 0f 11 10          	movss  DWORD PTR [eax],xmm2
  58525f:	f3 0f 11 48 04       	movss  DWORD PTR [eax+0x4],xmm1
  585264:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  585269:	f3 0f 11 58 0c       	movss  DWORD PTR [eax+0xc],xmm3
  58526e:	c3                   	ret
  58526f:	0f b7 48 04          	movzx  ecx,WORD PTR [eax+0x4]
  585273:	f3 0f 2a e1          	cvtsi2ss xmm4,ecx
  585277:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  58527b:	f3 0f 59 e2          	mulss  xmm4,xmm2
  58527f:	f3 0f 10 15 9c cb fc 	movss  xmm2,DWORD PTR ds:0xfccb9c
  585286:	00 
  585287:	f3 0f 59 e2          	mulss  xmm4,xmm2
  58528b:	f3 0f 11 21          	movss  DWORD PTR [ecx],xmm4
  58528f:	0f b7 50 06          	movzx  edx,WORD PTR [eax+0x6]
  585293:	f3 0f 2a e2          	cvtsi2ss xmm4,edx
  585297:	f3 0f 59 e1          	mulss  xmm4,xmm1
  58529b:	f3 0f 59 e2          	mulss  xmm4,xmm2
  58529f:	f3 0f 11 61 04       	movss  DWORD PTR [ecx+0x4],xmm4
  5852a4:	0f b7 50 08          	movzx  edx,WORD PTR [eax+0x8]
  5852a8:	f3 0f 2a ca          	cvtsi2ss xmm1,edx
  5852ac:	f3 0f 59 c8          	mulss  xmm1,xmm0
  5852b0:	f3 0f 59 ca          	mulss  xmm1,xmm2
  5852b4:	f3 0f 11 49 08       	movss  DWORD PTR [ecx+0x8],xmm1
  5852b9:	0f b7 40 0a          	movzx  eax,WORD PTR [eax+0xa]
  5852bd:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  5852c1:	f3 0f 59 c3          	mulss  xmm0,xmm3
  5852c5:	f3 0f 59 c2          	mulss  xmm0,xmm2
  5852c9:	f3 0f 11 41 0c       	movss  DWORD PTR [ecx+0xc],xmm0
  5852ce:	c3                   	ret
