# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005f7400 (DirectTargetOf_CASUtils_CASUtils_ExtractTattooDimensions)
Paired Ghidra pseudocode: 005F7400_DirectTargetOf_CASUtils_CASUtils_ExtractTattooDimensions.c
Window: [0x005f7400, 0x005f7530) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x005f7530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005f7400: 81 ec c4 00 00 00 53 56 e8 83 1f 17 00 8b 8c 24
005f7410: d0 00 00 00 8b d8 8b 03 8b 50 58 51 8b cb ff d2
005f7420: 8b f0 85 f6 75 09 5e 5b 81 c4 c4 00 00 00 c3 55
005f7430: 8d 4c 24 70 e8 87 86 fc ff 56 8d 4c 24 74 e8 1d
005f7440: 8c fc ff 8a 84 24 d8 00 00 00 8a c8 f6 d9 1b c9
005f7450: 83 e1 f0 83 c1 14 84 c0 8b e9 74 64 0f 57 c0 8d
005f7460: 54 24 10 52 8d 44 24 1c 50 8d 4c 24 78 51 f3 0f
005f7470: 11 44 24 24 f3 0f 11 44 24 28 f3 0f 11 44 24 1c
005f7480: f3 0f 11 44 24 20 e8 45 e7 ff ff f3 0f 10 44 24
005f7490: 24 f3 0f 11 44 24 2c f3 0f 10 44 24 28 f3 0f 11
005f74a0: 44 24 30 f3 0f 10 44 24 1c f3 0f 11 44 24 34 f3
005f74b0: 0f 10 44 24 20 83 c4 0c f3 0f 11 44 24 2c eb 24
005f74c0: 57 33 c0 8d 7c 24 24 8d 70 01 57 8d 54 24 78 56
005f74d0: 52 e8 8a fc ff ff 8b c6 83 c4 0c 83 c7 10 83 f8
005f74e0: 05 72 e4 5f 8b 03 8b 90 90 00 00 00 55 8d 4c 24
005f74f0: 10 51 8b cb ff d2 8b 03 8b 80 a8 00 00 00 55 6a
005f7500: 00 8d 4c 24 28 51 8d 54 24 18 52 8b cb ff d0 8b
005f7510: 74 24 0c 8d 4c 24 70 e8 c4 87 fc ff 5d 8b c6 5e
005f7520: 5b 81 c4 c4 00 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005f7400 <.text+0x1f6400>:
  5f7400:	81 ec c4 00 00 00                               	sub    esp,0xc4
  5f7406:	53                                              	push   ebx
  5f7407:	56                                              	push   esi
  5f7408:	e8 83 1f 17 00                                  	call   0x769390
  5f740d:	8b 8c 24 d0 00 00 00                            	mov    ecx,DWORD PTR [esp+0xd0]
  5f7414:	8b d8                                           	mov    ebx,eax
  5f7416:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f7418:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  5f741b:	51                                              	push   ecx
  5f741c:	8b cb                                           	mov    ecx,ebx
  5f741e:	ff d2                                           	call   edx
  5f7420:	8b f0                                           	mov    esi,eax
  5f7422:	85 f6                                           	test   esi,esi
  5f7424:	75 09                                           	jne    0x5f742f
  5f7426:	5e                                              	pop    esi
  5f7427:	5b                                              	pop    ebx
  5f7428:	81 c4 c4 00 00 00                               	add    esp,0xc4
  5f742e:	c3                                              	ret
  5f742f:	55                                              	push   ebp
  5f7430:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  5f7434:	e8 87 86 fc ff                                  	call   0x5bfac0
  5f7439:	56                                              	push   esi
  5f743a:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  5f743e:	e8 1d 8c fc ff                                  	call   0x5c0060
  5f7443:	8a 84 24 d8 00 00 00                            	mov    al,BYTE PTR [esp+0xd8]
  5f744a:	8a c8                                           	mov    cl,al
  5f744c:	f6 d9                                           	neg    cl
  5f744e:	1b c9                                           	sbb    ecx,ecx
  5f7450:	83 e1 f0                                        	and    ecx,0xfffffff0
  5f7453:	83 c1 14                                        	add    ecx,0x14
  5f7456:	84 c0                                           	test   al,al
  5f7458:	8b e9                                           	mov    ebp,ecx
  5f745a:	74 64                                           	je     0x5f74c0
  5f745c:	0f 57 c0                                        	xorps  xmm0,xmm0
  5f745f:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  5f7463:	52                                              	push   edx
  5f7464:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  5f7468:	50                                              	push   eax
  5f7469:	8d 4c 24 78                                     	lea    ecx,[esp+0x78]
  5f746d:	51                                              	push   ecx
  5f746e:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  5f7474:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  5f747a:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5f7480:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  5f7486:	e8 45 e7 ff ff                                  	call   0x5f5bd0
  5f748b:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
  5f7491:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  5f7497:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
  5f749d:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
  5f74a3:	f3 0f 10 44 24 1c                               	movss  xmm0,DWORD PTR [esp+0x1c]
  5f74a9:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  5f74af:	f3 0f 10 44 24 20                               	movss  xmm0,DWORD PTR [esp+0x20]
  5f74b5:	83 c4 0c                                        	add    esp,0xc
  5f74b8:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  5f74be:	eb 24                                           	jmp    0x5f74e4
  5f74c0:	57                                              	push   edi
  5f74c1:	33 c0                                           	xor    eax,eax
  5f74c3:	8d 7c 24 24                                     	lea    edi,[esp+0x24]
  5f74c7:	8d 70 01                                        	lea    esi,[eax+0x1]
  5f74ca:	57                                              	push   edi
  5f74cb:	8d 54 24 78                                     	lea    edx,[esp+0x78]
  5f74cf:	56                                              	push   esi
  5f74d0:	52                                              	push   edx
  5f74d1:	e8 8a fc ff ff                                  	call   0x5f7160
  5f74d6:	8b c6                                           	mov    eax,esi
  5f74d8:	83 c4 0c                                        	add    esp,0xc
  5f74db:	83 c7 10                                        	add    edi,0x10
  5f74de:	83 f8 05                                        	cmp    eax,0x5
  5f74e1:	72 e4                                           	jb     0x5f74c7
  5f74e3:	5f                                              	pop    edi
  5f74e4:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f74e6:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  5f74ec:	55                                              	push   ebp
  5f74ed:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5f74f1:	51                                              	push   ecx
  5f74f2:	8b cb                                           	mov    ecx,ebx
  5f74f4:	ff d2                                           	call   edx
  5f74f6:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  5f74f8:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
  5f74fe:	55                                              	push   ebp
  5f74ff:	6a 00                                           	push   0x0
  5f7501:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  5f7505:	51                                              	push   ecx
  5f7506:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  5f750a:	52                                              	push   edx
  5f750b:	8b cb                                           	mov    ecx,ebx
  5f750d:	ff d0                                           	call   eax
  5f750f:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5f7513:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  5f7517:	e8 c4 87 fc ff                                  	call   0x5bfce0
  5f751c:	5d                                              	pop    ebp
  5f751d:	8b c6                                           	mov    eax,esi
  5f751f:	5e                                              	pop    esi
  5f7520:	5b                                              	pop    ebx
  5f7521:	81 c4 c4 00 00 00                               	add    esp,0xc4
  5f7527:	c3                                              	ret
  5f7528:	cc                                              	int3
  5f7529:	cc                                              	int3
  5f752a:	cc                                              	int3
  5f752b:	cc                                              	int3
  5f752c:	cc                                              	int3
  5f752d:	cc                                              	int3
  5f752e:	cc                                              	int3
  5f752f:	cc                                              	int3
