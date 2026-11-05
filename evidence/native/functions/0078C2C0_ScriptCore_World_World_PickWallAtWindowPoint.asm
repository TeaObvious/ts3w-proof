# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078c2c0 (ScriptCore.World::World_PickWallAtWindowPoint)
Paired Ghidra pseudocode: 0078C2C0_ScriptCore_World_World_PickWallAtWindowPoint.c
Window: [0x0078c2c0, 0x0078c490) (464 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078c490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078c2c0: 55 8b ec 83 e4 f0 81 ec b0 00 00 00 e8 9f be f5
0078c2d0: ff 8b c8 e8 f8 9e da ff 8d 4c 24 60 51 8b 4d 0c
0078c2e0: 8d 54 24 34 52 8b 55 08 51 52 50 e8 80 2c 04 00
0078c2f0: 83 c4 14 e8 68 ab ef ff 85 c0 0f 84 85 01 00 00
0078c300: 6a 01 8d 4c 24 74 51 6a 02 8d 54 24 6c 52 8d 4c
0078c310: 24 40 51 8b c8 e8 76 b0 ef ff 84 c0 0f 84 63 01
0078c320: 00 00 0c ff 8d 54 24 04 88 44 24 04 88 44 24 05
0078c330: 88 44 24 07 88 44 24 08 52 8d 44 24 10 50 8d 8c
0078c340: 24 88 00 00 00 51 c7 44 24 18 00 00 00 00 c6 44
0078c350: 24 12 00 c6 44 24 15 00 e8 03 48 38 00 83 c4 0c
0078c360: 84 c0 0f 84 1d 01 00 00 0f 28 84 24 80 00 00 00
0078c370: 8b 4d 10 83 ec 0c 0f 29 44 24 1c d9 44 24 24 d9
0078c380: 5c 24 08 0f 29 44 24 4c d9 44 24 50 0f 29 44 24
0078c390: 5c d9 5c 24 04 d9 44 24 5c d9 1c 24 e8 cf fb fd
0078c3a0: ff 0f be 54 24 04 0f be 44 24 05 0f be 4c 24 06
0078c3b0: f3 0f 2a c2 f3 0f 11 44 24 10 f3 0f 2a c0 8b 44
0078c3c0: 24 0c 8d 54 24 10 f3 0f 11 44 24 14 89 4c 24 18
0078c3d0: 8b 88 90 02 00 00 52 e8 b4 02 30 00 d9 5c 24 28
0078c3e0: 0f be 4c 24 07 0f be 54 24 08 0f be 44 24 09 f3
0078c3f0: 0f 2a c1 f3 0f 11 44 24 10 f3 0f 2a c2 8b 54 24
0078c400: 0c 8d 4c 24 10 f3 0f 11 44 24 14 89 44 24 18 51
0078c410: 8b 8a 90 02 00 00 e8 75 02 30 00 d9 5c 24 2c 0f
0078c420: be 44 24 05 d9 44 24 28 0f be 4c 24 04 83 ec 0c
0078c430: f3 0f 2a c0 f3 0f 11 44 24 08 f3 0f 2a c1 d9 5c
0078c440: 24 04 8b 4d 14 f3 0f 11 04 24 e8 21 fb fd ff d9
0078c450: 44 24 2c 0f be 54 24 08 0f be 44 24 07 8b 4d 18
0078c460: 83 ec 0c f3 0f 2a c2 f3 0f 11 44 24 08 d9 5c 24
0078c470: 04 f3 0f 2a c0 f3 0f 11 04 24 e8 f1 fa fd ff b0
0078c480: 01 8b e5 5d c3 32 c0 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078c2c0 <.text+0x38b2c0>:
  78c2c0:	55                                              	push   ebp
  78c2c1:	8b ec                                           	mov    ebp,esp
  78c2c3:	83 e4 f0                                        	and    esp,0xfffffff0
  78c2c6:	81 ec b0 00 00 00                               	sub    esp,0xb0
  78c2cc:	e8 9f be f5 ff                                  	call   0x6e8170
  78c2d1:	8b c8                                           	mov    ecx,eax
  78c2d3:	e8 f8 9e da ff                                  	call   0x5361d0
  78c2d8:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  78c2dc:	51                                              	push   ecx
  78c2dd:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  78c2e0:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  78c2e4:	52                                              	push   edx
  78c2e5:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  78c2e8:	51                                              	push   ecx
  78c2e9:	52                                              	push   edx
  78c2ea:	50                                              	push   eax
  78c2eb:	e8 80 2c 04 00                                  	call   0x7cef70
  78c2f0:	83 c4 14                                        	add    esp,0x14
  78c2f3:	e8 68 ab ef ff                                  	call   0x686e60
  78c2f8:	85 c0                                           	test   eax,eax
  78c2fa:	0f 84 85 01 00 00                               	je     0x78c485
  78c300:	6a 01                                           	push   0x1
  78c302:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  78c306:	51                                              	push   ecx
  78c307:	6a 02                                           	push   0x2
  78c309:	8d 54 24 6c                                     	lea    edx,[esp+0x6c]
  78c30d:	52                                              	push   edx
  78c30e:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  78c312:	51                                              	push   ecx
  78c313:	8b c8                                           	mov    ecx,eax
  78c315:	e8 76 b0 ef ff                                  	call   0x687390
  78c31a:	84 c0                                           	test   al,al
  78c31c:	0f 84 63 01 00 00                               	je     0x78c485
  78c322:	0c ff                                           	or     al,0xff
  78c324:	8d 54 24 04                                     	lea    edx,[esp+0x4]
  78c328:	88 44 24 04                                     	mov    BYTE PTR [esp+0x4],al
  78c32c:	88 44 24 05                                     	mov    BYTE PTR [esp+0x5],al
  78c330:	88 44 24 07                                     	mov    BYTE PTR [esp+0x7],al
  78c334:	88 44 24 08                                     	mov    BYTE PTR [esp+0x8],al
  78c338:	52                                              	push   edx
  78c339:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78c33d:	50                                              	push   eax
  78c33e:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
  78c345:	51                                              	push   ecx
  78c346:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  78c34e:	c6 44 24 12 00                                  	mov    BYTE PTR [esp+0x12],0x0
  78c353:	c6 44 24 15 00                                  	mov    BYTE PTR [esp+0x15],0x0
  78c358:	e8 03 48 38 00                                  	call   0xb10b60
  78c35d:	83 c4 0c                                        	add    esp,0xc
  78c360:	84 c0                                           	test   al,al
  78c362:	0f 84 1d 01 00 00                               	je     0x78c485
  78c368:	0f 28 84 24 80 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0x80]
  78c370:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  78c373:	83 ec 0c                                        	sub    esp,0xc
  78c376:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
  78c37b:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  78c37f:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78c383:	0f 29 44 24 4c                                  	movaps XMMWORD PTR [esp+0x4c],xmm0
  78c388:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
  78c38c:	0f 29 44 24 5c                                  	movaps XMMWORD PTR [esp+0x5c],xmm0
  78c391:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78c395:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
  78c399:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78c39c:	e8 cf fb fd ff                                  	call   0x76bf70
  78c3a1:	0f be 54 24 04                                  	movsx  edx,BYTE PTR [esp+0x4]
  78c3a6:	0f be 44 24 05                                  	movsx  eax,BYTE PTR [esp+0x5]
  78c3ab:	0f be 4c 24 06                                  	movsx  ecx,BYTE PTR [esp+0x6]
  78c3b0:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
  78c3b4:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  78c3ba:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
  78c3be:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  78c3c2:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  78c3c6:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78c3cc:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  78c3d0:	8b 88 90 02 00 00                               	mov    ecx,DWORD PTR [eax+0x290]
  78c3d6:	52                                              	push   edx
  78c3d7:	e8 b4 02 30 00                                  	call   0xa8c690
  78c3dc:	d9 5c 24 28                                     	fstp   DWORD PTR [esp+0x28]
  78c3e0:	0f be 4c 24 07                                  	movsx  ecx,BYTE PTR [esp+0x7]
  78c3e5:	0f be 54 24 08                                  	movsx  edx,BYTE PTR [esp+0x8]
  78c3ea:	0f be 44 24 09                                  	movsx  eax,BYTE PTR [esp+0x9]
  78c3ef:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
  78c3f3:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  78c3f9:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
  78c3fd:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78c401:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78c405:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  78c40b:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  78c40f:	51                                              	push   ecx
  78c410:	8b 8a 90 02 00 00                               	mov    ecx,DWORD PTR [edx+0x290]
  78c416:	e8 75 02 30 00                                  	call   0xa8c690
  78c41b:	d9 5c 24 2c                                     	fstp   DWORD PTR [esp+0x2c]
  78c41f:	0f be 44 24 05                                  	movsx  eax,BYTE PTR [esp+0x5]
  78c424:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78c428:	0f be 4c 24 04                                  	movsx  ecx,BYTE PTR [esp+0x4]
  78c42d:	83 ec 0c                                        	sub    esp,0xc
  78c430:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
  78c434:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  78c43a:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
  78c43e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78c442:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  78c445:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  78c44a:	e8 21 fb fd ff                                  	call   0x76bf70
  78c44f:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  78c453:	0f be 54 24 08                                  	movsx  edx,BYTE PTR [esp+0x8]
  78c458:	0f be 44 24 07                                  	movsx  eax,BYTE PTR [esp+0x7]
  78c45d:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  78c460:	83 ec 0c                                        	sub    esp,0xc
  78c463:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
  78c467:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  78c46d:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78c471:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
  78c475:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  78c47a:	e8 f1 fa fd ff                                  	call   0x76bf70
  78c47f:	b0 01                                           	mov    al,0x1
  78c481:	8b e5                                           	mov    esp,ebp
  78c483:	5d                                              	pop    ebp
  78c484:	c3                                              	ret
  78c485:	32 c0                                           	xor    al,al
  78c487:	8b e5                                           	mov    esp,ebp
  78c489:	5d                                              	pop    ebp
  78c48a:	c3                                              	ret
  78c48b:	cc                                              	int3
  78c48c:	cc                                              	int3
  78c48d:	cc                                              	int3
  78c48e:	cc                                              	int3
  78c48f:	cc                                              	int3
