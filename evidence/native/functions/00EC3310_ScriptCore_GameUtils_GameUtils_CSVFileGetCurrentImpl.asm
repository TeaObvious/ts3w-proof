# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec3310 (ScriptCore.GameUtils::GameUtils_CSVFileGetCurrentImpl)
Paired Ghidra pseudocode: 00EC3310_ScriptCore_GameUtils_GameUtils_CSVFileGetCurrentImpl.c
Window: [0x00ec3310, 0x00ec34a0) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec34a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec3310: 83 ec 64 53 56 57 e8 75 60 8a ff 8b 5c 24 74 8b
00ec3320: f8 8b c3 25 00 00 00 ff 33 f6 3d 00 00 00 40 74
00ec3330: 04 33 db eb 14 e8 56 60 8a ff 8b 10 8b c8 8b 82
00ec3340: cc 00 00 00 53 ff d0 8b d8 3b fe 0f 84 90 00 00
00ec3350: 00 3b de 0f 85 88 00 00 00 68 c4 a6 fb 00 8d 4c
00ec3360: 24 24 89 74 24 24 89 74 24 28 89 74 24 2c c7 44
00ec3370: 24 30 f0 3b 00 01 e8 15 82 54 ff 6a 01 6a 10 8d
00ec3380: 4c 24 28 51 6a 09 bb f4 a6 fb 00 6a 13 8d 4c 24
00ec3390: 44 89 5c 24 44 66 89 74 24 4c 66 89 74 24 4e e8
00ec33a0: 1c 26 63 ff 8b 17 8b 52 50 8d 44 24 74 50 8d 4c
00ec33b0: 24 34 51 8b cf 89 74 24 7c ff d2 f6 44 24 38 04
00ec33c0: 8b 7c 24 74 89 5c 24 30 74 0a 56 8d 4c 24 34 e8
00ec33d0: 8c 23 63 ff 8b 4c 24 28 8b 44 24 20 e9 96 00 00
00ec33e0: 00 68 c4 a6 fb 00 8d 4c 24 14 89 74 24 14 89 74
00ec33f0: 24 18 89 74 24 1c c7 44 24 20 f0 3b 00 01 e8 8d
00ec3400: 81 54 ff 8b 13 8b 52 18 68 00 e0 00 00 8d 44 24
00ec3410: 14 50 8b cb ff d2 6a 01 6a 10 8d 44 24 18 50 6a
00ec3420: 09 bb f4 a6 fb 00 6a 13 8d 4c 24 64 89 5c 24 64
00ec3430: 66 89 74 24 6c 66 89 74 24 6e e8 81 25 63 ff 8d
00ec3440: 44 24 0c 89 74 24 0c 8b 17 8b 52 50 50 8d 4c 24
00ec3450: 54 51 8b cf ff d2 f6 44 24 58 04 8b 7c 24 0c 89
00ec3460: 5c 24 50 74 0a 56 8d 4c 24 54 e8 f1 22 63 ff 8b
00ec3470: 4c 24 18 8b 44 24 10 2b c8 83 e1 fe 83 f9 02 7e
00ec3480: 0d 3b c6 74 09 50 e8 55 10 62 ff 83 c4 04 8b c7
00ec3490: 5f 5e 5b 83 c4 64 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec3310 <.text+0xac2310>:
  ec3310:	83 ec 64                                        	sub    esp,0x64
  ec3313:	53                                              	push   ebx
  ec3314:	56                                              	push   esi
  ec3315:	57                                              	push   edi
  ec3316:	e8 75 60 8a ff                                  	call   0x769390
  ec331b:	8b 5c 24 74                                     	mov    ebx,DWORD PTR [esp+0x74]
  ec331f:	8b f8                                           	mov    edi,eax
  ec3321:	8b c3                                           	mov    eax,ebx
  ec3323:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec3328:	33 f6                                           	xor    esi,esi
  ec332a:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec332f:	74 04                                           	je     0xec3335
  ec3331:	33 db                                           	xor    ebx,ebx
  ec3333:	eb 14                                           	jmp    0xec3349
  ec3335:	e8 56 60 8a ff                                  	call   0x769390
  ec333a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec333c:	8b c8                                           	mov    ecx,eax
  ec333e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec3344:	53                                              	push   ebx
  ec3345:	ff d0                                           	call   eax
  ec3347:	8b d8                                           	mov    ebx,eax
  ec3349:	3b fe                                           	cmp    edi,esi
  ec334b:	0f 84 90 00 00 00                               	je     0xec33e1
  ec3351:	3b de                                           	cmp    ebx,esi
  ec3353:	0f 85 88 00 00 00                               	jne    0xec33e1
  ec3359:	68 c4 a6 fb 00                                  	push   0xfba6c4
  ec335e:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ec3362:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  ec3366:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  ec336a:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  ec336e:	c7 44 24 30 f0 3b 00 01                         	mov    DWORD PTR [esp+0x30],0x1003bf0
  ec3376:	e8 15 82 54 ff                                  	call   0x40b590
  ec337b:	6a 01                                           	push   0x1
  ec337d:	6a 10                                           	push   0x10
  ec337f:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ec3383:	51                                              	push   ecx
  ec3384:	6a 09                                           	push   0x9
  ec3386:	bb f4 a6 fb 00                                  	mov    ebx,0xfba6f4
  ec338b:	6a 13                                           	push   0x13
  ec338d:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  ec3391:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
  ec3395:	66 89 74 24 4c                                  	mov    WORD PTR [esp+0x4c],si
  ec339a:	66 89 74 24 4e                                  	mov    WORD PTR [esp+0x4e],si
  ec339f:	e8 1c 26 63 ff                                  	call   0x4f59c0
  ec33a4:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec33a6:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec33a9:	8d 44 24 74                                     	lea    eax,[esp+0x74]
  ec33ad:	50                                              	push   eax
  ec33ae:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ec33b2:	51                                              	push   ecx
  ec33b3:	8b cf                                           	mov    ecx,edi
  ec33b5:	89 74 24 7c                                     	mov    DWORD PTR [esp+0x7c],esi
  ec33b9:	ff d2                                           	call   edx
  ec33bb:	f6 44 24 38 04                                  	test   BYTE PTR [esp+0x38],0x4
  ec33c0:	8b 7c 24 74                                     	mov    edi,DWORD PTR [esp+0x74]
  ec33c4:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
  ec33c8:	74 0a                                           	je     0xec33d4
  ec33ca:	56                                              	push   esi
  ec33cb:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ec33cf:	e8 8c 23 63 ff                                  	call   0x4f5760
  ec33d4:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ec33d8:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  ec33dc:	e9 96 00 00 00                                  	jmp    0xec3477
  ec33e1:	68 c4 a6 fb 00                                  	push   0xfba6c4
  ec33e6:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  ec33ea:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  ec33ee:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  ec33f2:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  ec33f6:	c7 44 24 20 f0 3b 00 01                         	mov    DWORD PTR [esp+0x20],0x1003bf0
  ec33fe:	e8 8d 81 54 ff                                  	call   0x40b590
  ec3403:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  ec3405:	8b 52 18                                        	mov    edx,DWORD PTR [edx+0x18]
  ec3408:	68 00 e0 00 00                                  	push   0xe000
  ec340d:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ec3411:	50                                              	push   eax
  ec3412:	8b cb                                           	mov    ecx,ebx
  ec3414:	ff d2                                           	call   edx
  ec3416:	6a 01                                           	push   0x1
  ec3418:	6a 10                                           	push   0x10
  ec341a:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  ec341e:	50                                              	push   eax
  ec341f:	6a 09                                           	push   0x9
  ec3421:	bb f4 a6 fb 00                                  	mov    ebx,0xfba6f4
  ec3426:	6a 13                                           	push   0x13
  ec3428:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  ec342c:	89 5c 24 64                                     	mov    DWORD PTR [esp+0x64],ebx
  ec3430:	66 89 74 24 6c                                  	mov    WORD PTR [esp+0x6c],si
  ec3435:	66 89 74 24 6e                                  	mov    WORD PTR [esp+0x6e],si
  ec343a:	e8 81 25 63 ff                                  	call   0x4f59c0
  ec343f:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ec3443:	89 74 24 0c                                     	mov    DWORD PTR [esp+0xc],esi
  ec3447:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec3449:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ec344c:	50                                              	push   eax
  ec344d:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  ec3451:	51                                              	push   ecx
  ec3452:	8b cf                                           	mov    ecx,edi
  ec3454:	ff d2                                           	call   edx
  ec3456:	f6 44 24 58 04                                  	test   BYTE PTR [esp+0x58],0x4
  ec345b:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  ec345f:	89 5c 24 50                                     	mov    DWORD PTR [esp+0x50],ebx
  ec3463:	74 0a                                           	je     0xec346f
  ec3465:	56                                              	push   esi
  ec3466:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  ec346a:	e8 f1 22 63 ff                                  	call   0x4f5760
  ec346f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  ec3473:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ec3477:	2b c8                                           	sub    ecx,eax
  ec3479:	83 e1 fe                                        	and    ecx,0xfffffffe
  ec347c:	83 f9 02                                        	cmp    ecx,0x2
  ec347f:	7e 0d                                           	jle    0xec348e
  ec3481:	3b c6                                           	cmp    eax,esi
  ec3483:	74 09                                           	je     0xec348e
  ec3485:	50                                              	push   eax
  ec3486:	e8 55 10 62 ff                                  	call   0x4e44e0
  ec348b:	83 c4 04                                        	add    esp,0x4
  ec348e:	8b c7                                           	mov    eax,edi
  ec3490:	5f                                              	pop    edi
  ec3491:	5e                                              	pop    esi
  ec3492:	5b                                              	pop    ebx
  ec3493:	83 c4 64                                        	add    esp,0x64
  ec3496:	c3                                              	ret
  ec3497:	cc                                              	int3
  ec3498:	cc                                              	int3
  ec3499:	cc                                              	int3
  ec349a:	cc                                              	int3
  ec349b:	cc                                              	int3
  ec349c:	cc                                              	int3
  ec349d:	cc                                              	int3
  ec349e:	cc                                              	int3
  ec349f:	cc                                              	int3
