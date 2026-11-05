# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e320 (ScriptCore.RouteManager::RouteManager_RoutingBlockerCheck2d)
Paired Ghidra pseudocode: 0074E320_ScriptCore_RouteManager_RouteManager_RoutingBlockerCheck2d.c
Window: [0x0074e320, 0x0074e4a0) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e4a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e320: 55 8b ec 83 e4 f0 81 ec 04 01 00 00 53 56 57 e8
0074e330: 3c 92 1e 00 89 44 24 18 e8 b3 a9 0d 00 8b 35 c4
0074e340: db 1e 01 85 f6 8b f8 89 7c 24 20 74 1b d9 45 0c
0074e350: 83 ec 08 d9 5c 24 04 8b ce d9 45 08 d9 1c 24 e8
0074e360: 6c a4 51 00 8b d8 eb 02 33 db 85 ff 0f 84 1b 01
0074e370: 00 00 83 7c 24 18 00 0f 84 10 01 00 00 85 f6 0f
0074e380: 84 08 01 00 00 85 db 0f 84 00 01 00 00 8d 4c 24
0074e390: 50 e8 6a 2d f0 ff d9 45 0c 8b 7d 10 f3 0f 10 45
0074e3a0: 08 6a 01 6a 00 6a 00 6a 00 6a 00 6a 01 57 83 ec
0074e3b0: 08 d9 5c 24 04 f3 0f 11 44 24 60 f3 0f 10 45 0c
0074e3c0: d9 45 08 8b ce d9 1c 24 f3 0f 11 44 24 5c e8 bd
0074e3d0: bc 51 00 d9 5c 24 1c 8b 4d 40 f3 0f 10 44 24 1c
0074e3e0: 8b 45 1c 51 8b 4d 30 6a 00 6a 00 6a 00 6a 00 f3
0074e3f0: 0f 11 44 24 48 f3 0f 10 45 08 6a 00 f3 0f 11 44
0074e400: 24 48 0f 28 44 24 48 8d 55 38 89 44 24 44 8b 45
0074e410: 34 52 0f 29 44 24 6c f3 0f 10 45 14 50 f3 0f 11
0074e420: 44 24 44 f3 0f 10 45 18 51 8b 4c 24 3c 89 bc 24
0074e430: 98 00 00 00 f3 0f 11 44 24 4c e8 41 9b 1e 00 8b
0074e440: 55 2c 8b 4d 24 50 8b 45 28 52 8b 55 20 50 51 52
0074e450: 8d 8c 24 c0 00 00 00 e8 54 e3 0c 00 50 8d 44 24
0074e460: 48 50 8d 4c 24 78 51 8b 4c 24 4c 53 8d 54 24 70
0074e470: 52 e8 fa f8 0d 00 8d 8c 24 90 00 00 00 e8 ae e3
0074e480: 0c 00 8b 44 24 40 5f 5e 5b 8b e5 5d c3 5f 5e b8
0074e490: 08 00 00 00 5b 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e320 <.text+0x34d320>:
  74e320:	55                                              	push   ebp
  74e321:	8b ec                                           	mov    ebp,esp
  74e323:	83 e4 f0                                        	and    esp,0xfffffff0
  74e326:	81 ec 04 01 00 00                               	sub    esp,0x104
  74e32c:	53                                              	push   ebx
  74e32d:	56                                              	push   esi
  74e32e:	57                                              	push   edi
  74e32f:	e8 3c 92 1e 00                                  	call   0x937570
  74e334:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  74e338:	e8 b3 a9 0d 00                                  	call   0x828cf0
  74e33d:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  74e343:	85 f6                                           	test   esi,esi
  74e345:	8b f8                                           	mov    edi,eax
  74e347:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  74e34b:	74 1b                                           	je     0x74e368
  74e34d:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  74e350:	83 ec 08                                        	sub    esp,0x8
  74e353:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74e357:	8b ce                                           	mov    ecx,esi
  74e359:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  74e35c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74e35f:	e8 6c a4 51 00                                  	call   0xc687d0
  74e364:	8b d8                                           	mov    ebx,eax
  74e366:	eb 02                                           	jmp    0x74e36a
  74e368:	33 db                                           	xor    ebx,ebx
  74e36a:	85 ff                                           	test   edi,edi
  74e36c:	0f 84 1b 01 00 00                               	je     0x74e48d
  74e372:	83 7c 24 18 00                                  	cmp    DWORD PTR [esp+0x18],0x0
  74e377:	0f 84 10 01 00 00                               	je     0x74e48d
  74e37d:	85 f6                                           	test   esi,esi
  74e37f:	0f 84 08 01 00 00                               	je     0x74e48d
  74e385:	85 db                                           	test   ebx,ebx
  74e387:	0f 84 00 01 00 00                               	je     0x74e48d
  74e38d:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  74e391:	e8 6a 2d f0 ff                                  	call   0x651100
  74e396:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  74e399:	8b 7d 10                                        	mov    edi,DWORD PTR [ebp+0x10]
  74e39c:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  74e3a1:	6a 01                                           	push   0x1
  74e3a3:	6a 00                                           	push   0x0
  74e3a5:	6a 00                                           	push   0x0
  74e3a7:	6a 00                                           	push   0x0
  74e3a9:	6a 00                                           	push   0x0
  74e3ab:	6a 01                                           	push   0x1
  74e3ad:	57                                              	push   edi
  74e3ae:	83 ec 08                                        	sub    esp,0x8
  74e3b1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74e3b5:	f3 0f 11 44 24 60                               	movss  DWORD PTR [esp+0x60],xmm0
  74e3bb:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  74e3c0:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  74e3c3:	8b ce                                           	mov    ecx,esi
  74e3c5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74e3c8:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
  74e3ce:	e8 bd bc 51 00                                  	call   0xc6a090
  74e3d3:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
  74e3d7:	8b 4d 40                                        	mov    ecx,DWORD PTR [ebp+0x40]
  74e3da:	f3 0f 10 44 24 1c                               	movss  xmm0,DWORD PTR [esp+0x1c]
  74e3e0:	8b 45 1c                                        	mov    eax,DWORD PTR [ebp+0x1c]
  74e3e3:	51                                              	push   ecx
  74e3e4:	8b 4d 30                                        	mov    ecx,DWORD PTR [ebp+0x30]
  74e3e7:	6a 00                                           	push   0x0
  74e3e9:	6a 00                                           	push   0x0
  74e3eb:	6a 00                                           	push   0x0
  74e3ed:	6a 00                                           	push   0x0
  74e3ef:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  74e3f5:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  74e3fa:	6a 00                                           	push   0x0
  74e3fc:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
  74e402:	0f 28 44 24 48                                  	movaps xmm0,XMMWORD PTR [esp+0x48]
  74e407:	8d 55 38                                        	lea    edx,[ebp+0x38]
  74e40a:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
  74e40e:	8b 45 34                                        	mov    eax,DWORD PTR [ebp+0x34]
  74e411:	52                                              	push   edx
  74e412:	0f 29 44 24 6c                                  	movaps XMMWORD PTR [esp+0x6c],xmm0
  74e417:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  74e41c:	50                                              	push   eax
  74e41d:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
  74e423:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
  74e428:	51                                              	push   ecx
  74e429:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  74e42d:	89 bc 24 98 00 00 00                            	mov    DWORD PTR [esp+0x98],edi
  74e434:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
  74e43a:	e8 41 9b 1e 00                                  	call   0x937f80
  74e43f:	8b 55 2c                                        	mov    edx,DWORD PTR [ebp+0x2c]
  74e442:	8b 4d 24                                        	mov    ecx,DWORD PTR [ebp+0x24]
  74e445:	50                                              	push   eax
  74e446:	8b 45 28                                        	mov    eax,DWORD PTR [ebp+0x28]
  74e449:	52                                              	push   edx
  74e44a:	8b 55 20                                        	mov    edx,DWORD PTR [ebp+0x20]
  74e44d:	50                                              	push   eax
  74e44e:	51                                              	push   ecx
  74e44f:	52                                              	push   edx
  74e450:	8d 8c 24 c0 00 00 00                            	lea    ecx,[esp+0xc0]
  74e457:	e8 54 e3 0c 00                                  	call   0x81c7b0
  74e45c:	50                                              	push   eax
  74e45d:	8d 44 24 48                                     	lea    eax,[esp+0x48]
  74e461:	50                                              	push   eax
  74e462:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  74e466:	51                                              	push   ecx
  74e467:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  74e46b:	53                                              	push   ebx
  74e46c:	8d 54 24 70                                     	lea    edx,[esp+0x70]
  74e470:	52                                              	push   edx
  74e471:	e8 fa f8 0d 00                                  	call   0x82dd70
  74e476:	8d 8c 24 90 00 00 00                            	lea    ecx,[esp+0x90]
  74e47d:	e8 ae e3 0c 00                                  	call   0x81c830
  74e482:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  74e486:	5f                                              	pop    edi
  74e487:	5e                                              	pop    esi
  74e488:	5b                                              	pop    ebx
  74e489:	8b e5                                           	mov    esp,ebp
  74e48b:	5d                                              	pop    ebp
  74e48c:	c3                                              	ret
  74e48d:	5f                                              	pop    edi
  74e48e:	5e                                              	pop    esi
  74e48f:	b8 08 00 00 00                                  	mov    eax,0x8
  74e494:	5b                                              	pop    ebx
  74e495:	8b e5                                           	mov    esp,ebp
  74e497:	5d                                              	pop    ebp
  74e498:	c3                                              	ret
  74e499:	cc                                              	int3
  74e49a:	cc                                              	int3
  74e49b:	cc                                              	int3
  74e49c:	cc                                              	int3
  74e49d:	cc                                              	int3
  74e49e:	cc                                              	int3
  74e49f:	cc                                              	int3
