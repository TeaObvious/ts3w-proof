# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e380 (ScriptCore.World::World_GetGameObjTuningDataImpl)
Paired Ghidra pseudocode: 0078E380_ScriptCore_World_World_GetGameObjTuningDataImpl.c
Window: [0x0078e380, 0x0078e480) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e380: 83 ec 10 e8 e8 91 1a 00 85 c0 75 06 33 c0 83 c4
0078e390: 10 c3 8b 4c 24 18 8b 54 24 14 51 52 8b c8 e8 dd
0078e3a0: 9b 1a 00 85 c0 89 44 24 08 74 e1 8d 48 04 ba 01
0078e3b0: 00 00 00 f0 0f c1 11 57 8b c8 e8 71 0d f0 ff 8b
0078e3c0: f8 85 ff 75 10 8d 4c 24 0c e8 12 7f fb ff 33 c0
0078e3d0: 5f 83 c4 10 c3 56 e8 b5 af fd ff 8b f0 8d 44 24
0078e3e0: 1c 50 8b cf e8 97 09 4e 00 85 c0 89 44 24 14 7f
0078e3f0: 11 8d 4c 24 10 e8 e6 7e fb ff 5e 33 c0 5f 83 c4
0078e400: 10 c3 8b 16 8b 92 80 00 00 00 50 8d 44 24 10 50
0078e410: 8b ce ff d2 8d 4c 24 14 51 8b 4c 24 10 8d 54 24
0078e420: 0c 52 c7 44 24 10 00 00 00 00 8b 06 8b 50 70 51
0078e430: 8b ce ff d2 8d 44 24 08 50 8d 4c 24 20 51 8b cf
0078e440: e8 ab 08 4e 00 8b 44 24 14 8b 4c 24 08 8b 16 8b
0078e450: 92 98 00 00 00 50 6a 00 51 8d 44 24 18 50 8b ce
0078e460: ff d2 8b 74 24 0c 8d 4c 24 10 e8 71 7e fb ff 8b
0078e470: c6 5e 5f 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e380 <.text+0x38d380>:
  78e380:	83 ec 10                                        	sub    esp,0x10
  78e383:	e8 e8 91 1a 00                                  	call   0x937570
  78e388:	85 c0                                           	test   eax,eax
  78e38a:	75 06                                           	jne    0x78e392
  78e38c:	33 c0                                           	xor    eax,eax
  78e38e:	83 c4 10                                        	add    esp,0x10
  78e391:	c3                                              	ret
  78e392:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  78e396:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  78e39a:	51                                              	push   ecx
  78e39b:	52                                              	push   edx
  78e39c:	8b c8                                           	mov    ecx,eax
  78e39e:	e8 dd 9b 1a 00                                  	call   0x937f80
  78e3a3:	85 c0                                           	test   eax,eax
  78e3a5:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  78e3a9:	74 e1                                           	je     0x78e38c
  78e3ab:	8d 48 04                                        	lea    ecx,[eax+0x4]
  78e3ae:	ba 01 00 00 00                                  	mov    edx,0x1
  78e3b3:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  78e3b7:	57                                              	push   edi
  78e3b8:	8b c8                                           	mov    ecx,eax
  78e3ba:	e8 71 0d f0 ff                                  	call   0x68f130
  78e3bf:	8b f8                                           	mov    edi,eax
  78e3c1:	85 ff                                           	test   edi,edi
  78e3c3:	75 10                                           	jne    0x78e3d5
  78e3c5:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  78e3c9:	e8 12 7f fb ff                                  	call   0x7462e0
  78e3ce:	33 c0                                           	xor    eax,eax
  78e3d0:	5f                                              	pop    edi
  78e3d1:	83 c4 10                                        	add    esp,0x10
  78e3d4:	c3                                              	ret
  78e3d5:	56                                              	push   esi
  78e3d6:	e8 b5 af fd ff                                  	call   0x769390
  78e3db:	8b f0                                           	mov    esi,eax
  78e3dd:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  78e3e1:	50                                              	push   eax
  78e3e2:	8b cf                                           	mov    ecx,edi
  78e3e4:	e8 97 09 4e 00                                  	call   0xc6ed80
  78e3e9:	85 c0                                           	test   eax,eax
  78e3eb:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  78e3ef:	7f 11                                           	jg     0x78e402
  78e3f1:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78e3f5:	e8 e6 7e fb ff                                  	call   0x7462e0
  78e3fa:	5e                                              	pop    esi
  78e3fb:	33 c0                                           	xor    eax,eax
  78e3fd:	5f                                              	pop    edi
  78e3fe:	83 c4 10                                        	add    esp,0x10
  78e401:	c3                                              	ret
  78e402:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e404:	8b 92 80 00 00 00                               	mov    edx,DWORD PTR [edx+0x80]
  78e40a:	50                                              	push   eax
  78e40b:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78e40f:	50                                              	push   eax
  78e410:	8b ce                                           	mov    ecx,esi
  78e412:	ff d2                                           	call   edx
  78e414:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78e418:	51                                              	push   ecx
  78e419:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78e41d:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  78e421:	52                                              	push   edx
  78e422:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  78e42a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78e42c:	8b 50 70                                        	mov    edx,DWORD PTR [eax+0x70]
  78e42f:	51                                              	push   ecx
  78e430:	8b ce                                           	mov    ecx,esi
  78e432:	ff d2                                           	call   edx
  78e434:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  78e438:	50                                              	push   eax
  78e439:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  78e43d:	51                                              	push   ecx
  78e43e:	8b cf                                           	mov    ecx,edi
  78e440:	e8 ab 08 4e 00                                  	call   0xc6ecf0
  78e445:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  78e449:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78e44d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78e44f:	8b 92 98 00 00 00                               	mov    edx,DWORD PTR [edx+0x98]
  78e455:	50                                              	push   eax
  78e456:	6a 00                                           	push   0x0
  78e458:	51                                              	push   ecx
  78e459:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  78e45d:	50                                              	push   eax
  78e45e:	8b ce                                           	mov    ecx,esi
  78e460:	ff d2                                           	call   edx
  78e462:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  78e466:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78e46a:	e8 71 7e fb ff                                  	call   0x7462e0
  78e46f:	8b c6                                           	mov    eax,esi
  78e471:	5e                                              	pop    esi
  78e472:	5f                                              	pop    edi
  78e473:	83 c4 10                                        	add    esp,0x10
  78e476:	c3                                              	ret
  78e477:	cc                                              	int3
  78e478:	cc                                              	int3
  78e479:	cc                                              	int3
  78e47a:	cc                                              	int3
  78e47b:	cc                                              	int3
  78e47c:	cc                                              	int3
  78e47d:	cc                                              	int3
  78e47e:	cc                                              	int3
  78e47f:	cc                                              	int3
