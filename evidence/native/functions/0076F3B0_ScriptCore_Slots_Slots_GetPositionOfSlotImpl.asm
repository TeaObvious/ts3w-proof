# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076f3b0 (ScriptCore.Slots::Slots_GetPositionOfSlotImpl)
Paired Ghidra pseudocode: 0076F3B0_ScriptCore_Slots_Slots_GetPositionOfSlotImpl.c
Window: [0x0076f3b0, 0x0076f570) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076f570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076f3b0: 55 8b ec 83 e4 f0 81 ec b4 00 00 00 53 56 57 e8
0076f3c0: ac 81 1c 00 8b 4d 10 8b 55 0c 51 52 8b c8 e8 ad
0076f3d0: 8b 1c 00 8b f0 85 f6 74 2d 8d 46 04 b9 01 00 00
0076f3e0: 00 f0 0f c1 08 8b 15 58 a1 1e 01 52 8b ce e8 6d
0076f3f0: 4e 1c 00 8b d8 a1 14 a1 1e 01 50 8b ce e8 5e 4e
0076f400: 1c 00 8b f8 eb 04 33 db 33 ff d9 ee 83 ec 0c d9
0076f410: 54 24 08 8d 4c 24 20 d9 54 24 04 d9 1c 24 e8 4d
0076f420: cb ff ff 85 f6 0f 84 fa 00 00 00 85 db 0f 84 f2
0076f430: 00 00 00 85 ff 0f 84 ea 00 00 00 8b 4d 14 51 8b
0076f440: cf e8 0a 15 1e 00 8b f8 85 ff 0f 84 d5 00 00 00
0076f450: 8d 54 24 40 52 8b cb e8 34 86 1e 00 8b 07 8b 50
0076f460: 14 8d 8c 24 80 00 00 00 51 8b cf ff d2 8b 07 8b
0076f470: 40 20 6a 00 8d 8c 24 84 00 00 00 51 8d 54 24 48
0076f480: 52 8b cf ff d0 0f 28 84 24 b0 00 00 00 0f 28 54
0076f490: 24 40 0f 28 5c 24 50 8b 4d 1c 8b 55 18 0f 28 c8
0076f4a0: 0f c6 c8 00 0f 59 ca 0f 28 d0 0f c6 d0 55 0f 59
0076f4b0: d3 0f 28 5c 24 60 0f 58 ca 0f 28 d0 0f c6 d0 aa
0076f4c0: 0f 59 d3 0f 58 ca 51 0f 28 d0 52 0f c6 d0 ff 0f
0076f4d0: 28 44 24 78 8d 44 24 28 0f 59 d0 56 0f 58 ca 50
0076f4e0: 0f 29 4c 24 30 e8 76 fc ff ff 0f 28 44 24 30 0f
0076f4f0: 29 44 24 30 f3 0f 10 4c 24 30 0f 29 44 24 30 f3
0076f500: 0f 11 4c 24 24 f3 0f 10 4c 24 34 0f 29 44 24 30
0076f510: f3 0f 10 44 24 38 83 c4 10 f3 0f 11 4c 24 18 f3
0076f520: 0f 11 44 24 1c 85 f6 8b 7d 08 8b 4c 24 14 8b 54
0076f530: 24 18 8b 44 24 1c 89 0f 89 57 04 89 47 08 74 20
0076f540: 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9
0076f550: 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0
0076f560: 8b c7 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076f3b0 <.text+0x36e3b0>:
  76f3b0:	55                                              	push   ebp
  76f3b1:	8b ec                                           	mov    ebp,esp
  76f3b3:	83 e4 f0                                        	and    esp,0xfffffff0
  76f3b6:	81 ec b4 00 00 00                               	sub    esp,0xb4
  76f3bc:	53                                              	push   ebx
  76f3bd:	56                                              	push   esi
  76f3be:	57                                              	push   edi
  76f3bf:	e8 ac 81 1c 00                                  	call   0x937570
  76f3c4:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  76f3c7:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  76f3ca:	51                                              	push   ecx
  76f3cb:	52                                              	push   edx
  76f3cc:	8b c8                                           	mov    ecx,eax
  76f3ce:	e8 ad 8b 1c 00                                  	call   0x937f80
  76f3d3:	8b f0                                           	mov    esi,eax
  76f3d5:	85 f6                                           	test   esi,esi
  76f3d7:	74 2d                                           	je     0x76f406
  76f3d9:	8d 46 04                                        	lea    eax,[esi+0x4]
  76f3dc:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f3e1:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  76f3e5:	8b 15 58 a1 1e 01                               	mov    edx,DWORD PTR ds:0x11ea158
  76f3eb:	52                                              	push   edx
  76f3ec:	8b ce                                           	mov    ecx,esi
  76f3ee:	e8 6d 4e 1c 00                                  	call   0x934260
  76f3f3:	8b d8                                           	mov    ebx,eax
  76f3f5:	a1 14 a1 1e 01                                  	mov    eax,ds:0x11ea114
  76f3fa:	50                                              	push   eax
  76f3fb:	8b ce                                           	mov    ecx,esi
  76f3fd:	e8 5e 4e 1c 00                                  	call   0x934260
  76f402:	8b f8                                           	mov    edi,eax
  76f404:	eb 04                                           	jmp    0x76f40a
  76f406:	33 db                                           	xor    ebx,ebx
  76f408:	33 ff                                           	xor    edi,edi
  76f40a:	d9 ee                                           	fldz
  76f40c:	83 ec 0c                                        	sub    esp,0xc
  76f40f:	d9 54 24 08                                     	fst    DWORD PTR [esp+0x8]
  76f413:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  76f417:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
  76f41b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  76f41e:	e8 4d cb ff ff                                  	call   0x76bf70
  76f423:	85 f6                                           	test   esi,esi
  76f425:	0f 84 fa 00 00 00                               	je     0x76f525
  76f42b:	85 db                                           	test   ebx,ebx
  76f42d:	0f 84 f2 00 00 00                               	je     0x76f525
  76f433:	85 ff                                           	test   edi,edi
  76f435:	0f 84 ea 00 00 00                               	je     0x76f525
  76f43b:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  76f43e:	51                                              	push   ecx
  76f43f:	8b cf                                           	mov    ecx,edi
  76f441:	e8 0a 15 1e 00                                  	call   0x950950
  76f446:	8b f8                                           	mov    edi,eax
  76f448:	85 ff                                           	test   edi,edi
  76f44a:	0f 84 d5 00 00 00                               	je     0x76f525
  76f450:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  76f454:	52                                              	push   edx
  76f455:	8b cb                                           	mov    ecx,ebx
  76f457:	e8 34 86 1e 00                                  	call   0x957a90
  76f45c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76f45e:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  76f461:	8d 8c 24 80 00 00 00                            	lea    ecx,[esp+0x80]
  76f468:	51                                              	push   ecx
  76f469:	8b cf                                           	mov    ecx,edi
  76f46b:	ff d2                                           	call   edx
  76f46d:	8b 07                                           	mov    eax,DWORD PTR [edi]
  76f46f:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
  76f472:	6a 00                                           	push   0x0
  76f474:	8d 8c 24 84 00 00 00                            	lea    ecx,[esp+0x84]
  76f47b:	51                                              	push   ecx
  76f47c:	8d 54 24 48                                     	lea    edx,[esp+0x48]
  76f480:	52                                              	push   edx
  76f481:	8b cf                                           	mov    ecx,edi
  76f483:	ff d0                                           	call   eax
  76f485:	0f 28 84 24 b0 00 00 00                         	movaps xmm0,XMMWORD PTR [esp+0xb0]
  76f48d:	0f 28 54 24 40                                  	movaps xmm2,XMMWORD PTR [esp+0x40]
  76f492:	0f 28 5c 24 50                                  	movaps xmm3,XMMWORD PTR [esp+0x50]
  76f497:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
  76f49a:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
  76f49d:	0f 28 c8                                        	movaps xmm1,xmm0
  76f4a0:	0f c6 c8 00                                     	shufps xmm1,xmm0,0x0
  76f4a4:	0f 59 ca                                        	mulps  xmm1,xmm2
  76f4a7:	0f 28 d0                                        	movaps xmm2,xmm0
  76f4aa:	0f c6 d0 55                                     	shufps xmm2,xmm0,0x55
  76f4ae:	0f 59 d3                                        	mulps  xmm2,xmm3
  76f4b1:	0f 28 5c 24 60                                  	movaps xmm3,XMMWORD PTR [esp+0x60]
  76f4b6:	0f 58 ca                                        	addps  xmm1,xmm2
  76f4b9:	0f 28 d0                                        	movaps xmm2,xmm0
  76f4bc:	0f c6 d0 aa                                     	shufps xmm2,xmm0,0xaa
  76f4c0:	0f 59 d3                                        	mulps  xmm2,xmm3
  76f4c3:	0f 58 ca                                        	addps  xmm1,xmm2
  76f4c6:	51                                              	push   ecx
  76f4c7:	0f 28 d0                                        	movaps xmm2,xmm0
  76f4ca:	52                                              	push   edx
  76f4cb:	0f c6 d0 ff                                     	shufps xmm2,xmm0,0xff
  76f4cf:	0f 28 44 24 78                                  	movaps xmm0,XMMWORD PTR [esp+0x78]
  76f4d4:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  76f4d8:	0f 59 d0                                        	mulps  xmm2,xmm0
  76f4db:	56                                              	push   esi
  76f4dc:	0f 58 ca                                        	addps  xmm1,xmm2
  76f4df:	50                                              	push   eax
  76f4e0:	0f 29 4c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm1
  76f4e5:	e8 76 fc ff ff                                  	call   0x76f160
  76f4ea:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
  76f4ef:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  76f4f4:	f3 0f 10 4c 24 30                               	movss  xmm1,DWORD PTR [esp+0x30]
  76f4fa:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  76f4ff:	f3 0f 11 4c 24 24                               	movss  DWORD PTR [esp+0x24],xmm1
  76f505:	f3 0f 10 4c 24 34                               	movss  xmm1,DWORD PTR [esp+0x34]
  76f50b:	0f 29 44 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm0
  76f510:	f3 0f 10 44 24 38                               	movss  xmm0,DWORD PTR [esp+0x38]
  76f516:	83 c4 10                                        	add    esp,0x10
  76f519:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  76f51f:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  76f525:	85 f6                                           	test   esi,esi
  76f527:	8b 7d 08                                        	mov    edi,DWORD PTR [ebp+0x8]
  76f52a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76f52e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  76f532:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  76f536:	89 0f                                           	mov    DWORD PTR [edi],ecx
  76f538:	89 57 04                                        	mov    DWORD PTR [edi+0x4],edx
  76f53b:	89 47 08                                        	mov    DWORD PTR [edi+0x8],eax
  76f53e:	74 20                                           	je     0x76f560
  76f540:	8d 46 04                                        	lea    eax,[esi+0x4]
  76f543:	8b c8                                           	mov    ecx,eax
  76f545:	83 ca ff                                        	or     edx,0xffffffff
  76f548:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  76f54c:	4a                                              	dec    edx
  76f54d:	75 11                                           	jne    0x76f560
  76f54f:	b9 01 00 00 00                                  	mov    ecx,0x1
  76f554:	87 08                                           	xchg   DWORD PTR [eax],ecx
  76f556:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76f558:	8b 02                                           	mov    eax,DWORD PTR [edx]
  76f55a:	6a 01                                           	push   0x1
  76f55c:	8b ce                                           	mov    ecx,esi
  76f55e:	ff d0                                           	call   eax
  76f560:	8b c7                                           	mov    eax,edi
  76f562:	5f                                              	pop    edi
  76f563:	5e                                              	pop    esi
  76f564:	5b                                              	pop    ebx
  76f565:	8b e5                                           	mov    esp,ebp
  76f567:	5d                                              	pop    ebp
  76f568:	c3                                              	ret
  76f569:	cc                                              	int3
  76f56a:	cc                                              	int3
  76f56b:	cc                                              	int3
  76f56c:	cc                                              	int3
  76f56d:	cc                                              	int3
  76f56e:	cc                                              	int3
  76f56f:	cc                                              	int3
