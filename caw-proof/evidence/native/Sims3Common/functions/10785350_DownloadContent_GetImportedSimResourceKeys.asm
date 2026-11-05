# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785350 (DownloadContent_GetImportedSimResourceKeys)
Paired Ghidra pseudocode: 10785350_DownloadContent_GetImportedSimResourceKeys.c
Window: [0x10785350, 0x107854c0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x107854c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785350: 83 ec 60 53 56 33 db e8 74 fd 15 00 8b f0 85 f6
10785360: 75 06 5e 5b 83 c4 60 c3 38 5c 24 70 57 c7 44 24
10785370: 0c 10 8c b5 10 c7 44 24 10 18 8c b5 10 8d 7c 24
10785380: 0c 74 04 8d 7c 24 10 8d 44 24 14 50 8d 4c 24 1c
10785390: c7 44 24 18 e0 8c b5 10 e8 73 24 fa ff 8b 16 8b
107853a0: 52 20 6a 00 57 8d 44 24 20 50 8b ce ff d2 85 c0
107853b0: 0f 86 e5 00 00 00 8b 5c 24 1c 2b 5c 24 18 68 20
107853c0: 8c b5 10 6a 00 c1 fb 04 6a 01 8b f3 c1 e6 04 6a
107853d0: 00 83 c6 04 56 6a 00 8d 4c 24 58 e8 10 ed 18 00
107853e0: 6a 01 8d 44 24 44 50 8d 4c 24 30 e8 b0 6e e4 ff
107853f0: 8d 4c 24 28 51 8d 4c 24 1c e8 c2 64 e4 ff 84 c0
10785400: 75 40 8d 4c 24 28 e8 f5 54 e4 ff 8b 4c 24 44 85
10785410: c9 c7 44 24 40 10 ad b8 10 74 05 e8 10 e6 18 00
10785420: 8b 44 24 18 85 c0 c7 44 24 40 e4 fe aa 10 74 09
10785430: 50 e8 5a 3a 19 00 83 c4 04 5f 5e 33 c0 5b 83 c4
10785440: 60 c3 55 e8 d8 5c dd ff 8b 6c 24 74 8b f8 8b 17
10785450: 8b 82 80 00 00 00 56 55 8b cf ff d0 8b 44 24 48
10785460: 85 c0 74 05 8b 40 08 eb 02 33 c0 8b 17 56 6a 00
10785470: 50 8b 82 98 00 00 00 55 8b cf ff d0 8d 4c 24 2c
10785480: e8 7b 54 e4 ff 8b 4c 24 48 85 c9 c7 44 24 44 10
10785490: ad b8 10 5d 74 05 e8 95 e5 18 00 8b 44 24 18 85
107854a0: c0 74 09 50 e8 e7 39 19 00 83 c4 04 5f 5e 8b c3
107854b0: 5b 83 c4 60 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10785350 <.text+0x784350>:
10785350:	83 ec 60                                        	sub    esp,0x60
10785353:	53                                              	push   ebx
10785354:	56                                              	push   esi
10785355:	33 db                                           	xor    ebx,ebx
10785357:	e8 74 fd 15 00                                  	call   0x108e50d0
1078535c:	8b f0                                           	mov    esi,eax
1078535e:	85 f6                                           	test   esi,esi
10785360:	75 06                                           	jne    0x10785368
10785362:	5e                                              	pop    esi
10785363:	5b                                              	pop    ebx
10785364:	83 c4 60                                        	add    esp,0x60
10785367:	c3                                              	ret
10785368:	38 5c 24 70                                     	cmp    BYTE PTR [esp+0x70],bl
1078536c:	57                                              	push   edi
1078536d:	c7 44 24 0c 10 8c b5 10                         	mov    DWORD PTR [esp+0xc],0x10b58c10
10785375:	c7 44 24 10 18 8c b5 10                         	mov    DWORD PTR [esp+0x10],0x10b58c18
1078537d:	8d 7c 24 0c                                     	lea    edi,[esp+0xc]
10785381:	74 04                                           	je     0x10785387
10785383:	8d 7c 24 10                                     	lea    edi,[esp+0x10]
10785387:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1078538b:	50                                              	push   eax
1078538c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10785390:	c7 44 24 18 e0 8c b5 10                         	mov    DWORD PTR [esp+0x18],0x10b58ce0
10785398:	e8 73 24 fa ff                                  	call   0x10727810
1078539d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1078539f:	8b 52 20                                        	mov    edx,DWORD PTR [edx+0x20]
107853a2:	6a 00                                           	push   0x0
107853a4:	57                                              	push   edi
107853a5:	8d 44 24 20                                     	lea    eax,[esp+0x20]
107853a9:	50                                              	push   eax
107853aa:	8b ce                                           	mov    ecx,esi
107853ac:	ff d2                                           	call   edx
107853ae:	85 c0                                           	test   eax,eax
107853b0:	0f 86 e5 00 00 00                               	jbe    0x1078549b
107853b6:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
107853ba:	2b 5c 24 18                                     	sub    ebx,DWORD PTR [esp+0x18]
107853be:	68 20 8c b5 10                                  	push   0x10b58c20
107853c3:	6a 00                                           	push   0x0
107853c5:	c1 fb 04                                        	sar    ebx,0x4
107853c8:	6a 01                                           	push   0x1
107853ca:	8b f3                                           	mov    esi,ebx
107853cc:	c1 e6 04                                        	shl    esi,0x4
107853cf:	6a 00                                           	push   0x0
107853d1:	83 c6 04                                        	add    esi,0x4
107853d4:	56                                              	push   esi
107853d5:	6a 00                                           	push   0x0
107853d7:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
107853db:	e8 10 ed 18 00                                  	call   0x109140f0
107853e0:	6a 01                                           	push   0x1
107853e2:	8d 44 24 44                                     	lea    eax,[esp+0x44]
107853e6:	50                                              	push   eax
107853e7:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
107853eb:	e8 b0 6e e4 ff                                  	call   0x105cc2a0
107853f0:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
107853f4:	51                                              	push   ecx
107853f5:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
107853f9:	e8 c2 64 e4 ff                                  	call   0x105cb8c0
107853fe:	84 c0                                           	test   al,al
10785400:	75 40                                           	jne    0x10785442
10785402:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10785406:	e8 f5 54 e4 ff                                  	call   0x105ca900
1078540b:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1078540f:	85 c9                                           	test   ecx,ecx
10785411:	c7 44 24 40 10 ad b8 10                         	mov    DWORD PTR [esp+0x40],0x10b8ad10
10785419:	74 05                                           	je     0x10785420
1078541b:	e8 10 e6 18 00                                  	call   0x10913a30
10785420:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10785424:	85 c0                                           	test   eax,eax
10785426:	c7 44 24 40 e4 fe aa 10                         	mov    DWORD PTR [esp+0x40],0x10aafee4
1078542e:	74 09                                           	je     0x10785439
10785430:	50                                              	push   eax
10785431:	e8 5a 3a 19 00                                  	call   0x10918e90
10785436:	83 c4 04                                        	add    esp,0x4
10785439:	5f                                              	pop    edi
1078543a:	5e                                              	pop    esi
1078543b:	33 c0                                           	xor    eax,eax
1078543d:	5b                                              	pop    ebx
1078543e:	83 c4 60                                        	add    esp,0x60
10785441:	c3                                              	ret
10785442:	55                                              	push   ebp
10785443:	e8 d8 5c dd ff                                  	call   0x1055b120
10785448:	8b 6c 24 74                                     	mov    ebp,DWORD PTR [esp+0x74]
1078544c:	8b f8                                           	mov    edi,eax
1078544e:	8b 17                                           	mov    edx,DWORD PTR [edi]
10785450:	8b 82 80 00 00 00                               	mov    eax,DWORD PTR [edx+0x80]
10785456:	56                                              	push   esi
10785457:	55                                              	push   ebp
10785458:	8b cf                                           	mov    ecx,edi
1078545a:	ff d0                                           	call   eax
1078545c:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
10785460:	85 c0                                           	test   eax,eax
10785462:	74 05                                           	je     0x10785469
10785464:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10785467:	eb 02                                           	jmp    0x1078546b
10785469:	33 c0                                           	xor    eax,eax
1078546b:	8b 17                                           	mov    edx,DWORD PTR [edi]
1078546d:	56                                              	push   esi
1078546e:	6a 00                                           	push   0x0
10785470:	50                                              	push   eax
10785471:	8b 82 98 00 00 00                               	mov    eax,DWORD PTR [edx+0x98]
10785477:	55                                              	push   ebp
10785478:	8b cf                                           	mov    ecx,edi
1078547a:	ff d0                                           	call   eax
1078547c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10785480:	e8 7b 54 e4 ff                                  	call   0x105ca900
10785485:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
10785489:	85 c9                                           	test   ecx,ecx
1078548b:	c7 44 24 44 10 ad b8 10                         	mov    DWORD PTR [esp+0x44],0x10b8ad10
10785493:	5d                                              	pop    ebp
10785494:	74 05                                           	je     0x1078549b
10785496:	e8 95 e5 18 00                                  	call   0x10913a30
1078549b:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1078549f:	85 c0                                           	test   eax,eax
107854a1:	74 09                                           	je     0x107854ac
107854a3:	50                                              	push   eax
107854a4:	e8 e7 39 19 00                                  	call   0x10918e90
107854a9:	83 c4 04                                        	add    esp,0x4
107854ac:	5f                                              	pop    edi
107854ad:	5e                                              	pop    esi
107854ae:	8b c3                                           	mov    eax,ebx
107854b0:	5b                                              	pop    ebx
107854b1:	83 c4 60                                        	add    esp,0x60
107854b4:	c3                                              	ret
107854b5:	cc                                              	int3
107854b6:	cc                                              	int3
107854b7:	cc                                              	int3
107854b8:	cc                                              	int3
107854b9:	cc                                              	int3
107854ba:	cc                                              	int3
107854bb:	cc                                              	int3
107854bc:	cc                                              	int3
107854bd:	cc                                              	int3
107854be:	cc                                              	int3
107854bf:	cc                                              	int3
