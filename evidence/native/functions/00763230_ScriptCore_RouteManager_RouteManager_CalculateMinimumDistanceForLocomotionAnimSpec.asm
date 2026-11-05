# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00763230 (ScriptCore.RouteManager::RouteManager_CalculateMinimumDistanceForLocomotionAnimSpec)
Paired Ghidra pseudocode: 00763230_ScriptCore_RouteManager_RouteManager_CalculateMinimumDistanceForLocomotionAnimSpec.c
Window: [0x00763230, 0x00763600) (976 bytes; stop exclusive)
Next defined Ghidra entry: 0x00763600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00763230: 81 ec d8 01 00 00 53 55 56 57 e8 31 43 1d 00 85
00763240: c0 0f 84 a8 03 00 00 8b 8c 24 f0 01 00 00 8b 94
00763250: 24 ec 01 00 00 51 52 8b c8 e8 22 4d 1d 00 85 c0
00763260: 74 14 8b 0d 84 d4 1d 01 51 8b c8 e8 f0 0f 1d 00
00763270: 89 44 24 14 eb 08 c7 44 24 14 00 00 00 00 f3 0f
00763280: 10 05 28 06 15 01 8b 2d 40 a1 1d 01 8d 4c 24 34
00763290: f3 0f 11 44 24 18 e8 25 e3 fe ff 8b bc 24 00 02
007632a0: 00 00 8b 84 24 fc 01 00 00 8b b4 24 f8 01 00 00
007632b0: 8b 9c 24 f4 01 00 00 8d 54 24 34 52 57 50 56 53
007632c0: 8b cd e8 29 11 0e 00 84 c0 0f 84 17 03 00 00 83
007632d0: 7c 24 14 00 0f 84 0c 03 00 00 8d 8c 24 c4 00 00
007632e0: 00 8b d1 89 94 24 b4 00 00 00 8b c1 8d 94 24 b0
007632f0: 00 00 00 89 8c 24 c0 00 00 00 52 8d 8c 24 70 01
00763300: 00 00 0b f7 56 89 8c 24 c0 00 00 00 53 8b cd c7
00763310: 84 24 c8 00 00 00 c8 aa f9 00 89 84 24 bc 00 00
00763320: 00 e8 1a 0e 0e 00 80 bc 24 99 00 00 00 00 8b f0
00763330: 74 0e f3 0f 10 05 b4 35 fb 00 f3 0f 11 44 24 18
00763340: 85 f6 0f 57 c0 f3 0f 11 44 24 28 f3 0f 11 44 24
00763350: 2c f3 0f 11 44 24 24 f3 0f 11 44 24 10 f3 0f 11
00763360: 44 24 1c 0f 8e 60 01 00 00 8b 8c 24 b4 00 00 00
00763370: 8b bc 24 b0 00 00 00 2b cf b8 93 24 49 92 f7 e9
00763380: 03 d1 c1 fa 04 8b c2 c1 e8 1f 03 c2 0f 84 37 01
00763390: 00 00 3b f0 0f 8d 2f 01 00 00 8b 8c 24 94 00 00
007633a0: 00 8b 94 24 90 00 00 00 6a 01 8d 44 24 38 50 8b
007633b0: 84 24 94 00 00 00 51 8b 8c 24 94 00 00 00 52 8b
007633c0: 57 18 50 51 52 8b cd e8 e4 0a 0e 00 8d 8c 24 6c
007633d0: 01 00 00 e8 e8 e1 fe ff 83 fe 01 0f 8c d6 00 00
007633e0: 00 bf 1c 00 00 00 eb 08 8d a4 24 00 00 00 00 90
007633f0: 8b 8c 24 94 00 00 00 8b 94 24 90 00 00 00 6a 01
00763400: 8d 84 24 70 01 00 00 50 8b 84 24 94 00 00 00 51
00763410: 8b 8c 24 94 00 00 00 52 8b 94 24 c0 00 00 00 50
00763420: 8b 44 17 18 51 50 8b cd e8 83 0a 0e 00 84 c0 74
00763430: 7a 8b 8c 24 94 01 00 00 85 c9 74 32 8b 11 8b 42
00763440: 10 ff d0 84 c0 75 27 8b 94 24 94 01 00 00 8b 44
00763450: 24 14 6a 00 8d 4c 24 34 51 52 83 c0 08 50 e8 2d
00763460: 75 0e 00 d8 44 24 34 83 c4 10 d9 5c 24 24 8b 8c
00763470: 24 98 01 00 00 85 c9 74 32 8b 11 8b 42 10 ff d0
00763480: 84 c0 75 27 8b 94 24 98 01 00 00 8b 44 24 14 6a
00763490: 00 8d 4c 24 24 51 52 83 c0 08 50 e8 f0 74 0e 00
007634a0: d8 44 24 20 83 c4 10 d9 5c 24 10 83 c7 1c 83 ee
007634b0: 01 0f 85 39 ff ff ff 8d 8c 24 6c 01 00 00 e8 6d
007634c0: 0d ff ff f3 0f 10 44 24 10 8b 44 24 38 85 c0 8b
007634d0: 74 24 14 74 1e 6a 00 8d 4c 24 24 51 50 8d 56 08
007634e0: 52 e8 aa 74 0e 00 d9 5c 24 38 f3 0f 10 44 24 20
007634f0: 83 c4 10 8b 44 24 40 85 c0 74 1e 6a 00 8d 4c 24
00763500: 24 51 50 8d 56 08 52 e8 84 74 0e 00 d9 5c 24 3c
00763510: f3 0f 10 44 24 20 83 c4 10 8b 44 24 4c 85 c0 74
00763520: 39 6a 00 8d 4c 24 24 51 50 83 c6 08 56 e8 5e 74
00763530: 0e 00 d9 54 24 2c d9 05 98 51 00 01 83 c4 10 d9
00763540: c9 df e9 dd d8 9f f6 c4 44 7a 09 0f 57 c0 f3 0f
00763550: 11 44 24 1c f3 0f 10 44 24 10 f3 0f 58 44 24 24
00763560: f3 0f 58 44 24 2c f3 0f 58 44 24 28 f3 0f 59 44
00763570: 24 18 f3 0f 10 4c 24 1c 0f 2f c8 f3 0f 11 44 24
00763580: 18 8d 44 24 1c 77 04 8d 44 24 18 f3 0f 10 00 8b
00763590: 94 24 b4 00 00 00 8b 84 24 b0 00 00 00 52 50 8d
007635a0: 8c 24 b8 00 00 00 f3 0f 11 44 24 20 e8 ef 5e ff
007635b0: ff 8b 84 24 b0 00 00 00 85 c0 74 12 3b 84 24 c0
007635c0: 00 00 00 74 09 50 e8 15 0f d8 ff 83 c4 04 8d 4c
007635d0: 24 34 e8 59 0c ff ff d9 44 24 18 5f 5e 5d 5b 81
007635e0: c4 d8 01 00 00 c3 8d 4c 24 34 e8 41 0c ff ff d9
007635f0: ee 5f 5e 5d 5b 81 c4 d8 01 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
00763230 <.text+0x362230>:
  763230:	81 ec d8 01 00 00                               	sub    esp,0x1d8
  763236:	53                                              	push   ebx
  763237:	55                                              	push   ebp
  763238:	56                                              	push   esi
  763239:	57                                              	push   edi
  76323a:	e8 31 43 1d 00                                  	call   0x937570
  76323f:	85 c0                                           	test   eax,eax
  763241:	0f 84 a8 03 00 00                               	je     0x7635ef
  763247:	8b 8c 24 f0 01 00 00                            	mov    ecx,DWORD PTR [esp+0x1f0]
  76324e:	8b 94 24 ec 01 00 00                            	mov    edx,DWORD PTR [esp+0x1ec]
  763255:	51                                              	push   ecx
  763256:	52                                              	push   edx
  763257:	8b c8                                           	mov    ecx,eax
  763259:	e8 22 4d 1d 00                                  	call   0x937f80
  76325e:	85 c0                                           	test   eax,eax
  763260:	74 14                                           	je     0x763276
  763262:	8b 0d 84 d4 1d 01                               	mov    ecx,DWORD PTR ds:0x11dd484
  763268:	51                                              	push   ecx
  763269:	8b c8                                           	mov    ecx,eax
  76326b:	e8 f0 0f 1d 00                                  	call   0x934260
  763270:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  763274:	eb 08                                           	jmp    0x76327e
  763276:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  76327e:	f3 0f 10 05 28 06 15 01                         	movss  xmm0,DWORD PTR ds:0x1150628
  763286:	8b 2d 40 a1 1d 01                               	mov    ebp,DWORD PTR ds:0x11da140
  76328c:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  763290:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  763296:	e8 25 e3 fe ff                                  	call   0x7515c0
  76329b:	8b bc 24 00 02 00 00                            	mov    edi,DWORD PTR [esp+0x200]
  7632a2:	8b 84 24 fc 01 00 00                            	mov    eax,DWORD PTR [esp+0x1fc]
  7632a9:	8b b4 24 f8 01 00 00                            	mov    esi,DWORD PTR [esp+0x1f8]
  7632b0:	8b 9c 24 f4 01 00 00                            	mov    ebx,DWORD PTR [esp+0x1f4]
  7632b7:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  7632bb:	52                                              	push   edx
  7632bc:	57                                              	push   edi
  7632bd:	50                                              	push   eax
  7632be:	56                                              	push   esi
  7632bf:	53                                              	push   ebx
  7632c0:	8b cd                                           	mov    ecx,ebp
  7632c2:	e8 29 11 0e 00                                  	call   0x8443f0
  7632c7:	84 c0                                           	test   al,al
  7632c9:	0f 84 17 03 00 00                               	je     0x7635e6
  7632cf:	83 7c 24 14 00                                  	cmp    DWORD PTR [esp+0x14],0x0
  7632d4:	0f 84 0c 03 00 00                               	je     0x7635e6
  7632da:	8d 8c 24 c4 00 00 00                            	lea    ecx,[esp+0xc4]
  7632e1:	8b d1                                           	mov    edx,ecx
  7632e3:	89 94 24 b4 00 00 00                            	mov    DWORD PTR [esp+0xb4],edx
  7632ea:	8b c1                                           	mov    eax,ecx
  7632ec:	8d 94 24 b0 00 00 00                            	lea    edx,[esp+0xb0]
  7632f3:	89 8c 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],ecx
  7632fa:	52                                              	push   edx
  7632fb:	8d 8c 24 70 01 00 00                            	lea    ecx,[esp+0x170]
  763302:	0b f7                                           	or     esi,edi
  763304:	56                                              	push   esi
  763305:	89 8c 24 c0 00 00 00                            	mov    DWORD PTR [esp+0xc0],ecx
  76330c:	53                                              	push   ebx
  76330d:	8b cd                                           	mov    ecx,ebp
  76330f:	c7 84 24 c8 00 00 00 c8 aa f9 00                	mov    DWORD PTR [esp+0xc8],0xf9aac8
  76331a:	89 84 24 bc 00 00 00                            	mov    DWORD PTR [esp+0xbc],eax
  763321:	e8 1a 0e 0e 00                                  	call   0x844140
  763326:	80 bc 24 99 00 00 00 00                         	cmp    BYTE PTR [esp+0x99],0x0
  76332e:	8b f0                                           	mov    esi,eax
  763330:	74 0e                                           	je     0x763340
  763332:	f3 0f 10 05 b4 35 fb 00                         	movss  xmm0,DWORD PTR ds:0xfb35b4
  76333a:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  763340:	85 f6                                           	test   esi,esi
  763342:	0f 57 c0                                        	xorps  xmm0,xmm0
  763345:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  76334b:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  763351:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  763357:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  76335d:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  763363:	0f 8e 60 01 00 00                               	jle    0x7634c9
  763369:	8b 8c 24 b4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xb4]
  763370:	8b bc 24 b0 00 00 00                            	mov    edi,DWORD PTR [esp+0xb0]
  763377:	2b cf                                           	sub    ecx,edi
  763379:	b8 93 24 49 92                                  	mov    eax,0x92492493
  76337e:	f7 e9                                           	imul   ecx
  763380:	03 d1                                           	add    edx,ecx
  763382:	c1 fa 04                                        	sar    edx,0x4
  763385:	8b c2                                           	mov    eax,edx
  763387:	c1 e8 1f                                        	shr    eax,0x1f
  76338a:	03 c2                                           	add    eax,edx
  76338c:	0f 84 37 01 00 00                               	je     0x7634c9
  763392:	3b f0                                           	cmp    esi,eax
  763394:	0f 8d 2f 01 00 00                               	jge    0x7634c9
  76339a:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
  7633a1:	8b 94 24 90 00 00 00                            	mov    edx,DWORD PTR [esp+0x90]
  7633a8:	6a 01                                           	push   0x1
  7633aa:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  7633ae:	50                                              	push   eax
  7633af:	8b 84 24 94 00 00 00                            	mov    eax,DWORD PTR [esp+0x94]
  7633b6:	51                                              	push   ecx
  7633b7:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
  7633be:	52                                              	push   edx
  7633bf:	8b 57 18                                        	mov    edx,DWORD PTR [edi+0x18]
  7633c2:	50                                              	push   eax
  7633c3:	51                                              	push   ecx
  7633c4:	52                                              	push   edx
  7633c5:	8b cd                                           	mov    ecx,ebp
  7633c7:	e8 e4 0a 0e 00                                  	call   0x843eb0
  7633cc:	8d 8c 24 6c 01 00 00                            	lea    ecx,[esp+0x16c]
  7633d3:	e8 e8 e1 fe ff                                  	call   0x7515c0
  7633d8:	83 fe 01                                        	cmp    esi,0x1
  7633db:	0f 8c d6 00 00 00                               	jl     0x7634b7
  7633e1:	bf 1c 00 00 00                                  	mov    edi,0x1c
  7633e6:	eb 08                                           	jmp    0x7633f0
  7633e8:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  7633ef:	90                                              	nop
  7633f0:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
  7633f7:	8b 94 24 90 00 00 00                            	mov    edx,DWORD PTR [esp+0x90]
  7633fe:	6a 01                                           	push   0x1
  763400:	8d 84 24 70 01 00 00                            	lea    eax,[esp+0x170]
  763407:	50                                              	push   eax
  763408:	8b 84 24 94 00 00 00                            	mov    eax,DWORD PTR [esp+0x94]
  76340f:	51                                              	push   ecx
  763410:	8b 8c 24 94 00 00 00                            	mov    ecx,DWORD PTR [esp+0x94]
  763417:	52                                              	push   edx
  763418:	8b 94 24 c0 00 00 00                            	mov    edx,DWORD PTR [esp+0xc0]
  76341f:	50                                              	push   eax
  763420:	8b 44 17 18                                     	mov    eax,DWORD PTR [edi+edx*1+0x18]
  763424:	51                                              	push   ecx
  763425:	50                                              	push   eax
  763426:	8b cd                                           	mov    ecx,ebp
  763428:	e8 83 0a 0e 00                                  	call   0x843eb0
  76342d:	84 c0                                           	test   al,al
  76342f:	74 7a                                           	je     0x7634ab
  763431:	8b 8c 24 94 01 00 00                            	mov    ecx,DWORD PTR [esp+0x194]
  763438:	85 c9                                           	test   ecx,ecx
  76343a:	74 32                                           	je     0x76346e
  76343c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76343e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  763441:	ff d0                                           	call   eax
  763443:	84 c0                                           	test   al,al
  763445:	75 27                                           	jne    0x76346e
  763447:	8b 94 24 94 01 00 00                            	mov    edx,DWORD PTR [esp+0x194]
  76344e:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  763452:	6a 00                                           	push   0x0
  763454:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  763458:	51                                              	push   ecx
  763459:	52                                              	push   edx
  76345a:	83 c0 08                                        	add    eax,0x8
  76345d:	50                                              	push   eax
  76345e:	e8 2d 75 0e 00                                  	call   0x84a990
  763463:	d8 44 24 34                                     	fadd   DWORD PTR [esp+0x34]
  763467:	83 c4 10                                        	add    esp,0x10
  76346a:	d9 5c 24 24                                     	fstp   DWORD PTR [esp+0x24]
  76346e:	8b 8c 24 98 01 00 00                            	mov    ecx,DWORD PTR [esp+0x198]
  763475:	85 c9                                           	test   ecx,ecx
  763477:	74 32                                           	je     0x7634ab
  763479:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  76347b:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  76347e:	ff d0                                           	call   eax
  763480:	84 c0                                           	test   al,al
  763482:	75 27                                           	jne    0x7634ab
  763484:	8b 94 24 98 01 00 00                            	mov    edx,DWORD PTR [esp+0x198]
  76348b:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  76348f:	6a 00                                           	push   0x0
  763491:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  763495:	51                                              	push   ecx
  763496:	52                                              	push   edx
  763497:	83 c0 08                                        	add    eax,0x8
  76349a:	50                                              	push   eax
  76349b:	e8 f0 74 0e 00                                  	call   0x84a990
  7634a0:	d8 44 24 20                                     	fadd   DWORD PTR [esp+0x20]
  7634a4:	83 c4 10                                        	add    esp,0x10
  7634a7:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  7634ab:	83 c7 1c                                        	add    edi,0x1c
  7634ae:	83 ee 01                                        	sub    esi,0x1
  7634b1:	0f 85 39 ff ff ff                               	jne    0x7633f0
  7634b7:	8d 8c 24 6c 01 00 00                            	lea    ecx,[esp+0x16c]
  7634be:	e8 6d 0d ff ff                                  	call   0x754230
  7634c3:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  7634c9:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  7634cd:	85 c0                                           	test   eax,eax
  7634cf:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  7634d3:	74 1e                                           	je     0x7634f3
  7634d5:	6a 00                                           	push   0x0
  7634d7:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  7634db:	51                                              	push   ecx
  7634dc:	50                                              	push   eax
  7634dd:	8d 56 08                                        	lea    edx,[esi+0x8]
  7634e0:	52                                              	push   edx
  7634e1:	e8 aa 74 0e 00                                  	call   0x84a990
  7634e6:	d9 5c 24 38                                     	fstp   DWORD PTR [esp+0x38]
  7634ea:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  7634f0:	83 c4 10                                        	add    esp,0x10
  7634f3:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  7634f7:	85 c0                                           	test   eax,eax
  7634f9:	74 1e                                           	je     0x763519
  7634fb:	6a 00                                           	push   0x0
  7634fd:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  763501:	51                                              	push   ecx
  763502:	50                                              	push   eax
  763503:	8d 56 08                                        	lea    edx,[esi+0x8]
  763506:	52                                              	push   edx
  763507:	e8 84 74 0e 00                                  	call   0x84a990
  76350c:	d9 5c 24 3c                                     	fstp   DWORD PTR [esp+0x3c]
  763510:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  763516:	83 c4 10                                        	add    esp,0x10
  763519:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  76351d:	85 c0                                           	test   eax,eax
  76351f:	74 39                                           	je     0x76355a
  763521:	6a 00                                           	push   0x0
  763523:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  763527:	51                                              	push   ecx
  763528:	50                                              	push   eax
  763529:	83 c6 08                                        	add    esi,0x8
  76352c:	56                                              	push   esi
  76352d:	e8 5e 74 0e 00                                  	call   0x84a990
  763532:	d9 54 24 2c                                     	fst    DWORD PTR [esp+0x2c]
  763536:	d9 05 98 51 00 01                               	fld    DWORD PTR ds:0x1005198
  76353c:	83 c4 10                                        	add    esp,0x10
  76353f:	d9 c9                                           	fxch   st(1)
  763541:	df e9                                           	fucomip st,st(1)
  763543:	dd d8                                           	fstp   st(0)
  763545:	9f                                              	lahf
  763546:	f6 c4 44                                        	test   ah,0x44
  763549:	7a 09                                           	jp     0x763554
  76354b:	0f 57 c0                                        	xorps  xmm0,xmm0
  76354e:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  763554:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
  76355a:	f3 0f 58 44 24 24                               	addss  xmm0,DWORD PTR [esp+0x24]
  763560:	f3 0f 58 44 24 2c                               	addss  xmm0,DWORD PTR [esp+0x2c]
  763566:	f3 0f 58 44 24 28                               	addss  xmm0,DWORD PTR [esp+0x28]
  76356c:	f3 0f 59 44 24 18                               	mulss  xmm0,DWORD PTR [esp+0x18]
  763572:	f3 0f 10 4c 24 1c                               	movss  xmm1,DWORD PTR [esp+0x1c]
  763578:	0f 2f c8                                        	comiss xmm1,xmm0
  76357b:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  763581:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  763585:	77 04                                           	ja     0x76358b
  763587:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  76358b:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
  76358f:	8b 94 24 b4 00 00 00                            	mov    edx,DWORD PTR [esp+0xb4]
  763596:	8b 84 24 b0 00 00 00                            	mov    eax,DWORD PTR [esp+0xb0]
  76359d:	52                                              	push   edx
  76359e:	50                                              	push   eax
  76359f:	8d 8c 24 b8 00 00 00                            	lea    ecx,[esp+0xb8]
  7635a6:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  7635ac:	e8 ef 5e ff ff                                  	call   0x7594a0
  7635b1:	8b 84 24 b0 00 00 00                            	mov    eax,DWORD PTR [esp+0xb0]
  7635b8:	85 c0                                           	test   eax,eax
  7635ba:	74 12                                           	je     0x7635ce
  7635bc:	3b 84 24 c0 00 00 00                            	cmp    eax,DWORD PTR [esp+0xc0]
  7635c3:	74 09                                           	je     0x7635ce
  7635c5:	50                                              	push   eax
  7635c6:	e8 15 0f d8 ff                                  	call   0x4e44e0
  7635cb:	83 c4 04                                        	add    esp,0x4
  7635ce:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  7635d2:	e8 59 0c ff ff                                  	call   0x754230
  7635d7:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  7635db:	5f                                              	pop    edi
  7635dc:	5e                                              	pop    esi
  7635dd:	5d                                              	pop    ebp
  7635de:	5b                                              	pop    ebx
  7635df:	81 c4 d8 01 00 00                               	add    esp,0x1d8
  7635e5:	c3                                              	ret
  7635e6:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  7635ea:	e8 41 0c ff ff                                  	call   0x754230
  7635ef:	d9 ee                                           	fldz
  7635f1:	5f                                              	pop    edi
  7635f2:	5e                                              	pop    esi
  7635f3:	5d                                              	pop    ebp
  7635f4:	5b                                              	pop    ebx
  7635f5:	81 c4 d8 01 00 00                               	add    esp,0x1d8
  7635fb:	c3                                              	ret
  7635fc:	cc                                              	int3
  7635fd:	cc                                              	int3
  7635fe:	cc                                              	int3
  7635ff:	cc                                              	int3
