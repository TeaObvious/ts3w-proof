# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589270 (World_GetTilesWithFloorFeaturesImpl)
Paired Ghidra pseudocode: 10589270_World_GetTilesWithFloorFeaturesImpl.c
Window: [0x10589270, 0x10589590) (800 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589270: 55 8b ec 83 e4 f0 83 ec 74 53 56 8b 35 c4 00 c7
10589280: 10 57 33 ff 3b f7 89 7c 24 20 74 16 8b 45 0c 8b
10589290: 4d 08 57 50 51 8b ce e8 74 dd ca ff 8b d8 3b df
105892a0: 75 09 33 c0 5f 5e 5b 8b e5 5d c3 8b 83 98 02 00
105892b0: 00 3b c7 89 44 24 24 74 e9 8b 45 14 8b 56 74 8b
105892c0: 8b 74 01 00 00 c1 e8 02 24 01 88 44 24 13 8b 83
105892d0: 78 01 00 00 89 44 24 28 0c ff 89 54 24 2c 8b 93
105892e0: 80 01 00 00 88 44 24 14 88 44 24 15 c6 44 24 16
105892f0: 00 8a 83 7c 01 00 00 88 44 24 16 0f be c0 33 f6
10589300: 3b c2 89 74 24 50 89 7c 24 54 89 74 24 58 c7 44
10589310: 24 5c 94 1b b2 10 89 4c 24 38 89 54 24 3c 0f 8f
10589320: 51 02 00 00 85 c9 c6 44 24 14 00 0f 8e f4 01 00
10589330: 00 83 7c 24 28 00 c6 44 24 15 00 0f 8e cb 01 00
10589340: 00 8b 4d 18 8b 55 14 51 52 8d 44 24 1c 50 8b cb
10589350: e8 cb 27 af ff 84 c0 74 79 66 8b 4c 24 14 8b 45
10589360: 10 8a 54 24 16 6a 01 66 89 4c 24 1c 50 8d 4c 24
10589370: 20 51 8b 4c 24 30 88 54 24 26 c6 44 24 27 01 e8
10589380: bc 71 b8 ff 0f b7 c0 0f b7 c0 99 0f a4 c2 10 c1
10589390: e0 10 8b f0 0f be 44 24 16 99 0f be 54 24 14 25
105893a0: ff ff 00 00 0b f0 0f be 44 24 15 c1 e0 10 0b c2
105893b0: 99 33 c9 0b c8 0b f2 3b 7c 24 58 89 4c 24 40 89
105893c0: 74 24 44 0f 82 01 01 00 00 8d 44 24 40 e9 10 01
105893d0: 00 00 80 7c 24 13 00 0f 84 14 01 00 00 8b 74 24
105893e0: 2c 85 f6 0f 84 08 01 00 00 66 8b 4c 24 14 8b 45
105893f0: 10 8a 54 24 16 6a 01 66 89 4c 24 20 50 8d 4c 24
10589400: 24 51 8b 4c 24 30 88 54 24 2a c6 44 24 2b 01 e8
10589410: 2c 71 b8 ff 66 85 c0 0f 85 d4 00 00 00 0f be 4c
10589420: 24 15 8d 54 24 34 52 0f be 54 24 18 8d 44 24 34
10589430: 50 f3 0f 2a c1 83 ec 08 f3 0f 11 44 24 04 f3 0f
10589440: 2a c2 8b cb f3 0f 11 04 24 e8 32 d6 ae ff f3 0f
10589450: 10 4c 24 34 f3 0f 10 44 24 30 6a 00 f3 0f 11 4c
10589460: 24 6c 0f 57 c9 6a 01 f3 0f 11 44 24 74 f3 0f 11
10589470: 4c 24 6c f3 0f 11 44 24 68 0f 28 44 24 68 53 8d
10589480: 44 24 7c 50 8b ce 0f 29 84 24 80 00 00 00 e8 fd
10589490: dd db ff 84 c0 74 5a 0f be 44 24 15 0f be 4c 24
105894a0: 14 c1 e0 10 0b c1 99 8b c8 0f be 44 24 16 8b f2
105894b0: 99 25 ff ff 00 00 33 d2 0b ca 0b f0 3b 7c 24 58
105894c0: 89 4c 24 48 89 74 24 4c 73 14 8b c7 83 c7 08 85
105894d0: c0 89 7c 24 54 74 1a 89 08 89 70 04 eb 13 8d 44
105894e0: 24 48 50 57 8d 4c 24 58 e8 13 d5 aa ff 8b 7c 24
105894f0: 54 8a 44 24 15 04 01 0f be c8 3b 4c 24 28 88 44
10589500: 24 15 0f 8c 39 fe ff ff 8b 4c 24 38 8a 44 24 14
10589510: 04 01 0f be d0 3b d1 88 44 24 14 0f 8c 10 fe ff
10589520: ff 8b 54 24 3c 8a 44 24 16 04 01 88 44 24 16 0f
10589530: be c0 3b c2 0f 8e ea fd ff ff 8b 74 24 50 3b f7
10589540: 74 33 e8 d9 1b fd ff 8b d8 8b 13 8b 92 88 00 00
10589550: 00 2b fe c1 ff 03 57 8d 44 24 24 50 8b cb ff d2
10589560: 8b 03 8b 90 a0 00 00 00 57 6a 00 56 8d 4c 24 2c
10589570: 51 8b cb ff d2 85 f6 8b 7c 24 20 74 09 56 e8 0d
10589580: f9 38 00 83 c4 04 8b c7 5f 5e 5b 8b e5 5d c3 cc

LINEAR DISASSEMBLY
10589270 <.text+0x588270>:
10589270:	55                                              	push   ebp
10589271:	8b ec                                           	mov    ebp,esp
10589273:	83 e4 f0                                        	and    esp,0xfffffff0
10589276:	83 ec 74                                        	sub    esp,0x74
10589279:	53                                              	push   ebx
1058927a:	56                                              	push   esi
1058927b:	8b 35 c4 00 c7 10                               	mov    esi,DWORD PTR ds:0x10c700c4
10589281:	57                                              	push   edi
10589282:	33 ff                                           	xor    edi,edi
10589284:	3b f7                                           	cmp    esi,edi
10589286:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1058928a:	74 16                                           	je     0x105892a2
1058928c:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1058928f:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10589292:	57                                              	push   edi
10589293:	50                                              	push   eax
10589294:	51                                              	push   ecx
10589295:	8b ce                                           	mov    ecx,esi
10589297:	e8 74 dd ca ff                                  	call   0x10237010
1058929c:	8b d8                                           	mov    ebx,eax
1058929e:	3b df                                           	cmp    ebx,edi
105892a0:	75 09                                           	jne    0x105892ab
105892a2:	33 c0                                           	xor    eax,eax
105892a4:	5f                                              	pop    edi
105892a5:	5e                                              	pop    esi
105892a6:	5b                                              	pop    ebx
105892a7:	8b e5                                           	mov    esp,ebp
105892a9:	5d                                              	pop    ebp
105892aa:	c3                                              	ret
105892ab:	8b 83 98 02 00 00                               	mov    eax,DWORD PTR [ebx+0x298]
105892b1:	3b c7                                           	cmp    eax,edi
105892b3:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
105892b7:	74 e9                                           	je     0x105892a2
105892b9:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
105892bc:	8b 56 74                                        	mov    edx,DWORD PTR [esi+0x74]
105892bf:	8b 8b 74 01 00 00                               	mov    ecx,DWORD PTR [ebx+0x174]
105892c5:	c1 e8 02                                        	shr    eax,0x2
105892c8:	24 01                                           	and    al,0x1
105892ca:	88 44 24 13                                     	mov    BYTE PTR [esp+0x13],al
105892ce:	8b 83 78 01 00 00                               	mov    eax,DWORD PTR [ebx+0x178]
105892d4:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
105892d8:	0c ff                                           	or     al,0xff
105892da:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
105892de:	8b 93 80 01 00 00                               	mov    edx,DWORD PTR [ebx+0x180]
105892e4:	88 44 24 14                                     	mov    BYTE PTR [esp+0x14],al
105892e8:	88 44 24 15                                     	mov    BYTE PTR [esp+0x15],al
105892ec:	c6 44 24 16 00                                  	mov    BYTE PTR [esp+0x16],0x0
105892f1:	8a 83 7c 01 00 00                               	mov    al,BYTE PTR [ebx+0x17c]
105892f7:	88 44 24 16                                     	mov    BYTE PTR [esp+0x16],al
105892fb:	0f be c0                                        	movsx  eax,al
105892fe:	33 f6                                           	xor    esi,esi
10589300:	3b c2                                           	cmp    eax,edx
10589302:	89 74 24 50                                     	mov    DWORD PTR [esp+0x50],esi
10589306:	89 7c 24 54                                     	mov    DWORD PTR [esp+0x54],edi
1058930a:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
1058930e:	c7 44 24 5c 94 1b b2 10                         	mov    DWORD PTR [esp+0x5c],0x10b21b94
10589316:	89 4c 24 38                                     	mov    DWORD PTR [esp+0x38],ecx
1058931a:	89 54 24 3c                                     	mov    DWORD PTR [esp+0x3c],edx
1058931e:	0f 8f 51 02 00 00                               	jg     0x10589575
10589324:	85 c9                                           	test   ecx,ecx
10589326:	c6 44 24 14 00                                  	mov    BYTE PTR [esp+0x14],0x0
1058932b:	0f 8e f4 01 00 00                               	jle    0x10589525
10589331:	83 7c 24 28 00                                  	cmp    DWORD PTR [esp+0x28],0x0
10589336:	c6 44 24 15 00                                  	mov    BYTE PTR [esp+0x15],0x0
1058933b:	0f 8e cb 01 00 00                               	jle    0x1058950c
10589341:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
10589344:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
10589347:	51                                              	push   ecx
10589348:	52                                              	push   edx
10589349:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1058934d:	50                                              	push   eax
1058934e:	8b cb                                           	mov    ecx,ebx
10589350:	e8 cb 27 af ff                                  	call   0x1007bb20
10589355:	84 c0                                           	test   al,al
10589357:	74 79                                           	je     0x105893d2
10589359:	66 8b 4c 24 14                                  	mov    cx,WORD PTR [esp+0x14]
1058935e:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
10589361:	8a 54 24 16                                     	mov    dl,BYTE PTR [esp+0x16]
10589365:	6a 01                                           	push   0x1
10589367:	66 89 4c 24 1c                                  	mov    WORD PTR [esp+0x1c],cx
1058936c:	50                                              	push   eax
1058936d:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10589371:	51                                              	push   ecx
10589372:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10589376:	88 54 24 26                                     	mov    BYTE PTR [esp+0x26],dl
1058937a:	c6 44 24 27 01                                  	mov    BYTE PTR [esp+0x27],0x1
1058937f:	e8 bc 71 b8 ff                                  	call   0x10110540
10589384:	0f b7 c0                                        	movzx  eax,ax
10589387:	0f b7 c0                                        	movzx  eax,ax
1058938a:	99                                              	cdq
1058938b:	0f a4 c2 10                                     	shld   edx,eax,0x10
1058938f:	c1 e0 10                                        	shl    eax,0x10
10589392:	8b f0                                           	mov    esi,eax
10589394:	0f be 44 24 16                                  	movsx  eax,BYTE PTR [esp+0x16]
10589399:	99                                              	cdq
1058939a:	0f be 54 24 14                                  	movsx  edx,BYTE PTR [esp+0x14]
1058939f:	25 ff ff 00 00                                  	and    eax,0xffff
105893a4:	0b f0                                           	or     esi,eax
105893a6:	0f be 44 24 15                                  	movsx  eax,BYTE PTR [esp+0x15]
105893ab:	c1 e0 10                                        	shl    eax,0x10
105893ae:	0b c2                                           	or     eax,edx
105893b0:	99                                              	cdq
105893b1:	33 c9                                           	xor    ecx,ecx
105893b3:	0b c8                                           	or     ecx,eax
105893b5:	0b f2                                           	or     esi,edx
105893b7:	3b 7c 24 58                                     	cmp    edi,DWORD PTR [esp+0x58]
105893bb:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
105893bf:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
105893c3:	0f 82 01 01 00 00                               	jb     0x105894ca
105893c9:	8d 44 24 40                                     	lea    eax,[esp+0x40]
105893cd:	e9 10 01 00 00                                  	jmp    0x105894e2
105893d2:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
105893d7:	0f 84 14 01 00 00                               	je     0x105894f1
105893dd:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
105893e1:	85 f6                                           	test   esi,esi
105893e3:	0f 84 08 01 00 00                               	je     0x105894f1
105893e9:	66 8b 4c 24 14                                  	mov    cx,WORD PTR [esp+0x14]
105893ee:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
105893f1:	8a 54 24 16                                     	mov    dl,BYTE PTR [esp+0x16]
105893f5:	6a 01                                           	push   0x1
105893f7:	66 89 4c 24 20                                  	mov    WORD PTR [esp+0x20],cx
105893fc:	50                                              	push   eax
105893fd:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10589401:	51                                              	push   ecx
10589402:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10589406:	88 54 24 2a                                     	mov    BYTE PTR [esp+0x2a],dl
1058940a:	c6 44 24 2b 01                                  	mov    BYTE PTR [esp+0x2b],0x1
1058940f:	e8 2c 71 b8 ff                                  	call   0x10110540
10589414:	66 85 c0                                        	test   ax,ax
10589417:	0f 85 d4 00 00 00                               	jne    0x105894f1
1058941d:	0f be 4c 24 15                                  	movsx  ecx,BYTE PTR [esp+0x15]
10589422:	8d 54 24 34                                     	lea    edx,[esp+0x34]
10589426:	52                                              	push   edx
10589427:	0f be 54 24 18                                  	movsx  edx,BYTE PTR [esp+0x18]
1058942c:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10589430:	50                                              	push   eax
10589431:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
10589435:	83 ec 08                                        	sub    esp,0x8
10589438:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1058943e:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
10589442:	8b cb                                           	mov    ecx,ebx
10589444:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10589449:	e8 32 d6 ae ff                                  	call   0x10076a80
1058944e:	f3 0f 10 4c 24 34                               	movss  xmm1,DWORD PTR [esp+0x34]
10589454:	f3 0f 10 44 24 30                               	movss  xmm0,DWORD PTR [esp+0x30]
1058945a:	6a 00                                           	push   0x0
1058945c:	f3 0f 11 4c 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm1
10589462:	0f 57 c9                                        	xorps  xmm1,xmm1
10589465:	6a 01                                           	push   0x1
10589467:	f3 0f 11 44 24 74                               	movss  DWORD PTR [esp+0x74],xmm0
1058946d:	f3 0f 11 4c 24 6c                               	movss  DWORD PTR [esp+0x6c],xmm1
10589473:	f3 0f 11 44 24 68                               	movss  DWORD PTR [esp+0x68],xmm0
10589479:	0f 28 44 24 68                                  	movaps xmm0,XMMWORD PTR [esp+0x68]
1058947e:	53                                              	push   ebx
1058947f:	8d 44 24 7c                                     	lea    eax,[esp+0x7c]
10589483:	50                                              	push   eax
10589484:	8b ce                                           	mov    ecx,esi
10589486:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
1058948e:	e8 fd dd db ff                                  	call   0x10347290
10589493:	84 c0                                           	test   al,al
10589495:	74 5a                                           	je     0x105894f1
10589497:	0f be 44 24 15                                  	movsx  eax,BYTE PTR [esp+0x15]
1058949c:	0f be 4c 24 14                                  	movsx  ecx,BYTE PTR [esp+0x14]
105894a1:	c1 e0 10                                        	shl    eax,0x10
105894a4:	0b c1                                           	or     eax,ecx
105894a6:	99                                              	cdq
105894a7:	8b c8                                           	mov    ecx,eax
105894a9:	0f be 44 24 16                                  	movsx  eax,BYTE PTR [esp+0x16]
105894ae:	8b f2                                           	mov    esi,edx
105894b0:	99                                              	cdq
105894b1:	25 ff ff 00 00                                  	and    eax,0xffff
105894b6:	33 d2                                           	xor    edx,edx
105894b8:	0b ca                                           	or     ecx,edx
105894ba:	0b f0                                           	or     esi,eax
105894bc:	3b 7c 24 58                                     	cmp    edi,DWORD PTR [esp+0x58]
105894c0:	89 4c 24 48                                     	mov    DWORD PTR [esp+0x48],ecx
105894c4:	89 74 24 4c                                     	mov    DWORD PTR [esp+0x4c],esi
105894c8:	73 14                                           	jae    0x105894de
105894ca:	8b c7                                           	mov    eax,edi
105894cc:	83 c7 08                                        	add    edi,0x8
105894cf:	85 c0                                           	test   eax,eax
105894d1:	89 7c 24 54                                     	mov    DWORD PTR [esp+0x54],edi
105894d5:	74 1a                                           	je     0x105894f1
105894d7:	89 08                                           	mov    DWORD PTR [eax],ecx
105894d9:	89 70 04                                        	mov    DWORD PTR [eax+0x4],esi
105894dc:	eb 13                                           	jmp    0x105894f1
105894de:	8d 44 24 48                                     	lea    eax,[esp+0x48]
105894e2:	50                                              	push   eax
105894e3:	57                                              	push   edi
105894e4:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
105894e8:	e8 13 d5 aa ff                                  	call   0x10036a00
105894ed:	8b 7c 24 54                                     	mov    edi,DWORD PTR [esp+0x54]
105894f1:	8a 44 24 15                                     	mov    al,BYTE PTR [esp+0x15]
105894f5:	04 01                                           	add    al,0x1
105894f7:	0f be c8                                        	movsx  ecx,al
105894fa:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
105894fe:	88 44 24 15                                     	mov    BYTE PTR [esp+0x15],al
10589502:	0f 8c 39 fe ff ff                               	jl     0x10589341
10589508:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
1058950c:	8a 44 24 14                                     	mov    al,BYTE PTR [esp+0x14]
10589510:	04 01                                           	add    al,0x1
10589512:	0f be d0                                        	movsx  edx,al
10589515:	3b d1                                           	cmp    edx,ecx
10589517:	88 44 24 14                                     	mov    BYTE PTR [esp+0x14],al
1058951b:	0f 8c 10 fe ff ff                               	jl     0x10589331
10589521:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
10589525:	8a 44 24 16                                     	mov    al,BYTE PTR [esp+0x16]
10589529:	04 01                                           	add    al,0x1
1058952b:	88 44 24 16                                     	mov    BYTE PTR [esp+0x16],al
1058952f:	0f be c0                                        	movsx  eax,al
10589532:	3b c2                                           	cmp    eax,edx
10589534:	0f 8e ea fd ff ff                               	jle    0x10589324
1058953a:	8b 74 24 50                                     	mov    esi,DWORD PTR [esp+0x50]
1058953e:	3b f7                                           	cmp    esi,edi
10589540:	74 33                                           	je     0x10589575
10589542:	e8 d9 1b fd ff                                  	call   0x1055b120
10589547:	8b d8                                           	mov    ebx,eax
10589549:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1058954b:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
10589551:	2b fe                                           	sub    edi,esi
10589553:	c1 ff 03                                        	sar    edi,0x3
10589556:	57                                              	push   edi
10589557:	8d 44 24 24                                     	lea    eax,[esp+0x24]
1058955b:	50                                              	push   eax
1058955c:	8b cb                                           	mov    ecx,ebx
1058955e:	ff d2                                           	call   edx
10589560:	8b 03                                           	mov    eax,DWORD PTR [ebx]
10589562:	8b 90 a0 00 00 00                               	mov    edx,DWORD PTR [eax+0xa0]
10589568:	57                                              	push   edi
10589569:	6a 00                                           	push   0x0
1058956b:	56                                              	push   esi
1058956c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10589570:	51                                              	push   ecx
10589571:	8b cb                                           	mov    ecx,ebx
10589573:	ff d2                                           	call   edx
10589575:	85 f6                                           	test   esi,esi
10589577:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
1058957b:	74 09                                           	je     0x10589586
1058957d:	56                                              	push   esi
1058957e:	e8 0d f9 38 00                                  	call   0x10918e90
10589583:	83 c4 04                                        	add    esp,0x4
10589586:	8b c7                                           	mov    eax,edi
10589588:	5f                                              	pop    edi
10589589:	5e                                              	pop    esi
1058958a:	5b                                              	pop    ebx
1058958b:	8b e5                                           	mov    esp,ebp
1058958d:	5d                                              	pop    ebp
1058958e:	c3                                              	ret
1058958f:	cc                                              	int3
