# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a93a0 (ScriptCore.CASUtils::CASUtils_GetCASPartImpl)
Paired Ghidra pseudocode: 005A93A0_ScriptCore_CASUtils_CASUtils_GetCASPartImpl.c
Window: [0x005a93a0, 0x005a94d0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a94d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a93a0: 83 ec 50 53 55 56 8b 74 24 60 57 6a 48 33 db 53
005a93b0: 56 e8 e2 5e 9d 00 8b 6c 24 7c 8b 7c 24 78 83 c4
005a93c0: 0c 38 5c 24 74 75 7f 8b 74 24 68 8d 44 24 10 50
005a93d0: 55 81 e6 7f 30 00 00 57 56 89 5c 24 20 89 5c 24
005a93e0: 24 89 5c 24 28 89 5c 24 2c e8 e2 60 03 00 8b c8
005a93f0: e8 cb 68 03 00 84 c0 75 2d 8d 4c 24 10 51 55 6a
005a9400: 02 56 e8 c9 60 03 00 8b c8 e8 b2 68 03 00 84 c0
005a9410: 75 14 8d 54 24 10 52 55 53 56 e8 b1 60 03 00 8b
005a9420: c8 e8 9a 68 03 00 39 5c 24 18 74 16 8b 74 24 64
005a9430: 8d 44 24 10 56 50 e8 55 ea ff ff 83 c4 08 39 1e
005a9440: 75 78 8b 74 24 64 e8 65 55 00 00 8d 4c 24 30 51
005a9450: 8b 4c 24 78 8d 54 24 24 52 8b 54 24 70 51 55 81
005a9460: cf 00 00 20 00 57 52 8d 4c 24 38 51 8b c8 89 5c
005a9470: 24 5c 89 5c 24 60 89 5c 24 64 89 5c 24 68 89 5c
005a9480: 24 6c 89 5c 24 70 89 5c 24 74 89 5c 24 78 89 5c
005a9490: 24 3c 89 5c 24 40 89 5c 24 44 89 5c 24 48 e8 0d
005a94a0: 63 00 00 84 c0 74 13 56 8d 54 24 34 52 8d 44 24
005a94b0: 28 50 e8 a9 c3 ff ff 83 c4 0c 5f 8b c6 5e 5d 5b
005a94c0: 83 c4 50 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a93a0 <.text+0x1a83a0>:
  5a93a0:	83 ec 50                                        	sub    esp,0x50
  5a93a3:	53                                              	push   ebx
  5a93a4:	55                                              	push   ebp
  5a93a5:	56                                              	push   esi
  5a93a6:	8b 74 24 60                                     	mov    esi,DWORD PTR [esp+0x60]
  5a93aa:	57                                              	push   edi
  5a93ab:	6a 48                                           	push   0x48
  5a93ad:	33 db                                           	xor    ebx,ebx
  5a93af:	53                                              	push   ebx
  5a93b0:	56                                              	push   esi
  5a93b1:	e8 e2 5e 9d 00                                  	call   0xf7f298
  5a93b6:	8b 6c 24 7c                                     	mov    ebp,DWORD PTR [esp+0x7c]
  5a93ba:	8b 7c 24 78                                     	mov    edi,DWORD PTR [esp+0x78]
  5a93be:	83 c4 0c                                        	add    esp,0xc
  5a93c1:	38 5c 24 74                                     	cmp    BYTE PTR [esp+0x74],bl
  5a93c5:	75 7f                                           	jne    0x5a9446
  5a93c7:	8b 74 24 68                                     	mov    esi,DWORD PTR [esp+0x68]
  5a93cb:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5a93cf:	50                                              	push   eax
  5a93d0:	55                                              	push   ebp
  5a93d1:	81 e6 7f 30 00 00                               	and    esi,0x307f
  5a93d7:	57                                              	push   edi
  5a93d8:	56                                              	push   esi
  5a93d9:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  5a93dd:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  5a93e1:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  5a93e5:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  5a93e9:	e8 e2 60 03 00                                  	call   0x5df4d0
  5a93ee:	8b c8                                           	mov    ecx,eax
  5a93f0:	e8 cb 68 03 00                                  	call   0x5dfcc0
  5a93f5:	84 c0                                           	test   al,al
  5a93f7:	75 2d                                           	jne    0x5a9426
  5a93f9:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a93fd:	51                                              	push   ecx
  5a93fe:	55                                              	push   ebp
  5a93ff:	6a 02                                           	push   0x2
  5a9401:	56                                              	push   esi
  5a9402:	e8 c9 60 03 00                                  	call   0x5df4d0
  5a9407:	8b c8                                           	mov    ecx,eax
  5a9409:	e8 b2 68 03 00                                  	call   0x5dfcc0
  5a940e:	84 c0                                           	test   al,al
  5a9410:	75 14                                           	jne    0x5a9426
  5a9412:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  5a9416:	52                                              	push   edx
  5a9417:	55                                              	push   ebp
  5a9418:	53                                              	push   ebx
  5a9419:	56                                              	push   esi
  5a941a:	e8 b1 60 03 00                                  	call   0x5df4d0
  5a941f:	8b c8                                           	mov    ecx,eax
  5a9421:	e8 9a 68 03 00                                  	call   0x5dfcc0
  5a9426:	39 5c 24 18                                     	cmp    DWORD PTR [esp+0x18],ebx
  5a942a:	74 16                                           	je     0x5a9442
  5a942c:	8b 74 24 64                                     	mov    esi,DWORD PTR [esp+0x64]
  5a9430:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  5a9434:	56                                              	push   esi
  5a9435:	50                                              	push   eax
  5a9436:	e8 55 ea ff ff                                  	call   0x5a7e90
  5a943b:	83 c4 08                                        	add    esp,0x8
  5a943e:	39 1e                                           	cmp    DWORD PTR [esi],ebx
  5a9440:	75 78                                           	jne    0x5a94ba
  5a9442:	8b 74 24 64                                     	mov    esi,DWORD PTR [esp+0x64]
  5a9446:	e8 65 55 00 00                                  	call   0x5ae9b0
  5a944b:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  5a944f:	51                                              	push   ecx
  5a9450:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  5a9454:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  5a9458:	52                                              	push   edx
  5a9459:	8b 54 24 70                                     	mov    edx,DWORD PTR [esp+0x70]
  5a945d:	51                                              	push   ecx
  5a945e:	55                                              	push   ebp
  5a945f:	81 cf 00 00 20 00                               	or     edi,0x200000
  5a9465:	57                                              	push   edi
  5a9466:	52                                              	push   edx
  5a9467:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  5a946b:	51                                              	push   ecx
  5a946c:	8b c8                                           	mov    ecx,eax
  5a946e:	89 5c 24 5c                                     	mov    DWORD PTR [esp+0x5c],ebx
  5a9472:	89 5c 24 60                                     	mov    DWORD PTR [esp+0x60],ebx
  5a9476:	89 5c 24 64                                     	mov    DWORD PTR [esp+0x64],ebx
  5a947a:	89 5c 24 68                                     	mov    DWORD PTR [esp+0x68],ebx
  5a947e:	89 5c 24 6c                                     	mov    DWORD PTR [esp+0x6c],ebx
  5a9482:	89 5c 24 70                                     	mov    DWORD PTR [esp+0x70],ebx
  5a9486:	89 5c 24 74                                     	mov    DWORD PTR [esp+0x74],ebx
  5a948a:	89 5c 24 78                                     	mov    DWORD PTR [esp+0x78],ebx
  5a948e:	89 5c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebx
  5a9492:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
  5a9496:	89 5c 24 44                                     	mov    DWORD PTR [esp+0x44],ebx
  5a949a:	89 5c 24 48                                     	mov    DWORD PTR [esp+0x48],ebx
  5a949e:	e8 0d 63 00 00                                  	call   0x5af7b0
  5a94a3:	84 c0                                           	test   al,al
  5a94a5:	74 13                                           	je     0x5a94ba
  5a94a7:	56                                              	push   esi
  5a94a8:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  5a94ac:	52                                              	push   edx
  5a94ad:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  5a94b1:	50                                              	push   eax
  5a94b2:	e8 a9 c3 ff ff                                  	call   0x5a5860
  5a94b7:	83 c4 0c                                        	add    esp,0xc
  5a94ba:	5f                                              	pop    edi
  5a94bb:	8b c6                                           	mov    eax,esi
  5a94bd:	5e                                              	pop    esi
  5a94be:	5d                                              	pop    ebp
  5a94bf:	5b                                              	pop    ebx
  5a94c0:	83 c4 50                                        	add    esp,0x50
  5a94c3:	c3                                              	ret
  5a94c4:	cc                                              	int3
  5a94c5:	cc                                              	int3
  5a94c6:	cc                                              	int3
  5a94c7:	cc                                              	int3
  5a94c8:	cc                                              	int3
  5a94c9:	cc                                              	int3
  5a94ca:	cc                                              	int3
  5a94cb:	cc                                              	int3
  5a94cc:	cc                                              	int3
  5a94cd:	cc                                              	int3
  5a94ce:	cc                                              	int3
  5a94cf:	cc                                              	int3
