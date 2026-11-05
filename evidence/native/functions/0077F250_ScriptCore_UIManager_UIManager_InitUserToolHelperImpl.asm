# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077f250 (ScriptCore.UIManager::UIManager_InitUserToolHelperImpl)
Paired Ghidra pseudocode: 0077F250_ScriptCore_UIManager_UIManager_InitUserToolHelperImpl.c
Window: [0x0077f250, 0x0077f410) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077f410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077f250: 83 ec 10 57 e8 37 bd d8 ff 8b 10 8b c8 8b 42 04
0077f260: ff d0 8b f8 85 ff 0f 84 36 01 00 00 53 56 6a 00
0077f270: 68 34 f0 00 01 6a 10 68 60 02 00 00 e8 2f 5e d8
0077f280: ff 83 c4 10 85 c0 0f 84 1b 01 00 00 8b c8 e8 fd
0077f290: f9 ff ff 8b d8 85 db 74 08 8b 13 8b 02 8b cb ff
0077f2a0: d0 8b 53 04 8b 82 b0 00 00 00 8d 73 04 6a 00 8b
0077f2b0: ce ff d0 8b 17 8b 42 38 8b cf ff d0 f3 0f 10 10
0077f2c0: f3 0f 11 54 24 0c f3 0f 10 58 04 f3 0f 11 5c 24
0077f2d0: 10 f3 0f 10 40 08 f3 0f 11 44 24 14 f3 0f 10 48
0077f2e0: 0c f3 0f 5c c2 0f 57 d2 f3 0f 5c cb f3 0f 11 54
0077f2f0: 24 0c f3 0f 11 54 24 10 f3 0f 11 44 24 14 f3 0f
0077f300: 11 4c 24 18 8b 16 8b 52 64 8d 44 24 0c 50 8b ce
0077f310: ff d2 8b 83 50 02 00 00 8b 50 18 8d 8b 50 02 00
0077f320: 00 68 62 b5 97 03 ff d2 8b 06 8b 50 54 68 62 b5
0077f330: 97 03 8b ce ff d2 8b 06 8b 50 74 6a 01 6a 10 8b
0077f340: ce ff d2 8b 06 8b 50 74 6a 01 68 80 00 00 00 8b
0077f350: ce ff d2 8b 03 8b 50 18 8b cb ff d2 8b 07 8b 90
0077f360: dc 00 00 00 56 8b cf ff d2 8b 07 8b 90 f0 00 00
0077f370: 00 56 8b cf ff d2 e8 c5 0d 07 00 85 c0 74 18 8b
0077f380: c8 e8 1a 0e 07 00 85 c0 74 0d 8b 16 50 8b 82 08
0077f390: 01 00 00 8b ce ff d0 8b 13 8b 42 04 8b cb ff d0
0077f3a0: 5e 5b 5f 83 c4 10 c3 33 db e9 f3 fe ff ff cc cc
0077f3b0: 8b 44 24 08 83 78 08 07 75 0f 8b 4c 24 04 8b 11
0077f3c0: 8b 42 74 6a 00 6a 01 ff d0 32 c0 c2 08 00 cc cc
0077f3d0: 83 e9 04 e9 08 00 00 00 cc cc cc cc cc cc cc cc
0077f3e0: f6 44 24 04 01 56 8b f1 c7 46 04 94 c9 fb 00 c7
0077f3f0: 46 04 80 2b fa 00 c7 06 80 2b fa 00 74 09 56 e8
0077f400: 7c 5c d8 ff 83 c4 04 8b c6 5e c2 04 00 cc cc cc

LINEAR DISASSEMBLY
0077f250 <.text+0x37e250>:
  77f250:	83 ec 10                                        	sub    esp,0x10
  77f253:	57                                              	push   edi
  77f254:	e8 37 bd d8 ff                                  	call   0x50af90
  77f259:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77f25b:	8b c8                                           	mov    ecx,eax
  77f25d:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77f260:	ff d0                                           	call   eax
  77f262:	8b f8                                           	mov    edi,eax
  77f264:	85 ff                                           	test   edi,edi
  77f266:	0f 84 36 01 00 00                               	je     0x77f3a2
  77f26c:	53                                              	push   ebx
  77f26d:	56                                              	push   esi
  77f26e:	6a 00                                           	push   0x0
  77f270:	68 34 f0 00 01                                  	push   0x100f034
  77f275:	6a 10                                           	push   0x10
  77f277:	68 60 02 00 00                                  	push   0x260
  77f27c:	e8 2f 5e d8 ff                                  	call   0x5050b0
  77f281:	83 c4 10                                        	add    esp,0x10
  77f284:	85 c0                                           	test   eax,eax
  77f286:	0f 84 1b 01 00 00                               	je     0x77f3a7
  77f28c:	8b c8                                           	mov    ecx,eax
  77f28e:	e8 fd f9 ff ff                                  	call   0x77ec90
  77f293:	8b d8                                           	mov    ebx,eax
  77f295:	85 db                                           	test   ebx,ebx
  77f297:	74 08                                           	je     0x77f2a1
  77f299:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77f29b:	8b 02                                           	mov    eax,DWORD PTR [edx]
  77f29d:	8b cb                                           	mov    ecx,ebx
  77f29f:	ff d0                                           	call   eax
  77f2a1:	8b 53 04                                        	mov    edx,DWORD PTR [ebx+0x4]
  77f2a4:	8b 82 b0 00 00 00                               	mov    eax,DWORD PTR [edx+0xb0]
  77f2aa:	8d 73 04                                        	lea    esi,[ebx+0x4]
  77f2ad:	6a 00                                           	push   0x0
  77f2af:	8b ce                                           	mov    ecx,esi
  77f2b1:	ff d0                                           	call   eax
  77f2b3:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77f2b5:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
  77f2b8:	8b cf                                           	mov    ecx,edi
  77f2ba:	ff d0                                           	call   eax
  77f2bc:	f3 0f 10 10                                     	movss  xmm2,DWORD PTR [eax]
  77f2c0:	f3 0f 11 54 24 0c                               	movss  DWORD PTR [esp+0xc],xmm2
  77f2c6:	f3 0f 10 58 04                                  	movss  xmm3,DWORD PTR [eax+0x4]
  77f2cb:	f3 0f 11 5c 24 10                               	movss  DWORD PTR [esp+0x10],xmm3
  77f2d1:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
  77f2d6:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  77f2dc:	f3 0f 10 48 0c                                  	movss  xmm1,DWORD PTR [eax+0xc]
  77f2e1:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  77f2e5:	0f 57 d2                                        	xorps  xmm2,xmm2
  77f2e8:	f3 0f 5c cb                                     	subss  xmm1,xmm3
  77f2ec:	f3 0f 11 54 24 0c                               	movss  DWORD PTR [esp+0xc],xmm2
  77f2f2:	f3 0f 11 54 24 10                               	movss  DWORD PTR [esp+0x10],xmm2
  77f2f8:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  77f2fe:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  77f304:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77f306:	8b 52 64                                        	mov    edx,DWORD PTR [edx+0x64]
  77f309:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  77f30d:	50                                              	push   eax
  77f30e:	8b ce                                           	mov    ecx,esi
  77f310:	ff d2                                           	call   edx
  77f312:	8b 83 50 02 00 00                               	mov    eax,DWORD PTR [ebx+0x250]
  77f318:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  77f31b:	8d 8b 50 02 00 00                               	lea    ecx,[ebx+0x250]
  77f321:	68 62 b5 97 03                                  	push   0x397b562
  77f326:	ff d2                                           	call   edx
  77f328:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77f32a:	8b 50 54                                        	mov    edx,DWORD PTR [eax+0x54]
  77f32d:	68 62 b5 97 03                                  	push   0x397b562
  77f332:	8b ce                                           	mov    ecx,esi
  77f334:	ff d2                                           	call   edx
  77f336:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77f338:	8b 50 74                                        	mov    edx,DWORD PTR [eax+0x74]
  77f33b:	6a 01                                           	push   0x1
  77f33d:	6a 10                                           	push   0x10
  77f33f:	8b ce                                           	mov    ecx,esi
  77f341:	ff d2                                           	call   edx
  77f343:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77f345:	8b 50 74                                        	mov    edx,DWORD PTR [eax+0x74]
  77f348:	6a 01                                           	push   0x1
  77f34a:	68 80 00 00 00                                  	push   0x80
  77f34f:	8b ce                                           	mov    ecx,esi
  77f351:	ff d2                                           	call   edx
  77f353:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  77f355:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  77f358:	8b cb                                           	mov    ecx,ebx
  77f35a:	ff d2                                           	call   edx
  77f35c:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77f35e:	8b 90 dc 00 00 00                               	mov    edx,DWORD PTR [eax+0xdc]
  77f364:	56                                              	push   esi
  77f365:	8b cf                                           	mov    ecx,edi
  77f367:	ff d2                                           	call   edx
  77f369:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77f36b:	8b 90 f0 00 00 00                               	mov    edx,DWORD PTR [eax+0xf0]
  77f371:	56                                              	push   esi
  77f372:	8b cf                                           	mov    ecx,edi
  77f374:	ff d2                                           	call   edx
  77f376:	e8 c5 0d 07 00                                  	call   0x7f0140
  77f37b:	85 c0                                           	test   eax,eax
  77f37d:	74 18                                           	je     0x77f397
  77f37f:	8b c8                                           	mov    ecx,eax
  77f381:	e8 1a 0e 07 00                                  	call   0x7f01a0
  77f386:	85 c0                                           	test   eax,eax
  77f388:	74 0d                                           	je     0x77f397
  77f38a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77f38c:	50                                              	push   eax
  77f38d:	8b 82 08 01 00 00                               	mov    eax,DWORD PTR [edx+0x108]
  77f393:	8b ce                                           	mov    ecx,esi
  77f395:	ff d0                                           	call   eax
  77f397:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  77f399:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77f39c:	8b cb                                           	mov    ecx,ebx
  77f39e:	ff d0                                           	call   eax
  77f3a0:	5e                                              	pop    esi
  77f3a1:	5b                                              	pop    ebx
  77f3a2:	5f                                              	pop    edi
  77f3a3:	83 c4 10                                        	add    esp,0x10
  77f3a6:	c3                                              	ret
  77f3a7:	33 db                                           	xor    ebx,ebx
  77f3a9:	e9 f3 fe ff ff                                  	jmp    0x77f2a1
  77f3ae:	cc                                              	int3
  77f3af:	cc                                              	int3
  77f3b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77f3b4:	83 78 08 07                                     	cmp    DWORD PTR [eax+0x8],0x7
  77f3b8:	75 0f                                           	jne    0x77f3c9
  77f3ba:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77f3be:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  77f3c0:	8b 42 74                                        	mov    eax,DWORD PTR [edx+0x74]
  77f3c3:	6a 00                                           	push   0x0
  77f3c5:	6a 01                                           	push   0x1
  77f3c7:	ff d0                                           	call   eax
  77f3c9:	32 c0                                           	xor    al,al
  77f3cb:	c2 08 00                                        	ret    0x8
  77f3ce:	cc                                              	int3
  77f3cf:	cc                                              	int3
  77f3d0:	83 e9 04                                        	sub    ecx,0x4
  77f3d3:	e9 08 00 00 00                                  	jmp    0x77f3e0
  77f3d8:	cc                                              	int3
  77f3d9:	cc                                              	int3
  77f3da:	cc                                              	int3
  77f3db:	cc                                              	int3
  77f3dc:	cc                                              	int3
  77f3dd:	cc                                              	int3
  77f3de:	cc                                              	int3
  77f3df:	cc                                              	int3
  77f3e0:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
  77f3e5:	56                                              	push   esi
  77f3e6:	8b f1                                           	mov    esi,ecx
  77f3e8:	c7 46 04 94 c9 fb 00                            	mov    DWORD PTR [esi+0x4],0xfbc994
  77f3ef:	c7 46 04 80 2b fa 00                            	mov    DWORD PTR [esi+0x4],0xfa2b80
  77f3f6:	c7 06 80 2b fa 00                               	mov    DWORD PTR [esi],0xfa2b80
  77f3fc:	74 09                                           	je     0x77f407
  77f3fe:	56                                              	push   esi
  77f3ff:	e8 7c 5c d8 ff                                  	call   0x505080
  77f404:	83 c4 04                                        	add    esp,0x4
  77f407:	8b c6                                           	mov    eax,esi
  77f409:	5e                                              	pop    esi
  77f40a:	c2 04 00                                        	ret    0x4
  77f40d:	cc                                              	int3
  77f40e:	cc                                              	int3
  77f40f:	cc                                              	int3
