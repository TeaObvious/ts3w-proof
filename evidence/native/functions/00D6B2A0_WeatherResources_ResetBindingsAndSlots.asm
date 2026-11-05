# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00d6b2a0 WeatherResources_ResetBindingsAndSlots
# Complete actual Ghidra owned ranges: 00d6b2a0..00d6be72; 1050 instructions/3027 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00D6B2A0_WeatherResources_ResetBindingsAndSlots.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d6b2a0 <.text+0x96a2a0>:
  d6b2a0:	53                                              	push   ebx
  d6b2a1:	56                                              	push   esi
  d6b2a2:	8b 35 30 85 1d 01                               	mov    esi,DWORD PTR ds:0x11d8530
  d6b2a8:	33 db                                           	xor    ebx,ebx
  d6b2aa:	3b f3                                           	cmp    esi,ebx
  d6b2ac:	57                                              	push   edi
  d6b2ad:	8b f9                                           	mov    edi,ecx
  d6b2af:	0f 84 b1 04 00 00                               	je     0xd6b766
  d6b2b5:	38 1f                                           	cmp    BYTE PTR [edi],bl
  d6b2b7:	0f 84 a9 04 00 00                               	je     0xd6b766
  d6b2bd:	8b 47 40                                        	mov    eax,DWORD PTR [edi+0x40]
  d6b2c0:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b2c3:	73 14                                           	jae    0xd6b2d9
  d6b2c5:	c1 e0 04                                        	shl    eax,0x4
  d6b2c8:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b2cb:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b2ce:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b2d2:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b2d6:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b2d9:	8b 47 44                                        	mov    eax,DWORD PTR [edi+0x44]
  d6b2dc:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b2df:	73 14                                           	jae    0xd6b2f5
  d6b2e1:	c1 e0 04                                        	shl    eax,0x4
  d6b2e4:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b2e7:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b2ea:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b2ee:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b2f2:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b2f5:	8b 47 48                                        	mov    eax,DWORD PTR [edi+0x48]
  d6b2f8:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b2fb:	73 14                                           	jae    0xd6b311
  d6b2fd:	c1 e0 04                                        	shl    eax,0x4
  d6b300:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b303:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b306:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b30a:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b30e:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b311:	e8 ba d9 f1 ff                                  	call   0xc88cd0
  d6b316:	84 c0                                           	test   al,al
  d6b318:	0f 84 48 04 00 00                               	je     0xd6b766
  d6b31e:	8b 47 60                                        	mov    eax,DWORD PTR [edi+0x60]
  d6b321:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b324:	73 14                                           	jae    0xd6b33a
  d6b326:	c1 e0 04                                        	shl    eax,0x4
  d6b329:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b32c:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b32f:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b333:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b337:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b33a:	8b 87 80 00 00 00                               	mov    eax,DWORD PTR [edi+0x80]
  d6b340:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b343:	73 14                                           	jae    0xd6b359
  d6b345:	c1 e0 04                                        	shl    eax,0x4
  d6b348:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b34b:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b34e:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b352:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b356:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b359:	8b 87 a0 00 00 00                               	mov    eax,DWORD PTR [edi+0xa0]
  d6b35f:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b362:	73 14                                           	jae    0xd6b378
  d6b364:	c1 e0 04                                        	shl    eax,0x4
  d6b367:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b36a:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b36d:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b371:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b375:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b378:	8b 87 a4 00 00 00                               	mov    eax,DWORD PTR [edi+0xa4]
  d6b37e:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b381:	73 14                                           	jae    0xd6b397
  d6b383:	c1 e0 04                                        	shl    eax,0x4
  d6b386:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b389:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b38c:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b390:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b394:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b397:	8b 87 e4 00 00 00                               	mov    eax,DWORD PTR [edi+0xe4]
  d6b39d:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b3a0:	73 14                                           	jae    0xd6b3b6
  d6b3a2:	c1 e0 04                                        	shl    eax,0x4
  d6b3a5:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b3a8:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b3ab:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b3af:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b3b3:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b3b6:	8b 87 c0 00 00 00                               	mov    eax,DWORD PTR [edi+0xc0]
  d6b3bc:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b3bf:	73 14                                           	jae    0xd6b3d5
  d6b3c1:	c1 e0 04                                        	shl    eax,0x4
  d6b3c4:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b3c7:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b3ca:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b3ce:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b3d2:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b3d5:	8b 87 c4 00 00 00                               	mov    eax,DWORD PTR [edi+0xc4]
  d6b3db:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b3de:	73 14                                           	jae    0xd6b3f4
  d6b3e0:	c1 e0 04                                        	shl    eax,0x4
  d6b3e3:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b3e6:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b3e9:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b3ed:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b3f1:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b3f4:	8b 87 c8 00 00 00                               	mov    eax,DWORD PTR [edi+0xc8]
  d6b3fa:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b3fd:	73 14                                           	jae    0xd6b413
  d6b3ff:	c1 e0 04                                        	shl    eax,0x4
  d6b402:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b405:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b408:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b40c:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b410:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b413:	8b 87 e8 00 00 00                               	mov    eax,DWORD PTR [edi+0xe8]
  d6b419:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b41c:	73 14                                           	jae    0xd6b432
  d6b41e:	c1 e0 04                                        	shl    eax,0x4
  d6b421:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b424:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b427:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b42b:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b42f:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b432:	8b 87 ec 00 00 00                               	mov    eax,DWORD PTR [edi+0xec]
  d6b438:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b43b:	73 14                                           	jae    0xd6b451
  d6b43d:	c1 e0 04                                        	shl    eax,0x4
  d6b440:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b443:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b446:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b44a:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b44e:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b451:	8b 87 f0 00 00 00                               	mov    eax,DWORD PTR [edi+0xf0]
  d6b457:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b45a:	73 14                                           	jae    0xd6b470
  d6b45c:	c1 e0 04                                        	shl    eax,0x4
  d6b45f:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b462:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b465:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b469:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b46d:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b470:	8b 87 f4 00 00 00                               	mov    eax,DWORD PTR [edi+0xf4]
  d6b476:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b479:	73 14                                           	jae    0xd6b48f
  d6b47b:	c1 e0 04                                        	shl    eax,0x4
  d6b47e:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b481:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b484:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b488:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b48c:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b48f:	8b 87 cc 00 00 00                               	mov    eax,DWORD PTR [edi+0xcc]
  d6b495:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b498:	73 14                                           	jae    0xd6b4ae
  d6b49a:	c1 e0 04                                        	shl    eax,0x4
  d6b49d:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b4a0:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b4a3:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b4a7:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b4ab:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b4ae:	8b 87 d0 00 00 00                               	mov    eax,DWORD PTR [edi+0xd0]
  d6b4b4:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b4b7:	73 14                                           	jae    0xd6b4cd
  d6b4b9:	c1 e0 04                                        	shl    eax,0x4
  d6b4bc:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b4bf:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b4c2:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b4c6:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b4ca:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b4cd:	8b 87 d4 00 00 00                               	mov    eax,DWORD PTR [edi+0xd4]
  d6b4d3:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b4d6:	73 14                                           	jae    0xd6b4ec
  d6b4d8:	c1 e0 04                                        	shl    eax,0x4
  d6b4db:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b4de:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b4e1:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b4e5:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b4e9:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b4ec:	8b 87 d8 00 00 00                               	mov    eax,DWORD PTR [edi+0xd8]
  d6b4f2:	53                                              	push   ebx
  d6b4f3:	50                                              	push   eax
  d6b4f4:	8b ce                                           	mov    ecx,esi
  d6b4f6:	e8 85 eb a2 ff                                  	call   0x79a080
  d6b4fb:	8b 8f dc 00 00 00                               	mov    ecx,DWORD PTR [edi+0xdc]
  d6b501:	53                                              	push   ebx
  d6b502:	51                                              	push   ecx
  d6b503:	8b ce                                           	mov    ecx,esi
  d6b505:	e8 76 eb a2 ff                                  	call   0x79a080
  d6b50a:	8b 97 e0 00 00 00                               	mov    edx,DWORD PTR [edi+0xe0]
  d6b510:	53                                              	push   ebx
  d6b511:	52                                              	push   edx
  d6b512:	8b ce                                           	mov    ecx,esi
  d6b514:	e8 67 eb a2 ff                                  	call   0x79a080
  d6b519:	8b 87 f8 00 00 00                               	mov    eax,DWORD PTR [edi+0xf8]
  d6b51f:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b522:	73 14                                           	jae    0xd6b538
  d6b524:	c1 e0 04                                        	shl    eax,0x4
  d6b527:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b52a:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b52d:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b531:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b535:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b538:	8b 87 fc 00 00 00                               	mov    eax,DWORD PTR [edi+0xfc]
  d6b53e:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b541:	73 14                                           	jae    0xd6b557
  d6b543:	c1 e0 04                                        	shl    eax,0x4
  d6b546:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b549:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b54c:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b550:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b554:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b557:	8b 87 00 01 00 00                               	mov    eax,DWORD PTR [edi+0x100]
  d6b55d:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b560:	73 14                                           	jae    0xd6b576
  d6b562:	c1 e0 04                                        	shl    eax,0x4
  d6b565:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b568:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b56b:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b56f:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b573:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b576:	8b 87 04 01 00 00                               	mov    eax,DWORD PTR [edi+0x104]
  d6b57c:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b57f:	73 14                                           	jae    0xd6b595
  d6b581:	c1 e0 04                                        	shl    eax,0x4
  d6b584:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b587:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b58a:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b58e:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b592:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b595:	8b 87 08 01 00 00                               	mov    eax,DWORD PTR [edi+0x108]
  d6b59b:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b59e:	73 14                                           	jae    0xd6b5b4
  d6b5a0:	c1 e0 04                                        	shl    eax,0x4
  d6b5a3:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b5a6:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b5a9:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b5ad:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b5b1:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b5b4:	8b 87 0c 01 00 00                               	mov    eax,DWORD PTR [edi+0x10c]
  d6b5ba:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b5bd:	73 14                                           	jae    0xd6b5d3
  d6b5bf:	c1 e0 04                                        	shl    eax,0x4
  d6b5c2:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b5c5:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b5c8:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b5cc:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b5d0:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b5d3:	8b 87 10 01 00 00                               	mov    eax,DWORD PTR [edi+0x110]
  d6b5d9:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b5dc:	73 14                                           	jae    0xd6b5f2
  d6b5de:	c1 e0 04                                        	shl    eax,0x4
  d6b5e1:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b5e4:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b5e7:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b5eb:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b5ef:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b5f2:	8b 87 14 01 00 00                               	mov    eax,DWORD PTR [edi+0x114]
  d6b5f8:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b5fb:	73 14                                           	jae    0xd6b611
  d6b5fd:	c1 e0 04                                        	shl    eax,0x4
  d6b600:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b603:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b606:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b60a:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b60e:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b611:	8b 87 18 01 00 00                               	mov    eax,DWORD PTR [edi+0x118]
  d6b617:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b61a:	73 14                                           	jae    0xd6b630
  d6b61c:	c1 e0 04                                        	shl    eax,0x4
  d6b61f:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b622:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b625:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b629:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b62d:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b630:	8b 87 1c 01 00 00                               	mov    eax,DWORD PTR [edi+0x11c]
  d6b636:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b639:	73 14                                           	jae    0xd6b64f
  d6b63b:	c1 e0 04                                        	shl    eax,0x4
  d6b63e:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b641:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b644:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b648:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b64c:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b64f:	8b 87 20 01 00 00                               	mov    eax,DWORD PTR [edi+0x120]
  d6b655:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b658:	73 14                                           	jae    0xd6b66e
  d6b65a:	c1 e0 04                                        	shl    eax,0x4
  d6b65d:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b660:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b663:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b667:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b66b:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b66e:	8b 87 24 01 00 00                               	mov    eax,DWORD PTR [edi+0x124]
  d6b674:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b677:	73 14                                           	jae    0xd6b68d
  d6b679:	c1 e0 04                                        	shl    eax,0x4
  d6b67c:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b67f:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b682:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b686:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b68a:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b68d:	8b 87 28 01 00 00                               	mov    eax,DWORD PTR [edi+0x128]
  d6b693:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b696:	73 14                                           	jae    0xd6b6ac
  d6b698:	c1 e0 04                                        	shl    eax,0x4
  d6b69b:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b69e:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b6a1:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b6a5:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b6a9:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b6ac:	8b 87 2c 01 00 00                               	mov    eax,DWORD PTR [edi+0x12c]
  d6b6b2:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b6b5:	73 14                                           	jae    0xd6b6cb
  d6b6b7:	c1 e0 04                                        	shl    eax,0x4
  d6b6ba:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b6bd:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b6c0:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b6c4:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b6c8:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b6cb:	8b 87 30 01 00 00                               	mov    eax,DWORD PTR [edi+0x130]
  d6b6d1:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b6d4:	73 14                                           	jae    0xd6b6ea
  d6b6d6:	c1 e0 04                                        	shl    eax,0x4
  d6b6d9:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b6dc:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b6df:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b6e3:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b6e7:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b6ea:	8b 87 34 01 00 00                               	mov    eax,DWORD PTR [edi+0x134]
  d6b6f0:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b6f3:	73 14                                           	jae    0xd6b709
  d6b6f5:	c1 e0 04                                        	shl    eax,0x4
  d6b6f8:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b6fb:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b6fe:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b702:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b706:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b709:	8b 87 38 01 00 00                               	mov    eax,DWORD PTR [edi+0x138]
  d6b70f:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b712:	73 14                                           	jae    0xd6b728
  d6b714:	c1 e0 04                                        	shl    eax,0x4
  d6b717:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b71a:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b71d:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b721:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b725:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b728:	8b 87 3c 01 00 00                               	mov    eax,DWORD PTR [edi+0x13c]
  d6b72e:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b731:	73 14                                           	jae    0xd6b747
  d6b733:	c1 e0 04                                        	shl    eax,0x4
  d6b736:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b739:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b73c:	66 8b 56 12                                     	mov    dx,WORD PTR [esi+0x12]
  d6b740:	66 89 50 04                                     	mov    WORD PTR [eax+0x4],dx
  d6b744:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b747:	8b 87 40 01 00 00                               	mov    eax,DWORD PTR [edi+0x140]
  d6b74d:	3b 46 08                                        	cmp    eax,DWORD PTR [esi+0x8]
  d6b750:	73 14                                           	jae    0xd6b766
  d6b752:	c1 e0 04                                        	shl    eax,0x4
  d6b755:	03 46 04                                        	add    eax,DWORD PTR [esi+0x4]
  d6b758:	83 00 01                                        	add    DWORD PTR [eax],0x1
  d6b75b:	66 8b 4e 12                                     	mov    cx,WORD PTR [esi+0x12]
  d6b75f:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  d6b763:	89 58 0c                                        	mov    DWORD PTR [eax+0xc],ebx
  d6b766:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b76c:	3b cb                                           	cmp    ecx,ebx
  d6b76e:	8d b7 48 01 00 00                               	lea    esi,[edi+0x148]
  d6b774:	74 0d                                           	je     0xd6b783
  d6b776:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b778:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6b77b:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b780:	56                                              	push   esi
  d6b781:	ff d0                                           	call   eax
  d6b783:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b785:	85 c9                                           	test   ecx,ecx
  d6b787:	74 12                                           	je     0xd6b79b
  d6b789:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6b78b:	f6 c2 03                                        	test   dl,0x3
  d6b78e:	75 0b                                           	jne    0xd6b79b
  d6b790:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b792:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b794:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6b797:	ff d2                                           	call   edx
  d6b799:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b79b:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b79d:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b7a3:	3b cb                                           	cmp    ecx,ebx
  d6b7a5:	8d b7 50 01 00 00                               	lea    esi,[edi+0x150]
  d6b7ab:	74 0d                                           	je     0xd6b7ba
  d6b7ad:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b7af:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6b7b2:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b7b7:	56                                              	push   esi
  d6b7b8:	ff d2                                           	call   edx
  d6b7ba:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6b7bc:	85 c0                                           	test   eax,eax
  d6b7be:	74 12                                           	je     0xd6b7d2
  d6b7c0:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b7c2:	f6 c1 03                                        	test   cl,0x3
  d6b7c5:	75 0b                                           	jne    0xd6b7d2
  d6b7c7:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b7c9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b7cb:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6b7ce:	ff d0                                           	call   eax
  d6b7d0:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b7d2:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b7d4:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b7da:	3b cb                                           	cmp    ecx,ebx
  d6b7dc:	55                                              	push   ebp
  d6b7dd:	8d af 4c 01 00 00                               	lea    ebp,[edi+0x14c]
  d6b7e3:	74 0d                                           	je     0xd6b7f2
  d6b7e5:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b7e7:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6b7ea:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b7ef:	55                                              	push   ebp
  d6b7f0:	ff d0                                           	call   eax
  d6b7f2:	8b 4d 00                                        	mov    ecx,DWORD PTR [ebp+0x0]
  d6b7f5:	85 c9                                           	test   ecx,ecx
  d6b7f7:	74 15                                           	je     0xd6b80e
  d6b7f9:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  d6b7fc:	f6 c2 03                                        	test   dl,0x3
  d6b7ff:	75 0d                                           	jne    0xd6b80e
  d6b801:	8b 4d 00                                        	mov    ecx,DWORD PTR [ebp+0x0]
  d6b804:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b806:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6b809:	ff d2                                           	call   edx
  d6b80b:	89 5d 00                                        	mov    DWORD PTR [ebp+0x0],ebx
  d6b80e:	89 5d 00                                        	mov    DWORD PTR [ebp+0x0],ebx
  d6b811:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b817:	3b cb                                           	cmp    ecx,ebx
  d6b819:	5d                                              	pop    ebp
  d6b81a:	74 0d                                           	je     0xd6b829
  d6b81c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b81e:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6b821:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b826:	56                                              	push   esi
  d6b827:	ff d2                                           	call   edx
  d6b829:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6b82b:	85 c0                                           	test   eax,eax
  d6b82d:	74 12                                           	je     0xd6b841
  d6b82f:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b831:	f6 c1 03                                        	test   cl,0x3
  d6b834:	75 0b                                           	jne    0xd6b841
  d6b836:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b838:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b83a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6b83d:	ff d0                                           	call   eax
  d6b83f:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b841:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b843:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b849:	3b cb                                           	cmp    ecx,ebx
  d6b84b:	8d b7 54 01 00 00                               	lea    esi,[edi+0x154]
  d6b851:	74 0d                                           	je     0xd6b860
  d6b853:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b855:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6b858:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b85d:	56                                              	push   esi
  d6b85e:	ff d0                                           	call   eax
  d6b860:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b862:	85 c9                                           	test   ecx,ecx
  d6b864:	74 12                                           	je     0xd6b878
  d6b866:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6b868:	f6 c2 03                                        	test   dl,0x3
  d6b86b:	75 0b                                           	jne    0xd6b878
  d6b86d:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b86f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b871:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6b874:	ff d2                                           	call   edx
  d6b876:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b878:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b87a:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b880:	3b cb                                           	cmp    ecx,ebx
  d6b882:	8d b7 44 01 00 00                               	lea    esi,[edi+0x144]
  d6b888:	74 0d                                           	je     0xd6b897
  d6b88a:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b88c:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6b88f:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b894:	56                                              	push   esi
  d6b895:	ff d2                                           	call   edx
  d6b897:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6b899:	85 c0                                           	test   eax,eax
  d6b89b:	74 12                                           	je     0xd6b8af
  d6b89d:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b89f:	f6 c1 03                                        	test   cl,0x3
  d6b8a2:	75 0b                                           	jne    0xd6b8af
  d6b8a4:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b8a6:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b8a8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6b8ab:	ff d0                                           	call   eax
  d6b8ad:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b8af:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b8b1:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b8b7:	3b cb                                           	cmp    ecx,ebx
  d6b8b9:	8d b7 58 01 00 00                               	lea    esi,[edi+0x158]
  d6b8bf:	74 0d                                           	je     0xd6b8ce
  d6b8c1:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b8c3:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6b8c6:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b8cb:	56                                              	push   esi
  d6b8cc:	ff d0                                           	call   eax
  d6b8ce:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b8d0:	85 c9                                           	test   ecx,ecx
  d6b8d2:	74 12                                           	je     0xd6b8e6
  d6b8d4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6b8d6:	f6 c2 03                                        	test   dl,0x3
  d6b8d9:	75 0b                                           	jne    0xd6b8e6
  d6b8db:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b8dd:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b8df:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6b8e2:	ff d2                                           	call   edx
  d6b8e4:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b8e6:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b8e8:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b8ee:	3b cb                                           	cmp    ecx,ebx
  d6b8f0:	8d b7 5c 01 00 00                               	lea    esi,[edi+0x15c]
  d6b8f6:	74 0d                                           	je     0xd6b905
  d6b8f8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b8fa:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6b8fd:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b902:	56                                              	push   esi
  d6b903:	ff d2                                           	call   edx
  d6b905:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6b907:	85 c0                                           	test   eax,eax
  d6b909:	74 12                                           	je     0xd6b91d
  d6b90b:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b90d:	f6 c1 03                                        	test   cl,0x3
  d6b910:	75 0b                                           	jne    0xd6b91d
  d6b912:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b914:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b916:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6b919:	ff d0                                           	call   eax
  d6b91b:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b91d:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b91f:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b925:	3b cb                                           	cmp    ecx,ebx
  d6b927:	8d b7 60 01 00 00                               	lea    esi,[edi+0x160]
  d6b92d:	74 0d                                           	je     0xd6b93c
  d6b92f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b931:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6b934:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b939:	56                                              	push   esi
  d6b93a:	ff d0                                           	call   eax
  d6b93c:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b93e:	85 c9                                           	test   ecx,ecx
  d6b940:	74 12                                           	je     0xd6b954
  d6b942:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6b944:	f6 c2 03                                        	test   dl,0x3
  d6b947:	75 0b                                           	jne    0xd6b954
  d6b949:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b94b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b94d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6b950:	ff d2                                           	call   edx
  d6b952:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b954:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b956:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b95c:	3b cb                                           	cmp    ecx,ebx
  d6b95e:	8d b7 64 01 00 00                               	lea    esi,[edi+0x164]
  d6b964:	74 0d                                           	je     0xd6b973
  d6b966:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b968:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6b96b:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b970:	56                                              	push   esi
  d6b971:	ff d2                                           	call   edx
  d6b973:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6b975:	85 c0                                           	test   eax,eax
  d6b977:	74 12                                           	je     0xd6b98b
  d6b979:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b97b:	f6 c1 03                                        	test   cl,0x3
  d6b97e:	75 0b                                           	jne    0xd6b98b
  d6b980:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b982:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b984:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6b987:	ff d0                                           	call   eax
  d6b989:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b98b:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b98d:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b993:	3b cb                                           	cmp    ecx,ebx
  d6b995:	8d b7 68 01 00 00                               	lea    esi,[edi+0x168]
  d6b99b:	74 0d                                           	je     0xd6b9aa
  d6b99d:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b99f:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6b9a2:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b9a7:	56                                              	push   esi
  d6b9a8:	ff d0                                           	call   eax
  d6b9aa:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b9ac:	85 c9                                           	test   ecx,ecx
  d6b9ae:	74 12                                           	je     0xd6b9c2
  d6b9b0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6b9b2:	f6 c2 03                                        	test   dl,0x3
  d6b9b5:	75 0b                                           	jne    0xd6b9c2
  d6b9b7:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b9b9:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b9bb:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6b9be:	ff d2                                           	call   edx
  d6b9c0:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b9c2:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b9c4:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6b9ca:	3b cb                                           	cmp    ecx,ebx
  d6b9cc:	8d b7 6c 01 00 00                               	lea    esi,[edi+0x16c]
  d6b9d2:	74 0d                                           	je     0xd6b9e1
  d6b9d4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6b9d6:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6b9d9:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6b9de:	56                                              	push   esi
  d6b9df:	ff d2                                           	call   edx
  d6b9e1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6b9e3:	85 c0                                           	test   eax,eax
  d6b9e5:	74 12                                           	je     0xd6b9f9
  d6b9e7:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b9e9:	f6 c1 03                                        	test   cl,0x3
  d6b9ec:	75 0b                                           	jne    0xd6b9f9
  d6b9ee:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6b9f0:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6b9f2:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6b9f5:	ff d0                                           	call   eax
  d6b9f7:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b9f9:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6b9fb:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6ba01:	3b cb                                           	cmp    ecx,ebx
  d6ba03:	8d b7 70 01 00 00                               	lea    esi,[edi+0x170]
  d6ba09:	74 0d                                           	je     0xd6ba18
  d6ba0b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6ba0d:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6ba10:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6ba15:	56                                              	push   esi
  d6ba16:	ff d0                                           	call   eax
  d6ba18:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ba1a:	85 c9                                           	test   ecx,ecx
  d6ba1c:	74 12                                           	je     0xd6ba30
  d6ba1e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6ba20:	f6 c2 03                                        	test   dl,0x3
  d6ba23:	75 0b                                           	jne    0xd6ba30
  d6ba25:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ba27:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6ba29:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6ba2c:	ff d2                                           	call   edx
  d6ba2e:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6ba30:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6ba32:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6ba38:	3b cb                                           	cmp    ecx,ebx
  d6ba3a:	8d b7 74 01 00 00                               	lea    esi,[edi+0x174]
  d6ba40:	74 0d                                           	je     0xd6ba4f
  d6ba42:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6ba44:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6ba47:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6ba4c:	56                                              	push   esi
  d6ba4d:	ff d2                                           	call   edx
  d6ba4f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6ba51:	85 c0                                           	test   eax,eax
  d6ba53:	74 12                                           	je     0xd6ba67
  d6ba55:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ba57:	f6 c1 03                                        	test   cl,0x3
  d6ba5a:	75 0b                                           	jne    0xd6ba67
  d6ba5c:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ba5e:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6ba60:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6ba63:	ff d0                                           	call   eax
  d6ba65:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6ba67:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6ba69:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6ba6f:	3b cb                                           	cmp    ecx,ebx
  d6ba71:	8d b7 78 01 00 00                               	lea    esi,[edi+0x178]
  d6ba77:	74 0d                                           	je     0xd6ba86
  d6ba79:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6ba7b:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6ba7e:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6ba83:	56                                              	push   esi
  d6ba84:	ff d0                                           	call   eax
  d6ba86:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ba88:	85 c9                                           	test   ecx,ecx
  d6ba8a:	74 12                                           	je     0xd6ba9e
  d6ba8c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6ba8e:	f6 c2 03                                        	test   dl,0x3
  d6ba91:	75 0b                                           	jne    0xd6ba9e
  d6ba93:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6ba95:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6ba97:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6ba9a:	ff d2                                           	call   edx
  d6ba9c:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6ba9e:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6baa0:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6baa6:	3b cb                                           	cmp    ecx,ebx
  d6baa8:	8d b7 7c 01 00 00                               	lea    esi,[edi+0x17c]
  d6baae:	74 0d                                           	je     0xd6babd
  d6bab0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bab2:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6bab5:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6baba:	56                                              	push   esi
  d6babb:	ff d2                                           	call   edx
  d6babd:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6babf:	85 c0                                           	test   eax,eax
  d6bac1:	74 12                                           	je     0xd6bad5
  d6bac3:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bac5:	f6 c1 03                                        	test   cl,0x3
  d6bac8:	75 0b                                           	jne    0xd6bad5
  d6baca:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bacc:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bace:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6bad1:	ff d0                                           	call   eax
  d6bad3:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bad5:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bad7:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6badd:	3b cb                                           	cmp    ecx,ebx
  d6badf:	8d b7 80 01 00 00                               	lea    esi,[edi+0x180]
  d6bae5:	74 0d                                           	je     0xd6baf4
  d6bae7:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bae9:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6baec:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6baf1:	56                                              	push   esi
  d6baf2:	ff d0                                           	call   eax
  d6baf4:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6baf6:	85 c9                                           	test   ecx,ecx
  d6baf8:	74 12                                           	je     0xd6bb0c
  d6bafa:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6bafc:	f6 c2 03                                        	test   dl,0x3
  d6baff:	75 0b                                           	jne    0xd6bb0c
  d6bb01:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bb03:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bb05:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6bb08:	ff d2                                           	call   edx
  d6bb0a:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bb0c:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bb0e:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bb14:	3b cb                                           	cmp    ecx,ebx
  d6bb16:	8d b7 84 01 00 00                               	lea    esi,[edi+0x184]
  d6bb1c:	74 0d                                           	je     0xd6bb2b
  d6bb1e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bb20:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6bb23:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bb28:	56                                              	push   esi
  d6bb29:	ff d2                                           	call   edx
  d6bb2b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6bb2d:	85 c0                                           	test   eax,eax
  d6bb2f:	74 12                                           	je     0xd6bb43
  d6bb31:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bb33:	f6 c1 03                                        	test   cl,0x3
  d6bb36:	75 0b                                           	jne    0xd6bb43
  d6bb38:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bb3a:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bb3c:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6bb3f:	ff d0                                           	call   eax
  d6bb41:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bb43:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bb45:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bb4b:	3b cb                                           	cmp    ecx,ebx
  d6bb4d:	8d b7 88 01 00 00                               	lea    esi,[edi+0x188]
  d6bb53:	74 0d                                           	je     0xd6bb62
  d6bb55:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bb57:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6bb5a:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bb5f:	56                                              	push   esi
  d6bb60:	ff d0                                           	call   eax
  d6bb62:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bb64:	85 c9                                           	test   ecx,ecx
  d6bb66:	74 12                                           	je     0xd6bb7a
  d6bb68:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6bb6a:	f6 c2 03                                        	test   dl,0x3
  d6bb6d:	75 0b                                           	jne    0xd6bb7a
  d6bb6f:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bb71:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bb73:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6bb76:	ff d2                                           	call   edx
  d6bb78:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bb7a:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bb7c:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bb82:	3b cb                                           	cmp    ecx,ebx
  d6bb84:	8d b7 8c 01 00 00                               	lea    esi,[edi+0x18c]
  d6bb8a:	74 0d                                           	je     0xd6bb99
  d6bb8c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bb8e:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6bb91:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bb96:	56                                              	push   esi
  d6bb97:	ff d2                                           	call   edx
  d6bb99:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6bb9b:	85 c0                                           	test   eax,eax
  d6bb9d:	74 12                                           	je     0xd6bbb1
  d6bb9f:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bba1:	f6 c1 03                                        	test   cl,0x3
  d6bba4:	75 0b                                           	jne    0xd6bbb1
  d6bba6:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bba8:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bbaa:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6bbad:	ff d0                                           	call   eax
  d6bbaf:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bbb1:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bbb3:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bbb9:	3b cb                                           	cmp    ecx,ebx
  d6bbbb:	8d b7 90 01 00 00                               	lea    esi,[edi+0x190]
  d6bbc1:	74 0d                                           	je     0xd6bbd0
  d6bbc3:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bbc5:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6bbc8:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bbcd:	56                                              	push   esi
  d6bbce:	ff d0                                           	call   eax
  d6bbd0:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bbd2:	85 c9                                           	test   ecx,ecx
  d6bbd4:	74 12                                           	je     0xd6bbe8
  d6bbd6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6bbd8:	f6 c2 03                                        	test   dl,0x3
  d6bbdb:	75 0b                                           	jne    0xd6bbe8
  d6bbdd:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bbdf:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bbe1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6bbe4:	ff d2                                           	call   edx
  d6bbe6:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bbe8:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bbea:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bbf0:	3b cb                                           	cmp    ecx,ebx
  d6bbf2:	8d b7 94 01 00 00                               	lea    esi,[edi+0x194]
  d6bbf8:	74 0d                                           	je     0xd6bc07
  d6bbfa:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bbfc:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6bbff:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bc04:	56                                              	push   esi
  d6bc05:	ff d2                                           	call   edx
  d6bc07:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6bc09:	85 c0                                           	test   eax,eax
  d6bc0b:	74 12                                           	je     0xd6bc1f
  d6bc0d:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bc0f:	f6 c1 03                                        	test   cl,0x3
  d6bc12:	75 0b                                           	jne    0xd6bc1f
  d6bc14:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bc16:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bc18:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6bc1b:	ff d0                                           	call   eax
  d6bc1d:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bc1f:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bc21:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bc27:	3b cb                                           	cmp    ecx,ebx
  d6bc29:	8d b7 98 01 00 00                               	lea    esi,[edi+0x198]
  d6bc2f:	74 0d                                           	je     0xd6bc3e
  d6bc31:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bc33:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6bc36:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bc3b:	56                                              	push   esi
  d6bc3c:	ff d0                                           	call   eax
  d6bc3e:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bc40:	85 c9                                           	test   ecx,ecx
  d6bc42:	74 12                                           	je     0xd6bc56
  d6bc44:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6bc46:	f6 c2 03                                        	test   dl,0x3
  d6bc49:	75 0b                                           	jne    0xd6bc56
  d6bc4b:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bc4d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bc4f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6bc52:	ff d2                                           	call   edx
  d6bc54:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bc56:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bc58:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bc5e:	3b cb                                           	cmp    ecx,ebx
  d6bc60:	8d b7 b8 01 00 00                               	lea    esi,[edi+0x1b8]
  d6bc66:	74 0d                                           	je     0xd6bc75
  d6bc68:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bc6a:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6bc6d:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bc72:	56                                              	push   esi
  d6bc73:	ff d2                                           	call   edx
  d6bc75:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6bc77:	85 c0                                           	test   eax,eax
  d6bc79:	74 12                                           	je     0xd6bc8d
  d6bc7b:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bc7d:	f6 c1 03                                        	test   cl,0x3
  d6bc80:	75 0b                                           	jne    0xd6bc8d
  d6bc82:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bc84:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bc86:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6bc89:	ff d0                                           	call   eax
  d6bc8b:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bc8d:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bc8f:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bc95:	3b cb                                           	cmp    ecx,ebx
  d6bc97:	8d b7 bc 01 00 00                               	lea    esi,[edi+0x1bc]
  d6bc9d:	74 0d                                           	je     0xd6bcac
  d6bc9f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bca1:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6bca4:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bca9:	56                                              	push   esi
  d6bcaa:	ff d0                                           	call   eax
  d6bcac:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bcae:	85 c9                                           	test   ecx,ecx
  d6bcb0:	74 12                                           	je     0xd6bcc4
  d6bcb2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6bcb4:	f6 c2 03                                        	test   dl,0x3
  d6bcb7:	75 0b                                           	jne    0xd6bcc4
  d6bcb9:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bcbb:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bcbd:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6bcc0:	ff d2                                           	call   edx
  d6bcc2:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bcc4:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bcc6:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bccc:	3b cb                                           	cmp    ecx,ebx
  d6bcce:	8d b7 9c 01 00 00                               	lea    esi,[edi+0x19c]
  d6bcd4:	74 0d                                           	je     0xd6bce3
  d6bcd6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bcd8:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6bcdb:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bce0:	56                                              	push   esi
  d6bce1:	ff d2                                           	call   edx
  d6bce3:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6bce5:	85 c0                                           	test   eax,eax
  d6bce7:	74 12                                           	je     0xd6bcfb
  d6bce9:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bceb:	f6 c1 03                                        	test   cl,0x3
  d6bcee:	75 0b                                           	jne    0xd6bcfb
  d6bcf0:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bcf2:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bcf4:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6bcf7:	ff d0                                           	call   eax
  d6bcf9:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bcfb:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bcfd:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bd03:	3b cb                                           	cmp    ecx,ebx
  d6bd05:	8d b7 a0 01 00 00                               	lea    esi,[edi+0x1a0]
  d6bd0b:	74 0d                                           	je     0xd6bd1a
  d6bd0d:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bd0f:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6bd12:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bd17:	56                                              	push   esi
  d6bd18:	ff d0                                           	call   eax
  d6bd1a:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bd1c:	85 c9                                           	test   ecx,ecx
  d6bd1e:	74 12                                           	je     0xd6bd32
  d6bd20:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6bd22:	f6 c2 03                                        	test   dl,0x3
  d6bd25:	75 0b                                           	jne    0xd6bd32
  d6bd27:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bd29:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bd2b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6bd2e:	ff d2                                           	call   edx
  d6bd30:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bd32:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bd34:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bd3a:	3b cb                                           	cmp    ecx,ebx
  d6bd3c:	8d b7 a4 01 00 00                               	lea    esi,[edi+0x1a4]
  d6bd42:	74 0d                                           	je     0xd6bd51
  d6bd44:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bd46:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6bd49:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bd4e:	56                                              	push   esi
  d6bd4f:	ff d2                                           	call   edx
  d6bd51:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6bd53:	85 c0                                           	test   eax,eax
  d6bd55:	74 12                                           	je     0xd6bd69
  d6bd57:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bd59:	f6 c1 03                                        	test   cl,0x3
  d6bd5c:	75 0b                                           	jne    0xd6bd69
  d6bd5e:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bd60:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bd62:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6bd65:	ff d0                                           	call   eax
  d6bd67:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bd69:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bd6b:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bd71:	3b cb                                           	cmp    ecx,ebx
  d6bd73:	8d b7 a8 01 00 00                               	lea    esi,[edi+0x1a8]
  d6bd79:	74 0d                                           	je     0xd6bd88
  d6bd7b:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bd7d:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6bd80:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bd85:	56                                              	push   esi
  d6bd86:	ff d0                                           	call   eax
  d6bd88:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bd8a:	85 c9                                           	test   ecx,ecx
  d6bd8c:	74 12                                           	je     0xd6bda0
  d6bd8e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6bd90:	f6 c2 03                                        	test   dl,0x3
  d6bd93:	75 0b                                           	jne    0xd6bda0
  d6bd95:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bd97:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bd99:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6bd9c:	ff d2                                           	call   edx
  d6bd9e:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bda0:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bda2:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bda8:	3b cb                                           	cmp    ecx,ebx
  d6bdaa:	8d b7 ac 01 00 00                               	lea    esi,[edi+0x1ac]
  d6bdb0:	74 0d                                           	je     0xd6bdbf
  d6bdb2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6bdb4:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6bdb7:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bdbc:	56                                              	push   esi
  d6bdbd:	ff d2                                           	call   edx
  d6bdbf:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6bdc1:	85 c0                                           	test   eax,eax
  d6bdc3:	74 12                                           	je     0xd6bdd7
  d6bdc5:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bdc7:	f6 c1 03                                        	test   cl,0x3
  d6bdca:	75 0b                                           	jne    0xd6bdd7
  d6bdcc:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bdce:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bdd0:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6bdd3:	ff d0                                           	call   eax
  d6bdd5:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bdd7:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6bdd9:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6bddf:	3b cb                                           	cmp    ecx,ebx
  d6bde1:	8d b7 b0 01 00 00                               	lea    esi,[edi+0x1b0]
  d6bde7:	74 0d                                           	je     0xd6bdf6
  d6bde9:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6bdeb:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  d6bdee:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6bdf3:	56                                              	push   esi
  d6bdf4:	ff d0                                           	call   eax
  d6bdf6:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6bdf8:	85 c9                                           	test   ecx,ecx
  d6bdfa:	74 12                                           	je     0xd6be0e
  d6bdfc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6bdfe:	f6 c2 03                                        	test   dl,0x3
  d6be01:	75 0b                                           	jne    0xd6be0e
  d6be03:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6be05:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6be07:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d6be0a:	ff d2                                           	call   edx
  d6be0c:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6be0e:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6be10:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6be16:	3b cb                                           	cmp    ecx,ebx
  d6be18:	8d b7 b4 01 00 00                               	lea    esi,[edi+0x1b4]
  d6be1e:	74 0d                                           	je     0xd6be2d
  d6be20:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  d6be22:	8b 50 3c                                        	mov    edx,DWORD PTR [eax+0x3c]
  d6be25:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6be2a:	56                                              	push   esi
  d6be2b:	ff d2                                           	call   edx
  d6be2d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6be2f:	85 c0                                           	test   eax,eax
  d6be31:	74 12                                           	je     0xd6be45
  d6be33:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6be35:	f6 c1 03                                        	test   cl,0x3
  d6be38:	75 0b                                           	jne    0xd6be45
  d6be3a:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6be3c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6be3e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  d6be41:	ff d0                                           	call   eax
  d6be43:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6be45:	89 1e                                           	mov    DWORD PTR [esi],ebx
  d6be47:	8b 8f c0 01 00 00                               	mov    ecx,DWORD PTR [edi+0x1c0]
  d6be4d:	3b cb                                           	cmp    ecx,ebx
  d6be4f:	74 05                                           	je     0xd6be56
  d6be51:	e8 7a e3 8a ff                                  	call   0x61a1d0
  d6be56:	8b 8f c0 01 00 00                               	mov    ecx,DWORD PTR [edi+0x1c0]
  d6be5c:	3b cb                                           	cmp    ecx,ebx
  d6be5e:	74 0d                                           	je     0xd6be6d
  d6be60:	89 9f c0 01 00 00                               	mov    DWORD PTR [edi+0x1c0],ebx
  d6be66:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6be68:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  d6be6b:	ff d0                                           	call   eax
  d6be6d:	88 1f                                           	mov    BYTE PTR [edi],bl
  d6be6f:	5f                                              	pop    edi
  d6be70:	5e                                              	pop    esi
  d6be71:	5b                                              	pop    ebx
  d6be72:	c3                                              	ret
