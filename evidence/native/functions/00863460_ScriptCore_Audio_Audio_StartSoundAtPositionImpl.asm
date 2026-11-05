# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00863460 (ScriptCore.Audio::Audio_StartSoundAtPositionImpl)
Paired Ghidra pseudocode: 00863460_ScriptCore_Audio_Audio_StartSoundAtPositionImpl.c
Window: [0x00863460, 0x00863750) (752 bytes; stop exclusive)
Next defined Ghidra entry: 0x00863750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00863460: 55 8b ec 83 e4 f0 81 ec d4 00 00 00 53 56 8b 35
00863470: 40 9c 1d 01 85 f6 57 0f 84 c4 02 00 00 81 c6 30
00863480: 84 fd ff 0f 84 b8 02 00 00 e8 02 5f f0 ff 8b 4d
00863490: 08 8b 10 8b 52 58 6a ff 68 80 00 00 00 51 8b c8
008634a0: ff d2 50 8d 44 24 6c 50 e8 f3 aa c9 ff 8b 16 8b
008634b0: 92 18 01 00 00 83 c4 10 8d 44 24 60 50 8b ce ff
008634c0: d2 89 44 24 30 8b 06 89 54 24 34 8b 50 28 8b ce
008634d0: ff d2 f3 0f 10 4d 14 f3 0f 10 45 0c 8b 0d c4 db
008634e0: 1e 01 85 c9 f3 0f 11 4c 24 18 f3 0f 10 4d 10 8b
008634f0: d8 f3 0f 11 44 24 1c f3 0f 11 4c 24 14 f3 0f 11
00863500: 44 24 10 0f 28 44 24 10 89 5c 24 4c 0f 29 44 24
00863510: 50 0f 84 9d 00 00 00 d9 45 14 83 ec 08 d9 5c 24
00863520: 04 d9 45 0c d9 1c 24 e8 a4 52 40 00 8b f8 85 ff
00863530: 0f 84 80 00 00 00 80 bf 44 04 00 00 00 74 77 8d
00863540: 44 24 10 50 8b cf e8 b5 e5 24 00 0f 28 08 0f 28
00863550: 54 24 50 0f 28 d9 0f c6 d9 09 0f 28 e1 0f c6 e1
00863560: 12 0f 28 ea 0f c6 ea 09 0f 59 ec 0f 28 c2 0f c6
00863570: c2 12 0f 59 c3 0f 5c c5 0f 28 e9 0f c6 e9 ff 0f
00863580: 59 ea 0f 58 c5 0f 28 c8 0f c6 c8 09 0f c6 c0 12
00863590: 0f 59 cc 0f 59 c3 0f 5c c1 f3 0f 10 0d 88 fd 03
008635a0: 01 0f c6 c9 00 0f 59 c1 0f 28 48 10 0f 58 c2 0f
008635b0: 58 c1 eb 07 33 ff 0f 28 44 24 50 8b 16 8b 42 44
008635c0: 68 65 53 47 03 8b ce 0f 29 44 24 14 ff d0 8b 44
008635d0: 24 34 8b 4c 24 30 8b 16 8b 52 50 50 51 68 81 53
008635e0: 47 03 8b ce ff d2 8b 06 8b 50 4c 53 68 85 53 47
008635f0: 03 8b ce ff d2 0f 28 44 24 10 8b 06 8b 50 48 0f
00863600: 29 44 24 30 d9 44 24 30 51 d9 1c 24 68 91 53 47
00863610: 03 8b ce ff d2 0f 28 44 24 10 8b 06 8b 50 48 0f
00863620: 29 44 24 30 d9 44 24 34 51 d9 1c 24 68 95 53 47
00863630: 03 8b ce ff d2 0f 28 44 24 10 8b 06 8b 50 48 51
00863640: 0f 29 44 24 14 d9 44 24 1c d9 1c 24 68 98 53 47
00863650: 03 8b ce ff d2 85 ff 74 08 8b 9f 98 02 00 00 eb
00863660: 02 33 db 85 db 0f 84 c2 00 00 00 f3 0f 10 05 18
00863670: b2 fa 00 8d 44 24 10 50 8d 4c 24 54 51 57 f3 0f
00863680: 11 44 24 1c f3 0f 11 44 24 20 c7 44 24 24 00 00
00863690: 00 00 e8 c9 91 27 00 83 c4 0c 6a 01 6a 00 8d 54
008636a0: 24 18 52 8b cb e8 16 4c 2e 00 8b 5c 24 18 6a 01
008636b0: 8d 4c 24 14 0f bf c0 51 57 89 44 24 3c e8 de bf
008636c0: 29 00 83 c4 0c 84 c0 74 23 8b 8f 98 02 00 00 83
008636d0: 44 24 18 01 6a 01 6a 00 8d 54 24 18 52 83 c3 01
008636e0: e8 db 4b 2e 00 0f bf c0 89 44 24 30 8b 16 8b 42
008636f0: 58 57 68 e6 b4 81 20 8b ce ff d0 8b 16 f3 0f 2a
00863700: 44 24 30 8b 42 48 51 f3 0f 11 04 24 68 67 d9 be
00863710: 5d 8b ce ff d0 8b 16 8b 42 48 51 f3 0f 2a c3 f3
00863720: 0f 11 04 24 68 d1 78 ff 39 8b ce ff d0 8b 16 8b
00863730: 42 68 8b ce ff d0 8b 44 24 4c 5f 5e 5b 8b e5 5d
00863740: c3 5f 5e 33 c0 5b 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00863460 <.text+0x462460>:
  863460:	55                                              	push   ebp
  863461:	8b ec                                           	mov    ebp,esp
  863463:	83 e4 f0                                        	and    esp,0xfffffff0
  863466:	81 ec d4 00 00 00                               	sub    esp,0xd4
  86346c:	53                                              	push   ebx
  86346d:	56                                              	push   esi
  86346e:	8b 35 40 9c 1d 01                               	mov    esi,DWORD PTR ds:0x11d9c40
  863474:	85 f6                                           	test   esi,esi
  863476:	57                                              	push   edi
  863477:	0f 84 c4 02 00 00                               	je     0x863741
  86347d:	81 c6 30 84 fd ff                               	add    esi,0xfffd8430
  863483:	0f 84 b8 02 00 00                               	je     0x863741
  863489:	e8 02 5f f0 ff                                  	call   0x769390
  86348e:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  863491:	8b 10                                           	mov    edx,DWORD PTR [eax]
  863493:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  863496:	6a ff                                           	push   0xffffffff
  863498:	68 80 00 00 00                                  	push   0x80
  86349d:	51                                              	push   ecx
  86349e:	8b c8                                           	mov    ecx,eax
  8634a0:	ff d2                                           	call   edx
  8634a2:	50                                              	push   eax
  8634a3:	8d 44 24 6c                                     	lea    eax,[esp+0x6c]
  8634a7:	50                                              	push   eax
  8634a8:	e8 f3 aa c9 ff                                  	call   0x4fdfa0
  8634ad:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8634af:	8b 92 18 01 00 00                               	mov    edx,DWORD PTR [edx+0x118]
  8634b5:	83 c4 10                                        	add    esp,0x10
  8634b8:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  8634bc:	50                                              	push   eax
  8634bd:	8b ce                                           	mov    ecx,esi
  8634bf:	ff d2                                           	call   edx
  8634c1:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  8634c5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8634c7:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
  8634cb:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  8634ce:	8b ce                                           	mov    ecx,esi
  8634d0:	ff d2                                           	call   edx
  8634d2:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  8634d7:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  8634dc:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  8634e2:	85 c9                                           	test   ecx,ecx
  8634e4:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  8634ea:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  8634ef:	8b d8                                           	mov    ebx,eax
  8634f1:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  8634f7:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  8634fd:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  863503:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  863508:	89 5c 24 4c                                     	mov    DWORD PTR [esp+0x4c],ebx
  86350c:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
  863511:	0f 84 9d 00 00 00                               	je     0x8635b4
  863517:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
  86351a:	83 ec 08                                        	sub    esp,0x8
  86351d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  863521:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  863524:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  863527:	e8 a4 52 40 00                                  	call   0xc687d0
  86352c:	8b f8                                           	mov    edi,eax
  86352e:	85 ff                                           	test   edi,edi
  863530:	0f 84 80 00 00 00                               	je     0x8635b6
  863536:	80 bf 44 04 00 00 00                            	cmp    BYTE PTR [edi+0x444],0x0
  86353d:	74 77                                           	je     0x8635b6
  86353f:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  863543:	50                                              	push   eax
  863544:	8b cf                                           	mov    ecx,edi
  863546:	e8 b5 e5 24 00                                  	call   0xab1b00
  86354b:	0f 28 08                                        	movaps xmm1,XMMWORD PTR [eax]
  86354e:	0f 28 54 24 50                                  	movaps xmm2,XMMWORD PTR [esp+0x50]
  863553:	0f 28 d9                                        	movaps xmm3,xmm1
  863556:	0f c6 d9 09                                     	shufps xmm3,xmm1,0x9
  86355a:	0f 28 e1                                        	movaps xmm4,xmm1
  86355d:	0f c6 e1 12                                     	shufps xmm4,xmm1,0x12
  863561:	0f 28 ea                                        	movaps xmm5,xmm2
  863564:	0f c6 ea 09                                     	shufps xmm5,xmm2,0x9
  863568:	0f 59 ec                                        	mulps  xmm5,xmm4
  86356b:	0f 28 c2                                        	movaps xmm0,xmm2
  86356e:	0f c6 c2 12                                     	shufps xmm0,xmm2,0x12
  863572:	0f 59 c3                                        	mulps  xmm0,xmm3
  863575:	0f 5c c5                                        	subps  xmm0,xmm5
  863578:	0f 28 e9                                        	movaps xmm5,xmm1
  86357b:	0f c6 e9 ff                                     	shufps xmm5,xmm1,0xff
  86357f:	0f 59 ea                                        	mulps  xmm5,xmm2
  863582:	0f 58 c5                                        	addps  xmm0,xmm5
  863585:	0f 28 c8                                        	movaps xmm1,xmm0
  863588:	0f c6 c8 09                                     	shufps xmm1,xmm0,0x9
  86358c:	0f c6 c0 12                                     	shufps xmm0,xmm0,0x12
  863590:	0f 59 cc                                        	mulps  xmm1,xmm4
  863593:	0f 59 c3                                        	mulps  xmm0,xmm3
  863596:	0f 5c c1                                        	subps  xmm0,xmm1
  863599:	f3 0f 10 0d 88 fd 03 01                         	movss  xmm1,DWORD PTR ds:0x103fd88
  8635a1:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  8635a5:	0f 59 c1                                        	mulps  xmm0,xmm1
  8635a8:	0f 28 48 10                                     	movaps xmm1,XMMWORD PTR [eax+0x10]
  8635ac:	0f 58 c2                                        	addps  xmm0,xmm2
  8635af:	0f 58 c1                                        	addps  xmm0,xmm1
  8635b2:	eb 07                                           	jmp    0x8635bb
  8635b4:	33 ff                                           	xor    edi,edi
  8635b6:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
  8635bb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8635bd:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
  8635c0:	68 65 53 47 03                                  	push   0x3475365
  8635c5:	8b ce                                           	mov    ecx,esi
  8635c7:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  8635cc:	ff d0                                           	call   eax
  8635ce:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  8635d2:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  8635d6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8635d8:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  8635db:	50                                              	push   eax
  8635dc:	51                                              	push   ecx
  8635dd:	68 81 53 47 03                                  	push   0x3475381
  8635e2:	8b ce                                           	mov    ecx,esi
  8635e4:	ff d2                                           	call   edx
  8635e6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8635e8:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  8635eb:	53                                              	push   ebx
  8635ec:	68 85 53 47 03                                  	push   0x3475385
  8635f1:	8b ce                                           	mov    ecx,esi
  8635f3:	ff d2                                           	call   edx
  8635f5:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  8635fa:	8b 06                                           	mov    eax,DWORD PTR [esi]
  8635fc:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  8635ff:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  863604:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  863608:	51                                              	push   ecx
  863609:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86360c:	68 91 53 47 03                                  	push   0x3475391
  863611:	8b ce                                           	mov    ecx,esi
  863613:	ff d2                                           	call   edx
  863615:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  86361a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86361c:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  86361f:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  863624:	d9 44 24 34                                     	fld    DWORD PTR [esp+0x34]
  863628:	51                                              	push   ecx
  863629:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86362c:	68 95 53 47 03                                  	push   0x3475395
  863631:	8b ce                                           	mov    ecx,esi
  863633:	ff d2                                           	call   edx
  863635:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  86363a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  86363c:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  86363f:	51                                              	push   ecx
  863640:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  863645:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  863649:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  86364c:	68 98 53 47 03                                  	push   0x3475398
  863651:	8b ce                                           	mov    ecx,esi
  863653:	ff d2                                           	call   edx
  863655:	85 ff                                           	test   edi,edi
  863657:	74 08                                           	je     0x863661
  863659:	8b 9f 98 02 00 00                               	mov    ebx,DWORD PTR [edi+0x298]
  86365f:	eb 02                                           	jmp    0x863663
  863661:	33 db                                           	xor    ebx,ebx
  863663:	85 db                                           	test   ebx,ebx
  863665:	0f 84 c2 00 00 00                               	je     0x86372d
  86366b:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  863673:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  863677:	50                                              	push   eax
  863678:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  86367c:	51                                              	push   ecx
  86367d:	57                                              	push   edi
  86367e:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  863684:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  86368a:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  863692:	e8 c9 91 27 00                                  	call   0xadc860
  863697:	83 c4 0c                                        	add    esp,0xc
  86369a:	6a 01                                           	push   0x1
  86369c:	6a 00                                           	push   0x0
  86369e:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  8636a2:	52                                              	push   edx
  8636a3:	8b cb                                           	mov    ecx,ebx
  8636a5:	e8 16 4c 2e 00                                  	call   0xb482c0
  8636aa:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  8636ae:	6a 01                                           	push   0x1
  8636b0:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  8636b4:	0f bf c0                                        	movsx  eax,ax
  8636b7:	51                                              	push   ecx
  8636b8:	57                                              	push   edi
  8636b9:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  8636bd:	e8 de bf 29 00                                  	call   0xaff6a0
  8636c2:	83 c4 0c                                        	add    esp,0xc
  8636c5:	84 c0                                           	test   al,al
  8636c7:	74 23                                           	je     0x8636ec
  8636c9:	8b 8f 98 02 00 00                               	mov    ecx,DWORD PTR [edi+0x298]
  8636cf:	83 44 24 18 01                                  	add    DWORD PTR [esp+0x18],0x1
  8636d4:	6a 01                                           	push   0x1
  8636d6:	6a 00                                           	push   0x0
  8636d8:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  8636dc:	52                                              	push   edx
  8636dd:	83 c3 01                                        	add    ebx,0x1
  8636e0:	e8 db 4b 2e 00                                  	call   0xb482c0
  8636e5:	0f bf c0                                        	movsx  eax,ax
  8636e8:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  8636ec:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8636ee:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  8636f1:	57                                              	push   edi
  8636f2:	68 e6 b4 81 20                                  	push   0x2081b4e6
  8636f7:	8b ce                                           	mov    ecx,esi
  8636f9:	ff d0                                           	call   eax
  8636fb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  8636fd:	f3 0f 2a 44 24 30                               	cvtsi2ss xmm0,DWORD PTR [esp+0x30]
  863703:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  863706:	51                                              	push   ecx
  863707:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  86370c:	68 67 d9 be 5d                                  	push   0x5dbed967
  863711:	8b ce                                           	mov    ecx,esi
  863713:	ff d0                                           	call   eax
  863715:	8b 16                                           	mov    edx,DWORD PTR [esi]
  863717:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  86371a:	51                                              	push   ecx
  86371b:	f3 0f 2a c3                                     	cvtsi2ss xmm0,ebx
  86371f:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  863724:	68 d1 78 ff 39                                  	push   0x39ff78d1
  863729:	8b ce                                           	mov    ecx,esi
  86372b:	ff d0                                           	call   eax
  86372d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  86372f:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
  863732:	8b ce                                           	mov    ecx,esi
  863734:	ff d0                                           	call   eax
  863736:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  86373a:	5f                                              	pop    edi
  86373b:	5e                                              	pop    esi
  86373c:	5b                                              	pop    ebx
  86373d:	8b e5                                           	mov    esp,ebp
  86373f:	5d                                              	pop    ebp
  863740:	c3                                              	ret
  863741:	5f                                              	pop    edi
  863742:	5e                                              	pop    esi
  863743:	33 c0                                           	xor    eax,eax
  863745:	5b                                              	pop    ebx
  863746:	8b e5                                           	mov    esp,ebp
  863748:	5d                                              	pop    ebp
  863749:	c3                                              	ret
  86374a:	cc                                              	int3
  86374b:	cc                                              	int3
  86374c:	cc                                              	int3
  86374d:	cc                                              	int3
  86374e:	cc                                              	int3
  86374f:	cc                                              	int3
