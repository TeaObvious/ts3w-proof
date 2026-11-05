# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00638fd0,0x0063942c); analyst name LotRouteGraph_AddAdditionalAnimalVariants.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00638fd0 <.text+0x237fd0>:
  638fd0:	55                   	push   ebp
  638fd1:	8b ec                	mov    ebp,esp
  638fd3:	83 e4 f0             	and    esp,0xfffffff0
  638fd6:	81 ec 44 01 00 00    	sub    esp,0x144
  638fdc:	53                   	push   ebx
  638fdd:	56                   	push   esi
  638fde:	57                   	push   edi
  638fdf:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  638fe2:	33 db                	xor    ebx,ebx
  638fe4:	3b fb                	cmp    edi,ebx
  638fe6:	89 4c 24 5c          	mov    DWORD PTR [esp+0x5c],ecx
  638fea:	0f 84 31 04 00 00    	je     0x639421
  638ff0:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  638ff3:	3b f3                	cmp    esi,ebx
  638ff5:	0f 84 26 04 00 00    	je     0x639421
  638ffb:	8b 46 5c             	mov    eax,DWORD PTR [esi+0x5c]
  638ffe:	68 00 02 00 00       	push   0x200
  639003:	b9 e0 ed 1c 01       	mov    ecx,0x11cede0
  639008:	89 46 60             	mov    DWORD PTR [esi+0x60],eax
  63900b:	e8 90 ad ee ff       	call   0x523da0
  639010:	84 c0                	test   al,al
  639012:	75 0b                	jne    0x63901f
  639014:	b0 01                	mov    al,0x1
  639016:	5f                   	pop    edi
  639017:	5e                   	pop    esi
  639018:	5b                   	pop    ebx
  639019:	8b e5                	mov    esp,ebp
  63901b:	5d                   	pop    ebp
  63901c:	c2 08 00             	ret    0x8
  63901f:	0f 57 c0             	xorps  xmm0,xmm0
  639022:	f3 0f 10 0d 38 da fe 00 	movss  xmm1,DWORD PTR ds:0xfeda38
  63902a:	f3 0f 11 44 24 60    	movss  DWORD PTR [esp+0x60],xmm0
  639030:	f3 0f 11 44 24 68    	movss  DWORD PTR [esp+0x68],xmm0
  639036:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  63903c:	f3 0f 11 44 24 78    	movss  DWORD PTR [esp+0x78],xmm0
  639042:	f3 0f 10 05 34 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda34
  63904a:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  639050:	f3 0f 10 05 30 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda30
  639058:	f3 0f 11 84 24 80 00 00 00 	movss  DWORD PTR [esp+0x80],xmm0
  639061:	f3 0f 10 05 2c da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda2c
  639069:	f3 0f 11 84 24 84 00 00 00 	movss  DWORD PTR [esp+0x84],xmm0
  639072:	f3 0f 10 05 28 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda28
  63907a:	f3 0f 11 84 24 88 00 00 00 	movss  DWORD PTR [esp+0x88],xmm0
  639083:	f3 0f 10 05 24 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda24
  63908b:	f3 0f 11 84 24 8c 00 00 00 	movss  DWORD PTR [esp+0x8c],xmm0
  639094:	f3 0f 10 05 20 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda20
  63909c:	f3 0f 11 84 24 90 00 00 00 	movss  DWORD PTR [esp+0x90],xmm0
  6390a5:	f3 0f 10 05 1c da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda1c
  6390ad:	f3 0f 11 84 24 94 00 00 00 	movss  DWORD PTR [esp+0x94],xmm0
  6390b6:	f3 0f 10 05 18 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda18
  6390be:	f3 0f 10 2d b4 b5 f9 00 	movss  xmm5,DWORD PTR ds:0xf9b5b4
  6390c6:	f3 0f 11 84 24 98 00 00 00 	movss  DWORD PTR [esp+0x98],xmm0
  6390cf:	f3 0f 10 05 14 da fe 00 	movss  xmm0,DWORD PTR ds:0xfeda14
  6390d7:	f3 0f 11 84 24 9c 00 00 00 	movss  DWORD PTR [esp+0x9c],xmm0
  6390e0:	f3 0f 10 46 14       	movss  xmm0,DWORD PTR [esi+0x14]
  6390e5:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  6390eb:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  6390f1:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6390f7:	f3 0f 10 46 20       	movss  xmm0,DWORD PTR [esi+0x20]
  6390fc:	f3 0f 11 4c 24 64    	movss  DWORD PTR [esp+0x64],xmm1
  639102:	f3 0f 11 4c 24 6c    	movss  DWORD PTR [esp+0x6c],xmm1
  639108:	f3 0f 10 0d 10 da fe 00 	movss  xmm1,DWORD PTR ds:0xfeda10
  639110:	f3 0f 11 4c 24 74    	movss  DWORD PTR [esp+0x74],xmm1
  639116:	f3 0f 10 4e 18       	movss  xmm1,DWORD PTR [esi+0x18]
  63911b:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  639121:	0f 28 64 24 20       	movaps xmm4,XMMWORD PTR [esp+0x20]
  639126:	f3 0f 10 4e 24       	movss  xmm1,DWORD PTR [esi+0x24]
  63912b:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  639131:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  639137:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  63913d:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  639143:	0f 28 74 24 20       	movaps xmm6,XMMWORD PTR [esp+0x20]
  639148:	0f 29 b4 24 a0 00 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm6
  639150:	0f 5c f4             	subps  xmm6,xmm4
  639153:	0f 28 c6             	movaps xmm0,xmm6
  639156:	0f 59 c6             	mulps  xmm0,xmm6
  639159:	0f 28 d0             	movaps xmm2,xmm0
  63915c:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  639160:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  639164:	0f 58 d0             	addps  xmm2,xmm0
  639167:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  63916f:	0f 52 da             	rsqrtps xmm3,xmm2
  639172:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  639176:	0f 28 fb             	movaps xmm7,xmm3
  639179:	0f 59 fb             	mulps  xmm7,xmm3
  63917c:	0f 28 c8             	movaps xmm1,xmm0
  63917f:	0f 59 fa             	mulps  xmm7,xmm2
  639182:	0f 5c cf             	subps  xmm1,xmm7
  639185:	0f c6 ed 00          	shufps xmm5,xmm5,0x0
  639189:	0f 28 fd             	movaps xmm7,xmm5
  63918c:	0f 59 fb             	mulps  xmm7,xmm3
  63918f:	0f 59 cf             	mulps  xmm1,xmm7
  639192:	0f 58 cb             	addps  xmm1,xmm3
  639195:	0f 28 d9             	movaps xmm3,xmm1
  639198:	0f 59 d9             	mulps  xmm3,xmm1
  63919b:	0f 59 da             	mulps  xmm3,xmm2
  63919e:	0f 5c c3             	subps  xmm0,xmm3
  6391a1:	0f 59 e9             	mulps  xmm5,xmm1
  6391a4:	0f 59 c5             	mulps  xmm0,xmm5
  6391a7:	0f 58 c1             	addps  xmm0,xmm1
  6391aa:	0f 59 c6             	mulps  xmm0,xmm6
  6391ad:	0f 28 e8             	movaps xmm5,xmm0
  6391b0:	c7 46 78 ff 07 00 00 	mov    DWORD PTR [esi+0x78],0x7ff
  6391b7:	89 5e 7c             	mov    DWORD PTR [esi+0x7c],ebx
  6391ba:	0f 29 a4 24 b0 00 00 00 	movaps XMMWORD PTR [esp+0xb0],xmm4
  6391c2:	0f 29 ac 24 40 01 00 00 	movaps XMMWORD PTR [esp+0x140],xmm5
  6391ca:	c6 44 24 1b 01       	mov    BYTE PTR [esp+0x1b],0x1
  6391cf:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  6391d3:	eb 1b                	jmp    0x6391f0
  6391d5:	eb 09                	jmp    0x6391e0
  6391d7:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  6391de:	8b ff                	mov    edi,edi
  6391e0:	0f 28 ac 24 40 01 00 00 	movaps xmm5,XMMWORD PTR [esp+0x140]
  6391e8:	0f 28 a4 24 b0 00 00 00 	movaps xmm4,XMMWORD PTR [esp+0xb0]
  6391f0:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  6391f4:	0f 28 9c 24 a0 00 00 00 	movaps xmm3,XMMWORD PTR [esp+0xa0]
  6391fc:	8b 4e 28             	mov    ecx,DWORD PTR [esi+0x28]
  6391ff:	c1 e0 04             	shl    eax,0x4
  639202:	f3 0f 10 44 04 60    	movss  xmm0,DWORD PTR [esp+eax*1+0x60]
  639208:	f3 0f 10 4c 04 64    	movss  xmm1,DWORD PTR [esp+eax*1+0x64]
  63920e:	f3 0f 10 54 04 68    	movss  xmm2,DWORD PTR [esp+eax*1+0x68]
  639214:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  639218:	0f 59 c5             	mulps  xmm0,xmm5
  63921b:	0f 58 c4             	addps  xmm0,xmm4
  63921e:	0f 29 84 24 d0 00 00 00 	movaps XMMWORD PTR [esp+0xd0],xmm0
  639226:	0f 29 84 24 10 01 00 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  63922e:	f3 0f 10 84 24 d0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xd0]
  639237:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  63923d:	f3 0f 10 84 24 14 01 00 00 	movss  xmm0,DWORD PTR [esp+0x114]
  639246:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  63924a:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  639250:	0f 59 cd             	mulps  xmm1,xmm5
  639253:	0f 58 cb             	addps  xmm1,xmm3
  639256:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  63925a:	0f 59 d5             	mulps  xmm2,xmm5
  63925d:	0f 5c da             	subps  xmm3,xmm2
  639260:	f3 0f 10 54 04 6c    	movss  xmm2,DWORD PTR [esp+eax*1+0x6c]
  639266:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  639269:	0f 29 8c 24 f0 00 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm1
  639271:	f3 0f 10 84 24 f0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xf0]
  63927a:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  639280:	0f 29 8c 24 30 01 00 00 	movaps XMMWORD PTR [esp+0x130],xmm1
  639288:	f3 0f 10 84 24 34 01 00 00 	movss  xmm0,DWORD PTR [esp+0x134]
  639291:	f3 0f 11 44 24 54    	movss  DWORD PTR [esp+0x54],xmm0
  639297:	0f 29 9c 24 c0 00 00 00 	movaps XMMWORD PTR [esp+0xc0],xmm3
  63929f:	f3 0f 10 84 24 c0 00 00 00 	movss  xmm0,DWORD PTR [esp+0xc0]
  6392a8:	0f c6 d2 00          	shufps xmm2,xmm2,0x0
  6392ac:	f3 0f 11 44 24 38    	movss  DWORD PTR [esp+0x38],xmm0
  6392b2:	0f 59 d5             	mulps  xmm2,xmm5
  6392b5:	0f 5c e2             	subps  xmm4,xmm2
  6392b8:	0f 29 9c 24 e0 00 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm3
  6392c0:	f3 0f 10 84 24 e4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xe4]
  6392c9:	89 4c 24 58          	mov    DWORD PTR [esp+0x58],ecx
  6392cd:	89 4c 24 40          	mov    DWORD PTR [esp+0x40],ecx
  6392d1:	f3 0f 11 44 24 3c    	movss  DWORD PTR [esp+0x3c],xmm0
  6392d7:	0f 29 a4 24 00 01 00 00 	movaps XMMWORD PTR [esp+0x100],xmm4
  6392df:	f3 0f 10 84 24 00 01 00 00 	movss  xmm0,DWORD PTR [esp+0x100]
  6392e8:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  6392ec:	0f 29 a4 24 20 01 00 00 	movaps XMMWORD PTR [esp+0x120],xmm4
  6392f4:	51                   	push   ecx
  6392f5:	f3 0f 11 44 24 48    	movss  DWORD PTR [esp+0x48],xmm0
  6392fb:	f3 0f 10 84 24 28 01 00 00 	movss  xmm0,DWORD PTR [esp+0x128]
  639304:	57                   	push   edi
  639305:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  639309:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  63930f:	89 44 24 54          	mov    DWORD PTR [esp+0x54],eax
  639313:	e8 88 bb 4c 00       	call   0xb04ea0
  639318:	8d 54 24 40          	lea    edx,[esp+0x40]
  63931c:	52                   	push   edx
  63931d:	8a d8                	mov    bl,al
  63931f:	57                   	push   edi
  639320:	80 e3 01             	and    bl,0x1
  639323:	e8 78 bb 4c 00       	call   0xb04ea0
  639328:	22 d8                	and    bl,al
  63932a:	8d 44 24 30          	lea    eax,[esp+0x30]
  63932e:	50                   	push   eax
  63932f:	57                   	push   edi
  639330:	e8 6b bb 4c 00       	call   0xb04ea0
  639335:	8d 54 24 5c          	lea    edx,[esp+0x5c]
  639339:	84 c0                	test   al,al
  63933b:	52                   	push   edx
  63933c:	0f 94 c1             	sete   cl
  63933f:	57                   	push   edi
  639340:	22 d9                	and    bl,cl
  639342:	e8 59 bb 4c 00       	call   0xb04ea0
  639347:	83 c4 20             	add    esp,0x20
  63934a:	84 c0                	test   al,al
  63934c:	0f 94 c0             	sete   al
  63934f:	84 c3                	test   bl,al
  639351:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  639355:	0f 84 a9 00 00 00    	je     0x639404
  63935b:	33 c0                	xor    eax,eax
  63935d:	33 c9                	xor    ecx,ecx
  63935f:	83 fb 03             	cmp    ebx,0x3
  639362:	77 23                	ja     0x639387
  639364:	ff 24 9d 2c 94 63 00 	jmp    DWORD PTR [ebx*4+0x63942c]
  63936b:	b8 80 07 18 00       	mov    eax,0x180780
  639370:	eb 13                	jmp    0x639385
  639372:	b8 80 07 c3 00       	mov    eax,0xc30780
  639377:	eb 0c                	jmp    0x639385
  639379:	b8 80 67 00 00       	mov    eax,0x6780
  63937e:	eb 05                	jmp    0x639385
  639380:	b8 80 17 00 00       	mov    eax,0x1780
  639385:	33 c9                	xor    ecx,ecx
  639387:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  63938b:	8b 54 24 40          	mov    edx,DWORD PTR [esp+0x40]
  63938f:	6a 01                	push   0x1
  639391:	51                   	push   ecx
  639392:	8b 4c 24 54          	mov    ecx,DWORD PTR [esp+0x54]
  639396:	50                   	push   eax
  639397:	8b 44 24 64          	mov    eax,DWORD PTR [esp+0x64]
  63939b:	51                   	push   ecx
  63939c:	8b 4c 24 38          	mov    ecx,DWORD PTR [esp+0x38]
  6393a0:	83 ec 08             	sub    esp,0x8
  6393a3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6393a7:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  6393ab:	d9 1c 24             	fstp   DWORD PTR [esp]
  6393ae:	52                   	push   edx
  6393af:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  6393b3:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  6393b6:	83 ec 08             	sub    esp,0x8
  6393b9:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6393bd:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  6393c1:	d9 1c 24             	fstp   DWORD PTR [esp]
  6393c4:	50                   	push   eax
  6393c5:	d9 44 24 7c          	fld    DWORD PTR [esp+0x7c]
  6393c9:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  6393cc:	83 ec 08             	sub    esp,0x8
  6393cf:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6393d3:	d9 84 24 80 00 00 00 	fld    DWORD PTR [esp+0x80]
  6393da:	d9 1c 24             	fstp   DWORD PTR [esp]
  6393dd:	51                   	push   ecx
  6393de:	d9 44 24 58          	fld    DWORD PTR [esp+0x58]
  6393e2:	8b 8c 24 90 00 00 00 	mov    ecx,DWORD PTR [esp+0x90]
  6393e9:	83 ec 08             	sub    esp,0x8
  6393ec:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  6393f0:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  6393f4:	d9 1c 24             	fstp   DWORD PTR [esp]
  6393f7:	56                   	push   esi
  6393f8:	52                   	push   edx
  6393f9:	50                   	push   eax
  6393fa:	57                   	push   edi
  6393fb:	e8 50 f0 ff ff       	call   0x638450
  639400:	20 44 24 1b          	and    BYTE PTR [esp+0x1b],al
  639404:	83 c3 01             	add    ebx,0x1
  639407:	83 fb 04             	cmp    ebx,0x4
  63940a:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  63940e:	0f 82 cc fd ff ff    	jb     0x6391e0
  639414:	8a 44 24 1b          	mov    al,BYTE PTR [esp+0x1b]
  639418:	5f                   	pop    edi
  639419:	5e                   	pop    esi
  63941a:	5b                   	pop    ebx
  63941b:	8b e5                	mov    esp,ebp
  63941d:	5d                   	pop    ebp
  63941e:	c2 08 00             	ret    0x8
  639421:	5f                   	pop    edi
  639422:	5e                   	pop    esi
  639423:	32 c0                	xor    al,al
  639425:	5b                   	pop    ebx
  639426:	8b e5                	mov    esp,ebp
  639428:	5d                   	pop    ebp
  639429:	c2 08 00             	ret    0x8
