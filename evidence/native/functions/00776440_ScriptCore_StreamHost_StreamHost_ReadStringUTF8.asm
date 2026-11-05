# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Stored Ghidra body: one address byte at 0x00776440; ZERO actual Listing instructions.
The following pristine PE decoding is bounded evidence, not existing Listing code.
No instruction, body, prototype or flow repair was performed.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00776440 (ScriptCore.StreamHost::StreamHost_ReadStringUTF8)
Paired Ghidra pseudocode: 00776440_ScriptCore_StreamHost_StreamHost_ReadStringUTF8.c
Window: [0x00776440, 0x007766e0) (672 bytes; stop exclusive)
Next defined Ghidra entry: 0x007766e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00776440: 81 ec 30 03 00 00 55 56 8b b4 24 3c 03 00 00 3b
00776450: 35 38 78 1d 01 75 08 8b 2d 3c 78 1d 01 eb 35 8b
00776460: c6 25 00 00 00 ff 3d 00 00 00 60 74 04 33 ed eb
00776470: 23 e8 1a 2f ff ff 8b 10 8b c8 8b 82 cc 00 00 00
00776480: 56 ff d0 85 c0 74 0b a3 3c 78 1d 01 89 35 38 78
00776490: 1d 01 8b e8 85 ed 75 0c 5e 8d 45 fe 5d 81 c4 30
007764a0: 03 00 00 c3 53 8b 9c 24 44 03 00 00 57 33 f6 c7
007764b0: 03 00 00 00 00 33 ff 8d 4c 24 13 51 55 e8 ce 73
007764c0: d6 ff 83 c4 08 84 c0 0f 84 fa 01 00 00 8a 44 24
007764d0: 13 0f b6 d0 83 e2 7f 8b cf d3 e2 83 c7 07 03 f2
007764e0: 84 c0 78 d3 81 fe 00 00 01 00 0f 87 35 01 00 00
007764f0: 8d 44 24 2c 8b c8 8b d0 89 44 24 28 89 4c 24 1c
00776500: 8d 84 24 2c 01 00 00 56 8d 4c 24 1c 89 54 24 1c
00776510: 89 44 24 24 c7 44 24 28 f0 d7 00 01 e8 6f fe ff
00776520: ff 8d 8c 24 40 01 00 00 8b d1 8b c1 89 8c 24 3c
00776530: 01 00 00 8d 8c 24 40 03 00 00 89 8c 24 34 01 00
00776540: 00 56 8d 8c 24 30 01 00 00 89 94 24 34 01 00 00
00776550: 89 84 24 30 01 00 00 c7 84 24 3c 01 00 00 d8 d7
00776560: 00 01 e8 79 fe ff ff 8b 55 00 8b 44 24 18 8b 52
00776570: 30 56 50 8b cd ff d2 3b c6 74 4f 33 c9 83 f8 ff
00776580: 8b 84 24 2c 01 00 00 0f 95 c1 85 c0 8d 4c 09 fd
00776590: 8b f1 74 12 3b 84 24 3c 01 00 00 74 09 50 e8 3d
007765a0: df d6 ff 83 c4 04 8b 44 24 18 85 c0 74 0f 3b 44
007765b0: 24 28 74 09 50 e8 26 df d6 ff 83 c4 04 5f 5b 8b
007765c0: c6 5e 5d 81 c4 30 03 00 00 c3 8b 84 24 2c 01 00
007765d0: 00 8b 4c 24 18 6a 10 8d 54 24 18 52 50 6a 08 56
007765e0: 51 89 74 24 2c e8 06 db d7 ff 83 c4 18 3b c6 74
007765f0: 44 8b 84 24 2c 01 00 00 85 c0 74 12 3b 84 24 3c
00776600: 01 00 00 74 09 50 e8 d5 de d6 ff 83 c4 04 8b 44
00776610: 24 18 85 c0 74 0f 3b 44 24 28 74 09 50 e8 be de
00776620: d6 ff 83 c4 04 5f 5b 5e b8 fc ff ff ff 5d 81 c4
00776630: 30 03 00 00 c3 e8 56 2d ff ff 8b 4c 24 14 8b 10
00776640: 8b 52 60 51 8b 8c 24 30 01 00 00 51 8b c8 ff d2
00776650: 89 03 85 c0 8b 84 24 2c 01 00 00 75 3d 85 c0 74
00776660: 12 3b 84 24 3c 01 00 00 74 09 50 e8 70 de d6 ff
00776670: 83 c4 04 8b 44 24 18 85 c0 74 0f 3b 44 24 28 74
00776680: 09 50 e8 59 de d6 ff 83 c4 04 5f 5b 5e b8 fb ff
00776690: ff ff 5d 81 c4 30 03 00 00 c3 85 c0 74 12 3b 84
007766a0: 24 3c 01 00 00 74 09 50 e8 33 de d6 ff 83 c4 04
007766b0: 8b 44 24 18 85 c0 74 0f 3b 44 24 28 74 09 50 e8
007766c0: 1c de d6 ff 83 c4 04 5f 5b 5e 33 c0 5d 81 c4 30
007766d0: 03 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00776440 <.text+0x375440>:
  776440:	81 ec 30 03 00 00                               	sub    esp,0x330
  776446:	55                                              	push   ebp
  776447:	56                                              	push   esi
  776448:	8b b4 24 3c 03 00 00                            	mov    esi,DWORD PTR [esp+0x33c]
  77644f:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  776455:	75 08                                           	jne    0x77645f
  776457:	8b 2d 3c 78 1d 01                               	mov    ebp,DWORD PTR ds:0x11d783c
  77645d:	eb 35                                           	jmp    0x776494
  77645f:	8b c6                                           	mov    eax,esi
  776461:	25 00 00 00 ff                                  	and    eax,0xff000000
  776466:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  77646b:	74 04                                           	je     0x776471
  77646d:	33 ed                                           	xor    ebp,ebp
  77646f:	eb 23                                           	jmp    0x776494
  776471:	e8 1a 2f ff ff                                  	call   0x769390
  776476:	8b 10                                           	mov    edx,DWORD PTR [eax]
  776478:	8b c8                                           	mov    ecx,eax
  77647a:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  776480:	56                                              	push   esi
  776481:	ff d0                                           	call   eax
  776483:	85 c0                                           	test   eax,eax
  776485:	74 0b                                           	je     0x776492
  776487:	a3 3c 78 1d 01                                  	mov    ds:0x11d783c,eax
  77648c:	89 35 38 78 1d 01                               	mov    DWORD PTR ds:0x11d7838,esi
  776492:	8b e8                                           	mov    ebp,eax
  776494:	85 ed                                           	test   ebp,ebp
  776496:	75 0c                                           	jne    0x7764a4
  776498:	5e                                              	pop    esi
  776499:	8d 45 fe                                        	lea    eax,[ebp-0x2]
  77649c:	5d                                              	pop    ebp
  77649d:	81 c4 30 03 00 00                               	add    esp,0x330
  7764a3:	c3                                              	ret
  7764a4:	53                                              	push   ebx
  7764a5:	8b 9c 24 44 03 00 00                            	mov    ebx,DWORD PTR [esp+0x344]
  7764ac:	57                                              	push   edi
  7764ad:	33 f6                                           	xor    esi,esi
  7764af:	c7 03 00 00 00 00                               	mov    DWORD PTR [ebx],0x0
  7764b5:	33 ff                                           	xor    edi,edi
  7764b7:	8d 4c 24 13                                     	lea    ecx,[esp+0x13]
  7764bb:	51                                              	push   ecx
  7764bc:	55                                              	push   ebp
  7764bd:	e8 ce 73 d6 ff                                  	call   0x4dd890
  7764c2:	83 c4 08                                        	add    esp,0x8
  7764c5:	84 c0                                           	test   al,al
  7764c7:	0f 84 fa 01 00 00                               	je     0x7766c7
  7764cd:	8a 44 24 13                                     	mov    al,BYTE PTR [esp+0x13]
  7764d1:	0f b6 d0                                        	movzx  edx,al
  7764d4:	83 e2 7f                                        	and    edx,0x7f
  7764d7:	8b cf                                           	mov    ecx,edi
  7764d9:	d3 e2                                           	shl    edx,cl
  7764db:	83 c7 07                                        	add    edi,0x7
  7764de:	03 f2                                           	add    esi,edx
  7764e0:	84 c0                                           	test   al,al
  7764e2:	78 d3                                           	js     0x7764b7
  7764e4:	81 fe 00 00 01 00                               	cmp    esi,0x10000
  7764ea:	0f 87 35 01 00 00                               	ja     0x776625
  7764f0:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  7764f4:	8b c8                                           	mov    ecx,eax
  7764f6:	8b d0                                           	mov    edx,eax
  7764f8:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  7764fc:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  776500:	8d 84 24 2c 01 00 00                            	lea    eax,[esp+0x12c]
  776507:	56                                              	push   esi
  776508:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  77650c:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  776510:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  776514:	c7 44 24 28 f0 d7 00 01                         	mov    DWORD PTR [esp+0x28],0x100d7f0
  77651c:	e8 6f fe ff ff                                  	call   0x776390
  776521:	8d 8c 24 40 01 00 00                            	lea    ecx,[esp+0x140]
  776528:	8b d1                                           	mov    edx,ecx
  77652a:	8b c1                                           	mov    eax,ecx
  77652c:	89 8c 24 3c 01 00 00                            	mov    DWORD PTR [esp+0x13c],ecx
  776533:	8d 8c 24 40 03 00 00                            	lea    ecx,[esp+0x340]
  77653a:	89 8c 24 34 01 00 00                            	mov    DWORD PTR [esp+0x134],ecx
  776541:	56                                              	push   esi
  776542:	8d 8c 24 30 01 00 00                            	lea    ecx,[esp+0x130]
  776549:	89 94 24 34 01 00 00                            	mov    DWORD PTR [esp+0x134],edx
  776550:	89 84 24 30 01 00 00                            	mov    DWORD PTR [esp+0x130],eax
  776557:	c7 84 24 3c 01 00 00 d8 d7 00 01                	mov    DWORD PTR [esp+0x13c],0x100d7d8
  776562:	e8 79 fe ff ff                                  	call   0x7763e0
  776567:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  77656a:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  77656e:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
  776571:	56                                              	push   esi
  776572:	50                                              	push   eax
  776573:	8b cd                                           	mov    ecx,ebp
  776575:	ff d2                                           	call   edx
  776577:	3b c6                                           	cmp    eax,esi
  776579:	74 4f                                           	je     0x7765ca
  77657b:	33 c9                                           	xor    ecx,ecx
  77657d:	83 f8 ff                                        	cmp    eax,0xffffffff
  776580:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
  776587:	0f 95 c1                                        	setne  cl
  77658a:	85 c0                                           	test   eax,eax
  77658c:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
  776590:	8b f1                                           	mov    esi,ecx
  776592:	74 12                                           	je     0x7765a6
  776594:	3b 84 24 3c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x13c]
  77659b:	74 09                                           	je     0x7765a6
  77659d:	50                                              	push   eax
  77659e:	e8 3d df d6 ff                                  	call   0x4e44e0
  7765a3:	83 c4 04                                        	add    esp,0x4
  7765a6:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7765aa:	85 c0                                           	test   eax,eax
  7765ac:	74 0f                                           	je     0x7765bd
  7765ae:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  7765b2:	74 09                                           	je     0x7765bd
  7765b4:	50                                              	push   eax
  7765b5:	e8 26 df d6 ff                                  	call   0x4e44e0
  7765ba:	83 c4 04                                        	add    esp,0x4
  7765bd:	5f                                              	pop    edi
  7765be:	5b                                              	pop    ebx
  7765bf:	8b c6                                           	mov    eax,esi
  7765c1:	5e                                              	pop    esi
  7765c2:	5d                                              	pop    ebp
  7765c3:	81 c4 30 03 00 00                               	add    esp,0x330
  7765c9:	c3                                              	ret
  7765ca:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
  7765d1:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7765d5:	6a 10                                           	push   0x10
  7765d7:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  7765db:	52                                              	push   edx
  7765dc:	50                                              	push   eax
  7765dd:	6a 08                                           	push   0x8
  7765df:	56                                              	push   esi
  7765e0:	51                                              	push   ecx
  7765e1:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  7765e5:	e8 06 db d7 ff                                  	call   0x4f40f0
  7765ea:	83 c4 18                                        	add    esp,0x18
  7765ed:	3b c6                                           	cmp    eax,esi
  7765ef:	74 44                                           	je     0x776635
  7765f1:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
  7765f8:	85 c0                                           	test   eax,eax
  7765fa:	74 12                                           	je     0x77660e
  7765fc:	3b 84 24 3c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x13c]
  776603:	74 09                                           	je     0x77660e
  776605:	50                                              	push   eax
  776606:	e8 d5 de d6 ff                                  	call   0x4e44e0
  77660b:	83 c4 04                                        	add    esp,0x4
  77660e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  776612:	85 c0                                           	test   eax,eax
  776614:	74 0f                                           	je     0x776625
  776616:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  77661a:	74 09                                           	je     0x776625
  77661c:	50                                              	push   eax
  77661d:	e8 be de d6 ff                                  	call   0x4e44e0
  776622:	83 c4 04                                        	add    esp,0x4
  776625:	5f                                              	pop    edi
  776626:	5b                                              	pop    ebx
  776627:	5e                                              	pop    esi
  776628:	b8 fc ff ff ff                                  	mov    eax,0xfffffffc
  77662d:	5d                                              	pop    ebp
  77662e:	81 c4 30 03 00 00                               	add    esp,0x330
  776634:	c3                                              	ret
  776635:	e8 56 2d ff ff                                  	call   0x769390
  77663a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77663e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  776640:	8b 52 60                                        	mov    edx,DWORD PTR [edx+0x60]
  776643:	51                                              	push   ecx
  776644:	8b 8c 24 30 01 00 00                            	mov    ecx,DWORD PTR [esp+0x130]
  77664b:	51                                              	push   ecx
  77664c:	8b c8                                           	mov    ecx,eax
  77664e:	ff d2                                           	call   edx
  776650:	89 03                                           	mov    DWORD PTR [ebx],eax
  776652:	85 c0                                           	test   eax,eax
  776654:	8b 84 24 2c 01 00 00                            	mov    eax,DWORD PTR [esp+0x12c]
  77665b:	75 3d                                           	jne    0x77669a
  77665d:	85 c0                                           	test   eax,eax
  77665f:	74 12                                           	je     0x776673
  776661:	3b 84 24 3c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x13c]
  776668:	74 09                                           	je     0x776673
  77666a:	50                                              	push   eax
  77666b:	e8 70 de d6 ff                                  	call   0x4e44e0
  776670:	83 c4 04                                        	add    esp,0x4
  776673:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  776677:	85 c0                                           	test   eax,eax
  776679:	74 0f                                           	je     0x77668a
  77667b:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  77667f:	74 09                                           	je     0x77668a
  776681:	50                                              	push   eax
  776682:	e8 59 de d6 ff                                  	call   0x4e44e0
  776687:	83 c4 04                                        	add    esp,0x4
  77668a:	5f                                              	pop    edi
  77668b:	5b                                              	pop    ebx
  77668c:	5e                                              	pop    esi
  77668d:	b8 fb ff ff ff                                  	mov    eax,0xfffffffb
  776692:	5d                                              	pop    ebp
  776693:	81 c4 30 03 00 00                               	add    esp,0x330
  776699:	c3                                              	ret
  77669a:	85 c0                                           	test   eax,eax
  77669c:	74 12                                           	je     0x7766b0
  77669e:	3b 84 24 3c 01 00 00                            	cmp    eax,DWORD PTR [esp+0x13c]
  7766a5:	74 09                                           	je     0x7766b0
  7766a7:	50                                              	push   eax
  7766a8:	e8 33 de d6 ff                                  	call   0x4e44e0
  7766ad:	83 c4 04                                        	add    esp,0x4
  7766b0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7766b4:	85 c0                                           	test   eax,eax
  7766b6:	74 0f                                           	je     0x7766c7
  7766b8:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  7766bc:	74 09                                           	je     0x7766c7
  7766be:	50                                              	push   eax
  7766bf:	e8 1c de d6 ff                                  	call   0x4e44e0
  7766c4:	83 c4 04                                        	add    esp,0x4
  7766c7:	5f                                              	pop    edi
  7766c8:	5b                                              	pop    ebx
  7766c9:	5e                                              	pop    esi
  7766ca:	33 c0                                           	xor    eax,eax
  7766cc:	5d                                              	pop    ebp
  7766cd:	81 c4 30 03 00 00                               	add    esp,0x330
  7766d3:	c3                                              	ret
  7766d4:	cc                                              	int3
  7766d5:	cc                                              	int3
  7766d6:	cc                                              	int3
  7766d7:	cc                                              	int3
  7766d8:	cc                                              	int3
  7766d9:	cc                                              	int3
  7766da:	cc                                              	int3
  7766db:	cc                                              	int3
  7766dc:	cc                                              	int3
  7766dd:	cc                                              	int3
  7766de:	cc                                              	int3
  7766df:	cc                                              	int3
