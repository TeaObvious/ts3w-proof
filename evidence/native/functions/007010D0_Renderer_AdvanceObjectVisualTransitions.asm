# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007010d0 (Renderer_AdvanceObjectVisualTransitions)
Full Ghidra function-body envelope: 0x007010d0..0x0070168c (exclusive end)
Ghidra body ranges: [[007010d0, 0070168b]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007010d0 <.text+0x3000d0>:
  7010d0:	55                   	push   ebp
  7010d1:	8b ec                	mov    ebp,esp
  7010d3:	83 e4 f0             	and    esp,0xfffffff0
  7010d6:	83 ec 54             	sub    esp,0x54
  7010d9:	53                   	push   ebx
  7010da:	56                   	push   esi
  7010db:	57                   	push   edi
  7010dc:	8b f9                	mov    edi,ecx
  7010de:	83 bf 04 11 00 00 00 	cmp    DWORD PTR [edi+0x1104],0x0
  7010e5:	0f 84 1b 01 00 00    	je     0x701206
  7010eb:	8b b7 f8 10 00 00    	mov    esi,DWORD PTR [edi+0x10f8]
  7010f1:	8d 87 f4 10 00 00    	lea    eax,[edi+0x10f4]
  7010f7:	3b f0                	cmp    esi,eax
  7010f9:	0f 84 07 01 00 00    	je     0x701206
  7010ff:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  701102:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  701105:	8d 54 24 30          	lea    edx,[esp+0x30]
  701109:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  70110d:	52                   	push   edx
  70110e:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  701112:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  701116:	50                   	push   eax
  701117:	8d 4f 04             	lea    ecx,[edi+0x4]
  70111a:	e8 41 cc ff ff       	call   0x6fdd60
  70111f:	8b 44 24 38          	mov    eax,DWORD PTR [esp+0x38]
  701123:	3b 87 28 10 00 00    	cmp    eax,DWORD PTR [edi+0x1028]
  701129:	0f 84 0e 03 00 00    	je     0x70143d
  70112f:	85 c0                	test   eax,eax
  701131:	0f 84 06 03 00 00    	je     0x70143d
  701137:	8d 58 f8             	lea    ebx,[eax-0x8]
  70113a:	85 db                	test   ebx,ebx
  70113c:	0f 84 fb 02 00 00    	je     0x70143d
  701142:	0f 28 4e 60          	movaps xmm1,XMMWORD PTR [esi+0x60]
  701146:	f3 0f 10 45 08       	movss  xmm0,DWORD PTR [ebp+0x8]
  70114b:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  70114f:	0f 58 c1             	addps  xmm0,xmm1
  701152:	0f 29 46 60          	movaps XMMWORD PTR [esi+0x60],xmm0
  701156:	0f 28 46 60          	movaps xmm0,XMMWORD PTR [esi+0x60]
  70115a:	8d 46 20             	lea    eax,[esi+0x20]
  70115d:	0f 57 c9             	xorps  xmm1,xmm1
  701160:	0f 5f c1             	maxps  xmm0,xmm1
  701163:	0f 28 48 30          	movaps xmm1,XMMWORD PTR [eax+0x30]
  701167:	0f 5d c1             	minps  xmm0,xmm1
  70116a:	0f 29 40 40          	movaps XMMWORD PTR [eax+0x40],xmm0
  70116e:	0f 28 40 30          	movaps xmm0,XMMWORD PTR [eax+0x30]
  701172:	0f 28 48 40          	movaps xmm1,XMMWORD PTR [eax+0x40]
  701176:	0f 28 58 10          	movaps xmm3,XMMWORD PTR [eax+0x10]
  70117a:	0f 5e c8             	divps  xmm1,xmm0
  70117d:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  701185:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  701189:	0f 28 d0             	movaps xmm2,xmm0
  70118c:	0f 59 c1             	mulps  xmm0,xmm1
  70118f:	0f 5c d1             	subps  xmm2,xmm1
  701192:	0f 59 d3             	mulps  xmm2,xmm3
  701195:	0f 28 18             	movaps xmm3,XMMWORD PTR [eax]
  701198:	0f 59 d9             	mulps  xmm3,xmm1
  70119b:	0f 28 c8             	movaps xmm1,xmm0
  70119e:	0f c6 c8 0e          	shufps xmm1,xmm0,0xe
  7011a2:	0f 58 c8             	addps  xmm1,xmm0
  7011a5:	0f 28 c1             	movaps xmm0,xmm1
  7011a8:	0f c6 c1 01          	shufps xmm0,xmm1,0x1
  7011ac:	0f 58 c1             	addps  xmm0,xmm1
  7011af:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  7011b3:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  7011b9:	f3 0f 10 05 0c b2 ff 00 	movss  xmm0,DWORD PTR ds:0xffb20c
  7011c1:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  7011c5:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  7011cb:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  7011d1:	0f 2f 44 24 20       	comiss xmm0,DWORD PTR [esp+0x20]
  7011d6:	8d 48 20             	lea    ecx,[eax+0x20]
  7011d9:	0f 58 d3             	addps  xmm2,xmm3
  7011dc:	0f 29 11             	movaps XMMWORD PTR [ecx],xmm2
  7011df:	0f 86 48 02 00 00    	jbe    0x70142d
  7011e5:	51                   	push   ecx
  7011e6:	8b cb                	mov    ecx,ebx
  7011e8:	e8 73 c0 ff ff       	call   0x6fd260
  7011ed:	56                   	push   esi
  7011ee:	e8 3d fe dd ff       	call   0x4e1030
  7011f3:	83 c4 04             	add    esp,0x4
  7011f6:	8b f0                	mov    esi,eax
  7011f8:	8d 87 f4 10 00 00    	lea    eax,[edi+0x10f4]
  7011fe:	3b f0                	cmp    esi,eax
  701200:	0f 85 f9 fe ff ff    	jne    0x7010ff
  701206:	83 bf 20 11 00 00 00 	cmp    DWORD PTR [edi+0x1120],0x0
  70120d:	0f 84 13 01 00 00    	je     0x701326
  701213:	8b b7 14 11 00 00    	mov    esi,DWORD PTR [edi+0x1114]
  701219:	8d 87 10 11 00 00    	lea    eax,[edi+0x1110]
  70121f:	3b f0                	cmp    esi,eax
  701221:	0f 84 ff 00 00 00    	je     0x701326
  701227:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  70122a:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  70122d:	8d 4c 24 38          	lea    ecx,[esp+0x38]
  701231:	89 54 24 38          	mov    DWORD PTR [esp+0x38],edx
  701235:	51                   	push   ecx
  701236:	8d 54 24 44          	lea    edx,[esp+0x44]
  70123a:	52                   	push   edx
  70123b:	8d 4f 04             	lea    ecx,[edi+0x4]
  70123e:	89 44 24 44          	mov    DWORD PTR [esp+0x44],eax
  701242:	e8 19 cb ff ff       	call   0x6fdd60
  701247:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  70124b:	3b 87 28 10 00 00    	cmp    eax,DWORD PTR [edi+0x1028]
  701251:	0f 84 1e 02 00 00    	je     0x701475
  701257:	85 c0                	test   eax,eax
  701259:	0f 84 16 02 00 00    	je     0x701475
  70125f:	8d 48 f8             	lea    ecx,[eax-0x8]
  701262:	85 c9                	test   ecx,ecx
  701264:	0f 84 0b 02 00 00    	je     0x701475
  70126a:	f3 0f 10 45 08       	movss  xmm0,DWORD PTR [ebp+0x8]
  70126f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  701273:	8d 46 28             	lea    eax,[esi+0x28]
  701276:	0f 29 44 24 50       	movaps XMMWORD PTR [esp+0x50],xmm0
  70127b:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  70127f:	f3 0f 58 44 24 50    	addss  xmm0,DWORD PTR [esp+0x50]
  701285:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  701289:	0f 57 c0             	xorps  xmm0,xmm0
  70128c:	0f 2f 00             	comiss xmm0,DWORD PTR [eax]
  70128f:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  701295:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  701299:	77 02                	ja     0x70129d
  70129b:	8b d0                	mov    edx,eax
  70129d:	d9 02                	fld    DWORD PTR [edx]
  70129f:	8d 56 24             	lea    edx,[esi+0x24]
  7012a2:	d9 18                	fstp   DWORD PTR [eax]
  7012a4:	f3 0f 10 00          	movss  xmm0,DWORD PTR [eax]
  7012a8:	0f 2f 02             	comiss xmm0,DWORD PTR [edx]
  7012ab:	8b da                	mov    ebx,edx
  7012ad:	77 02                	ja     0x7012b1
  7012af:	8b d8                	mov    ebx,eax
  7012b1:	f3 0f 10 03          	movss  xmm0,DWORD PTR [ebx]
  7012b5:	f3 0f 10 56 18       	movss  xmm2,DWORD PTR [esi+0x18]
  7012ba:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  7012be:	f3 0f 5e 02          	divss  xmm0,DWORD PTR [edx]
  7012c2:	0f 28 c8             	movaps xmm1,xmm0
  7012c5:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  7012cd:	f3 0f 5c c1          	subss  xmm0,xmm1
  7012d1:	f3 0f 59 46 1c       	mulss  xmm0,DWORD PTR [esi+0x1c]
  7012d6:	f3 0f 11 54 24 30    	movss  DWORD PTR [esp+0x30],xmm2
  7012dc:	f3 0f 59 d1          	mulss  xmm2,xmm1
  7012e0:	f3 0f 58 c2          	addss  xmm0,xmm2
  7012e4:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  7012ea:	f3 0f 11 46 20       	movss  DWORD PTR [esi+0x20],xmm0
  7012ef:	f3 0f 10 05 3c 3a ff 00 	movss  xmm0,DWORD PTR ds:0xff3a3c
  7012f7:	0f 2f c1             	comiss xmm0,xmm1
  7012fa:	51                   	push   ecx
  7012fb:	0f 86 68 01 00 00    	jbe    0x701469
  701301:	d9 44 24 24          	fld    DWORD PTR [esp+0x24]
  701305:	d9 1c 24             	fstp   DWORD PTR [esp]
  701308:	e8 33 b6 ff ff       	call   0x6fc940
  70130d:	56                   	push   esi
  70130e:	e8 1d fd dd ff       	call   0x4e1030
  701313:	83 c4 04             	add    esp,0x4
  701316:	8b f0                	mov    esi,eax
  701318:	8d 87 10 11 00 00    	lea    eax,[edi+0x1110]
  70131e:	3b f0                	cmp    esi,eax
  701320:	0f 85 01 ff ff ff    	jne    0x701227
  701326:	8b 8f d0 10 00 00    	mov    ecx,DWORD PTR [edi+0x10d0]
  70132c:	3b 8f d8 10 00 00    	cmp    ecx,DWORD PTR [edi+0x10d8]
  701332:	75 2e                	jne    0x701362
  701334:	8b 97 d4 10 00 00    	mov    edx,DWORD PTR [edi+0x10d4]
  70133a:	3b 97 dc 10 00 00    	cmp    edx,DWORD PTR [edi+0x10dc]
  701340:	75 20                	jne    0x701362
  701342:	8b 87 e0 10 00 00    	mov    eax,DWORD PTR [edi+0x10e0]
  701348:	3b 87 e8 10 00 00    	cmp    eax,DWORD PTR [edi+0x10e8]
  70134e:	75 12                	jne    0x701362
  701350:	8b 8f e4 10 00 00    	mov    ecx,DWORD PTR [edi+0x10e4]
  701356:	3b 8f ec 10 00 00    	cmp    ecx,DWORD PTR [edi+0x10ec]
  70135c:	0f 84 6f 02 00 00    	je     0x7015d1
  701362:	8b 87 78 10 00 00    	mov    eax,DWORD PTR [edi+0x1078]
  701368:	8b 30                	mov    esi,DWORD PTR [eax]
  70136a:	85 f6                	test   esi,esi
  70136c:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  701370:	75 1c                	jne    0x70138e
  701372:	83 c0 04             	add    eax,0x4
  701375:	39 30                	cmp    DWORD PTR [eax],esi
  701377:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  70137b:	75 0f                	jne    0x70138c
  70137d:	8d 49 00             	lea    ecx,[ecx+0x0]
  701380:	83 c0 04             	add    eax,0x4
  701383:	83 38 00             	cmp    DWORD PTR [eax],0x0
  701386:	74 f8                	je     0x701380
  701388:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  70138c:	8b 30                	mov    esi,DWORD PTR [eax]
  70138e:	8b 97 7c 10 00 00    	mov    edx,DWORD PTR [edi+0x107c]
  701394:	8b 87 78 10 00 00    	mov    eax,DWORD PTR [edi+0x1078]
  70139a:	8b 04 90             	mov    eax,DWORD PTR [eax+edx*4]
  70139d:	3b f0                	cmp    esi,eax
  70139f:	89 44 24 40          	mov    DWORD PTR [esp+0x40],eax
  7013a3:	74 4f                	je     0x7013f4
  7013a5:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  7013a8:	85 c0                	test   eax,eax
  7013aa:	89 44 24 30          	mov    DWORD PTR [esp+0x30],eax
  7013ae:	74 25                	je     0x7013d5
  7013b0:	bb fc ff ff ff       	mov    ebx,0xfffffffc
  7013b5:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  7013b9:	8b 11                	mov    edx,DWORD PTR [ecx]
  7013bb:	8b 02                	mov    eax,DWORD PTR [edx]
  7013bd:	53                   	push   ebx
  7013be:	ff d0                	call   eax
  7013c0:	85 c0                	test   eax,eax
  7013c2:	74 09                	je     0x7013cd
  7013c4:	6a 00                	push   0x0
  7013c6:	8b c8                	mov    ecx,eax
  7013c8:	e8 d3 93 ff ff       	call   0x6fa7a0
  7013cd:	83 c3 01             	add    ebx,0x1
  7013d0:	83 fb 05             	cmp    ebx,0x5
  7013d3:	7e e0                	jle    0x7013b5
  7013d5:	8b 76 10             	mov    esi,DWORD PTR [esi+0x10]
  7013d8:	85 f6                	test   esi,esi
  7013da:	75 12                	jne    0x7013ee
  7013dc:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  7013e0:	8b 70 04             	mov    esi,DWORD PTR [eax+0x4]
  7013e3:	83 c0 04             	add    eax,0x4
  7013e6:	85 f6                	test   esi,esi
  7013e8:	74 f6                	je     0x7013e0
  7013ea:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  7013ee:	3b 74 24 40          	cmp    esi,DWORD PTR [esp+0x40]
  7013f2:	75 b1                	jne    0x7013a5
  7013f4:	80 bf b8 10 00 00 00 	cmp    BYTE PTR [edi+0x10b8],0x0
  7013fb:	c6 44 24 1a 00       	mov    BYTE PTR [esp+0x1a],0x0
  701400:	c6 44 24 1b 00       	mov    BYTE PTR [esp+0x1b],0x0
  701405:	0f 84 96 00 00 00    	je     0x7014a1
  70140b:	8b 8f 7c 10 00 00    	mov    ecx,DWORD PTR [edi+0x107c]
  701411:	8b 97 78 10 00 00    	mov    edx,DWORD PTR [edi+0x1078]
  701417:	8d 04 8a             	lea    eax,[edx+ecx*4]
  70141a:	8b 08                	mov    ecx,DWORD PTR [eax]
  70141c:	89 44 24 3c          	mov    DWORD PTR [esp+0x3c],eax
  701420:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  701424:	8d 44 24 38          	lea    eax,[esp+0x38]
  701428:	e9 8b 00 00 00       	jmp    0x7014b8
  70142d:	50                   	push   eax
  70142e:	8b cb                	mov    ecx,ebx
  701430:	e8 2b be ff ff       	call   0x6fd260
  701435:	53                   	push   ebx
  701436:	8b cf                	mov    ecx,edi
  701438:	e8 23 c8 ff ff       	call   0x6fdc60
  70143d:	83 87 04 11 00 00 ff 	add    DWORD PTR [edi+0x1104],0xffffffff
  701444:	56                   	push   esi
  701445:	e8 e6 fb dd ff       	call   0x4e1030
  70144a:	8d 8f f4 10 00 00    	lea    ecx,[edi+0x10f4]
  701450:	51                   	push   ecx
  701451:	56                   	push   esi
  701452:	8b d8                	mov    ebx,eax
  701454:	e8 d7 fe dd ff       	call   0x4e1330
  701459:	56                   	push   esi
  70145a:	e8 81 30 de ff       	call   0x4e44e0
  70145f:	83 c4 10             	add    esp,0x10
  701462:	8b f3                	mov    esi,ebx
  701464:	e9 8f fd ff ff       	jmp    0x7011f8
  701469:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  70146d:	d9 1c 24             	fstp   DWORD PTR [esp]
  701470:	e8 cb b4 ff ff       	call   0x6fc940
  701475:	83 87 20 11 00 00 ff 	add    DWORD PTR [edi+0x1120],0xffffffff
  70147c:	56                   	push   esi
  70147d:	e8 ae fb dd ff       	call   0x4e1030
  701482:	8b d8                	mov    ebx,eax
  701484:	8d 87 10 11 00 00    	lea    eax,[edi+0x1110]
  70148a:	50                   	push   eax
  70148b:	56                   	push   esi
  70148c:	e8 9f fe dd ff       	call   0x4e1330
  701491:	56                   	push   esi
  701492:	e8 49 30 de ff       	call   0x4e44e0
  701497:	83 c4 10             	add    esp,0x10
  70149a:	8b f3                	mov    esi,ebx
  70149c:	e9 77 fe ff ff       	jmp    0x701318
  7014a1:	8d 97 e8 10 00 00    	lea    edx,[edi+0x10e8]
  7014a7:	52                   	push   edx
  7014a8:	8d 44 24 44          	lea    eax,[esp+0x44]
  7014ac:	50                   	push   eax
  7014ad:	8d 8f 74 10 00 00    	lea    ecx,[edi+0x1074]
  7014b3:	e8 88 21 22 00       	call   0x923640
  7014b8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7014bb:	8b 08                	mov    ecx,DWORD PTR [eax]
  7014bd:	8b 87 7c 10 00 00    	mov    eax,DWORD PTR [edi+0x107c]
  7014c3:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  7014c7:	8b 97 78 10 00 00    	mov    edx,DWORD PTR [edi+0x1078]
  7014cd:	3b 0c 82             	cmp    ecx,DWORD PTR [edx+eax*4]
  7014d0:	74 51                	je     0x701523
  7014d2:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  7014d5:	85 f6                	test   esi,esi
  7014d7:	74 45                	je     0x70151e
  7014d9:	8b 06                	mov    eax,DWORD PTR [esi]
  7014db:	8b 10                	mov    edx,DWORD PTR [eax]
  7014dd:	6a 00                	push   0x0
  7014df:	8b ce                	mov    ecx,esi
  7014e1:	ff d2                	call   edx
  7014e3:	85 c0                	test   eax,eax
  7014e5:	74 10                	je     0x7014f7
  7014e7:	8b c8                	mov    ecx,eax
  7014e9:	e8 d2 90 ff ff       	call   0x6fa5c0
  7014ee:	84 c0                	test   al,al
  7014f0:	74 05                	je     0x7014f7
  7014f2:	c6 44 24 1b 01       	mov    BYTE PTR [esp+0x1b],0x1
  7014f7:	bb fc ff ff ff       	mov    ebx,0xfffffffc
  7014fc:	8d 64 24 00          	lea    esp,[esp+0x0]
  701500:	8b 06                	mov    eax,DWORD PTR [esi]
  701502:	8b 10                	mov    edx,DWORD PTR [eax]
  701504:	53                   	push   ebx
  701505:	8b ce                	mov    ecx,esi
  701507:	ff d2                	call   edx
  701509:	85 c0                	test   eax,eax
  70150b:	74 09                	je     0x701516
  70150d:	6a 01                	push   0x1
  70150f:	8b c8                	mov    ecx,eax
  701511:	e8 8a 92 ff ff       	call   0x6fa7a0
  701516:	83 c3 01             	add    ebx,0x1
  701519:	83 fb 05             	cmp    ebx,0x5
  70151c:	7e e2                	jle    0x701500
  70151e:	c6 44 24 1a 01       	mov    BYTE PTR [esp+0x1a],0x1
  701523:	8d 87 d8 10 00 00    	lea    eax,[edi+0x10d8]
  701529:	50                   	push   eax
  70152a:	8d 44 24 44          	lea    eax,[esp+0x44]
  70152e:	8d b7 74 10 00 00    	lea    esi,[edi+0x1074]
  701534:	50                   	push   eax
  701535:	8b ce                	mov    ecx,esi
  701537:	e8 04 21 22 00       	call   0x923640
  70153c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  70153f:	8b 08                	mov    ecx,DWORD PTR [eax]
  701541:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  701544:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
  701548:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  70154b:	3b 0c 82             	cmp    ecx,DWORD PTR [edx+eax*4]
  70154e:	74 51                	je     0x7015a1
  701550:	8b 59 08             	mov    ebx,DWORD PTR [ecx+0x8]
  701553:	85 db                	test   ebx,ebx
  701555:	74 4a                	je     0x7015a1
  701557:	80 7c 24 1a 00       	cmp    BYTE PTR [esp+0x1a],0x0
  70155c:	74 20                	je     0x70157e
  70155e:	80 7c 24 1b 00       	cmp    BYTE PTR [esp+0x1b],0x0
  701563:	75 19                	jne    0x70157e
  701565:	8b 03                	mov    eax,DWORD PTR [ebx]
  701567:	8b 10                	mov    edx,DWORD PTR [eax]
  701569:	6a 00                	push   0x0
  70156b:	8b cb                	mov    ecx,ebx
  70156d:	ff d2                	call   edx
  70156f:	85 c0                	test   eax,eax
  701571:	74 2e                	je     0x7015a1
  701573:	8b c8                	mov    ecx,eax
  701575:	e8 46 90 ff ff       	call   0x6fa5c0
  70157a:	84 c0                	test   al,al
  70157c:	74 23                	je     0x7015a1
  70157e:	be fc ff ff ff       	mov    esi,0xfffffffc
  701583:	8b 03                	mov    eax,DWORD PTR [ebx]
  701585:	8b 10                	mov    edx,DWORD PTR [eax]
  701587:	56                   	push   esi
  701588:	8b cb                	mov    ecx,ebx
  70158a:	ff d2                	call   edx
  70158c:	85 c0                	test   eax,eax
  70158e:	74 09                	je     0x701599
  701590:	6a 01                	push   0x1
  701592:	8b c8                	mov    ecx,eax
  701594:	e8 07 92 ff ff       	call   0x6fa7a0
  701599:	83 c6 01             	add    esi,0x1
  70159c:	83 fe 05             	cmp    esi,0x5
  70159f:	7e e2                	jle    0x701583
  7015a1:	8b 87 d8 10 00 00    	mov    eax,DWORD PTR [edi+0x10d8]
  7015a7:	8b 8f dc 10 00 00    	mov    ecx,DWORD PTR [edi+0x10dc]
  7015ad:	8b 97 e8 10 00 00    	mov    edx,DWORD PTR [edi+0x10e8]
  7015b3:	89 87 d0 10 00 00    	mov    DWORD PTR [edi+0x10d0],eax
  7015b9:	8b 87 ec 10 00 00    	mov    eax,DWORD PTR [edi+0x10ec]
  7015bf:	89 8f d4 10 00 00    	mov    DWORD PTR [edi+0x10d4],ecx
  7015c5:	89 97 e0 10 00 00    	mov    DWORD PTR [edi+0x10e0],edx
  7015cb:	89 87 e4 10 00 00    	mov    DWORD PTR [edi+0x10e4],eax
  7015d1:	8b b7 74 11 00 00    	mov    esi,DWORD PTR [edi+0x1174]
  7015d7:	8d 87 70 11 00 00    	lea    eax,[edi+0x1170]
  7015dd:	3b f0                	cmp    esi,eax
  7015df:	74 7c                	je     0x70165d
  7015e1:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7015e4:	8b 56 14             	mov    edx,DWORD PTR [esi+0x14]
  7015e7:	89 4c 24 38          	mov    DWORD PTR [esp+0x38],ecx
  7015eb:	8d 44 24 38          	lea    eax,[esp+0x38]
  7015ef:	50                   	push   eax
  7015f0:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  7015f4:	51                   	push   ecx
  7015f5:	8d 4f 04             	lea    ecx,[edi+0x4]
  7015f8:	89 54 24 44          	mov    DWORD PTR [esp+0x44],edx
  7015fc:	e8 5f c7 ff ff       	call   0x6fdd60
  701601:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  701605:	3b 8f 28 10 00 00    	cmp    ecx,DWORD PTR [edi+0x1028]
  70160b:	74 3b                	je     0x701648
  70160d:	85 c9                	test   ecx,ecx
  70160f:	74 37                	je     0x701648
  701611:	83 c1 f8             	add    ecx,0xfffffff8
  701614:	74 32                	je     0x701648
  701616:	8b 11                	mov    edx,DWORD PTR [ecx]
  701618:	8b 42 70             	mov    eax,DWORD PTR [edx+0x70]
  70161b:	6a 01                	push   0x1
  70161d:	ff d0                	call   eax
  70161f:	83 87 80 11 00 00 ff 	add    DWORD PTR [edi+0x1180],0xffffffff
  701626:	56                   	push   esi
  701627:	e8 04 fa dd ff       	call   0x4e1030
  70162c:	8d 8f 70 11 00 00    	lea    ecx,[edi+0x1170]
  701632:	51                   	push   ecx
  701633:	56                   	push   esi
  701634:	8b d8                	mov    ebx,eax
  701636:	e8 f5 fc dd ff       	call   0x4e1330
  70163b:	56                   	push   esi
  70163c:	e8 9f 2e de ff       	call   0x4e44e0
  701641:	83 c4 10             	add    esp,0x10
  701644:	8b f3                	mov    esi,ebx
  701646:	eb 0b                	jmp    0x701653
  701648:	56                   	push   esi
  701649:	e8 e2 f9 dd ff       	call   0x4e1030
  70164e:	83 c4 04             	add    esp,0x4
  701651:	8b f0                	mov    esi,eax
  701653:	8d 87 70 11 00 00    	lea    eax,[edi+0x1170]
  701659:	3b f0                	cmp    esi,eax
  70165b:	75 84                	jne    0x7015e1
  70165d:	8b 87 c8 10 00 00    	mov    eax,DWORD PTR [edi+0x10c8]
  701663:	85 c0                	test   eax,eax
  701665:	7e 09                	jle    0x701670
  701667:	83 c0 ff             	add    eax,0xffffffff
  70166a:	89 87 c8 10 00 00    	mov    DWORD PTR [edi+0x10c8],eax
  701670:	8b 87 cc 10 00 00    	mov    eax,DWORD PTR [edi+0x10cc]
  701676:	85 c0                	test   eax,eax
  701678:	7e 09                	jle    0x701683
  70167a:	83 c0 ff             	add    eax,0xffffffff
  70167d:	89 87 cc 10 00 00    	mov    DWORD PTR [edi+0x10cc],eax
  701683:	5f                   	pop    edi
  701684:	5e                   	pop    esi
  701685:	5b                   	pop    ebx
  701686:	8b e5                	mov    esp,ebp
  701688:	5d                   	pop    ebp
  701689:	c2 04 00             	ret    0x4
