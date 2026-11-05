# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10787330 (DownloadContent_AcceptSendMeYourSimInvite)
Paired Ghidra pseudocode: 10787330_DownloadContent_AcceptSendMeYourSimInvite.c
Window: [0x10787330, 0x10787600) (720 bytes; stop exclusive)
Next defined Ghidra entry: 0x10787600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10787330: 81 ec ac 00 00 00 53 55 8b ac 24 dc 00 00 00 85
10787340: ed 0f 84 a6 02 00 00 83 bc 24 e0 00 00 00 00 0f
10787350: 84 98 02 00 00 8b 9c 24 e4 00 00 00 85 db 0f 84
10787360: 89 02 00 00 56 57 e8 b5 3d dd ff 8b f0 e8 4e d1
10787370: fe ff 68 64 89 f8 04 8b c8 e8 f2 0c ff ff 8b f8
10787380: 85 ff 0f 84 85 01 00 00 8b 84 24 dc 00 00 00 8b
10787390: 8c 24 d8 00 00 00 8b 94 24 d4 00 00 00 50 8b 84
107873a0: 24 d4 00 00 00 51 8b 8c 24 d4 00 00 00 52 8b 94
107873b0: 24 d4 00 00 00 50 8b 84 24 d4 00 00 00 51 8b 8c
107873c0: 24 d4 00 00 00 52 50 6a 00 51 8b 0d 90 f5 c8 10
107873d0: e8 2b 80 be ff 8b c8 e8 f4 78 05 00 8b c8 e8 0d
107873e0: 04 0a 00 8d 54 24 10 52 8d 4c 24 18 c7 44 24 14
107873f0: b8 90 b5 10 e8 17 04 fa ff 8d 44 24 14 50 55 56
10787400: e8 0b cc ff ff 83 c4 0c 84 c0 0f 84 ec 00 00 00
10787410: 8d 4c 24 10 51 8d 4c 24 28 c7 44 24 14 8c 90 b5
10787420: 10 e8 ea 03 fa ff 8b 84 24 e8 00 00 00 8d 54 24
10787430: 24 52 50 56 e8 a7 f5 ff ff 83 c4 0c 84 c0 0f 84
10787440: a7 00 00 00 68 60 90 b5 10 6a 00 6a 00 8d 4c 24
10787450: 40 e8 3a cc 18 00 d9 e8 51 d9 1c 24 bd 01 00 00
10787460: 00 01 6c 24 44 55 8d 4c 24 3c e8 01 c6 18 00 8d
10787470: 4c 24 34 51 53 56 e8 05 cc ff ff 83 c4 0c 84 c0
10787480: 74 60 8b 16 8b 84 24 e0 00 00 00 8b 52 58 50 8b
10787490: ce ff d2 68 58 8d b5 10 6a 00 6a 00 8d 4c 24 6c
107874a0: 8b d8 e8 e9 cb 18 00 d9 e8 01 6c 24 6c 51 d9 1c
107874b0: 24 55 8d 4c 24 68 e8 b5 c5 18 00 8b 84 24 f0 00
107874c0: 00 00 85 c0 74 54 8d 4c 24 60 51 50 56 e8 ae cb
107874d0: ff ff 83 c4 0c 84 c0 75 41 8d 4c 24 60 e8 ee 6c
107874e0: 89 ff 8d 4c 24 34 e8 e5 6c 89 ff 8b 44 24 24 85
107874f0: c0 74 09 50 e8 97 19 19 00 83 c4 04 8b 44 24 14
10787500: 85 c0 74 09 50 e8 86 19 19 00 83 c4 04 5f 5e 5d
10787510: 32 c0 5b 81 c4 ac 00 00 00 c3 6a 00 6a 00 8d 4c
10787520: 24 3c e8 b9 c9 18 00 55 8d 54 24 38 52 8d 8c 24
10787530: ac 00 00 00 e8 67 4d e4 ff 6a 00 6a 00 8d 4c 24
10787540: 68 e8 9a c9 18 00 55 8d 44 24 64 50 8d 8c 24 94
10787550: 00 00 00 e8 48 4d e4 ff 8b 17 8b 52 10 6a ff 6a
10787560: ff 8d 84 24 94 00 00 00 50 8d 8c 24 b0 00 00 00
10787570: 51 8d 44 24 34 50 8d 4c 24 28 51 53 8b cf ff d2
10787580: 6a 00 55 6a 00 6a 00 6a 00 8d 4c 24 48 8a d8 e8
10787590: ac c6 18 00 8d 8c 24 8c 00 00 00 e8 60 33 e4 ff
107875a0: 8d 8c 24 a4 00 00 00 e8 54 33 e4 ff 8d 4c 24 60
107875b0: e8 1b 6c 89 ff 8d 4c 24 34 e8 12 6c 89 ff 8b 44
107875c0: 24 24 85 c0 74 09 50 e8 c4 18 19 00 83 c4 04 8b
107875d0: 44 24 14 85 c0 74 09 50 e8 b3 18 19 00 83 c4 04
107875e0: 5f 5e 5d 8a c3 5b 81 c4 ac 00 00 00 c3 5d 32 c0
107875f0: 5b 81 c4 ac 00 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10787330 <.text+0x786330>:
10787330:	81 ec ac 00 00 00                               	sub    esp,0xac
10787336:	53                                              	push   ebx
10787337:	55                                              	push   ebp
10787338:	8b ac 24 dc 00 00 00                            	mov    ebp,DWORD PTR [esp+0xdc]
1078733f:	85 ed                                           	test   ebp,ebp
10787341:	0f 84 a6 02 00 00                               	je     0x107875ed
10787347:	83 bc 24 e0 00 00 00 00                         	cmp    DWORD PTR [esp+0xe0],0x0
1078734f:	0f 84 98 02 00 00                               	je     0x107875ed
10787355:	8b 9c 24 e4 00 00 00                            	mov    ebx,DWORD PTR [esp+0xe4]
1078735c:	85 db                                           	test   ebx,ebx
1078735e:	0f 84 89 02 00 00                               	je     0x107875ed
10787364:	56                                              	push   esi
10787365:	57                                              	push   edi
10787366:	e8 b5 3d dd ff                                  	call   0x1055b120
1078736b:	8b f0                                           	mov    esi,eax
1078736d:	e8 4e d1 fe ff                                  	call   0x107744c0
10787372:	68 64 89 f8 04                                  	push   0x4f88964
10787377:	8b c8                                           	mov    ecx,eax
10787379:	e8 f2 0c ff ff                                  	call   0x10778070
1078737e:	8b f8                                           	mov    edi,eax
10787380:	85 ff                                           	test   edi,edi
10787382:	0f 84 85 01 00 00                               	je     0x1078750d
10787388:	8b 84 24 dc 00 00 00                            	mov    eax,DWORD PTR [esp+0xdc]
1078738f:	8b 8c 24 d8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd8]
10787396:	8b 94 24 d4 00 00 00                            	mov    edx,DWORD PTR [esp+0xd4]
1078739d:	50                                              	push   eax
1078739e:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
107873a5:	51                                              	push   ecx
107873a6:	8b 8c 24 d4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd4]
107873ad:	52                                              	push   edx
107873ae:	8b 94 24 d4 00 00 00                            	mov    edx,DWORD PTR [esp+0xd4]
107873b5:	50                                              	push   eax
107873b6:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
107873bd:	51                                              	push   ecx
107873be:	8b 8c 24 d4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd4]
107873c5:	52                                              	push   edx
107873c6:	50                                              	push   eax
107873c7:	6a 00                                           	push   0x0
107873c9:	51                                              	push   ecx
107873ca:	8b 0d 90 f5 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8f590
107873d0:	e8 2b 80 be ff                                  	call   0x1036f400
107873d5:	8b c8                                           	mov    ecx,eax
107873d7:	e8 f4 78 05 00                                  	call   0x107decd0
107873dc:	8b c8                                           	mov    ecx,eax
107873de:	e8 0d 04 0a 00                                  	call   0x108277f0
107873e3:	8d 54 24 10                                     	lea    edx,[esp+0x10]
107873e7:	52                                              	push   edx
107873e8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
107873ec:	c7 44 24 14 b8 90 b5 10                         	mov    DWORD PTR [esp+0x14],0x10b590b8
107873f4:	e8 17 04 fa ff                                  	call   0x10727810
107873f9:	8d 44 24 14                                     	lea    eax,[esp+0x14]
107873fd:	50                                              	push   eax
107873fe:	55                                              	push   ebp
107873ff:	56                                              	push   esi
10787400:	e8 0b cc ff ff                                  	call   0x10784010
10787405:	83 c4 0c                                        	add    esp,0xc
10787408:	84 c0                                           	test   al,al
1078740a:	0f 84 ec 00 00 00                               	je     0x107874fc
10787410:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10787414:	51                                              	push   ecx
10787415:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10787419:	c7 44 24 14 8c 90 b5 10                         	mov    DWORD PTR [esp+0x14],0x10b5908c
10787421:	e8 ea 03 fa ff                                  	call   0x10727810
10787426:	8b 84 24 e8 00 00 00                            	mov    eax,DWORD PTR [esp+0xe8]
1078742d:	8d 54 24 24                                     	lea    edx,[esp+0x24]
10787431:	52                                              	push   edx
10787432:	50                                              	push   eax
10787433:	56                                              	push   esi
10787434:	e8 a7 f5 ff ff                                  	call   0x107869e0
10787439:	83 c4 0c                                        	add    esp,0xc
1078743c:	84 c0                                           	test   al,al
1078743e:	0f 84 a7 00 00 00                               	je     0x107874eb
10787444:	68 60 90 b5 10                                  	push   0x10b59060
10787449:	6a 00                                           	push   0x0
1078744b:	6a 00                                           	push   0x0
1078744d:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
10787451:	e8 3a cc 18 00                                  	call   0x10914090
10787456:	d9 e8                                           	fld1
10787458:	51                                              	push   ecx
10787459:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1078745c:	bd 01 00 00 00                                  	mov    ebp,0x1
10787461:	01 6c 24 44                                     	add    DWORD PTR [esp+0x44],ebp
10787465:	55                                              	push   ebp
10787466:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
1078746a:	e8 01 c6 18 00                                  	call   0x10913a70
1078746f:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10787473:	51                                              	push   ecx
10787474:	53                                              	push   ebx
10787475:	56                                              	push   esi
10787476:	e8 05 cc ff ff                                  	call   0x10784080
1078747b:	83 c4 0c                                        	add    esp,0xc
1078747e:	84 c0                                           	test   al,al
10787480:	74 60                                           	je     0x107874e2
10787482:	8b 16                                           	mov    edx,DWORD PTR [esi]
10787484:	8b 84 24 e0 00 00 00                            	mov    eax,DWORD PTR [esp+0xe0]
1078748b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1078748e:	50                                              	push   eax
1078748f:	8b ce                                           	mov    ecx,esi
10787491:	ff d2                                           	call   edx
10787493:	68 58 8d b5 10                                  	push   0x10b58d58
10787498:	6a 00                                           	push   0x0
1078749a:	6a 00                                           	push   0x0
1078749c:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
107874a0:	8b d8                                           	mov    ebx,eax
107874a2:	e8 e9 cb 18 00                                  	call   0x10914090
107874a7:	d9 e8                                           	fld1
107874a9:	01 6c 24 6c                                     	add    DWORD PTR [esp+0x6c],ebp
107874ad:	51                                              	push   ecx
107874ae:	d9 1c 24                                        	fstp   DWORD PTR [esp]
107874b1:	55                                              	push   ebp
107874b2:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
107874b6:	e8 b5 c5 18 00                                  	call   0x10913a70
107874bb:	8b 84 24 f0 00 00 00                            	mov    eax,DWORD PTR [esp+0xf0]
107874c2:	85 c0                                           	test   eax,eax
107874c4:	74 54                                           	je     0x1078751a
107874c6:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
107874ca:	51                                              	push   ecx
107874cb:	50                                              	push   eax
107874cc:	56                                              	push   esi
107874cd:	e8 ae cb ff ff                                  	call   0x10784080
107874d2:	83 c4 0c                                        	add    esp,0xc
107874d5:	84 c0                                           	test   al,al
107874d7:	75 41                                           	jne    0x1078751a
107874d9:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
107874dd:	e8 ee 6c 89 ff                                  	call   0x1001e1d0
107874e2:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
107874e6:	e8 e5 6c 89 ff                                  	call   0x1001e1d0
107874eb:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
107874ef:	85 c0                                           	test   eax,eax
107874f1:	74 09                                           	je     0x107874fc
107874f3:	50                                              	push   eax
107874f4:	e8 97 19 19 00                                  	call   0x10918e90
107874f9:	83 c4 04                                        	add    esp,0x4
107874fc:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10787500:	85 c0                                           	test   eax,eax
10787502:	74 09                                           	je     0x1078750d
10787504:	50                                              	push   eax
10787505:	e8 86 19 19 00                                  	call   0x10918e90
1078750a:	83 c4 04                                        	add    esp,0x4
1078750d:	5f                                              	pop    edi
1078750e:	5e                                              	pop    esi
1078750f:	5d                                              	pop    ebp
10787510:	32 c0                                           	xor    al,al
10787512:	5b                                              	pop    ebx
10787513:	81 c4 ac 00 00 00                               	add    esp,0xac
10787519:	c3                                              	ret
1078751a:	6a 00                                           	push   0x0
1078751c:	6a 00                                           	push   0x0
1078751e:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
10787522:	e8 b9 c9 18 00                                  	call   0x10913ee0
10787527:	55                                              	push   ebp
10787528:	8d 54 24 38                                     	lea    edx,[esp+0x38]
1078752c:	52                                              	push   edx
1078752d:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
10787534:	e8 67 4d e4 ff                                  	call   0x105cc2a0
10787539:	6a 00                                           	push   0x0
1078753b:	6a 00                                           	push   0x0
1078753d:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
10787541:	e8 9a c9 18 00                                  	call   0x10913ee0
10787546:	55                                              	push   ebp
10787547:	8d 44 24 64                                     	lea    eax,[esp+0x64]
1078754b:	50                                              	push   eax
1078754c:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
10787553:	e8 48 4d e4 ff                                  	call   0x105cc2a0
10787558:	8b 17                                           	mov    edx,DWORD PTR [edi]
1078755a:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
1078755d:	6a ff                                           	push   0xffffffff
1078755f:	6a ff                                           	push   0xffffffff
10787561:	8d 84 24 94 00 00 00                            	lea    eax,[esp+0x94]
10787568:	50                                              	push   eax
10787569:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
10787570:	51                                              	push   ecx
10787571:	8d 44 24 34                                     	lea    eax,[esp+0x34]
10787575:	50                                              	push   eax
10787576:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1078757a:	51                                              	push   ecx
1078757b:	53                                              	push   ebx
1078757c:	8b cf                                           	mov    ecx,edi
1078757e:	ff d2                                           	call   edx
10787580:	6a 00                                           	push   0x0
10787582:	55                                              	push   ebp
10787583:	6a 00                                           	push   0x0
10787585:	6a 00                                           	push   0x0
10787587:	6a 00                                           	push   0x0
10787589:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
1078758d:	8a d8                                           	mov    bl,al
1078758f:	e8 ac c6 18 00                                  	call   0x10913c40
10787594:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
1078759b:	e8 60 33 e4 ff                                  	call   0x105ca900
107875a0:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
107875a7:	e8 54 33 e4 ff                                  	call   0x105ca900
107875ac:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
107875b0:	e8 1b 6c 89 ff                                  	call   0x1001e1d0
107875b5:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
107875b9:	e8 12 6c 89 ff                                  	call   0x1001e1d0
107875be:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
107875c2:	85 c0                                           	test   eax,eax
107875c4:	74 09                                           	je     0x107875cf
107875c6:	50                                              	push   eax
107875c7:	e8 c4 18 19 00                                  	call   0x10918e90
107875cc:	83 c4 04                                        	add    esp,0x4
107875cf:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
107875d3:	85 c0                                           	test   eax,eax
107875d5:	74 09                                           	je     0x107875e0
107875d7:	50                                              	push   eax
107875d8:	e8 b3 18 19 00                                  	call   0x10918e90
107875dd:	83 c4 04                                        	add    esp,0x4
107875e0:	5f                                              	pop    edi
107875e1:	5e                                              	pop    esi
107875e2:	5d                                              	pop    ebp
107875e3:	8a c3                                           	mov    al,bl
107875e5:	5b                                              	pop    ebx
107875e6:	81 c4 ac 00 00 00                               	add    esp,0xac
107875ec:	c3                                              	ret
107875ed:	5d                                              	pop    ebp
107875ee:	32 c0                                           	xor    al,al
107875f0:	5b                                              	pop    ebx
107875f1:	81 c4 ac 00 00 00                               	add    esp,0xac
107875f7:	c3                                              	ret
107875f8:	cc                                              	int3
107875f9:	cc                                              	int3
107875fa:	cc                                              	int3
107875fb:	cc                                              	int3
107875fc:	cc                                              	int3
107875fd:	cc                                              	int3
107875fe:	cc                                              	int3
107875ff:	cc                                              	int3
