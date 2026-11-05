# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00998320 (ScriptCore.DownloadContent::DownloadContent_AcceptSendMeYourSimInvite)
Paired Ghidra pseudocode: 00998320_ScriptCore_DownloadContent_DownloadContent_AcceptSendMeYourSimInvite.c
Window: [0x00998320, 0x009985f0) (720 bytes; stop exclusive)
Next defined Ghidra entry: 0x009985f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00998320: 81 ec ac 00 00 00 53 55 8b ac 24 dc 00 00 00 85
00998330: ed 0f 84 a6 02 00 00 83 bc 24 e0 00 00 00 00 0f
00998340: 84 98 02 00 00 8b 9c 24 e4 00 00 00 85 db 0f 84
00998350: 89 02 00 00 56 57 e8 35 10 dd ff 8b f0 e8 fe aa
00998360: fe ff 68 64 89 f8 04 8b c8 e8 b2 e5 fe ff 8b f8
00998370: 85 ff 0f 84 85 01 00 00 8b 84 24 dc 00 00 00 8b
00998380: 8c 24 d8 00 00 00 8b 94 24 d4 00 00 00 50 8b 84
00998390: 24 d4 00 00 00 51 8b 8c 24 d4 00 00 00 52 8b 94
009983a0: 24 d4 00 00 00 50 8b 84 24 d4 00 00 00 51 8b 8c
009983b0: 24 d4 00 00 00 52 50 6a 00 51 8b 0d a0 bd 1e 01
009983c0: e8 ab 3c bd ff 8b c8 e8 24 64 04 00 8b c8 e8 dd
009983d0: 3d 0a 00 8d 54 24 10 52 8d 4c 24 18 c7 44 24 14
009983e0: e0 a3 04 01 e8 17 11 e4 ff 8d 44 24 14 50 55 56
009983f0: e8 4b cb ff ff 83 c4 0c 84 c0 0f 84 ec 00 00 00
00998400: 8d 4c 24 10 51 8d 4c 24 28 c7 44 24 14 b4 a3 04
00998410: 01 e8 ea 10 e4 ff 8b 84 24 e8 00 00 00 8d 54 24
00998420: 24 52 50 56 e8 a7 f5 ff ff 83 c4 0c 84 c0 0f 84
00998430: a7 00 00 00 68 88 a3 04 01 6a 00 6a 00 8d 4c 24
00998440: 40 e8 1a 70 b4 ff d9 e8 51 d9 1c 24 bd 01 00 00
00998450: 00 01 6c 24 44 55 8d 4c 24 3c e8 e1 69 b4 ff 8d
00998460: 4c 24 34 51 53 56 e8 45 cb ff ff 83 c4 0c 84 c0
00998470: 74 60 8b 16 8b 84 24 e0 00 00 00 8b 52 58 50 8b
00998480: ce ff d2 68 80 a0 04 01 6a 00 6a 00 8d 4c 24 6c
00998490: 8b d8 e8 c9 6f b4 ff d9 e8 01 6c 24 6c 51 d9 1c
009984a0: 24 55 8d 4c 24 68 e8 95 69 b4 ff 8b 84 24 f0 00
009984b0: 00 00 85 c0 74 54 8d 4c 24 60 51 50 56 e8 ee ca
009984c0: ff ff 83 c4 0c 84 c0 75 41 8d 4c 24 60 e8 5e d6
009984d0: ab ff 8d 4c 24 34 e8 55 d6 ab ff 8b 44 24 24 85
009984e0: c0 74 09 50 e8 f7 bf b4 ff 83 c4 04 8b 44 24 14
009984f0: 85 c0 74 09 50 e8 e6 bf b4 ff 83 c4 04 5f 5e 5d
00998500: 32 c0 5b 81 c4 ac 00 00 00 c3 6a 00 6a 00 8d 4c
00998510: 24 3c e8 99 6d b4 ff 55 8d 54 24 38 52 8d 8c 24
00998520: ac 00 00 00 e8 b7 0e e4 ff 6a 00 6a 00 8d 4c 24
00998530: 68 e8 7a 6d b4 ff 55 8d 44 24 64 50 8d 8c 24 94
00998540: 00 00 00 e8 98 0e e4 ff 8b 17 8b 52 10 6a ff 6a
00998550: ff 8d 84 24 94 00 00 00 50 8d 8c 24 b0 00 00 00
00998560: 51 8d 44 24 34 50 8d 4c 24 28 51 53 8b cf ff d2
00998570: 6a 00 55 6a 00 6a 00 6a 00 8d 4c 24 48 8a d8 e8
00998580: 8c 6a b4 ff 8d 8c 24 8c 00 00 00 e8 00 f4 e3 ff
00998590: 8d 8c 24 a4 00 00 00 e8 f4 f3 e3 ff 8d 4c 24 60
009985a0: e8 8b d5 ab ff 8d 4c 24 34 e8 82 d5 ab ff 8b 44
009985b0: 24 24 85 c0 74 09 50 e8 24 bf b4 ff 83 c4 04 8b
009985c0: 44 24 14 85 c0 74 09 50 e8 13 bf b4 ff 83 c4 04
009985d0: 5f 5e 5d 8a c3 5b 81 c4 ac 00 00 00 c3 5d 32 c0
009985e0: 5b 81 c4 ac 00 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00998320 <.text+0x597320>:
  998320:	81 ec ac 00 00 00                               	sub    esp,0xac
  998326:	53                                              	push   ebx
  998327:	55                                              	push   ebp
  998328:	8b ac 24 dc 00 00 00                            	mov    ebp,DWORD PTR [esp+0xdc]
  99832f:	85 ed                                           	test   ebp,ebp
  998331:	0f 84 a6 02 00 00                               	je     0x9985dd
  998337:	83 bc 24 e0 00 00 00 00                         	cmp    DWORD PTR [esp+0xe0],0x0
  99833f:	0f 84 98 02 00 00                               	je     0x9985dd
  998345:	8b 9c 24 e4 00 00 00                            	mov    ebx,DWORD PTR [esp+0xe4]
  99834c:	85 db                                           	test   ebx,ebx
  99834e:	0f 84 89 02 00 00                               	je     0x9985dd
  998354:	56                                              	push   esi
  998355:	57                                              	push   edi
  998356:	e8 35 10 dd ff                                  	call   0x769390
  99835b:	8b f0                                           	mov    esi,eax
  99835d:	e8 fe aa fe ff                                  	call   0x982e60
  998362:	68 64 89 f8 04                                  	push   0x4f88964
  998367:	8b c8                                           	mov    ecx,eax
  998369:	e8 b2 e5 fe ff                                  	call   0x986920
  99836e:	8b f8                                           	mov    edi,eax
  998370:	85 ff                                           	test   edi,edi
  998372:	0f 84 85 01 00 00                               	je     0x9984fd
  998378:	8b 84 24 dc 00 00 00                            	mov    eax,DWORD PTR [esp+0xdc]
  99837f:	8b 8c 24 d8 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd8]
  998386:	8b 94 24 d4 00 00 00                            	mov    edx,DWORD PTR [esp+0xd4]
  99838d:	50                                              	push   eax
  99838e:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
  998395:	51                                              	push   ecx
  998396:	8b 8c 24 d4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd4]
  99839d:	52                                              	push   edx
  99839e:	8b 94 24 d4 00 00 00                            	mov    edx,DWORD PTR [esp+0xd4]
  9983a5:	50                                              	push   eax
  9983a6:	8b 84 24 d4 00 00 00                            	mov    eax,DWORD PTR [esp+0xd4]
  9983ad:	51                                              	push   ecx
  9983ae:	8b 8c 24 d4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd4]
  9983b5:	52                                              	push   edx
  9983b6:	50                                              	push   eax
  9983b7:	6a 00                                           	push   0x0
  9983b9:	51                                              	push   ecx
  9983ba:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  9983c0:	e8 ab 3c bd ff                                  	call   0x56c070
  9983c5:	8b c8                                           	mov    ecx,eax
  9983c7:	e8 24 64 04 00                                  	call   0x9de7f0
  9983cc:	8b c8                                           	mov    ecx,eax
  9983ce:	e8 dd 3d 0a 00                                  	call   0xa3c1b0
  9983d3:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  9983d7:	52                                              	push   edx
  9983d8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  9983dc:	c7 44 24 14 e0 a3 04 01                         	mov    DWORD PTR [esp+0x14],0x104a3e0
  9983e4:	e8 17 11 e4 ff                                  	call   0x7d9500
  9983e9:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  9983ed:	50                                              	push   eax
  9983ee:	55                                              	push   ebp
  9983ef:	56                                              	push   esi
  9983f0:	e8 4b cb ff ff                                  	call   0x994f40
  9983f5:	83 c4 0c                                        	add    esp,0xc
  9983f8:	84 c0                                           	test   al,al
  9983fa:	0f 84 ec 00 00 00                               	je     0x9984ec
  998400:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  998404:	51                                              	push   ecx
  998405:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  998409:	c7 44 24 14 b4 a3 04 01                         	mov    DWORD PTR [esp+0x14],0x104a3b4
  998411:	e8 ea 10 e4 ff                                  	call   0x7d9500
  998416:	8b 84 24 e8 00 00 00                            	mov    eax,DWORD PTR [esp+0xe8]
  99841d:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  998421:	52                                              	push   edx
  998422:	50                                              	push   eax
  998423:	56                                              	push   esi
  998424:	e8 a7 f5 ff ff                                  	call   0x9979d0
  998429:	83 c4 0c                                        	add    esp,0xc
  99842c:	84 c0                                           	test   al,al
  99842e:	0f 84 a7 00 00 00                               	je     0x9984db
  998434:	68 88 a3 04 01                                  	push   0x104a388
  998439:	6a 00                                           	push   0x0
  99843b:	6a 00                                           	push   0x0
  99843d:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  998441:	e8 1a 70 b4 ff                                  	call   0x4df460
  998446:	d9 e8                                           	fld1
  998448:	51                                              	push   ecx
  998449:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  99844c:	bd 01 00 00 00                                  	mov    ebp,0x1
  998451:	01 6c 24 44                                     	add    DWORD PTR [esp+0x44],ebp
  998455:	55                                              	push   ebp
  998456:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  99845a:	e8 e1 69 b4 ff                                  	call   0x4dee40
  99845f:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  998463:	51                                              	push   ecx
  998464:	53                                              	push   ebx
  998465:	56                                              	push   esi
  998466:	e8 45 cb ff ff                                  	call   0x994fb0
  99846b:	83 c4 0c                                        	add    esp,0xc
  99846e:	84 c0                                           	test   al,al
  998470:	74 60                                           	je     0x9984d2
  998472:	8b 16                                           	mov    edx,DWORD PTR [esi]
  998474:	8b 84 24 e0 00 00 00                            	mov    eax,DWORD PTR [esp+0xe0]
  99847b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  99847e:	50                                              	push   eax
  99847f:	8b ce                                           	mov    ecx,esi
  998481:	ff d2                                           	call   edx
  998483:	68 80 a0 04 01                                  	push   0x104a080
  998488:	6a 00                                           	push   0x0
  99848a:	6a 00                                           	push   0x0
  99848c:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  998490:	8b d8                                           	mov    ebx,eax
  998492:	e8 c9 6f b4 ff                                  	call   0x4df460
  998497:	d9 e8                                           	fld1
  998499:	01 6c 24 6c                                     	add    DWORD PTR [esp+0x6c],ebp
  99849d:	51                                              	push   ecx
  99849e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  9984a1:	55                                              	push   ebp
  9984a2:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  9984a6:	e8 95 69 b4 ff                                  	call   0x4dee40
  9984ab:	8b 84 24 f0 00 00 00                            	mov    eax,DWORD PTR [esp+0xf0]
  9984b2:	85 c0                                           	test   eax,eax
  9984b4:	74 54                                           	je     0x99850a
  9984b6:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  9984ba:	51                                              	push   ecx
  9984bb:	50                                              	push   eax
  9984bc:	56                                              	push   esi
  9984bd:	e8 ee ca ff ff                                  	call   0x994fb0
  9984c2:	83 c4 0c                                        	add    esp,0xc
  9984c5:	84 c0                                           	test   al,al
  9984c7:	75 41                                           	jne    0x99850a
  9984c9:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  9984cd:	e8 5e d6 ab ff                                  	call   0x455b30
  9984d2:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  9984d6:	e8 55 d6 ab ff                                  	call   0x455b30
  9984db:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  9984df:	85 c0                                           	test   eax,eax
  9984e1:	74 09                                           	je     0x9984ec
  9984e3:	50                                              	push   eax
  9984e4:	e8 f7 bf b4 ff                                  	call   0x4e44e0
  9984e9:	83 c4 04                                        	add    esp,0x4
  9984ec:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  9984f0:	85 c0                                           	test   eax,eax
  9984f2:	74 09                                           	je     0x9984fd
  9984f4:	50                                              	push   eax
  9984f5:	e8 e6 bf b4 ff                                  	call   0x4e44e0
  9984fa:	83 c4 04                                        	add    esp,0x4
  9984fd:	5f                                              	pop    edi
  9984fe:	5e                                              	pop    esi
  9984ff:	5d                                              	pop    ebp
  998500:	32 c0                                           	xor    al,al
  998502:	5b                                              	pop    ebx
  998503:	81 c4 ac 00 00 00                               	add    esp,0xac
  998509:	c3                                              	ret
  99850a:	6a 00                                           	push   0x0
  99850c:	6a 00                                           	push   0x0
  99850e:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  998512:	e8 99 6d b4 ff                                  	call   0x4df2b0
  998517:	55                                              	push   ebp
  998518:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  99851c:	52                                              	push   edx
  99851d:	8d 8c 24 ac 00 00 00                            	lea    ecx,[esp+0xac]
  998524:	e8 b7 0e e4 ff                                  	call   0x7d93e0
  998529:	6a 00                                           	push   0x0
  99852b:	6a 00                                           	push   0x0
  99852d:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  998531:	e8 7a 6d b4 ff                                  	call   0x4df2b0
  998536:	55                                              	push   ebp
  998537:	8d 44 24 64                                     	lea    eax,[esp+0x64]
  99853b:	50                                              	push   eax
  99853c:	8d 8c 24 94 00 00 00                            	lea    ecx,[esp+0x94]
  998543:	e8 98 0e e4 ff                                  	call   0x7d93e0
  998548:	8b 17                                           	mov    edx,DWORD PTR [edi]
  99854a:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  99854d:	6a ff                                           	push   0xffffffff
  99854f:	6a ff                                           	push   0xffffffff
  998551:	8d 84 24 94 00 00 00                            	lea    eax,[esp+0x94]
  998558:	50                                              	push   eax
  998559:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  998560:	51                                              	push   ecx
  998561:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  998565:	50                                              	push   eax
  998566:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  99856a:	51                                              	push   ecx
  99856b:	53                                              	push   ebx
  99856c:	8b cf                                           	mov    ecx,edi
  99856e:	ff d2                                           	call   edx
  998570:	6a 00                                           	push   0x0
  998572:	55                                              	push   ebp
  998573:	6a 00                                           	push   0x0
  998575:	6a 00                                           	push   0x0
  998577:	6a 00                                           	push   0x0
  998579:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  99857d:	8a d8                                           	mov    bl,al
  99857f:	e8 8c 6a b4 ff                                  	call   0x4df010
  998584:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  99858b:	e8 00 f4 e3 ff                                  	call   0x7d7990
  998590:	8d 8c 24 a4 00 00 00                            	lea    ecx,[esp+0xa4]
  998597:	e8 f4 f3 e3 ff                                  	call   0x7d7990
  99859c:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  9985a0:	e8 8b d5 ab ff                                  	call   0x455b30
  9985a5:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  9985a9:	e8 82 d5 ab ff                                  	call   0x455b30
  9985ae:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  9985b2:	85 c0                                           	test   eax,eax
  9985b4:	74 09                                           	je     0x9985bf
  9985b6:	50                                              	push   eax
  9985b7:	e8 24 bf b4 ff                                  	call   0x4e44e0
  9985bc:	83 c4 04                                        	add    esp,0x4
  9985bf:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  9985c3:	85 c0                                           	test   eax,eax
  9985c5:	74 09                                           	je     0x9985d0
  9985c7:	50                                              	push   eax
  9985c8:	e8 13 bf b4 ff                                  	call   0x4e44e0
  9985cd:	83 c4 04                                        	add    esp,0x4
  9985d0:	5f                                              	pop    edi
  9985d1:	5e                                              	pop    esi
  9985d2:	5d                                              	pop    ebp
  9985d3:	8a c3                                           	mov    al,bl
  9985d5:	5b                                              	pop    ebx
  9985d6:	81 c4 ac 00 00 00                               	add    esp,0xac
  9985dc:	c3                                              	ret
  9985dd:	5d                                              	pop    ebp
  9985de:	32 c0                                           	xor    al,al
  9985e0:	5b                                              	pop    ebx
  9985e1:	81 c4 ac 00 00 00                               	add    esp,0xac
  9985e7:	c3                                              	ret
  9985e8:	cc                                              	int3
  9985e9:	cc                                              	int3
  9985ea:	cc                                              	int3
  9985eb:	cc                                              	int3
  9985ec:	cc                                              	int3
  9985ed:	cc                                              	int3
  9985ee:	cc                                              	int3
  9985ef:	cc                                              	int3
