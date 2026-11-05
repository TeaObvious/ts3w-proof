# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00b611b0, 0x00b6155c); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00b611b0 <.text+0x7601b0>:
  b611b0:	83 ec 30             	sub    esp,0x30
  b611b3:	8a 44 24 68          	mov    al,BYTE PTR [esp+0x68]
  b611b7:	f3 0f 10 44 24 54    	movss  xmm0,DWORD PTR [esp+0x54]
  b611bd:	8b 54 24 50          	mov    edx,DWORD PTR [esp+0x50]
  b611c1:	53                   	push   ebx
  b611c2:	f3 0f 2a 4c 24 48    	cvtsi2ss xmm1,DWORD PTR [esp+0x48]
  b611c8:	55                   	push   ebp
  b611c9:	56                   	push   esi
  b611ca:	8b f1                	mov    esi,ecx
  b611cc:	88 86 a1 00 00 00    	mov    BYTE PTR [esi+0xa1],al
  b611d2:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  b611d6:	89 86 8c 00 00 00    	mov    DWORD PTR [esi+0x8c],eax
  b611dc:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  b611df:	89 4e 60             	mov    DWORD PTR [esi+0x60],ecx
  b611e2:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  b611e6:	f3 0f 11 86 90 00 00 	movss  DWORD PTR [esi+0x90],xmm0
  b611ed:	00 
  b611ee:	f3 0f 10 44 24 64    	movss  xmm0,DWORD PTR [esp+0x64]
  b611f4:	f3 0f 11 86 94 00 00 	movss  DWORD PTR [esi+0x94],xmm0
  b611fb:	00 
  b611fc:	89 96 9c 00 00 00    	mov    DWORD PTR [esi+0x9c],edx
  b61202:	89 8e 98 00 00 00    	mov    DWORD PTR [esi+0x98],ecx
  b61208:	c6 86 a0 00 00 00 01 	mov    BYTE PTR [esi+0xa0],0x1
  b6120f:	33 db                	xor    ebx,ebx
  b61211:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  b61214:	8b 40 60             	mov    eax,DWORD PTR [eax+0x60]
  b61217:	f3 0f 10 80 9c 02 00 	movss  xmm0,DWORD PTR [eax+0x29c]
  b6121e:	00 
  b6121f:	f3 0f 11 86 b8 00 00 	movss  DWORD PTR [esi+0xb8],xmm0
  b61226:	00 
  b61227:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  b6122d:	f3 0f 11 86 a4 00 00 	movss  DWORD PTR [esi+0xa4],xmm0
  b61234:	00 
  b61235:	f3 0f 10 44 24 44    	movss  xmm0,DWORD PTR [esp+0x44]
  b6123b:	f3 0f 11 86 a8 00 00 	movss  DWORD PTR [esi+0xa8],xmm0
  b61242:	00 
  b61243:	f3 0f 10 44 24 48    	movss  xmm0,DWORD PTR [esp+0x48]
  b61249:	f3 0f 11 86 ac 00 00 	movss  DWORD PTR [esi+0xac],xmm0
  b61250:	00 
  b61251:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  b61257:	f3 0f 11 86 b0 00 00 	movss  DWORD PTR [esi+0xb0],xmm0
  b6125e:	00 
  b6125f:	f3 0f 10 86 ac 00 00 	movss  xmm0,DWORD PTR [esi+0xac]
  b61266:	00 
  b61267:	f3 0f 5c 86 a4 00 00 	subss  xmm0,DWORD PTR [esi+0xa4]
  b6126e:	00 
  b6126f:	f3 0f 5e c1          	divss  xmm0,xmm1
  b61273:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  b6127a:	00 
  b6127b:	0f 28 d0             	movaps xmm2,xmm0
  b6127e:	f3 0f 5c d1          	subss  xmm2,xmm1
  b61282:	f3 0f 11 54 24 74    	movss  DWORD PTR [esp+0x74],xmm2
  b61288:	8b 44 24 74          	mov    eax,DWORD PTR [esp+0x74]
  b6128c:	c1 f8 1f             	sar    eax,0x1f
  b6128f:	8b d0                	mov    edx,eax
  b61291:	57                   	push   edi
  b61292:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  b61298:	f3 0f 11 4c 24 70    	movss  DWORD PTR [esp+0x70],xmm1
  b6129e:	8b 7c 24 70          	mov    edi,DWORD PTR [esp+0x70]
  b612a2:	23 f8                	and    edi,eax
  b612a4:	f7 d2                	not    edx
  b612a6:	23 54 24 78          	and    edx,DWORD PTR [esp+0x78]
  b612aa:	f3 0f 2a 54 24 58    	cvtsi2ss xmm2,DWORD PTR [esp+0x58]
  b612b0:	0b d7                	or     edx,edi
  b612b2:	89 54 24 78          	mov    DWORD PTR [esp+0x78],edx
  b612b6:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  b612ba:	d9 7c 24 78          	fnstcw WORD PTR [esp+0x78]
  b612be:	0f b7 44 24 78       	movzx  eax,WORD PTR [esp+0x78]
  b612c3:	0d 00 0c 00 00       	or     eax,0xc00
  b612c8:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  b612cc:	d9 6c 24 70          	fldcw  WORD PTR [esp+0x70]
  b612d0:	f3 0f 11 4c 24 70    	movss  DWORD PTR [esp+0x70],xmm1
  b612d6:	8b 6c 24 70          	mov    ebp,DWORD PTR [esp+0x70]
  b612da:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
  b612de:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  b612e2:	89 56 08             	mov    DWORD PTR [esi+0x8],edx
  b612e5:	f3 0f 10 86 b0 00 00 	movss  xmm0,DWORD PTR [esi+0xb0]
  b612ec:	00 
  b612ed:	d9 6c 24 78          	fldcw  WORD PTR [esp+0x78]
  b612f1:	f3 0f 5c 86 a8 00 00 	subss  xmm0,DWORD PTR [esi+0xa8]
  b612f8:	00 
  b612f9:	f3 0f 5e c2          	divss  xmm0,xmm2
  b612fd:	0f 28 d0             	movaps xmm2,xmm0
  b61300:	f3 0f 5c d1          	subss  xmm2,xmm1
  b61304:	f3 0f 11 54 24 78    	movss  DWORD PTR [esp+0x78],xmm2
  b6130a:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
  b6130e:	c1 f8 1f             	sar    eax,0x1f
  b61311:	8b f8                	mov    edi,eax
  b61313:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  b61319:	f7 d7                	not    edi
  b6131b:	23 7c 24 78          	and    edi,DWORD PTR [esp+0x78]
  b6131f:	23 e8                	and    ebp,eax
  b61321:	0b fd                	or     edi,ebp
  b61323:	89 7c 24 78          	mov    DWORD PTR [esp+0x78],edi
  b61327:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  b6132b:	d9 7c 24 78          	fnstcw WORD PTR [esp+0x78]
  b6132f:	0f b7 44 24 78       	movzx  eax,WORD PTR [esp+0x78]
  b61334:	0d 00 0c 00 00       	or     eax,0xc00
  b61339:	85 d2                	test   edx,edx
  b6133b:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  b6133f:	d9 6c 24 70          	fldcw  WORD PTR [esp+0x70]
  b61343:	df 7c 24 10          	fistp  QWORD PTR [esp+0x10]
  b61347:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  b6134b:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  b6134e:	d9 6c 24 78          	fldcw  WORD PTR [esp+0x78]
  b61352:	89 54 24 78          	mov    DWORD PTR [esp+0x78],edx
  b61356:	d9 86 ac 00 00 00    	fld    DWORD PTR [esi+0xac]
  b6135c:	d8 a6 a4 00 00 00    	fsub   DWORD PTR [esi+0xa4]
  b61362:	db 44 24 78          	fild   DWORD PTR [esp+0x78]
  b61366:	7d 06                	jge    0xb6136e
  b61368:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  b6136e:	85 c0                	test   eax,eax
  b61370:	de f9                	fdivp  st(1),st
  b61372:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
  b61376:	d9 5e 10             	fstp   DWORD PTR [esi+0x10]
  b61379:	d9 86 b0 00 00 00    	fld    DWORD PTR [esi+0xb0]
  b6137f:	d8 a6 a8 00 00 00    	fsub   DWORD PTR [esi+0xa8]
  b61385:	db 44 24 78          	fild   DWORD PTR [esp+0x78]
  b61389:	7d 06                	jge    0xb61391
  b6138b:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  b61391:	de f9                	fdivp  st(1),st
  b61393:	f3 0f 10 4e 10       	movss  xmm1,DWORD PTR [esi+0x10]
  b61398:	f3 0f 10 05 b4 b5 f9 	movss  xmm0,DWORD PTR ds:0xf9b5b4
  b6139f:	00 
  b613a0:	33 d2                	xor    edx,edx
  b613a2:	83 f9 08             	cmp    ecx,0x8
  b613a5:	d9 56 14             	fst    DWORD PTR [esi+0x14]
  b613a8:	d9 5c 24 78          	fstp   DWORD PTR [esp+0x78]
  b613ac:	f3 0f 10 54 24 78    	movss  xmm2,DWORD PTR [esp+0x78]
  b613b2:	7c 55                	jl     0xb61409
  b613b4:	8d 41 f8             	lea    eax,[ecx-0x8]
  b613b7:	c1 e8 03             	shr    eax,0x3
  b613ba:	83 c0 01             	add    eax,0x1
  b613bd:	8d 14 c5 00 00 00 00 	lea    edx,[eax*8+0x0]
  b613c4:	83 e8 01             	sub    eax,0x1
  b613c7:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b613cb:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b613cf:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b613d3:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b613d7:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b613db:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b613df:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b613e3:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b613e7:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b613eb:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b613ef:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b613f3:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b613f7:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b613fb:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b613ff:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b61403:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b61407:	75 bb                	jne    0xb613c4
  b61409:	3b d1                	cmp    edx,ecx
  b6140b:	7d 10                	jge    0xb6141d
  b6140d:	2b ca                	sub    ecx,edx
  b6140f:	90                   	nop
  b61410:	83 e9 01             	sub    ecx,0x1
  b61413:	f3 0f 59 c8          	mulss  xmm1,xmm0
  b61417:	f3 0f 59 d0          	mulss  xmm2,xmm0
  b6141b:	75 f3                	jne    0xb61410
  b6141d:	0f 2f d1             	comiss xmm2,xmm1
  b61420:	f3 0f 11 8e bc 00 00 	movss  DWORD PTR [esi+0xbc],xmm1
  b61427:	00 
  b61428:	76 08                	jbe    0xb61432
  b6142a:	f3 0f 11 96 bc 00 00 	movss  DWORD PTR [esi+0xbc],xmm2
  b61431:	00 
  b61432:	38 5c 24 74          	cmp    BYTE PTR [esp+0x74],bl
  b61436:	0f 84 16 01 00 00    	je     0xb61552
  b6143c:	8b ce                	mov    ecx,esi
  b6143e:	e8 cd fc ff ff       	call   0xb61110
  b61443:	39 5e 08             	cmp    DWORD PTR [esi+0x8],ebx
  b61446:	0f 86 e7 00 00 00    	jbe    0xb61533
  b6144c:	33 ff                	xor    edi,edi
  b6144e:	39 7e 0c             	cmp    DWORD PTR [esi+0xc],edi
  b61451:	0f 86 d0 00 00 00    	jbe    0xb61527
  b61457:	8b c3                	mov    eax,ebx
  b61459:	85 c0                	test   eax,eax
  b6145b:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
  b6145f:	db 44 24 78          	fild   DWORD PTR [esp+0x78]
  b61463:	7d 06                	jge    0xb6146b
  b61465:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  b6146b:	8b eb                	mov    ebp,ebx
  b6146d:	d9 5c 24 78          	fstp   DWORD PTR [esp+0x78]
  b61471:	c1 e5 04             	shl    ebp,0x4
  b61474:	f3 0f 10 4e 10       	movss  xmm1,DWORD PTR [esi+0x10]
  b61479:	f3 0f 10 44 24 78    	movss  xmm0,DWORD PTR [esp+0x78]
  b6147f:	f3 0f 10 56 14       	movss  xmm2,DWORD PTR [esi+0x14]
  b61484:	8b cf                	mov    ecx,edi
  b61486:	85 c9                	test   ecx,ecx
  b61488:	89 4c 24 70          	mov    DWORD PTR [esp+0x70],ecx
  b6148c:	db 44 24 70          	fild   DWORD PTR [esp+0x70]
  b61490:	f3 0f 59 c1          	mulss  xmm0,xmm1
  b61494:	f3 0f 58 44 24 44    	addss  xmm0,DWORD PTR [esp+0x44]
  b6149a:	f3 0f 11 54 24 74    	movss  DWORD PTR [esp+0x74],xmm2
  b614a0:	7d 06                	jge    0xb614a8
  b614a2:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  b614a8:	d8 4c 24 74          	fmul   DWORD PTR [esp+0x74]
  b614ac:	83 c8 ff             	or     eax,0xffffffff
  b614af:	0f 28 d8             	movaps xmm3,xmm0
  b614b2:	f3 0f 58 c1          	addss  xmm0,xmm1
  b614b6:	d8 44 24 48          	fadd   DWORD PTR [esp+0x48]
  b614ba:	6a 00                	push   0x0
  b614bc:	83 ec 10             	sub    esp,0x10
  b614bf:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  b614c3:	d9 9c 24 84 00 00 00 	fstp   DWORD PTR [esp+0x84]
  b614ca:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  b614ce:	f3 0f 10 8c 24 84 00 	movss  xmm1,DWORD PTR [esp+0x84]
  b614d5:	00 00 
  b614d7:	0f 28 e1             	movaps xmm4,xmm1
  b614da:	89 44 24 4c          	mov    DWORD PTR [esp+0x4c],eax
  b614de:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  b614e2:	8b c4                	mov    eax,esp
  b614e4:	f3 0f 58 ca          	addss  xmm1,xmm2
  b614e8:	8b ce                	mov    ecx,esi
  b614ea:	f3 0f 11 18          	movss  DWORD PTR [eax],xmm3
  b614ee:	f3 0f 11 60 04       	movss  DWORD PTR [eax+0x4],xmm4
  b614f3:	f3 0f 11 40 08       	movss  DWORD PTR [eax+0x8],xmm0
  b614f8:	f3 0f 11 48 0c       	movss  DWORD PTR [eax+0xc],xmm1
  b614fd:	e8 fe e3 ff ff       	call   0xb5f900
  b61502:	85 c0                	test   eax,eax
  b61504:	8b 56 6c             	mov    edx,DWORD PTR [esi+0x6c]
  b61507:	7c 08                	jl     0xb61511
  b61509:	8b 0c 2a             	mov    ecx,DWORD PTR [edx+ebp*1]
  b6150c:	89 04 b9             	mov    DWORD PTR [ecx+edi*4],eax
  b6150f:	eb 0a                	jmp    0xb6151b
  b61511:	8b 04 2a             	mov    eax,DWORD PTR [edx+ebp*1]
  b61514:	c7 04 b8 ff ff ff ff 	mov    DWORD PTR [eax+edi*4],0xffffffff
  b6151b:	83 c7 01             	add    edi,0x1
  b6151e:	3b 7e 0c             	cmp    edi,DWORD PTR [esi+0xc]
  b61521:	0f 82 4d ff ff ff    	jb     0xb61474
  b61527:	83 c3 01             	add    ebx,0x1
  b6152a:	3b 5e 08             	cmp    ebx,DWORD PTR [esi+0x8]
  b6152d:	0f 82 19 ff ff ff    	jb     0xb6144c
  b61533:	80 be b4 00 00 00 00 	cmp    BYTE PTR [esi+0xb4],0x0
  b6153a:	75 16                	jne    0xb61552
  b6153c:	6a 02                	push   0x2
  b6153e:	68 c8 ea 06 01       	push   0x106eac8
  b61543:	8d 4e 18             	lea    ecx,[esi+0x18]
  b61546:	e8 a5 91 ab ff       	call   0x61a6f0
  b6154b:	c6 86 b4 00 00 00 01 	mov    BYTE PTR [esi+0xb4],0x1
  b61552:	5f                   	pop    edi
  b61553:	5e                   	pop    esi
  b61554:	5d                   	pop    ebp
  b61555:	5b                   	pop    ebx
  b61556:	83 c4 30             	add    esp,0x30
  b61559:	c2 38 00             	ret    0x38
