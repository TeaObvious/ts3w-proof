# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bed100 <.text+0x7ec100>:
  bed100:	55                   	push   ebp
  bed101:	8b ec                	mov    ebp,esp
  bed103:	83 e4 f0             	and    esp,0xfffffff0
  bed106:	81 ec b4 02 00 00    	sub    esp,0x2b4
  bed10c:	53                   	push   ebx
  bed10d:	56                   	push   esi
  bed10e:	57                   	push   edi
  bed10f:	8b d9                	mov    ebx,ecx
  bed111:	e8 5a b0 af ff       	call   0x6e8170
  bed116:	85 c0                	test   eax,eax
  bed118:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  bed11c:	0f 84 a9 0b 00 00    	je     0xbedccb
  bed122:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
  bed125:	85 c9                	test   ecx,ecx
  bed127:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bed12a:	74 15                	je     0xbed141
  bed12c:	85 f6                	test   esi,esi
  bed12e:	74 11                	je     0xbed141
  bed130:	8d 46 10             	lea    eax,[esi+0x10]
  bed133:	50                   	push   eax
  bed134:	e8 67 24 ef ff       	call   0xadf5a0
  bed139:	84 c0                	test   al,al
  bed13b:	0f 85 8a 0b 00 00    	jne    0xbedccb
  bed141:	6a ff                	push   0xffffffff
  bed143:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  bed147:	e8 a4 d8 90 ff       	call   0x4fa9f0
  bed14c:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  bed14f:	50                   	push   eax
  bed150:	e8 eb 51 be ff       	call   0x7d2340
  bed155:	83 c4 04             	add    esp,0x4
  bed158:	50                   	push   eax
  bed159:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  bed15d:	e8 8e d8 90 ff       	call   0x4fa9f0
  bed162:	8b 7e 18             	mov    edi,DWORD PTR [esi+0x18]
  bed165:	8b 16                	mov    edx,DWORD PTR [esi]
  bed167:	8b 52 70             	mov    edx,DWORD PTR [edx+0x70]
  bed16a:	8b c7                	mov    eax,edi
  bed16c:	c1 e0 04             	shl    eax,0x4
  bed16f:	03 83 0c 02 00 00    	add    eax,DWORD PTR [ebx+0x20c]
  bed175:	8d 4c 24 78          	lea    ecx,[esp+0x78]
  bed179:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  bed17d:	33 c0                	xor    eax,eax
  bed17f:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
  bed183:	89 44 24 7c          	mov    DWORD PTR [esp+0x7c],eax
  bed187:	89 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],eax
  bed18e:	89 44 24 68          	mov    DWORD PTR [esp+0x68],eax
  bed192:	89 44 24 6c          	mov    DWORD PTR [esp+0x6c],eax
  bed196:	89 44 24 70          	mov    DWORD PTR [esp+0x70],eax
  bed19a:	8d 44 24 68          	lea    eax,[esp+0x68]
  bed19e:	50                   	push   eax
  bed19f:	51                   	push   ecx
  bed1a0:	6a 01                	push   0x1
  bed1a2:	8b ce                	mov    ecx,esi
  bed1a4:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  bed1a8:	c7 84 24 90 00 00 00 	mov    DWORD PTR [esp+0x90],0x10731e0
  bed1af:	e0 31 07 01 
  bed1b3:	c7 84 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],0x10731a4
  bed1ba:	a4 31 07 01 
  bed1be:	ff d2                	call   edx
  bed1c0:	84 c0                	test   al,al
  bed1c2:	0f 84 e1 0a 00 00    	je     0xbedca9
  bed1c8:	33 c0                	xor    eax,eax
  bed1ca:	6a 01                	push   0x1
  bed1cc:	89 44 24 5c          	mov    DWORD PTR [esp+0x5c],eax
  bed1d0:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
  bed1d4:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  bed1d8:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  bed1db:	57                   	push   edi
  bed1dc:	50                   	push   eax
  bed1dd:	8d 4c 24 64          	lea    ecx,[esp+0x64]
  bed1e1:	51                   	push   ecx
  bed1e2:	8b cb                	mov    ecx,ebx
  bed1e4:	c7 44 24 74 14 24 07 	mov    DWORD PTR [esp+0x74],0x1072414
  bed1eb:	01 
  bed1ec:	e8 7f e3 ff ff       	call   0xbeb570
  bed1f1:	8b 44 24 7c          	mov    eax,DWORD PTR [esp+0x7c]
  bed1f5:	8b 4c 24 78          	mov    ecx,DWORD PTR [esp+0x78]
  bed1f9:	3b c8                	cmp    ecx,eax
  bed1fb:	f3 0f 10 1d f8 98 f9 	movss  xmm3,DWORD PTR ds:0xf998f8
  bed202:	00 
  bed203:	0f 57 d2             	xorps  xmm2,xmm2
  bed206:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  bed20a:	0f 84 1a 07 00 00    	je     0xbed92a
  bed210:	f3 0f 10 c3          	movss  xmm0,xmm3
  bed214:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  bed218:	0f 29 84 24 b0 01 00 	movaps XMMWORD PTR [esp+0x1b0],xmm0
  bed21f:	00 
  bed220:	0f 57 c0             	xorps  xmm0,xmm0
  bed223:	0f 29 84 24 90 01 00 	movaps XMMWORD PTR [esp+0x190],xmm0
  bed22a:	00 
  bed22b:	f3 0f 11 94 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm2
  bed232:	00 00 
  bed234:	f3 0f 11 94 24 98 00 	movss  DWORD PTR [esp+0x98],xmm2
  bed23b:	00 00 
  bed23d:	f3 0f 11 9c 24 94 00 	movss  DWORD PTR [esp+0x94],xmm3
  bed244:	00 00 
  bed246:	f3 0f 11 94 24 90 00 	movss  DWORD PTR [esp+0x90],xmm2
  bed24d:	00 00 
  bed24f:	0f 28 84 24 90 00 00 	movaps xmm0,XMMWORD PTR [esp+0x90]
  bed256:	00 
  bed257:	0f 29 84 24 90 02 00 	movaps XMMWORD PTR [esp+0x290],xmm0
  bed25e:	00 
  bed25f:	f3 0f 10 c2          	movss  xmm0,xmm2
  bed263:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  bed267:	0f 29 84 24 a0 01 00 	movaps XMMWORD PTR [esp+0x1a0],xmm0
  bed26e:	00 
  bed26f:	f3 0f 10 05 b4 b5 f9 	movss  xmm0,DWORD PTR ds:0xf9b5b4
  bed276:	00 
  bed277:	8d 41 04             	lea    eax,[ecx+0x4]
  bed27a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  bed27e:	0f 29 84 24 d0 01 00 	movaps XMMWORD PTR [esp+0x1d0],xmm0
  bed285:	00 
  bed286:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  bed28a:	eb 08                	jmp    0xbed294
  bed28c:	8d 64 24 00          	lea    esp,[esp+0x0]
  bed290:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  bed294:	f3 0f 10 48 04       	movss  xmm1,DWORD PTR [eax+0x4]
  bed299:	f3 0f 10 40 fc       	movss  xmm0,DWORD PTR [eax-0x4]
  bed29e:	8b 16                	mov    edx,DWORD PTR [esi]
  bed2a0:	f3 0f 11 8c 24 c8 00 	movss  DWORD PTR [esp+0xc8],xmm1
  bed2a7:	00 00 
  bed2a9:	f3 0f 10 08          	movss  xmm1,DWORD PTR [eax]
  bed2ad:	f3 0f 11 84 24 cc 00 	movss  DWORD PTR [esp+0xcc],xmm0
  bed2b4:	00 00 
  bed2b6:	f3 0f 11 84 24 c0 00 	movss  DWORD PTR [esp+0xc0],xmm0
  bed2bd:	00 00 
  bed2bf:	f3 0f 10 40 08       	movss  xmm0,DWORD PTR [eax+0x8]
  bed2c4:	f3 0f 11 8c 24 c4 00 	movss  DWORD PTR [esp+0xc4],xmm1
  bed2cb:	00 00 
  bed2cd:	f3 0f 10 48 10       	movss  xmm1,DWORD PTR [eax+0x10]
  bed2d2:	0f 28 94 24 c0 00 00 	movaps xmm2,XMMWORD PTR [esp+0xc0]
  bed2d9:	00 
  bed2da:	f3 0f 11 84 24 dc 00 	movss  DWORD PTR [esp+0xdc],xmm0
  bed2e1:	00 00 
  bed2e3:	f3 0f 11 84 24 d0 00 	movss  DWORD PTR [esp+0xd0],xmm0
  bed2ea:	00 00 
  bed2ec:	f3 0f 11 8c 24 d8 00 	movss  DWORD PTR [esp+0xd8],xmm1
  bed2f3:	00 00 
  bed2f5:	f3 0f 10 48 0c       	movss  xmm1,DWORD PTR [eax+0xc]
  bed2fa:	8b 42 0c             	mov    eax,DWORD PTR [edx+0xc]
  bed2fd:	f3 0f 11 8c 24 d4 00 	movss  DWORD PTR [esp+0xd4],xmm1
  bed304:	00 00 
  bed306:	0f 28 8c 24 d0 00 00 	movaps xmm1,XMMWORD PTR [esp+0xd0]
  bed30d:	00 
  bed30e:	0f 5c ca             	subps  xmm1,xmm2
  bed311:	0f 29 94 24 80 01 00 	movaps XMMWORD PTR [esp+0x180],xmm2
  bed318:	00 
  bed319:	0f 28 d1             	movaps xmm2,xmm1
  bed31c:	0f 59 d1             	mulps  xmm2,xmm1
  bed31f:	0f 28 c2             	movaps xmm0,xmm2
  bed322:	0f c6 c2 02          	shufps xmm0,xmm2,0x2
  bed326:	0f 28 e2             	movaps xmm4,xmm2
  bed329:	0f c6 e2 01          	shufps xmm4,xmm2,0x1
  bed32d:	0f 58 c4             	addps  xmm0,xmm4
  bed330:	0f 58 c2             	addps  xmm0,xmm2
  bed333:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  bed337:	0f 51 c0             	sqrtps xmm0,xmm0
  bed33a:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  bed341:	00 
  bed342:	f3 0f 10 84 24 10 01 	movss  xmm0,DWORD PTR [esp+0x110]
  bed349:	00 00 
  bed34b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  bed34f:	0f 5e c8             	divps  xmm1,xmm0
  bed352:	8b ce                	mov    ecx,esi
  bed354:	0f 29 4c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm1
  bed359:	f3 0f 11 5c 24 44    	movss  DWORD PTR [esp+0x44],xmm3
  bed35f:	ff d0                	call   eax
  bed361:	84 c0                	test   al,al
  bed363:	74 26                	je     0xbed38b
  bed365:	f3 0f 10 1d c4 24 07 	movss  xmm3,DWORD PTR ds:0x10724c4
  bed36c:	01 
  bed36d:	f3 0f 10 05 c8 24 07 	movss  xmm0,DWORD PTR ds:0x10724c8
  bed374:	01 
  bed375:	0f c6 db 00          	shufps xmm3,xmm3,0x0
  bed379:	0f 59 5c 24 20       	mulps  xmm3,XMMWORD PTR [esp+0x20]
  bed37e:	0f 29 5c 24 20       	movaps XMMWORD PTR [esp+0x20],xmm3
  bed383:	f3 0f 11 44 24 44    	movss  DWORD PTR [esp+0x44],xmm0
  bed389:	eb 05                	jmp    0xbed390
  bed38b:	0f 28 5c 24 20       	movaps xmm3,XMMWORD PTR [esp+0x20]
  bed390:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  bed393:	0f 28 80 00 02 00 00 	movaps xmm0,XMMWORD PTR [eax+0x200]
  bed39a:	0f 28 88 f0 01 00 00 	movaps xmm1,XMMWORD PTR [eax+0x1f0]
  bed3a1:	0f 28 b4 24 b0 01 00 	movaps xmm6,XMMWORD PTR [esp+0x1b0]
  bed3a8:	00 
  bed3a9:	05 f0 01 00 00       	add    eax,0x1f0
  bed3ae:	0f 28 d3             	movaps xmm2,xmm3
  bed3b1:	0f c6 d3 55          	shufps xmm2,xmm3,0x55
  bed3b5:	0f 59 d0             	mulps  xmm2,xmm0
  bed3b8:	0f 28 c3             	movaps xmm0,xmm3
  bed3bb:	0f c6 c3 00          	shufps xmm0,xmm3,0x0
  bed3bf:	0f 59 c1             	mulps  xmm0,xmm1
  bed3c2:	0f 28 48 20          	movaps xmm1,XMMWORD PTR [eax+0x20]
  bed3c6:	0f 58 d0             	addps  xmm2,xmm0
  bed3c9:	0f 28 c3             	movaps xmm0,xmm3
  bed3cc:	0f c6 c3 aa          	shufps xmm0,xmm3,0xaa
  bed3d0:	0f 59 c1             	mulps  xmm0,xmm1
  bed3d3:	0f 58 d0             	addps  xmm2,xmm0
  bed3d6:	0f 57 c0             	xorps  xmm0,xmm0
  bed3d9:	0f 29 94 24 50 01 00 	movaps XMMWORD PTR [esp+0x150],xmm2
  bed3e0:	00 
  bed3e1:	f3 0f 11 84 24 54 01 	movss  DWORD PTR [esp+0x154],xmm0
  bed3e8:	00 00 
  bed3ea:	0f 28 8c 24 50 01 00 	movaps xmm1,XMMWORD PTR [esp+0x150]
  bed3f1:	00 
  bed3f2:	0f 59 c9             	mulps  xmm1,xmm1
  bed3f5:	0f 28 c1             	movaps xmm0,xmm1
  bed3f8:	0f c6 c1 02          	shufps xmm0,xmm1,0x2
  bed3fc:	0f 28 e1             	movaps xmm4,xmm1
  bed3ff:	0f c6 e1 01          	shufps xmm4,xmm1,0x1
  bed403:	0f 58 c4             	addps  xmm0,xmm4
  bed406:	0f 58 c1             	addps  xmm0,xmm1
  bed409:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  bed40d:	0f 52 e0             	rsqrtps xmm4,xmm0
  bed410:	0f 28 ec             	movaps xmm5,xmm4
  bed413:	0f 59 ec             	mulps  xmm5,xmm4
  bed416:	0f 59 e8             	mulps  xmm5,xmm0
  bed419:	0f 28 fc             	movaps xmm7,xmm4
  bed41c:	0f 28 ce             	movaps xmm1,xmm6
  bed41f:	0f 5c cd             	subps  xmm1,xmm5
  bed422:	0f 28 ac 24 d0 01 00 	movaps xmm5,XMMWORD PTR [esp+0x1d0]
  bed429:	00 
  bed42a:	0f 59 fd             	mulps  xmm7,xmm5
  bed42d:	0f 59 cf             	mulps  xmm1,xmm7
  bed430:	0f 58 cc             	addps  xmm1,xmm4
  bed433:	0f 28 e1             	movaps xmm4,xmm1
  bed436:	0f 59 e1             	mulps  xmm4,xmm1
  bed439:	0f 59 e0             	mulps  xmm4,xmm0
  bed43c:	0f 28 c6             	movaps xmm0,xmm6
  bed43f:	0f 5c c4             	subps  xmm0,xmm4
  bed442:	0f 28 e1             	movaps xmm4,xmm1
  bed445:	0f 59 e5             	mulps  xmm4,xmm5
  bed448:	0f 59 c4             	mulps  xmm0,xmm4
  bed44b:	0f 58 c1             	addps  xmm0,xmm1
  bed44e:	0f 28 8c 24 90 01 00 	movaps xmm1,XMMWORD PTR [esp+0x190]
  bed455:	00 
  bed456:	0f 59 c2             	mulps  xmm0,xmm2
  bed459:	0f 28 d0             	movaps xmm2,xmm0
  bed45c:	0f c6 d0 00          	shufps xmm2,xmm0,0x0
  bed460:	0f 28 e0             	movaps xmm4,xmm0
  bed463:	0f c6 e0 aa          	shufps xmm4,xmm0,0xaa
  bed467:	0f c6 a4 24 a0 01 00 	shufps xmm4,XMMWORD PTR [esp+0x1a0],0x10
  bed46e:	00 10 
  bed470:	0f 5c ca             	subps  xmm1,xmm2
  bed473:	0f 57 d2             	xorps  xmm2,xmm2
  bed476:	0f 29 84 24 60 01 00 	movaps XMMWORD PTR [esp+0x160],xmm0
  bed47d:	00 
  bed47e:	0f 29 84 24 70 01 00 	movaps XMMWORD PTR [esp+0x170],xmm0
  bed485:	00 
  bed486:	f3 0f 10 84 24 10 01 	movss  xmm0,DWORD PTR [esp+0x110]
  bed48d:	00 00 
  bed48f:	f3 0f 59 44 24 44    	mulss  xmm0,DWORD PTR [esp+0x44]
  bed495:	0f c6 e1 28          	shufps xmm4,xmm1,0x28
  bed499:	0f 29 a4 24 30 01 00 	movaps XMMWORD PTR [esp+0x130],xmm4
  bed4a0:	00 
  bed4a1:	0f 29 8c 24 70 02 00 	movaps XMMWORD PTR [esp+0x270],xmm1
  bed4a8:	00 
  bed4a9:	f3 0f 11 94 24 6c 01 	movss  DWORD PTR [esp+0x16c],xmm2
  bed4b0:	00 00 
  bed4b2:	f3 0f 11 94 24 3c 01 	movss  DWORD PTR [esp+0x13c],xmm2
  bed4b9:	00 00 
  bed4bb:	f3 0f 11 84 24 b4 00 	movss  DWORD PTR [esp+0xb4],xmm0
  bed4c2:	00 00 
  bed4c4:	d9 84 24 b4 00 00 00 	fld    DWORD PTR [esp+0xb4]
  bed4cb:	df bc 24 a8 00 00 00 	fistp  QWORD PTR [esp+0xa8]
  bed4d2:	83 bc 24 a8 00 00 00 	cmp    DWORD PTR [esp+0xa8],0x0
  bed4d9:	00 
  bed4da:	c7 44 24 40 00 00 00 	mov    DWORD PTR [esp+0x40],0x0
  bed4e1:	00 
  bed4e2:	0f 86 22 04 00 00    	jbe    0xbed90a
  bed4e8:	0f 59 eb             	mulps  xmm5,xmm3
  bed4eb:	0f 29 ac 24 e0 01 00 	movaps XMMWORD PTR [esp+0x1e0],xmm5
  bed4f2:	00 
  bed4f3:	eb 18                	jmp    0xbed50d
  bed4f5:	eb 09                	jmp    0xbed500
  bed4f7:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  bed4fe:	8b ff                	mov    edi,edi
  bed500:	0f 28 ac 24 e0 01 00 	movaps xmm5,XMMWORD PTR [esp+0x1e0]
  bed507:	00 
  bed508:	0f 28 5c 24 20       	movaps xmm3,XMMWORD PTR [esp+0x20]
  bed50d:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  bed511:	db 44 24 40          	fild   DWORD PTR [esp+0x40]
  bed515:	85 c9                	test   ecx,ecx
  bed517:	7d 06                	jge    0xbed51f
  bed519:	d8 05 48 99 f9 00    	fadd   DWORD PTR ds:0xf99948
  bed51f:	d9 5c 24 54          	fstp   DWORD PTR [esp+0x54]
  bed523:	51                   	push   ecx
  bed524:	f3 0f 10 44 24 58    	movss  xmm0,DWORD PTR [esp+0x58]
  bed52a:	d9 ee                	fldz
  bed52c:	d9 1c 24             	fstp   DWORD PTR [esp]
  bed52f:	8d 94 24 8c 00 00 00 	lea    edx,[esp+0x8c]
  bed536:	6a 00                	push   0x0
  bed538:	57                   	push   edi
  bed539:	52                   	push   edx
  bed53a:	8d 44 24 68          	lea    eax,[esp+0x68]
  bed53e:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  bed542:	0f 59 c3             	mulps  xmm0,xmm3
  bed545:	0f 58 84 24 90 01 00 	addps  xmm0,XMMWORD PTR [esp+0x190]
  bed54c:	00 
  bed54d:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [esp+0x110],xmm0
  bed554:	00 
  bed555:	0f 58 c5             	addps  xmm0,xmm5
  bed558:	0f 29 84 24 d0 01 00 	movaps XMMWORD PTR [esp+0x1d0],xmm0
  bed55f:	00 
  bed560:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [esp+0x100],xmm0
  bed567:	00 
  bed568:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm0
  bed56f:	00 
  bed570:	f3 0f 10 84 24 d0 01 	movss  xmm0,DWORD PTR [esp+0x1d0]
  bed577:	00 00 
  bed579:	50                   	push   eax
  bed57a:	f3 0f 11 84 24 9c 00 	movss  DWORD PTR [esp+0x9c],xmm0
  bed581:	00 00 
  bed583:	f3 0f 10 84 24 fc 00 	movss  xmm0,DWORD PTR [esp+0xfc]
  bed58a:	00 00 
  bed58c:	56                   	push   esi
  bed58d:	f3 0f 11 84 24 a4 00 	movss  DWORD PTR [esp+0xa4],xmm0
  bed594:	00 00 
  bed596:	e8 95 1d fb ff       	call   0xb9f330
  bed59b:	83 c4 18             	add    esp,0x18
  bed59e:	84 c0                	test   al,al
  bed5a0:	0f 85 49 03 00 00    	jne    0xbed8ef
  bed5a6:	d9 ee                	fldz
  bed5a8:	51                   	push   ecx
  bed5a9:	d9 1c 24             	fstp   DWORD PTR [esp]
  bed5ac:	8d 8c 24 8c 00 00 00 	lea    ecx,[esp+0x8c]
  bed5b3:	6a 00                	push   0x0
  bed5b5:	57                   	push   edi
  bed5b6:	51                   	push   ecx
  bed5b7:	8d 54 24 68          	lea    edx,[esp+0x68]
  bed5bb:	52                   	push   edx
  bed5bc:	56                   	push   esi
  bed5bd:	e8 3e 03 fb ff       	call   0xb9d900
  bed5c2:	83 c4 18             	add    esp,0x18
  bed5c5:	84 c0                	test   al,al
  bed5c7:	0f 85 22 03 00 00    	jne    0xbed8ef
  bed5cd:	f6 05 f0 d5 1e 01 01 	test   BYTE PTR ds:0x11ed5f0,0x1
  bed5d4:	bf 01 00 00 00       	mov    edi,0x1
  bed5d9:	75 38                	jne    0xbed613
  bed5db:	09 3d f0 d5 1e 01    	or     DWORD PTR ds:0x11ed5f0,edi
  bed5e1:	68 88 31 07 01       	push   0x1073188
  bed5e6:	e8 35 2a be ff       	call   0x7d0020
  bed5eb:	50                   	push   eax
  bed5ec:	e8 af 28 be ff       	call   0x7cfea0
  bed5f1:	83 c4 08             	add    esp,0x8
  bed5f4:	a3 e0 d5 1e 01       	mov    ds:0x11ed5e0,eax
  bed5f9:	c7 05 e4 d5 1e 01 00 	mov    DWORD PTR ds:0x11ed5e4,0x0
  bed600:	00 00 00 
  bed603:	c7 05 e8 d5 1e 01 33 	mov    DWORD PTR ds:0x11ed5e8,0x1661233
  bed60a:	12 66 01 
  bed60d:	89 3d ec d5 1e 01    	mov    DWORD PTR ds:0x11ed5ec,edi
  bed613:	f6 05 f0 d5 1e 01 02 	test   BYTE PTR ds:0x11ed5f0,0x2
  bed61a:	75 39                	jne    0xbed655
  bed61c:	83 0d f0 d5 1e 01 02 	or     DWORD PTR ds:0x11ed5f0,0x2
  bed623:	68 64 31 07 01       	push   0x1073164
  bed628:	e8 f3 29 be ff       	call   0x7d0020
  bed62d:	50                   	push   eax
  bed62e:	e8 6d 28 be ff       	call   0x7cfea0
  bed633:	83 c4 08             	add    esp,0x8
  bed636:	a3 d0 d5 1e 01       	mov    ds:0x11ed5d0,eax
  bed63b:	c7 05 d4 d5 1e 01 00 	mov    DWORD PTR ds:0x11ed5d4,0x0
  bed642:	00 00 00 
  bed645:	c7 05 d8 d5 1e 01 33 	mov    DWORD PTR ds:0x11ed5d8,0x1661233
  bed64c:	12 66 01 
  bed64f:	89 3d dc d5 1e 01    	mov    DWORD PTR ds:0x11ed5dc,edi
  bed655:	8b 06                	mov    eax,DWORD PTR [esi]
  bed657:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  bed65a:	8b ce                	mov    ecx,esi
  bed65c:	ff d2                	call   edx
  bed65e:	84 c0                	test   al,al
  bed660:	bf d0 d5 1e 01       	mov    edi,0x11ed5d0
  bed665:	75 05                	jne    0xbed66c
  bed667:	bf e0 d5 1e 01       	mov    edi,0x11ed5e0
  bed66c:	6a 00                	push   0x0
  bed66e:	6a 00                	push   0x0
  bed670:	6a 00                	push   0x0
  bed672:	6a 00                	push   0x0
  bed674:	68 34 31 07 01       	push   0x1073134
  bed679:	6a 00                	push   0x0
  bed67b:	6a 10                	push   0x10
  bed67d:	68 d0 02 00 00       	push   0x2d0
  bed682:	e8 99 6e 8f ff       	call   0x4e4520
  bed687:	83 c4 20             	add    esp,0x20
  bed68a:	85 c0                	test   eax,eax
  bed68c:	74 0f                	je     0xbed69d
  bed68e:	6a 00                	push   0x0
  bed690:	6a 00                	push   0x0
  bed692:	8b c8                	mov    ecx,eax
  bed694:	e8 07 83 b0 ff       	call   0x6f59a0
  bed699:	8b f0                	mov    esi,eax
  bed69b:	eb 02                	jmp    0xbed69f
  bed69d:	33 f6                	xor    esi,esi
  bed69f:	85 f6                	test   esi,esi
  bed6a1:	89 74 24 14          	mov    DWORD PTR [esp+0x14],esi
  bed6a5:	74 08                	je     0xbed6af
  bed6a7:	8b 06                	mov    eax,DWORD PTR [esi]
  bed6a9:	8b 10                	mov    edx,DWORD PTR [eax]
  bed6ab:	8b ce                	mov    ecx,esi
  bed6ad:	ff d2                	call   edx
  bed6af:	6a 00                	push   0x0
  bed6b1:	6a 00                	push   0x0
  bed6b3:	6a 00                	push   0x0
  bed6b5:	57                   	push   edi
  bed6b6:	8b ce                	mov    ecx,esi
  bed6b8:	e8 33 70 b0 ff       	call   0x6f46f0
  bed6bd:	8b 06                	mov    eax,DWORD PTR [esi]
  bed6bf:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  bed6c2:	68 80 00 00 40       	push   0x40000080
  bed6c7:	68 80 f0 ff 7f       	push   0x7ffff080
  bed6cc:	8b ce                	mov    ecx,esi
  bed6ce:	ff d2                	call   edx
  bed6d0:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  bed6d3:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
  bed6d6:	8b 16                	mov    edx,DWORD PTR [esi]
  bed6d8:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
  bed6db:	8b 52 4c             	mov    edx,DWORD PTR [edx+0x4c]
  bed6de:	51                   	push   ecx
  bed6df:	50                   	push   eax
  bed6e0:	8b ce                	mov    ecx,esi
  bed6e2:	ff d2                	call   edx
  bed6e4:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  bed6e8:	8b 06                	mov    eax,DWORD PTR [esi]
  bed6ea:	8b 50 50             	mov    edx,DWORD PTR [eax+0x50]
  bed6ed:	83 c7 01             	add    edi,0x1
  bed6f0:	57                   	push   edi
  bed6f1:	8b ce                	mov    ecx,esi
  bed6f3:	ff d2                	call   edx
  bed6f5:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
  bed6f8:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  bed6fb:	8b 10                	mov    edx,DWORD PTR [eax]
  bed6fd:	83 c1 08             	add    ecx,0x8
  bed700:	57                   	push   edi
  bed701:	ff d2                	call   edx
  bed703:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  bed707:	50                   	push   eax
  bed708:	56                   	push   esi
  bed709:	e8 d2 ab af ff       	call   0x6e82e0
  bed70e:	0f 28 8c 24 00 01 00 	movaps xmm1,XMMWORD PTR [esp+0x100]
  bed715:	00 
  bed716:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  bed719:	0f 28 90 f0 01 00 00 	movaps xmm2,XMMWORD PTR [eax+0x1f0]
  bed720:	0f 28 98 00 02 00 00 	movaps xmm3,XMMWORD PTR [eax+0x200]
  bed727:	05 f0 01 00 00       	add    eax,0x1f0
  bed72c:	0f 28 c1             	movaps xmm0,xmm1
  bed72f:	0f c6 c1 00          	shufps xmm0,xmm1,0x0
  bed733:	0f 59 c2             	mulps  xmm0,xmm2
  bed736:	0f 28 50 30          	movaps xmm2,XMMWORD PTR [eax+0x30]
  bed73a:	0f 58 c2             	addps  xmm0,xmm2
  bed73d:	0f 28 d1             	movaps xmm2,xmm1
  bed740:	0f c6 d1 55          	shufps xmm2,xmm1,0x55
  bed744:	0f 59 d3             	mulps  xmm2,xmm3
  bed747:	0f 58 c2             	addps  xmm0,xmm2
  bed74a:	0f 28 50 20          	movaps xmm2,XMMWORD PTR [eax+0x20]
  bed74e:	0f c6 c9 aa          	shufps xmm1,xmm1,0xaa
  bed752:	0f 59 ca             	mulps  xmm1,xmm2
  bed755:	0f 28 94 24 60 01 00 	movaps xmm2,XMMWORD PTR [esp+0x160]
  bed75c:	00 
  bed75d:	0f 29 94 24 30 02 00 	movaps XMMWORD PTR [esp+0x230],xmm2
  bed764:	00 
  bed765:	0f 28 94 24 90 02 00 	movaps xmm2,XMMWORD PTR [esp+0x290]
  bed76c:	00 
  bed76d:	0f 58 c8             	addps  xmm1,xmm0
  bed770:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  bed777:	00 
  bed778:	0f 29 8c 24 40 01 00 	movaps XMMWORD PTR [esp+0x140],xmm1
  bed77f:	00 
  bed780:	0f 29 94 24 40 02 00 	movaps XMMWORD PTR [esp+0x240],xmm2
  bed787:	00 
  bed788:	0f 28 94 24 30 01 00 	movaps xmm2,XMMWORD PTR [esp+0x130]
  bed78f:	00 
  bed790:	f3 0f 11 84 24 4c 01 	movss  DWORD PTR [esp+0x14c],xmm0
  bed797:	00 00 
  bed799:	0f 28 84 24 40 01 00 	movaps xmm0,XMMWORD PTR [esp+0x140]
  bed7a0:	00 
  bed7a1:	0f 29 94 24 50 02 00 	movaps XMMWORD PTR [esp+0x250],xmm2
  bed7a8:	00 
  bed7a9:	0f 29 84 24 60 02 00 	movaps XMMWORD PTR [esp+0x260],xmm0
  bed7b0:	00 
  bed7b1:	8b 06                	mov    eax,DWORD PTR [esi]
  bed7b3:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  bed7b6:	8d 8c 24 30 02 00 00 	lea    ecx,[esp+0x230]
  bed7bd:	51                   	push   ecx
  bed7be:	8b ce                	mov    ecx,esi
  bed7c0:	ff d2                	call   edx
  bed7c2:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  bed7c6:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  bed7c9:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  bed7cc:	73 16                	jae    0xbed7e4
  bed7ce:	85 c0                	test   eax,eax
  bed7d0:	8d 50 04             	lea    edx,[eax+0x4]
  bed7d3:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  bed7d6:	74 17                	je     0xbed7ef
  bed7d8:	89 30                	mov    DWORD PTR [eax],esi
  bed7da:	8b 06                	mov    eax,DWORD PTR [esi]
  bed7dc:	8b 10                	mov    edx,DWORD PTR [eax]
  bed7de:	8b ce                	mov    ecx,esi
  bed7e0:	ff d2                	call   edx
  bed7e2:	eb 0b                	jmp    0xbed7ef
  bed7e4:	8d 54 24 14          	lea    edx,[esp+0x14]
  bed7e8:	52                   	push   edx
  bed7e9:	50                   	push   eax
  bed7ea:	e8 e1 82 07 00       	call   0xc65ad0
  bed7ef:	f3 0f 10 05 a0 4d 18 	movss  xmm0,DWORD PTR ds:0x1184da0
  bed7f6:	01 
  bed7f7:	0f 2e 05 cc 4c 0f 01 	ucomiss xmm0,DWORD PTR ds:0x10f4ccc
  bed7fe:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  bed802:	9f                   	lahf
  bed803:	f6 c4 44             	test   ah,0x44
  bed806:	0f 8b cf 00 00 00    	jnp    0xbed8db
  bed80c:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  bed810:	e8 4b d2 90 ff       	call   0x4faa60
  bed815:	d9 05 98 4d 18 01    	fld    DWORD PTR ds:0x1184d98
  bed81b:	d9 05 94 4d 18 01    	fld    DWORD PTR ds:0x1184d94
  bed821:	f3 0f 10 05 9c 4d 18 	movss  xmm0,DWORD PTR ds:0x1184d9c
  bed828:	01 
  bed829:	6a 00                	push   0x0
  bed82b:	dc e9                	fsub   st(1),st
  bed82d:	6a 00                	push   0x0
  bed82f:	d9 c9                	fxch   st(1)
  bed831:	6a 00                	push   0x0
  bed833:	6a 00                	push   0x0
  bed835:	de ca                	fmulp  st(2),st
  bed837:	68 80 b0 ff 00       	push   0xffb080
  bed83c:	6a 00                	push   0x0
  bed83e:	de c1                	faddp  st(1),st
  bed840:	6a 04                	push   0x4
  bed842:	6a 28                	push   0x28
  bed844:	f3 0f 11 84 24 dc 00 	movss  DWORD PTR [esp+0xdc],xmm0
  bed84b:	00 00 
  bed84d:	d9 9c 24 d8 00 00 00 	fstp   DWORD PTR [esp+0xd8]
  bed854:	e8 c7 6c 8f ff       	call   0x4e4520
  bed859:	83 c4 20             	add    esp,0x20
  bed85c:	85 c0                	test   eax,eax
  bed85e:	0f 84 c4 01 00 00    	je     0xbeda28
  bed864:	d9 05 90 d5 1e 01    	fld    DWORD PTR ds:0x11ed590
  bed86a:	51                   	push   ecx
  bed86b:	8d 8c 24 bc 00 00 00 	lea    ecx,[esp+0xbc]
  bed872:	d9 1c 24             	fstp   DWORD PTR [esp]
  bed875:	51                   	push   ecx
  bed876:	8b c8                	mov    ecx,eax
  bed878:	e8 93 02 af ff       	call   0x6ddb10
  bed87d:	8b f8                	mov    edi,eax
  bed87f:	85 ff                	test   edi,edi
  bed881:	74 08                	je     0xbed88b
  bed883:	8b 17                	mov    edx,DWORD PTR [edi]
  bed885:	8b 02                	mov    eax,DWORD PTR [edx]
  bed887:	8b cf                	mov    ecx,edi
  bed889:	ff d0                	call   eax
  bed88b:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  bed88f:	51                   	push   ecx
  bed890:	8d 94 24 f4 00 00 00 	lea    edx,[esp+0xf4]
  bed897:	52                   	push   edx
  bed898:	8b cb                	mov    ecx,ebx
  bed89a:	e8 31 f6 ff ff       	call   0xbeced0
  bed89f:	51                   	push   ecx
  bed8a0:	8b cf                	mov    ecx,edi
  bed8a2:	d9 1c 24             	fstp   DWORD PTR [esp]
  bed8a5:	e8 d6 10 df ff       	call   0x9de980
  bed8aa:	8b 06                	mov    eax,DWORD PTR [esi]
  bed8ac:	8b 90 80 00 00 00    	mov    edx,DWORD PTR [eax+0x80]
  bed8b2:	68 34 80 ff 00       	push   0xff8034
  bed8b7:	57                   	push   edi
  bed8b8:	8b ce                	mov    ecx,esi
  bed8ba:	ff d2                	call   edx
  bed8bc:	8d 8e 10 02 00 00    	lea    ecx,[esi+0x210]
  bed8c2:	e8 39 f3 ae ff       	call   0x6dcc00
  bed8c7:	8b ce                	mov    ecx,esi
  bed8c9:	e8 22 d1 b0 ff       	call   0x6fa9f0
  bed8ce:	85 ff                	test   edi,edi
  bed8d0:	74 09                	je     0xbed8db
  bed8d2:	8b 07                	mov    eax,DWORD PTR [edi]
  bed8d4:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  bed8d7:	8b cf                	mov    ecx,edi
  bed8d9:	ff d2                	call   edx
  bed8db:	85 f6                	test   esi,esi
  bed8dd:	74 09                	je     0xbed8e8
  bed8df:	8b 06                	mov    eax,DWORD PTR [esi]
  bed8e1:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  bed8e4:	8b ce                	mov    ecx,esi
  bed8e6:	ff d2                	call   edx
  bed8e8:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  bed8ec:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  bed8ef:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  bed8f3:	83 c0 01             	add    eax,0x1
  bed8f6:	3b 84 24 a8 00 00 00 	cmp    eax,DWORD PTR [esp+0xa8]
  bed8fd:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  bed901:	0f 82 f9 fb ff ff    	jb     0xbed500
  bed907:	0f 57 d2             	xorps  xmm2,xmm2
  bed90a:	8b 44 24 3c          	mov    eax,DWORD PTR [esp+0x3c]
  bed90e:	f3 0f 10 1d f8 98 f9 	movss  xmm3,DWORD PTR ds:0xf998f8
  bed915:	00 
  bed916:	83 c0 18             	add    eax,0x18
  bed919:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  bed91d:	83 c0 fc             	add    eax,0xfffffffc
  bed920:	3b 44 24 38          	cmp    eax,DWORD PTR [esp+0x38]
  bed924:	0f 85 66 f9 ff ff    	jne    0xbed290
  bed92a:	8b 4c 24 68          	mov    ecx,DWORD PTR [esp+0x68]
  bed92e:	8b 44 24 6c          	mov    eax,DWORD PTR [esp+0x6c]
  bed932:	3b c8                	cmp    ecx,eax
  bed934:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  bed938:	89 44 24 38          	mov    DWORD PTR [esp+0x38],eax
  bed93c:	0f 84 56 03 00 00    	je     0xbedc98
  bed942:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  bed948:	f3 0f 11 54 24 28    	movss  DWORD PTR [esp+0x28],xmm2
  bed94e:	f3 0f 11 54 24 24    	movss  DWORD PTR [esp+0x24],xmm2
  bed954:	f3 0f 11 5c 24 20    	movss  DWORD PTR [esp+0x20],xmm3
  bed95a:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  bed95f:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  bed965:	f3 0f 11 54 24 28    	movss  DWORD PTR [esp+0x28],xmm2
  bed96b:	f3 0f 11 5c 24 24    	movss  DWORD PTR [esp+0x24],xmm3
  bed971:	f3 0f 11 54 24 20    	movss  DWORD PTR [esp+0x20],xmm2
  bed977:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [esp+0xf0],xmm0
  bed97e:	00 
  bed97f:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  bed984:	f3 0f 11 54 24 2c    	movss  DWORD PTR [esp+0x2c],xmm2
  bed98a:	f3 0f 11 5c 24 28    	movss  DWORD PTR [esp+0x28],xmm3
  bed990:	f3 0f 11 54 24 24    	movss  DWORD PTR [esp+0x24],xmm2
  bed996:	f3 0f 11 54 24 20    	movss  DWORD PTR [esp+0x20],xmm2
  bed99c:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [esp+0x100],xmm0
  bed9a3:	00 
  bed9a4:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  bed9a9:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [esp+0xe0],xmm0
  bed9b0:	00 
  bed9b1:	f6 05 f0 d5 1e 01 04 	test   BYTE PTR ds:0x11ed5f0,0x4
  bed9b8:	75 3d                	jne    0xbed9f7
  bed9ba:	83 0d f0 d5 1e 01 04 	or     DWORD PTR ds:0x11ed5f0,0x4
  bed9c1:	68 10 31 07 01       	push   0x1073110
  bed9c6:	e8 55 26 be ff       	call   0x7d0020
  bed9cb:	50                   	push   eax
  bed9cc:	e8 cf 24 be ff       	call   0x7cfea0
  bed9d1:	83 c4 08             	add    esp,0x8
  bed9d4:	a3 c0 d5 1e 01       	mov    ds:0x11ed5c0,eax
  bed9d9:	c7 05 c4 d5 1e 01 00 	mov    DWORD PTR ds:0x11ed5c4,0x0
  bed9e0:	00 00 00 
  bed9e3:	c7 05 c8 d5 1e 01 33 	mov    DWORD PTR ds:0x11ed5c8,0x1661233
  bed9ea:	12 66 01 
  bed9ed:	c7 05 cc d5 1e 01 01 	mov    DWORD PTR ds:0x11ed5cc,0x1
  bed9f4:	00 00 00 
  bed9f7:	6a 00                	push   0x0
  bed9f9:	6a 00                	push   0x0
  bed9fb:	6a 00                	push   0x0
  bed9fd:	6a 00                	push   0x0
  bed9ff:	68 34 31 07 01       	push   0x1073134
  beda04:	6a 00                	push   0x0
  beda06:	6a 10                	push   0x10
  beda08:	68 d0 02 00 00       	push   0x2d0
  beda0d:	e8 0e 6b 8f ff       	call   0x4e4520
  beda12:	83 c4 20             	add    esp,0x20
  beda15:	85 c0                	test   eax,eax
  beda17:	74 16                	je     0xbeda2f
  beda19:	6a 00                	push   0x0
  beda1b:	6a 00                	push   0x0
  beda1d:	8b c8                	mov    ecx,eax
  beda1f:	e8 7c 7f b0 ff       	call   0x6f59a0
  beda24:	8b f0                	mov    esi,eax
  beda26:	eb 09                	jmp    0xbeda31
  beda28:	33 ff                	xor    edi,edi
  beda2a:	e9 5c fe ff ff       	jmp    0xbed88b
  beda2f:	33 f6                	xor    esi,esi
  beda31:	85 f6                	test   esi,esi
  beda33:	8b fe                	mov    edi,esi
  beda35:	89 7c 24 4c          	mov    DWORD PTR [esp+0x4c],edi
  beda39:	74 08                	je     0xbeda43
  beda3b:	8b 06                	mov    eax,DWORD PTR [esi]
  beda3d:	8b 10                	mov    edx,DWORD PTR [eax]
  beda3f:	8b ce                	mov    ecx,esi
  beda41:	ff d2                	call   edx
  beda43:	6a 00                	push   0x0
  beda45:	6a 00                	push   0x0
  beda47:	6a 00                	push   0x0
  beda49:	68 c0 d5 1e 01       	push   0x11ed5c0
  beda4e:	8b ce                	mov    ecx,esi
  beda50:	e8 9b 6c b0 ff       	call   0x6f46f0
  beda55:	8b 06                	mov    eax,DWORD PTR [esi]
  beda57:	8b 50 34             	mov    edx,DWORD PTR [eax+0x34]
  beda5a:	68 80 00 00 40       	push   0x40000080
  beda5f:	68 80 f0 ff 7f       	push   0x7ffff080
  beda64:	8b ce                	mov    ecx,esi
  beda66:	ff d2                	call   edx
  beda68:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  beda6b:	8b 48 14             	mov    ecx,DWORD PTR [eax+0x14]
  beda6e:	8b 16                	mov    edx,DWORD PTR [esi]
  beda70:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
  beda73:	8b 52 4c             	mov    edx,DWORD PTR [edx+0x4c]
  beda76:	51                   	push   ecx
  beda77:	50                   	push   eax
  beda78:	8b ce                	mov    ecx,esi
  beda7a:	ff d2                	call   edx
  beda7c:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  beda80:	8b 16                	mov    edx,DWORD PTR [esi]
  beda82:	83 c0 01             	add    eax,0x1
  beda85:	50                   	push   eax
  beda86:	8b 42 50             	mov    eax,DWORD PTR [edx+0x50]
  beda89:	8b ce                	mov    ecx,esi
  beda8b:	ff d0                	call   eax
  beda8d:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  beda90:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  beda93:	8d 48 08             	lea    ecx,[eax+0x8]
  beda96:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  beda9a:	83 c0 01             	add    eax,0x1
  beda9d:	50                   	push   eax
  beda9e:	8b 02                	mov    eax,DWORD PTR [edx]
  bedaa0:	ff d0                	call   eax
  bedaa2:	8b 4c 24 48          	mov    ecx,DWORD PTR [esp+0x48]
  bedaa6:	50                   	push   eax
  bedaa7:	56                   	push   esi
  bedaa8:	e8 33 a8 af ff       	call   0x6e82e0
  bedaad:	8b 43 28             	mov    eax,DWORD PTR [ebx+0x28]
  bedab0:	0f 28 90 f0 01 00 00 	movaps xmm2,XMMWORD PTR [eax+0x1f0]
  bedab7:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  bedabb:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  bedabe:	0f 28 98 00 02 00 00 	movaps xmm3,XMMWORD PTR [eax+0x200]
  bedac5:	05 f0 01 00 00       	add    eax,0x1f0
  bedaca:	0f 28 c8             	movaps xmm1,xmm0
  bedacd:	0f c6 c8 00          	shufps xmm1,xmm0,0x0
  bedad1:	0f 59 ca             	mulps  xmm1,xmm2
  bedad4:	0f 28 50 30          	movaps xmm2,XMMWORD PTR [eax+0x30]
  bedad8:	0f 58 ca             	addps  xmm1,xmm2
  bedadb:	0f 28 d0             	movaps xmm2,xmm0
  bedade:	0f c6 d0 55          	shufps xmm2,xmm0,0x55
  bedae2:	0f 59 d3             	mulps  xmm2,xmm3
  bedae5:	0f 58 ca             	addps  xmm1,xmm2
  bedae8:	0f 28 50 20          	movaps xmm2,XMMWORD PTR [eax+0x20]
  bedaec:	0f c6 c0 aa          	shufps xmm0,xmm0,0xaa
  bedaf0:	0f 59 c2             	mulps  xmm0,xmm2
  bedaf3:	0f 28 94 24 f0 00 00 	movaps xmm2,XMMWORD PTR [esp+0xf0]
  bedafa:	00 
  bedafb:	0f 58 c1             	addps  xmm0,xmm1
  bedafe:	0f 29 94 24 f0 01 00 	movaps XMMWORD PTR [esp+0x1f0],xmm2
  bedb05:	00 
  bedb06:	0f 28 94 24 00 01 00 	movaps xmm2,XMMWORD PTR [esp+0x100]
  bedb0d:	00 
  bedb0e:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [esp+0x120],xmm0
  bedb15:	00 
  bedb16:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  bedb1d:	00 
  bedb1e:	0f 29 94 24 00 02 00 	movaps XMMWORD PTR [esp+0x200],xmm2
  bedb25:	00 
  bedb26:	0f 28 94 24 e0 00 00 	movaps xmm2,XMMWORD PTR [esp+0xe0]
  bedb2d:	00 
  bedb2e:	f3 0f 11 84 24 2c 01 	movss  DWORD PTR [esp+0x12c],xmm0
  bedb35:	00 00 
  bedb37:	0f 28 84 24 20 01 00 	movaps xmm0,XMMWORD PTR [esp+0x120]
  bedb3e:	00 
  bedb3f:	0f 29 94 24 10 02 00 	movaps XMMWORD PTR [esp+0x210],xmm2
  bedb46:	00 
  bedb47:	0f 29 84 24 20 02 00 	movaps XMMWORD PTR [esp+0x220],xmm0
  bedb4e:	00 
  bedb4f:	8b 16                	mov    edx,DWORD PTR [esi]
  bedb51:	8b 52 20             	mov    edx,DWORD PTR [edx+0x20]
  bedb54:	8d 84 24 f0 01 00 00 	lea    eax,[esp+0x1f0]
  bedb5b:	50                   	push   eax
  bedb5c:	8b ce                	mov    ecx,esi
  bedb5e:	ff d2                	call   edx
  bedb60:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  bedb64:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  bedb67:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  bedb6a:	73 16                	jae    0xbedb82
  bedb6c:	85 c0                	test   eax,eax
  bedb6e:	8d 50 04             	lea    edx,[eax+0x4]
  bedb71:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  bedb74:	74 1b                	je     0xbedb91
  bedb76:	89 30                	mov    DWORD PTR [eax],esi
  bedb78:	8b 06                	mov    eax,DWORD PTR [esi]
  bedb7a:	8b 10                	mov    edx,DWORD PTR [eax]
  bedb7c:	8b ce                	mov    ecx,esi
  bedb7e:	ff d2                	call   edx
  bedb80:	eb 0f                	jmp    0xbedb91
  bedb82:	8d 54 24 4c          	lea    edx,[esp+0x4c]
  bedb86:	52                   	push   edx
  bedb87:	50                   	push   eax
  bedb88:	e8 43 7f 07 00       	call   0xc65ad0
  bedb8d:	8b 7c 24 4c          	mov    edi,DWORD PTR [esp+0x4c]
  bedb91:	f3 0f 10 05 a0 4d 18 	movss  xmm0,DWORD PTR ds:0x1184da0
  bedb98:	01 
  bedb99:	0f 2e 05 cc 4c 0f 01 	ucomiss xmm0,DWORD PTR ds:0x10f4ccc
  bedba0:	9f                   	lahf
  bedba1:	f6 c4 44             	test   ah,0x44
  bedba4:	0f 8b cc 00 00 00    	jnp    0xbedc76
  bedbaa:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  bedbae:	e8 ad ce 90 ff       	call   0x4faa60
  bedbb3:	d9 05 98 4d 18 01    	fld    DWORD PTR ds:0x1184d98
  bedbb9:	d9 05 94 4d 18 01    	fld    DWORD PTR ds:0x1184d94
  bedbbf:	f3 0f 10 05 9c 4d 18 	movss  xmm0,DWORD PTR ds:0x1184d9c
  bedbc6:	01 
  bedbc7:	6a 00                	push   0x0
  bedbc9:	dc e9                	fsub   st(1),st
  bedbcb:	6a 00                	push   0x0
  bedbcd:	d9 c9                	fxch   st(1)
  bedbcf:	6a 00                	push   0x0
  bedbd1:	6a 00                	push   0x0
  bedbd3:	de ca                	fmulp  st(2),st
  bedbd5:	68 80 b0 ff 00       	push   0xffb080
  bedbda:	6a 00                	push   0x0
  bedbdc:	de c1                	faddp  st(1),st
  bedbde:	6a 04                	push   0x4
  bedbe0:	6a 28                	push   0x28
  bedbe2:	f3 0f 11 84 24 b4 00 	movss  DWORD PTR [esp+0xb4],xmm0
  bedbe9:	00 00 
  bedbeb:	d9 9c 24 b0 00 00 00 	fstp   DWORD PTR [esp+0xb0]
  bedbf2:	e8 29 69 8f ff       	call   0x4e4520
  bedbf7:	83 c4 20             	add    esp,0x20
  bedbfa:	85 c0                	test   eax,eax
  bedbfc:	0f 84 d2 00 00 00    	je     0xbedcd4
  bedc02:	d9 05 90 d5 1e 01    	fld    DWORD PTR ds:0x11ed590
  bedc08:	51                   	push   ecx
  bedc09:	8d 8c 24 94 00 00 00 	lea    ecx,[esp+0x94]
  bedc10:	d9 1c 24             	fstp   DWORD PTR [esp]
  bedc13:	51                   	push   ecx
  bedc14:	8b c8                	mov    ecx,eax
  bedc16:	e8 f5 fe ae ff       	call   0x6ddb10
  bedc1b:	8b f0                	mov    esi,eax
  bedc1d:	85 f6                	test   esi,esi
  bedc1f:	74 08                	je     0xbedc29
  bedc21:	8b 16                	mov    edx,DWORD PTR [esi]
  bedc23:	8b 02                	mov    eax,DWORD PTR [edx]
  bedc25:	8b ce                	mov    ecx,esi
  bedc27:	ff d0                	call   eax
  bedc29:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  bedc2d:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  bedc31:	51                   	push   ecx
  bedc32:	52                   	push   edx
  bedc33:	8b cb                	mov    ecx,ebx
  bedc35:	e8 96 f2 ff ff       	call   0xbeced0
  bedc3a:	51                   	push   ecx
  bedc3b:	8b ce                	mov    ecx,esi
  bedc3d:	d9 1c 24             	fstp   DWORD PTR [esp]
  bedc40:	e8 3b 0d df ff       	call   0x9de980
  bedc45:	8b 07                	mov    eax,DWORD PTR [edi]
  bedc47:	8b 90 80 00 00 00    	mov    edx,DWORD PTR [eax+0x80]
  bedc4d:	68 34 80 ff 00       	push   0xff8034
  bedc52:	56                   	push   esi
  bedc53:	8b cf                	mov    ecx,edi
  bedc55:	ff d2                	call   edx
  bedc57:	8d 8f 10 02 00 00    	lea    ecx,[edi+0x210]
  bedc5d:	e8 9e ef ae ff       	call   0x6dcc00
  bedc62:	8b cf                	mov    ecx,edi
  bedc64:	e8 87 cd b0 ff       	call   0x6fa9f0
  bedc69:	85 f6                	test   esi,esi
  bedc6b:	74 09                	je     0xbedc76
  bedc6d:	8b 06                	mov    eax,DWORD PTR [esi]
  bedc6f:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  bedc72:	8b ce                	mov    ecx,esi
  bedc74:	ff d2                	call   edx
  bedc76:	85 ff                	test   edi,edi
  bedc78:	74 09                	je     0xbedc83
  bedc7a:	8b 07                	mov    eax,DWORD PTR [edi]
  bedc7c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  bedc7f:	8b cf                	mov    ecx,edi
  bedc81:	ff d2                	call   edx
  bedc83:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  bedc87:	83 c0 10             	add    eax,0x10
  bedc8a:	3b 44 24 38          	cmp    eax,DWORD PTR [esp+0x38]
  bedc8e:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  bedc92:	0f 85 19 fd ff ff    	jne    0xbed9b1
  bedc98:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  bedc9c:	85 c0                	test   eax,eax
  bedc9e:	74 09                	je     0xbedca9
  bedca0:	50                   	push   eax
  bedca1:	e8 3a 68 8f ff       	call   0x4e44e0
  bedca6:	83 c4 04             	add    esp,0x4
  bedca9:	8b 44 24 68          	mov    eax,DWORD PTR [esp+0x68]
  bedcad:	85 c0                	test   eax,eax
  bedcaf:	74 09                	je     0xbedcba
  bedcb1:	50                   	push   eax
  bedcb2:	e8 29 68 8f ff       	call   0x4e44e0
  bedcb7:	83 c4 04             	add    esp,0x4
  bedcba:	8b 44 24 78          	mov    eax,DWORD PTR [esp+0x78]
  bedcbe:	85 c0                	test   eax,eax
  bedcc0:	74 09                	je     0xbedccb
  bedcc2:	50                   	push   eax
  bedcc3:	e8 18 68 8f ff       	call   0x4e44e0
  bedcc8:	83 c4 04             	add    esp,0x4
  bedccb:	5f                   	pop    edi
  bedccc:	5e                   	pop    esi
  bedccd:	5b                   	pop    ebx
  bedcce:	8b e5                	mov    esp,ebp
  bedcd0:	5d                   	pop    ebp
  bedcd1:	c2 04 00             	ret    0x4
  bedcd4:	33 f6                	xor    esi,esi
  bedcd6:	e9 4e ff ff ff       	jmp    0xbedc29
