# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073f360 (ScriptCore.CommandSystem::Command_RegisterCommandImpl)
Paired Ghidra pseudocode: 0073F360_ScriptCore_CommandSystem_Command_RegisterCommandImpl.c
Window: [0x0073f360, 0x0073f4c0) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073f4c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073f360: 83 ec 18 53 55 56 57 e8 24 a0 02 00 8b f0 e8 2d
0073f370: a7 e4 ff 8b c8 8b 44 24 2c 85 c0 89 4c 24 10 0f
0073f380: 84 30 01 00 00 8b 5c 24 30 85 db 0f 84 24 01 00
0073f390: 00 85 c9 0f 84 1c 01 00 00 8b 16 50 8b 42 58 8b
0073f3a0: ce ff d0 8b 16 8b f8 8b 42 58 53 8b ce ff d0 6a
0073f3b0: 00 6a 00 6a 00 6a 00 68 50 14 00 01 6a 1c 8b f0
0073f3c0: e8 3b 51 da ff 83 c4 18 85 c0 0f 84 e5 00 00 00
0073f3d0: 8b 4c 24 38 8b 54 24 34 51 52 56 57 8b c8 e8 ad
0073f3e0: f6 ff ff 8b f0 85 f6 0f 84 c8 00 00 00 8b 3d f8
0073f3f0: 4e 1d 01 83 c7 18 83 7e 0c 00 0f 84 9a 00 00 00
0073f400: 8d 5e 08 53 8d 44 24 18 50 8b cf e8 a0 c5 31 00
0073f410: 8b 4f 08 8b 57 04 8b 6c 24 14 3b 2c 8a 74 4c 8b
0073f420: 03 8b 4c 24 10 50 e8 e5 ad e4 ff 8b 6d 04 85 ed
0073f430: 74 1b 8b 4d 0c 51 e8 a5 50 da ff 8b 55 10 52 e8
0073f440: 9c 50 da ff 55 e8 96 50 da ff 83 c4 0c 8b 4c 24
0073f450: 14 8b 54 24 18 83 ec 08 8b c4 89 08 89 50 04 8d
0073f460: 44 24 1c 50 8b cf e8 45 2c 00 00 8b 0b 8d 54 24
0073f470: 14 52 8d 44 24 20 89 4c 24 18 50 8b cf 89 74 24
0073f480: 20 e8 aa fe ff ff 8b 4c 24 10 53 e8 20 b1 e4 ff
0073f490: b0 01 5f 5e 5d 5b 83 c4 18 c3 8b 4e 0c 51 e8 3d
0073f4a0: 50 da ff 8b 56 10 52 e8 34 50 da ff 56 e8 2e 50
0073f4b0: da ff 83 c4 0c 5f 5e 5d 32 c0 5b 83 c4 18 c3 cc

LINEAR DISASSEMBLY
0073f360 <.text+0x33e360>:
  73f360:	83 ec 18                                        	sub    esp,0x18
  73f363:	53                                              	push   ebx
  73f364:	55                                              	push   ebp
  73f365:	56                                              	push   esi
  73f366:	57                                              	push   edi
  73f367:	e8 24 a0 02 00                                  	call   0x769390
  73f36c:	8b f0                                           	mov    esi,eax
  73f36e:	e8 2d a7 e4 ff                                  	call   0x589aa0
  73f373:	8b c8                                           	mov    ecx,eax
  73f375:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  73f379:	85 c0                                           	test   eax,eax
  73f37b:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  73f37f:	0f 84 30 01 00 00                               	je     0x73f4b5
  73f385:	8b 5c 24 30                                     	mov    ebx,DWORD PTR [esp+0x30]
  73f389:	85 db                                           	test   ebx,ebx
  73f38b:	0f 84 24 01 00 00                               	je     0x73f4b5
  73f391:	85 c9                                           	test   ecx,ecx
  73f393:	0f 84 1c 01 00 00                               	je     0x73f4b5
  73f399:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73f39b:	50                                              	push   eax
  73f39c:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  73f39f:	8b ce                                           	mov    ecx,esi
  73f3a1:	ff d0                                           	call   eax
  73f3a3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73f3a5:	8b f8                                           	mov    edi,eax
  73f3a7:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  73f3aa:	53                                              	push   ebx
  73f3ab:	8b ce                                           	mov    ecx,esi
  73f3ad:	ff d0                                           	call   eax
  73f3af:	6a 00                                           	push   0x0
  73f3b1:	6a 00                                           	push   0x0
  73f3b3:	6a 00                                           	push   0x0
  73f3b5:	6a 00                                           	push   0x0
  73f3b7:	68 50 14 00 01                                  	push   0x1001450
  73f3bc:	6a 1c                                           	push   0x1c
  73f3be:	8b f0                                           	mov    esi,eax
  73f3c0:	e8 3b 51 da ff                                  	call   0x4e4500
  73f3c5:	83 c4 18                                        	add    esp,0x18
  73f3c8:	85 c0                                           	test   eax,eax
  73f3ca:	0f 84 e5 00 00 00                               	je     0x73f4b5
  73f3d0:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  73f3d4:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  73f3d8:	51                                              	push   ecx
  73f3d9:	52                                              	push   edx
  73f3da:	56                                              	push   esi
  73f3db:	57                                              	push   edi
  73f3dc:	8b c8                                           	mov    ecx,eax
  73f3de:	e8 ad f6 ff ff                                  	call   0x73ea90
  73f3e3:	8b f0                                           	mov    esi,eax
  73f3e5:	85 f6                                           	test   esi,esi
  73f3e7:	0f 84 c8 00 00 00                               	je     0x73f4b5
  73f3ed:	8b 3d f8 4e 1d 01                               	mov    edi,DWORD PTR ds:0x11d4ef8
  73f3f3:	83 c7 18                                        	add    edi,0x18
  73f3f6:	83 7e 0c 00                                     	cmp    DWORD PTR [esi+0xc],0x0
  73f3fa:	0f 84 9a 00 00 00                               	je     0x73f49a
  73f400:	8d 5e 08                                        	lea    ebx,[esi+0x8]
  73f403:	53                                              	push   ebx
  73f404:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  73f408:	50                                              	push   eax
  73f409:	8b cf                                           	mov    ecx,edi
  73f40b:	e8 a0 c5 31 00                                  	call   0xa5b9b0
  73f410:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
  73f413:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
  73f416:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
  73f41a:	3b 2c 8a                                        	cmp    ebp,DWORD PTR [edx+ecx*4]
  73f41d:	74 4c                                           	je     0x73f46b
  73f41f:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  73f421:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73f425:	50                                              	push   eax
  73f426:	e8 e5 ad e4 ff                                  	call   0x58a210
  73f42b:	8b 6d 04                                        	mov    ebp,DWORD PTR [ebp+0x4]
  73f42e:	85 ed                                           	test   ebp,ebp
  73f430:	74 1b                                           	je     0x73f44d
  73f432:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  73f435:	51                                              	push   ecx
  73f436:	e8 a5 50 da ff                                  	call   0x4e44e0
  73f43b:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  73f43e:	52                                              	push   edx
  73f43f:	e8 9c 50 da ff                                  	call   0x4e44e0
  73f444:	55                                              	push   ebp
  73f445:	e8 96 50 da ff                                  	call   0x4e44e0
  73f44a:	83 c4 0c                                        	add    esp,0xc
  73f44d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  73f451:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  73f455:	83 ec 08                                        	sub    esp,0x8
  73f458:	8b c4                                           	mov    eax,esp
  73f45a:	89 08                                           	mov    DWORD PTR [eax],ecx
  73f45c:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  73f45f:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  73f463:	50                                              	push   eax
  73f464:	8b cf                                           	mov    ecx,edi
  73f466:	e8 45 2c 00 00                                  	call   0x7420b0
  73f46b:	8b 0b                                           	mov    ecx,DWORD PTR [ebx]
  73f46d:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  73f471:	52                                              	push   edx
  73f472:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  73f476:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  73f47a:	50                                              	push   eax
  73f47b:	8b cf                                           	mov    ecx,edi
  73f47d:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  73f481:	e8 aa fe ff ff                                  	call   0x73f330
  73f486:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73f48a:	53                                              	push   ebx
  73f48b:	e8 20 b1 e4 ff                                  	call   0x58a5b0
  73f490:	b0 01                                           	mov    al,0x1
  73f492:	5f                                              	pop    edi
  73f493:	5e                                              	pop    esi
  73f494:	5d                                              	pop    ebp
  73f495:	5b                                              	pop    ebx
  73f496:	83 c4 18                                        	add    esp,0x18
  73f499:	c3                                              	ret
  73f49a:	8b 4e 0c                                        	mov    ecx,DWORD PTR [esi+0xc]
  73f49d:	51                                              	push   ecx
  73f49e:	e8 3d 50 da ff                                  	call   0x4e44e0
  73f4a3:	8b 56 10                                        	mov    edx,DWORD PTR [esi+0x10]
  73f4a6:	52                                              	push   edx
  73f4a7:	e8 34 50 da ff                                  	call   0x4e44e0
  73f4ac:	56                                              	push   esi
  73f4ad:	e8 2e 50 da ff                                  	call   0x4e44e0
  73f4b2:	83 c4 0c                                        	add    esp,0xc
  73f4b5:	5f                                              	pop    edi
  73f4b6:	5e                                              	pop    esi
  73f4b7:	5d                                              	pop    ebp
  73f4b8:	32 c0                                           	xor    al,al
  73f4ba:	5b                                              	pop    ebx
  73f4bb:	83 c4 18                                        	add    esp,0x18
  73f4be:	c3                                              	ret
  73f4bf:	cc                                              	int3
