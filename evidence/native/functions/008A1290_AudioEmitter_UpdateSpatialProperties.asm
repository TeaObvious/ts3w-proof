# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008a1290 (AudioEmitter_UpdateSpatialProperties)
Paired Ghidra pseudocode: 008A1290_AudioEmitter_UpdateSpatialProperties.c
Window: [0x008a1290, 0x008a1640) (944 bytes; stop exclusive)
Next defined Ghidra entry: 0x008a1640
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008a1290: 83 ec 40 53 56 8b f1 83 a6 28 04 00 00 cf b8 bf
008a12a0: ff ff ff 21 86 28 04 00 00 21 86 24 04 00 00 e8
008a12b0: 4c eb 00 00 8b d8 85 db 75 0a 5e 32 c0 5b 83 c4
008a12c0: 40 c2 04 00 8b 03 57 8d 4c 24 28 51 8b 8e c0 03
008a12d0: 00 00 8d 54 24 14 52 8b 90 8c 00 00 00 51 8b cb
008a12e0: ff d2 8b 7c 24 50 f3 0f 10 4f 04 f3 0f 5c 4c 24
008a12f0: 14 f3 0f 10 57 08 f3 0f 5c 54 24 18 f3 0f 10 5c
008a1300: 24 40 f3 0f 10 64 24 34 f3 0f 10 07 f3 0f 5c 44
008a1310: 24 10 f3 0f 59 da f3 0f 59 e1 f3 0f 58 dc f3 0f
008a1320: 10 64 24 28 f3 0f 59 e0 f3 0f 58 dc f3 0f 10 64
008a1330: 24 38 f3 0f 11 5c 24 1c f3 0f 10 5c 24 44 f3 0f
008a1340: 59 da f3 0f 59 e1 f3 0f 58 dc f3 0f 10 64 24 2c
008a1350: f3 0f 59 e0 f3 0f 58 dc f3 0f 11 5c 24 20 f3 0f
008a1360: 10 5c 24 48 f3 0f 59 da f3 0f 10 54 24 3c f3 0f
008a1370: 59 d1 f3 0f 10 4c 24 30 f3 0f 58 da f3 0f 59 c8
008a1380: f3 0f 58 d9 f3 0f 11 5c 24 24 d9 44 24 24 8b 06
008a1390: dc c8 8b 90 80 00 00 00 d9 44 24 20 51 dc c8 8b
008a13a0: ce de c1 d9 44 24 20 dc c8 de c1 d9 fa d9 54 24
008a13b0: 54 d9 1c 24 ff d2 f7 86 24 04 00 00 00 01 00 00
008a13c0: 74 69 d9 86 ec 03 00 00 8b 06 8b 50 50 83 ec 10
008a13d0: d9 5c 24 0c 8b ce d9 86 e8 03 00 00 d9 5c 24 08
008a13e0: d9 86 e4 03 00 00 d9 5c 24 04 d9 44 24 60 d9 1c
008a13f0: 24 ff d2 d9 54 24 50 d9 86 f0 03 00 00 df e9 dd
008a1400: d8 9f f6 c4 44 7a 0c 81 a6 28 04 00 00 7f ff ff
008a1410: ff eb 0a 81 8e 28 04 00 00 80 00 00 00 f3 0f 10
008a1420: 44 24 50 f3 0f 11 86 f0 03 00 00 8b 03 8b 80 8c
008a1430: 00 00 00 8d 4c 24 28 51 8d 54 24 14 52 6a 01 8b
008a1440: cb ff d0 f3 0f 10 47 04 f3 0f 5c 44 24 14 f3 0f
008a1450: 10 4f 08 f3 0f 5c 4c 24 18 f3 0f 10 17 f3 0f 5c
008a1460: 54 24 10 0f 28 d8 f3 0f 59 44 24 3c f3 0f 59 5c
008a1470: 24 34 0f 28 e1 f3 0f 59 4c 24 48 f3 0f 59 64 24
008a1480: 40 f3 0f 58 c1 f3 0f 10 4c 24 30 f3 0f 59 ca f3
008a1490: 0f 58 dc f3 0f 58 c1 f3 0f 11 44 24 24 d9 44 24
008a14a0: 24 0f 28 e2 f3 0f 59 64 24 28 d9 c0 d8 c9 f3 0f
008a14b0: 58 dc f3 0f 11 5c 24 1c d9 44 24 1c 5f d9 c0 d8
008a14c0: c9 de c2 d9 c9 d9 fa d9 5c 24 4c d9 c9 d9 e0 d9
008a14d0: f3 d9 54 24 08 d9 ee df f1 dd d8 76 10 f3 0f 10
008a14e0: 05 38 a7 16 01 f3 0f 58 44 24 08 eb 06 f3 0f 10
008a14f0: 44 24 08 f3 0f 59 05 0c 25 03 01 51 8b 8e 80 03
008a1500: 00 00 f3 0f 11 04 24 68 3a 69 77 4a e8 2f e6 01
008a1510: 00 f3 0f 10 86 e8 03 00 00 f3 0f 10 4c 24 4c 0f
008a1520: 2f c1 76 0c f3 0f 5e c8 f3 0f 11 4c 24 08 eb 0e
008a1530: f3 0f 10 05 f8 98 f9 00 f3 0f 11 44 24 08 d9 44
008a1540: 24 08 51 8b 8e 80 03 00 00 d9 1c 24 68 17 a7 b7
008a1550: 6e e8 ea e5 01 00 83 be ac 03 00 00 01 0f 8e c5
008a1560: 00 00 00 f3 0f 10 86 ec 03 00 00 f3 0f 10 8e e8
008a1570: 03 00 00 0f 2e c1 9f f6 c4 44 0f 8b a8 00 00 00
008a1580: f3 0f 10 54 24 4c 0f 28 d9 f3 0f 5c da f3 0f 11
008a1590: 5c 24 4c 8b 44 24 4c c1 f8 1f f3 0f 11 54 24 08
008a15a0: 8b 54 24 08 8b c8 f7 d1 f3 0f 11 4c 24 4c 23 4c
008a15b0: 24 4c 23 d0 0b ca 89 4c 24 4c f3 0f 10 54 24 4c
008a15c0: 0f 28 d8 f3 0f 5c da f3 0f 11 5c 24 4c 8b 44 24
008a15d0: 4c c1 f8 1f f3 0f 11 44 24 08 8b 54 24 08 f3 0f
008a15e0: 11 54 24 4c 8b c8 f7 d1 23 4c 24 4c 23 d0 0b ca
008a15f0: 89 4c 24 4c f3 0f 10 54 24 4c f3 0f 5c c1 f3 0f
008a1600: 5c d1 f3 0f 5e d0 f3 0f 10 05 f8 98 f9 00 51 8b
008a1610: 8e 80 03 00 00 f3 0f 5c c2 f3 0f 11 04 24 68 95
008a1620: d6 78 ce e8 18 e5 01 00 5e b0 01 5b 83 c4 40 c2
008a1630: 04 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
008a1290 <.text+0x4a0290>:
  8a1290:	83 ec 40                                        	sub    esp,0x40
  8a1293:	53                                              	push   ebx
  8a1294:	56                                              	push   esi
  8a1295:	8b f1                                           	mov    esi,ecx
  8a1297:	83 a6 28 04 00 00 cf                            	and    DWORD PTR [esi+0x428],0xffffffcf
  8a129e:	b8 bf ff ff ff                                  	mov    eax,0xffffffbf
  8a12a3:	21 86 28 04 00 00                               	and    DWORD PTR [esi+0x428],eax
  8a12a9:	21 86 24 04 00 00                               	and    DWORD PTR [esi+0x424],eax
  8a12af:	e8 4c eb 00 00                                  	call   0x8afe00
  8a12b4:	8b d8                                           	mov    ebx,eax
  8a12b6:	85 db                                           	test   ebx,ebx
  8a12b8:	75 0a                                           	jne    0x8a12c4
  8a12ba:	5e                                              	pop    esi
  8a12bb:	32 c0                                           	xor    al,al
  8a12bd:	5b                                              	pop    ebx
  8a12be:	83 c4 40                                        	add    esp,0x40
  8a12c1:	c2 04 00                                        	ret    0x4
  8a12c4:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  8a12c6:	57                                              	push   edi
  8a12c7:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  8a12cb:	51                                              	push   ecx
  8a12cc:	8b 8e c0 03 00 00                               	mov    ecx,DWORD PTR [esi+0x3c0]
  8a12d2:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  8a12d6:	52                                              	push   edx
  8a12d7:	8b 90 8c 00 00 00                               	mov    edx,DWORD PTR [eax+0x8c]
  8a12dd:	51                                              	push   ecx
  8a12de:	8b cb                                           	mov    ecx,ebx
  8a12e0:	ff d2                                           	call   edx
  8a12e2:	8b 7c 24 50                                     	mov    edi,DWORD PTR [esp+0x50]
  8a12e6:	f3 0f 10 4f 04                                  	movss  xmm1,DWORD PTR [edi+0x4]
  8a12eb:	f3 0f 5c 4c 24 14                               	subss  xmm1,DWORD PTR [esp+0x14]
  8a12f1:	f3 0f 10 57 08                                  	movss  xmm2,DWORD PTR [edi+0x8]
  8a12f6:	f3 0f 5c 54 24 18                               	subss  xmm2,DWORD PTR [esp+0x18]
  8a12fc:	f3 0f 10 5c 24 40                               	movss  xmm3,DWORD PTR [esp+0x40]
  8a1302:	f3 0f 10 64 24 34                               	movss  xmm4,DWORD PTR [esp+0x34]
  8a1308:	f3 0f 10 07                                     	movss  xmm0,DWORD PTR [edi]
  8a130c:	f3 0f 5c 44 24 10                               	subss  xmm0,DWORD PTR [esp+0x10]
  8a1312:	f3 0f 59 da                                     	mulss  xmm3,xmm2
  8a1316:	f3 0f 59 e1                                     	mulss  xmm4,xmm1
  8a131a:	f3 0f 58 dc                                     	addss  xmm3,xmm4
  8a131e:	f3 0f 10 64 24 28                               	movss  xmm4,DWORD PTR [esp+0x28]
  8a1324:	f3 0f 59 e0                                     	mulss  xmm4,xmm0
  8a1328:	f3 0f 58 dc                                     	addss  xmm3,xmm4
  8a132c:	f3 0f 10 64 24 38                               	movss  xmm4,DWORD PTR [esp+0x38]
  8a1332:	f3 0f 11 5c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm3
  8a1338:	f3 0f 10 5c 24 44                               	movss  xmm3,DWORD PTR [esp+0x44]
  8a133e:	f3 0f 59 da                                     	mulss  xmm3,xmm2
  8a1342:	f3 0f 59 e1                                     	mulss  xmm4,xmm1
  8a1346:	f3 0f 58 dc                                     	addss  xmm3,xmm4
  8a134a:	f3 0f 10 64 24 2c                               	movss  xmm4,DWORD PTR [esp+0x2c]
  8a1350:	f3 0f 59 e0                                     	mulss  xmm4,xmm0
  8a1354:	f3 0f 58 dc                                     	addss  xmm3,xmm4
  8a1358:	f3 0f 11 5c 24 20                               	movss  DWORD PTR [esp+0x20],xmm3
  8a135e:	f3 0f 10 5c 24 48                               	movss  xmm3,DWORD PTR [esp+0x48]
  8a1364:	f3 0f 59 da                                     	mulss  xmm3,xmm2
  8a1368:	f3 0f 10 54 24 3c                               	movss  xmm2,DWORD PTR [esp+0x3c]
  8a136e:	f3 0f 59 d1                                     	mulss  xmm2,xmm1
  8a1372:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  8a1378:	f3 0f 58 da                                     	addss  xmm3,xmm2
  8a137c:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
  8a1380:	f3 0f 58 d9                                     	addss  xmm3,xmm1
  8a1384:	f3 0f 11 5c 24 24                               	movss  DWORD PTR [esp+0x24],xmm3
  8a138a:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  8a138e:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8a1390:	dc c8                                           	fmul   st(0),st
  8a1392:	8b 90 80 00 00 00                               	mov    edx,DWORD PTR [eax+0x80]
  8a1398:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  8a139c:	51                                              	push   ecx
  8a139d:	dc c8                                           	fmul   st(0),st
  8a139f:	8b ce                                           	mov    ecx,esi
  8a13a1:	de c1                                           	faddp  st(1),st
  8a13a3:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  8a13a7:	dc c8                                           	fmul   st(0),st
  8a13a9:	de c1                                           	faddp  st(1),st
  8a13ab:	d9 fa                                           	fsqrt
  8a13ad:	d9 54 24 54                                     	fst    DWORD PTR [esp+0x54]
  8a13b1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8a13b4:	ff d2                                           	call   edx
  8a13b6:	f7 86 24 04 00 00 00 01 00 00                   	test   DWORD PTR [esi+0x424],0x100
  8a13c0:	74 69                                           	je     0x8a142b
  8a13c2:	d9 86 ec 03 00 00                               	fld    DWORD PTR [esi+0x3ec]
  8a13c8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8a13ca:	8b 50 50                                        	mov    edx,DWORD PTR [eax+0x50]
  8a13cd:	83 ec 10                                        	sub    esp,0x10
  8a13d0:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  8a13d4:	8b ce                                           	mov    ecx,esi
  8a13d6:	d9 86 e8 03 00 00                               	fld    DWORD PTR [esi+0x3e8]
  8a13dc:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  8a13e0:	d9 86 e4 03 00 00                               	fld    DWORD PTR [esi+0x3e4]
  8a13e6:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  8a13ea:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
  8a13ee:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8a13f1:	ff d2                                           	call   edx
  8a13f3:	d9 54 24 50                                     	fst    DWORD PTR [esp+0x50]
  8a13f7:	d9 86 f0 03 00 00                               	fld    DWORD PTR [esi+0x3f0]
  8a13fd:	df e9                                           	fucomip st,st(1)
  8a13ff:	dd d8                                           	fstp   st(0)
  8a1401:	9f                                              	lahf
  8a1402:	f6 c4 44                                        	test   ah,0x44
  8a1405:	7a 0c                                           	jp     0x8a1413
  8a1407:	81 a6 28 04 00 00 7f ff ff ff                   	and    DWORD PTR [esi+0x428],0xffffff7f
  8a1411:	eb 0a                                           	jmp    0x8a141d
  8a1413:	81 8e 28 04 00 00 80 00 00 00                   	or     DWORD PTR [esi+0x428],0x80
  8a141d:	f3 0f 10 44 24 50                               	movss  xmm0,DWORD PTR [esp+0x50]
  8a1423:	f3 0f 11 86 f0 03 00 00                         	movss  DWORD PTR [esi+0x3f0],xmm0
  8a142b:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  8a142d:	8b 80 8c 00 00 00                               	mov    eax,DWORD PTR [eax+0x8c]
  8a1433:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  8a1437:	51                                              	push   ecx
  8a1438:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  8a143c:	52                                              	push   edx
  8a143d:	6a 01                                           	push   0x1
  8a143f:	8b cb                                           	mov    ecx,ebx
  8a1441:	ff d0                                           	call   eax
  8a1443:	f3 0f 10 47 04                                  	movss  xmm0,DWORD PTR [edi+0x4]
  8a1448:	f3 0f 5c 44 24 14                               	subss  xmm0,DWORD PTR [esp+0x14]
  8a144e:	f3 0f 10 4f 08                                  	movss  xmm1,DWORD PTR [edi+0x8]
  8a1453:	f3 0f 5c 4c 24 18                               	subss  xmm1,DWORD PTR [esp+0x18]
  8a1459:	f3 0f 10 17                                     	movss  xmm2,DWORD PTR [edi]
  8a145d:	f3 0f 5c 54 24 10                               	subss  xmm2,DWORD PTR [esp+0x10]
  8a1463:	0f 28 d8                                        	movaps xmm3,xmm0
  8a1466:	f3 0f 59 44 24 3c                               	mulss  xmm0,DWORD PTR [esp+0x3c]
  8a146c:	f3 0f 59 5c 24 34                               	mulss  xmm3,DWORD PTR [esp+0x34]
  8a1472:	0f 28 e1                                        	movaps xmm4,xmm1
  8a1475:	f3 0f 59 4c 24 48                               	mulss  xmm1,DWORD PTR [esp+0x48]
  8a147b:	f3 0f 59 64 24 40                               	mulss  xmm4,DWORD PTR [esp+0x40]
  8a1481:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  8a1485:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  8a148b:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  8a148f:	f3 0f 58 dc                                     	addss  xmm3,xmm4
  8a1493:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  8a1497:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  8a149d:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  8a14a1:	0f 28 e2                                        	movaps xmm4,xmm2
  8a14a4:	f3 0f 59 64 24 28                               	mulss  xmm4,DWORD PTR [esp+0x28]
  8a14aa:	d9 c0                                           	fld    st(0)
  8a14ac:	d8 c9                                           	fmul   st,st(1)
  8a14ae:	f3 0f 58 dc                                     	addss  xmm3,xmm4
  8a14b2:	f3 0f 11 5c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm3
  8a14b8:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  8a14bc:	5f                                              	pop    edi
  8a14bd:	d9 c0                                           	fld    st(0)
  8a14bf:	d8 c9                                           	fmul   st,st(1)
  8a14c1:	de c2                                           	faddp  st(2),st
  8a14c3:	d9 c9                                           	fxch   st(1)
  8a14c5:	d9 fa                                           	fsqrt
  8a14c7:	d9 5c 24 4c                                     	fstp   DWORD PTR [esp+0x4c]
  8a14cb:	d9 c9                                           	fxch   st(1)
  8a14cd:	d9 e0                                           	fchs
  8a14cf:	d9 f3                                           	fpatan
  8a14d1:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  8a14d5:	d9 ee                                           	fldz
  8a14d7:	df f1                                           	fcomip st,st(1)
  8a14d9:	dd d8                                           	fstp   st(0)
  8a14db:	76 10                                           	jbe    0x8a14ed
  8a14dd:	f3 0f 10 05 38 a7 16 01                         	movss  xmm0,DWORD PTR ds:0x116a738
  8a14e5:	f3 0f 58 44 24 08                               	addss  xmm0,DWORD PTR [esp+0x8]
  8a14eb:	eb 06                                           	jmp    0x8a14f3
  8a14ed:	f3 0f 10 44 24 08                               	movss  xmm0,DWORD PTR [esp+0x8]
  8a14f3:	f3 0f 59 05 0c 25 03 01                         	mulss  xmm0,DWORD PTR ds:0x103250c
  8a14fb:	51                                              	push   ecx
  8a14fc:	8b 8e 80 03 00 00                               	mov    ecx,DWORD PTR [esi+0x380]
  8a1502:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  8a1507:	68 3a 69 77 4a                                  	push   0x4a77693a
  8a150c:	e8 2f e6 01 00                                  	call   0x8bfb40
  8a1511:	f3 0f 10 86 e8 03 00 00                         	movss  xmm0,DWORD PTR [esi+0x3e8]
  8a1519:	f3 0f 10 4c 24 4c                               	movss  xmm1,DWORD PTR [esp+0x4c]
  8a151f:	0f 2f c1                                        	comiss xmm0,xmm1
  8a1522:	76 0c                                           	jbe    0x8a1530
  8a1524:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  8a1528:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  8a152e:	eb 0e                                           	jmp    0x8a153e
  8a1530:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  8a1538:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  8a153e:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
  8a1542:	51                                              	push   ecx
  8a1543:	8b 8e 80 03 00 00                               	mov    ecx,DWORD PTR [esi+0x380]
  8a1549:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  8a154c:	68 17 a7 b7 6e                                  	push   0x6eb7a717
  8a1551:	e8 ea e5 01 00                                  	call   0x8bfb40
  8a1556:	83 be ac 03 00 00 01                            	cmp    DWORD PTR [esi+0x3ac],0x1
  8a155d:	0f 8e c5 00 00 00                               	jle    0x8a1628
  8a1563:	f3 0f 10 86 ec 03 00 00                         	movss  xmm0,DWORD PTR [esi+0x3ec]
  8a156b:	f3 0f 10 8e e8 03 00 00                         	movss  xmm1,DWORD PTR [esi+0x3e8]
  8a1573:	0f 2e c1                                        	ucomiss xmm0,xmm1
  8a1576:	9f                                              	lahf
  8a1577:	f6 c4 44                                        	test   ah,0x44
  8a157a:	0f 8b a8 00 00 00                               	jnp    0x8a1628
  8a1580:	f3 0f 10 54 24 4c                               	movss  xmm2,DWORD PTR [esp+0x4c]
  8a1586:	0f 28 d9                                        	movaps xmm3,xmm1
  8a1589:	f3 0f 5c da                                     	subss  xmm3,xmm2
  8a158d:	f3 0f 11 5c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm3
  8a1593:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  8a1597:	c1 f8 1f                                        	sar    eax,0x1f
  8a159a:	f3 0f 11 54 24 08                               	movss  DWORD PTR [esp+0x8],xmm2
  8a15a0:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  8a15a4:	8b c8                                           	mov    ecx,eax
  8a15a6:	f7 d1                                           	not    ecx
  8a15a8:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
  8a15ae:	23 4c 24 4c                                     	and    ecx,DWORD PTR [esp+0x4c]
  8a15b2:	23 d0                                           	and    edx,eax
  8a15b4:	0b ca                                           	or     ecx,edx
  8a15b6:	89 4c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ecx
  8a15ba:	f3 0f 10 54 24 4c                               	movss  xmm2,DWORD PTR [esp+0x4c]
  8a15c0:	0f 28 d8                                        	movaps xmm3,xmm0
  8a15c3:	f3 0f 5c da                                     	subss  xmm3,xmm2
  8a15c7:	f3 0f 11 5c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm3
  8a15cd:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  8a15d1:	c1 f8 1f                                        	sar    eax,0x1f
  8a15d4:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  8a15da:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  8a15de:	f3 0f 11 54 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm2
  8a15e4:	8b c8                                           	mov    ecx,eax
  8a15e6:	f7 d1                                           	not    ecx
  8a15e8:	23 4c 24 4c                                     	and    ecx,DWORD PTR [esp+0x4c]
  8a15ec:	23 d0                                           	and    edx,eax
  8a15ee:	0b ca                                           	or     ecx,edx
  8a15f0:	89 4c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ecx
  8a15f4:	f3 0f 10 54 24 4c                               	movss  xmm2,DWORD PTR [esp+0x4c]
  8a15fa:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  8a15fe:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  8a1602:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  8a1606:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  8a160e:	51                                              	push   ecx
  8a160f:	8b 8e 80 03 00 00                               	mov    ecx,DWORD PTR [esi+0x380]
  8a1615:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  8a1619:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  8a161e:	68 95 d6 78 ce                                  	push   0xce78d695
  8a1623:	e8 18 e5 01 00                                  	call   0x8bfb40
  8a1628:	5e                                              	pop    esi
  8a1629:	b0 01                                           	mov    al,0x1
  8a162b:	5b                                              	pop    ebx
  8a162c:	83 c4 40                                        	add    esp,0x40
  8a162f:	c2 04 00                                        	ret    0x4
  8a1632:	cc                                              	int3
  8a1633:	cc                                              	int3
  8a1634:	cc                                              	int3
  8a1635:	cc                                              	int3
  8a1636:	cc                                              	int3
  8a1637:	cc                                              	int3
  8a1638:	cc                                              	int3
  8a1639:	cc                                              	int3
  8a163a:	cc                                              	int3
  8a163b:	cc                                              	int3
  8a163c:	cc                                              	int3
  8a163d:	cc                                              	int3
  8a163e:	cc                                              	int3
  8a163f:	cc                                              	int3
