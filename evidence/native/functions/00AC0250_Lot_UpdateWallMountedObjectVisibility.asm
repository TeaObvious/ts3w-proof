# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00ac0250 (Lot_UpdateWallMountedObjectVisibility)
Full Ghidra function-body envelope: 0x00ac0250..0x00ac0576 (exclusive end)
Ghidra body ranges: [[00ac0250, 00ac0575]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00ac0250 <.text+0x6bf250>:
  ac0250:	83 ec 1c             	sub    esp,0x1c
  ac0253:	55                   	push   ebp
  ac0254:	8b e9                	mov    ebp,ecx
  ac0256:	83 bd 64 03 00 00 00 	cmp    DWORD PTR [ebp+0x364],0x0
  ac025d:	0f 84 0c 03 00 00    	je     0xac056f
  ac0263:	57                   	push   edi
  ac0264:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  ac0268:	85 ff                	test   edi,edi
  ac026a:	0f 84 fe 02 00 00    	je     0xac056e
  ac0270:	8b 44 24 30          	mov    eax,DWORD PTR [esp+0x30]
  ac0274:	50                   	push   eax
  ac0275:	e8 f6 86 da ff       	call   0x868970
  ac027a:	84 c0                	test   al,al
  ac027c:	0f 84 ec 02 00 00    	je     0xac056e
  ac0282:	56                   	push   esi
  ac0283:	57                   	push   edi
  ac0284:	e8 27 fb 03 00       	call   0xaffdb0
  ac0289:	8b f0                	mov    esi,eax
  ac028b:	83 c4 04             	add    esp,0x4
  ac028e:	85 f6                	test   esi,esi
  ac0290:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
  ac0294:	0f 84 d3 02 00 00    	je     0xac056d
  ac029a:	8b ce                	mov    ecx,esi
  ac029c:	e8 bf 75 1d 00       	call   0xc97860
  ac02a1:	84 c0                	test   al,al
  ac02a3:	0f 84 c4 02 00 00    	je     0xac056d
  ac02a9:	8b ce                	mov    ecx,esi
  ac02ab:	e8 a0 74 1d 00       	call   0xc97750
  ac02b0:	84 c0                	test   al,al
  ac02b2:	0f 85 b5 02 00 00    	jne    0xac056d
  ac02b8:	8b 74 24 30          	mov    esi,DWORD PTR [esp+0x30]
  ac02bc:	56                   	push   esi
  ac02bd:	57                   	push   edi
  ac02be:	e8 1d aa 04 00       	call   0xb0ace0
  ac02c3:	83 c4 08             	add    esp,0x8
  ac02c6:	84 c0                	test   al,al
  ac02c8:	0f 84 9f 02 00 00    	je     0xac056d
  ac02ce:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  ac02d1:	8b 81 54 01 00 00    	mov    eax,DWORD PTR [ecx+0x154]
  ac02d7:	3d c9 00 00 00       	cmp    eax,0xc9
  ac02dc:	0f 94 c1             	sete   cl
  ac02df:	84 c9                	test   cl,cl
  ac02e1:	53                   	push   ebx
  ac02e2:	75 12                	jne    0xac02f6
  ac02e4:	3d ca 00 00 00       	cmp    eax,0xca
  ac02e9:	74 0b                	je     0xac02f6
  ac02eb:	3d cc 00 00 00       	cmp    eax,0xcc
  ac02f0:	74 04                	je     0xac02f6
  ac02f2:	32 db                	xor    bl,bl
  ac02f4:	eb 02                	jmp    0xac02f8
  ac02f6:	b3 01                	mov    bl,0x1
  ac02f8:	80 7c 24 3c 00       	cmp    BYTE PTR [esp+0x3c],0x0
  ac02fd:	0f 84 86 00 00 00    	je     0xac0389
  ac0303:	80 7c 24 40 00       	cmp    BYTE PTR [esp+0x40],0x0
  ac0308:	74 0d                	je     0xac0317
  ac030a:	0f be 16             	movsx  edx,BYTE PTR [esi]
  ac030d:	0f be 46 01          	movsx  eax,BYTE PTR [esi+0x1]
  ac0311:	0f be 4e 02          	movsx  ecx,BYTE PTR [esi+0x2]
  ac0315:	eb 0c                	jmp    0xac0323
  ac0317:	0f be 56 03          	movsx  edx,BYTE PTR [esi+0x3]
  ac031b:	0f be 46 04          	movsx  eax,BYTE PTR [esi+0x4]
  ac031f:	0f be 4e 05          	movsx  ecx,BYTE PTR [esi+0x5]
  ac0323:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  ac0327:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  ac032d:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  ac0331:	8d 44 24 14          	lea    eax,[esp+0x14]
  ac0335:	89 4c 24 1c          	mov    DWORD PTR [esp+0x1c],ecx
  ac0339:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  ac033f:	8b 10                	mov    edx,DWORD PTR [eax]
  ac0341:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  ac0344:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  ac0348:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  ac034b:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  ac034f:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  ac0353:	8b 88 d0 00 00 00    	mov    ecx,DWORD PTR [eax+0xd0]
  ac0359:	c1 e9 02             	shr    ecx,0x2
  ac035c:	f6 c1 01             	test   cl,0x1
  ac035f:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
  ac0363:	74 1d                	je     0xac0382
  ac0365:	8b 8d 98 02 00 00    	mov    ecx,DWORD PTR [ebp+0x298]
  ac036b:	8d 54 24 20          	lea    edx,[esp+0x20]
  ac036f:	52                   	push   edx
  ac0370:	e8 0b 88 08 00       	call   0xb48b80
  ac0375:	84 c0                	test   al,al
  ac0377:	74 09                	je     0xac0382
  ac0379:	57                   	push   edi
  ac037a:	e8 e1 b8 04 00       	call   0xb0bc60
  ac037f:	83 c4 04             	add    esp,0x4
  ac0382:	6a 01                	push   0x1
  ac0384:	e9 d8 01 00 00       	jmp    0xac0561
  ac0389:	84 c9                	test   cl,cl
  ac038b:	74 11                	je     0xac039e
  ac038d:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  ac0391:	e8 6a 76 1d 00       	call   0xc97a00
  ac0396:	84 c0                	test   al,al
  ac0398:	0f 85 ce 01 00 00    	jne    0xac056c
  ac039e:	84 db                	test   bl,bl
  ac03a0:	74 12                	je     0xac03b4
  ac03a2:	e8 c9 df 23 00       	call   0xcfe370
  ac03a7:	3b c7                	cmp    eax,edi
  ac03a9:	0f 84 bd 01 00 00    	je     0xac056c
  ac03af:	e9 07 01 00 00       	jmp    0xac04bb
  ac03b4:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  ac03b8:	e8 d3 73 1d 00       	call   0xc97790
  ac03bd:	84 c0                	test   al,al
  ac03bf:	0f 84 f6 00 00 00    	je     0xac04bb
  ac03c5:	8b 8d 98 02 00 00    	mov    ecx,DWORD PTR [ebp+0x298]
  ac03cb:	8b 81 e4 00 00 00    	mov    eax,DWORD PTR [ecx+0xe4]
  ac03d1:	3b 81 e8 00 00 00    	cmp    eax,DWORD PTR [ecx+0xe8]
  ac03d7:	0f 84 ae 00 00 00    	je     0xac048b
  ac03dd:	8b 54 24 38          	mov    edx,DWORD PTR [esp+0x38]
  ac03e1:	6a 00                	push   0x0
  ac03e3:	6a 00                	push   0x0
  ac03e5:	52                   	push   edx
  ac03e6:	e8 f5 6c 08 00       	call   0xb470e0
  ac03eb:	8b 8d 98 02 00 00    	mov    ecx,DWORD PTR [ebp+0x298]
  ac03f1:	0f b7 d8             	movzx  ebx,ax
  ac03f4:	53                   	push   ebx
  ac03f5:	e8 f6 ed ff ff       	call   0xabf1f0
  ac03fa:	84 c0                	test   al,al
  ac03fc:	0f 85 6a 01 00 00    	jne    0xac056c
  ac0402:	0c ff                	or     al,0xff
  ac0404:	88 44 24 3c          	mov    BYTE PTR [esp+0x3c],al
  ac0408:	88 44 24 3d          	mov    BYTE PTR [esp+0x3d],al
  ac040c:	88 44 24 3f          	mov    BYTE PTR [esp+0x3f],al
  ac0410:	8d 44 24 3c          	lea    eax,[esp+0x3c]
  ac0414:	50                   	push   eax
  ac0415:	56                   	push   esi
  ac0416:	c6 44 24 46 00       	mov    BYTE PTR [esp+0x46],0x0
  ac041b:	e8 90 5b 18 00       	call   0xc45fb0
  ac0420:	83 c4 08             	add    esp,0x8
  ac0423:	6a 00                	push   0x0
  ac0425:	6a 00                	push   0x0
  ac0427:	8d 4c 24 44          	lea    ecx,[esp+0x44]
  ac042b:	51                   	push   ecx
  ac042c:	8b 8d 98 02 00 00    	mov    ecx,DWORD PTR [ebp+0x298]
  ac0432:	e8 a9 6c 08 00       	call   0xb470e0
  ac0437:	8b b5 98 02 00 00    	mov    esi,DWORD PTR [ebp+0x298]
  ac043d:	0f b7 f8             	movzx  edi,ax
  ac0440:	57                   	push   edi
  ac0441:	8b ce                	mov    ecx,esi
  ac0443:	e8 a8 ed ff ff       	call   0xabf1f0
  ac0448:	84 c0                	test   al,al
  ac044a:	0f 85 1c 01 00 00    	jne    0xac056c
  ac0450:	38 85 a4 03 00 00    	cmp    BYTE PTR [ebp+0x3a4],al
  ac0456:	75 18                	jne    0xac0470
  ac0458:	53                   	push   ebx
  ac0459:	8b ce                	mov    ecx,esi
  ac045b:	e8 e0 ed ff ff       	call   0xabf240
  ac0460:	84 c0                	test   al,al
  ac0462:	75 0c                	jne    0xac0470
  ac0464:	57                   	push   edi
  ac0465:	8b ce                	mov    ecx,esi
  ac0467:	e8 d4 ed ff ff       	call   0xabf240
  ac046c:	84 c0                	test   al,al
  ac046e:	74 43                	je     0xac04b3
  ac0470:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  ac0474:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  ac0477:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  ac047a:	51                   	push   ecx
  ac047b:	50                   	push   eax
  ac047c:	e8 8f 12 cd ff       	call   0x791710
  ac0481:	8b 7c 24 38          	mov    edi,DWORD PTR [esp+0x38]
  ac0485:	8b 74 24 3c          	mov    esi,DWORD PTR [esp+0x3c]
  ac0489:	eb 16                	jmp    0xac04a1
  ac048b:	80 bd a4 03 00 00 00 	cmp    BYTE PTR [ebp+0x3a4],0x0
  ac0492:	74 27                	je     0xac04bb
  ac0494:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  ac0497:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  ac049a:	51                   	push   ecx
  ac049b:	50                   	push   eax
  ac049c:	e8 6f 12 cd ff       	call   0x791710
  ac04a1:	83 c4 08             	add    esp,0x8
  ac04a4:	84 c0                	test   al,al
  ac04a6:	0f 94 c0             	sete   al
  ac04a9:	84 c0                	test   al,al
  ac04ab:	0f 84 bb 00 00 00    	je     0xac056c
  ac04b1:	eb 08                	jmp    0xac04bb
  ac04b3:	8b 7c 24 30          	mov    edi,DWORD PTR [esp+0x30]
  ac04b7:	8b 74 24 34          	mov    esi,DWORD PTR [esp+0x34]
  ac04bb:	80 7c 24 44 00       	cmp    BYTE PTR [esp+0x44],0x0
  ac04c0:	8a 5c 24 40          	mov    bl,BYTE PTR [esp+0x40]
  ac04c4:	75 08                	jne    0xac04ce
  ac04c6:	84 db                	test   bl,bl
  ac04c8:	0f 84 91 00 00 00    	je     0xac055f
  ac04ce:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  ac04d2:	e8 29 75 1d 00       	call   0xc97a00
  ac04d7:	84 c0                	test   al,al
  ac04d9:	0f 84 80 00 00 00    	je     0xac055f
  ac04df:	84 db                	test   bl,bl
  ac04e1:	74 0d                	je     0xac04f0
  ac04e3:	0f be 16             	movsx  edx,BYTE PTR [esi]
  ac04e6:	0f be 46 01          	movsx  eax,BYTE PTR [esi+0x1]
  ac04ea:	0f be 4e 02          	movsx  ecx,BYTE PTR [esi+0x2]
  ac04ee:	eb 0c                	jmp    0xac04fc
  ac04f0:	0f be 56 03          	movsx  edx,BYTE PTR [esi+0x3]
  ac04f4:	0f be 46 04          	movsx  eax,BYTE PTR [esi+0x4]
  ac04f8:	0f be 4e 05          	movsx  ecx,BYTE PTR [esi+0x5]
  ac04fc:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  ac0500:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  ac0506:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  ac050a:	8d 44 24 20          	lea    eax,[esp+0x20]
  ac050e:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  ac0512:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  ac0518:	8b 10                	mov    edx,DWORD PTR [eax]
  ac051a:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  ac051d:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  ac0521:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  ac0524:	8d 44 24 14          	lea    eax,[esp+0x14]
  ac0528:	89 4c 24 18          	mov    DWORD PTR [esp+0x18],ecx
  ac052c:	8b 8d 98 02 00 00    	mov    ecx,DWORD PTR [ebp+0x298]
  ac0532:	50                   	push   eax
  ac0533:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
  ac0537:	e8 44 86 08 00       	call   0xb48b80
  ac053c:	84 c0                	test   al,al
  ac053e:	74 1f                	je     0xac055f
  ac0540:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  ac0544:	8b 91 d0 00 00 00    	mov    edx,DWORD PTR [ecx+0xd0]
  ac054a:	c1 ea 02             	shr    edx,0x2
  ac054d:	f6 c2 01             	test   dl,0x1
  ac0550:	0f 84 2c fe ff ff    	je     0xac0382
  ac0556:	57                   	push   edi
  ac0557:	e8 c4 bb 04 00       	call   0xb0c120
  ac055c:	83 c4 04             	add    esp,0x4
  ac055f:	6a 00                	push   0x0
  ac0561:	57                   	push   edi
  ac0562:	6a 0d                	push   0xd
  ac0564:	e8 57 51 e7 ff       	call   0x9356c0
  ac0569:	83 c4 0c             	add    esp,0xc
  ac056c:	5b                   	pop    ebx
  ac056d:	5e                   	pop    esi
  ac056e:	5f                   	pop    edi
  ac056f:	5d                   	pop    ebp
  ac0570:	83 c4 1c             	add    esp,0x1c
  ac0573:	c2 18 00             	ret    0x18
