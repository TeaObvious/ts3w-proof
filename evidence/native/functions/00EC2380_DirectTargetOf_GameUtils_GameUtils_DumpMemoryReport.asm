# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec2380 (DirectTargetOf_GameUtils_GameUtils_DumpMemoryReport)
Paired Ghidra pseudocode: 00EC2380_DirectTargetOf_GameUtils_GameUtils_DumpMemoryReport.c
Window: [0x00ec2380, 0x00ec24e0) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec24e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec2380: 83 ec 24 56 e8 67 a1 58 ff 89 44 24 04 e8 fe 6f
00ec2390: 8a ff 8b f0 85 f6 0f 84 f1 00 00 00 53 55 57 6a
00ec23a0: 00 6a 00 6a 00 6a 00 68 f0 3b 00 01 6a 20 e8 4d
00ec23b0: 21 62 ff 8b 6c 24 54 8b f8 83 c4 18 85 ff 74 1f
00ec23c0: 8b 06 8b 90 18 01 00 00 55 8b ce ff d2 52 50 8b
00ec23d0: 44 24 44 50 8b cf e8 15 fd ff ff 8b f8 eb 02 33
00ec23e0: ff 8b 17 8b 42 04 8b cf ff d0 8b 1e 8b 93 18 01
00ec23f0: 00 00 6a 00 8d 4c 24 18 b8 01 00 00 00 51 8b ce
00ec2400: c7 44 24 1c f4 a6 fb 00 88 44 24 2c 66 89 44 24
00ec2410: 26 66 c7 44 24 24 00 00 ff d2 52 50 8b 83 30 01
00ec2420: 00 00 55 8b ce ff d0 8b 1e 8b 93 18 01 00 00 6a
00ec2430: 00 55 6a ff 8b ce ff d2 52 50 8b 83 20 01 00 00
00ec2440: 8b ce ff d0 8b 4c 24 10 8b 11 8b 52 1c 8d 47 04
00ec2450: 50 6a 00 57 68 38 48 6f 06 ff d2 8b 07 8b 50 08
00ec2460: 8b cf ff d2 8b 06 8b 90 1c 01 00 00 8b ce ff d2
00ec2470: f6 44 24 1c 04 5f 5d c7 44 24 0c f4 a6 fb 00 5b
00ec2480: 74 0b 6a 00 8d 4c 24 0c e8 d3 32 63 ff 5e 83 c4
00ec2490: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
00ec24a0: 83 e9 04 e9 58 9a 91 ff cc cc cc cc cc cc cc cc
00ec24b0: 83 e9 10 e9 58 f7 ff ff cc cc cc cc cc cc cc cc
00ec24c0: 83 e9 04 e9 b8 db 88 ff cc cc cc cc cc cc cc cc
00ec24d0: 83 e9 08 e9 08 72 6e ff cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec2380 <.text+0xac1380>:
  ec2380:	83 ec 24                                        	sub    esp,0x24
  ec2383:	56                                              	push   esi
  ec2384:	e8 67 a1 58 ff                                  	call   0x44c4f0
  ec2389:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  ec238d:	e8 fe 6f 8a ff                                  	call   0x769390
  ec2392:	8b f0                                           	mov    esi,eax
  ec2394:	85 f6                                           	test   esi,esi
  ec2396:	0f 84 f1 00 00 00                               	je     0xec248d
  ec239c:	53                                              	push   ebx
  ec239d:	55                                              	push   ebp
  ec239e:	57                                              	push   edi
  ec239f:	6a 00                                           	push   0x0
  ec23a1:	6a 00                                           	push   0x0
  ec23a3:	6a 00                                           	push   0x0
  ec23a5:	6a 00                                           	push   0x0
  ec23a7:	68 f0 3b 00 01                                  	push   0x1003bf0
  ec23ac:	6a 20                                           	push   0x20
  ec23ae:	e8 4d 21 62 ff                                  	call   0x4e4500
  ec23b3:	8b 6c 24 54                                     	mov    ebp,DWORD PTR [esp+0x54]
  ec23b7:	8b f8                                           	mov    edi,eax
  ec23b9:	83 c4 18                                        	add    esp,0x18
  ec23bc:	85 ff                                           	test   edi,edi
  ec23be:	74 1f                                           	je     0xec23df
  ec23c0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec23c2:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  ec23c8:	55                                              	push   ebp
  ec23c9:	8b ce                                           	mov    ecx,esi
  ec23cb:	ff d2                                           	call   edx
  ec23cd:	52                                              	push   edx
  ec23ce:	50                                              	push   eax
  ec23cf:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  ec23d3:	50                                              	push   eax
  ec23d4:	8b cf                                           	mov    ecx,edi
  ec23d6:	e8 15 fd ff ff                                  	call   0xec20f0
  ec23db:	8b f8                                           	mov    edi,eax
  ec23dd:	eb 02                                           	jmp    0xec23e1
  ec23df:	33 ff                                           	xor    edi,edi
  ec23e1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec23e3:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ec23e6:	8b cf                                           	mov    ecx,edi
  ec23e8:	ff d0                                           	call   eax
  ec23ea:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
  ec23ec:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  ec23f2:	6a 00                                           	push   0x0
  ec23f4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ec23f8:	b8 01 00 00 00                                  	mov    eax,0x1
  ec23fd:	51                                              	push   ecx
  ec23fe:	8b ce                                           	mov    ecx,esi
  ec2400:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  ec2408:	88 44 24 2c                                     	mov    BYTE PTR [esp+0x2c],al
  ec240c:	66 89 44 24 26                                  	mov    WORD PTR [esp+0x26],ax
  ec2411:	66 c7 44 24 24 00 00                            	mov    WORD PTR [esp+0x24],0x0
  ec2418:	ff d2                                           	call   edx
  ec241a:	52                                              	push   edx
  ec241b:	50                                              	push   eax
  ec241c:	8b 83 30 01 00 00                               	mov    eax,DWORD PTR [ebx+0x130]
  ec2422:	55                                              	push   ebp
  ec2423:	8b ce                                           	mov    ecx,esi
  ec2425:	ff d0                                           	call   eax
  ec2427:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
  ec2429:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  ec242f:	6a 00                                           	push   0x0
  ec2431:	55                                              	push   ebp
  ec2432:	6a ff                                           	push   0xffffffff
  ec2434:	8b ce                                           	mov    ecx,esi
  ec2436:	ff d2                                           	call   edx
  ec2438:	52                                              	push   edx
  ec2439:	50                                              	push   eax
  ec243a:	8b 83 20 01 00 00                               	mov    eax,DWORD PTR [ebx+0x120]
  ec2440:	8b ce                                           	mov    ecx,esi
  ec2442:	ff d0                                           	call   eax
  ec2444:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ec2448:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ec244a:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
  ec244d:	8d 47 04                                        	lea    eax,[edi+0x4]
  ec2450:	50                                              	push   eax
  ec2451:	6a 00                                           	push   0x0
  ec2453:	57                                              	push   edi
  ec2454:	68 38 48 6f 06                                  	push   0x66f4838
  ec2459:	ff d2                                           	call   edx
  ec245b:	8b 07                                           	mov    eax,DWORD PTR [edi]
  ec245d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  ec2460:	8b cf                                           	mov    ecx,edi
  ec2462:	ff d2                                           	call   edx
  ec2464:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec2466:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  ec246c:	8b ce                                           	mov    ecx,esi
  ec246e:	ff d2                                           	call   edx
  ec2470:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  ec2475:	5f                                              	pop    edi
  ec2476:	5d                                              	pop    ebp
  ec2477:	c7 44 24 0c f4 a6 fb 00                         	mov    DWORD PTR [esp+0xc],0xfba6f4
  ec247f:	5b                                              	pop    ebx
  ec2480:	74 0b                                           	je     0xec248d
  ec2482:	6a 00                                           	push   0x0
  ec2484:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ec2488:	e8 d3 32 63 ff                                  	call   0x4f5760
  ec248d:	5e                                              	pop    esi
  ec248e:	83 c4 24                                        	add    esp,0x24
  ec2491:	c3                                              	ret
  ec2492:	cc                                              	int3
  ec2493:	cc                                              	int3
  ec2494:	cc                                              	int3
  ec2495:	cc                                              	int3
  ec2496:	cc                                              	int3
  ec2497:	cc                                              	int3
  ec2498:	cc                                              	int3
  ec2499:	cc                                              	int3
  ec249a:	cc                                              	int3
  ec249b:	cc                                              	int3
  ec249c:	cc                                              	int3
  ec249d:	cc                                              	int3
  ec249e:	cc                                              	int3
  ec249f:	cc                                              	int3
  ec24a0:	83 e9 04                                        	sub    ecx,0x4
  ec24a3:	e9 58 9a 91 ff                                  	jmp    0x7dbf00
  ec24a8:	cc                                              	int3
  ec24a9:	cc                                              	int3
  ec24aa:	cc                                              	int3
  ec24ab:	cc                                              	int3
  ec24ac:	cc                                              	int3
  ec24ad:	cc                                              	int3
  ec24ae:	cc                                              	int3
  ec24af:	cc                                              	int3
  ec24b0:	83 e9 10                                        	sub    ecx,0x10
  ec24b3:	e9 58 f7 ff ff                                  	jmp    0xec1c10
  ec24b8:	cc                                              	int3
  ec24b9:	cc                                              	int3
  ec24ba:	cc                                              	int3
  ec24bb:	cc                                              	int3
  ec24bc:	cc                                              	int3
  ec24bd:	cc                                              	int3
  ec24be:	cc                                              	int3
  ec24bf:	cc                                              	int3
  ec24c0:	83 e9 04                                        	sub    ecx,0x4
  ec24c3:	e9 b8 db 88 ff                                  	jmp    0x750080
  ec24c8:	cc                                              	int3
  ec24c9:	cc                                              	int3
  ec24ca:	cc                                              	int3
  ec24cb:	cc                                              	int3
  ec24cc:	cc                                              	int3
  ec24cd:	cc                                              	int3
  ec24ce:	cc                                              	int3
  ec24cf:	cc                                              	int3
  ec24d0:	83 e9 08                                        	sub    ecx,0x8
  ec24d3:	e9 08 72 6e ff                                  	jmp    0x5a96e0
  ec24d8:	cc                                              	int3
  ec24d9:	cc                                              	int3
  ec24da:	cc                                              	int3
  ec24db:	cc                                              	int3
  ec24dc:	cc                                              	int3
  ec24dd:	cc                                              	int3
  ec24de:	cc                                              	int3
  ec24df:	cc                                              	int3
