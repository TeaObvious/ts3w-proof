# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055f3e0 (Simulator_GetSimulationObjectNameImpl)
Paired Ghidra pseudocode: 1055F3E0_Simulator_GetSimulationObjectNameImpl.c
Window: [0x1055f3e0, 0x1055f4e0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055f4e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055f3e0: 83 ec 44 56 57 e8 36 bd ff ff 8b 44 24 5c 8b 4c
1055f3f0: 24 58 50 51 e8 07 cb 06 00 33 f6 83 c4 08 3b c6
1055f400: 75 05 b8 f0 f3 b1 10 50 8d 4c 24 10 89 74 24 10
1055f410: 89 74 24 14 89 74 24 18 c7 44 24 1c 84 f3 b1 10
1055f420: e8 5b 03 b1 ff 8d 54 24 0c 52 8d 44 24 20 50 e8
1055f430: bc 7a 3c 00 83 c4 08 6a 01 6a 10 8d 4c 24 24 51
1055f440: 6a 09 6a 13 8d 4c 24 40 c7 44 24 40 b4 a5 ac 10
1055f450: 66 c7 44 24 4a 13 00 66 c7 44 24 48 0b 00 e8 2d
1055f460: 97 3c 00 89 74 24 08 e8 b4 bc ff ff 8b 10 8b 52
1055f470: 50 8d 4c 24 08 51 8d 4c 24 30 51 8b c8 ff d2 f6
1055f480: 44 24 34 04 8b 7c 24 08 c7 44 24 2c b4 a5 ac 10
1055f490: 74 0a 56 8d 4c 24 30 e8 f4 95 3c 00 8b 4c 24 24
1055f4a0: 8b 44 24 1c 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c6
1055f4b0: 74 09 50 e8 d8 99 3b 00 83 c4 04 8b 54 24 14 8b
1055f4c0: 44 24 0c 2b d0 83 fa 01 7e 0d 3b c6 74 09 50 e8
1055f4d0: bc 99 3b 00 83 c4 04 8b c7 5f 5e 83 c4 44 c3 cc

LINEAR DISASSEMBLY
1055f3e0 <.text+0x55e3e0>:
1055f3e0:	83 ec 44                                        	sub    esp,0x44
1055f3e3:	56                                              	push   esi
1055f3e4:	57                                              	push   edi
1055f3e5:	e8 36 bd ff ff                                  	call   0x1055b120
1055f3ea:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
1055f3ee:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
1055f3f2:	50                                              	push   eax
1055f3f3:	51                                              	push   ecx
1055f3f4:	e8 07 cb 06 00                                  	call   0x105cbf00
1055f3f9:	33 f6                                           	xor    esi,esi
1055f3fb:	83 c4 08                                        	add    esp,0x8
1055f3fe:	3b c6                                           	cmp    eax,esi
1055f400:	75 05                                           	jne    0x1055f407
1055f402:	b8 f0 f3 b1 10                                  	mov    eax,0x10b1f3f0
1055f407:	50                                              	push   eax
1055f408:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1055f40c:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
1055f410:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
1055f414:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
1055f418:	c7 44 24 1c 84 f3 b1 10                         	mov    DWORD PTR [esp+0x1c],0x10b1f384
1055f420:	e8 5b 03 b1 ff                                  	call   0x1006f780
1055f425:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
1055f429:	52                                              	push   edx
1055f42a:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1055f42e:	50                                              	push   eax
1055f42f:	e8 bc 7a 3c 00                                  	call   0x10926ef0
1055f434:	83 c4 08                                        	add    esp,0x8
1055f437:	6a 01                                           	push   0x1
1055f439:	6a 10                                           	push   0x10
1055f43b:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1055f43f:	51                                              	push   ecx
1055f440:	6a 09                                           	push   0x9
1055f442:	6a 13                                           	push   0x13
1055f444:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1055f448:	c7 44 24 40 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x40],0x10aca5b4
1055f450:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
1055f457:	66 c7 44 24 48 0b 00                            	mov    WORD PTR [esp+0x48],0xb
1055f45e:	e8 2d 97 3c 00                                  	call   0x10928b90
1055f463:	89 74 24 08                                     	mov    DWORD PTR [esp+0x8],esi
1055f467:	e8 b4 bc ff ff                                  	call   0x1055b120
1055f46c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f46e:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1055f471:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1055f475:	51                                              	push   ecx
1055f476:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1055f47a:	51                                              	push   ecx
1055f47b:	8b c8                                           	mov    ecx,eax
1055f47d:	ff d2                                           	call   edx
1055f47f:	f6 44 24 34 04                                  	test   BYTE PTR [esp+0x34],0x4
1055f484:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
1055f488:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
1055f490:	74 0a                                           	je     0x1055f49c
1055f492:	56                                              	push   esi
1055f493:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
1055f497:	e8 f4 95 3c 00                                  	call   0x10928a90
1055f49c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1055f4a0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1055f4a4:	2b c8                                           	sub    ecx,eax
1055f4a6:	83 e1 fe                                        	and    ecx,0xfffffffe
1055f4a9:	83 f9 02                                        	cmp    ecx,0x2
1055f4ac:	7e 0d                                           	jle    0x1055f4bb
1055f4ae:	3b c6                                           	cmp    eax,esi
1055f4b0:	74 09                                           	je     0x1055f4bb
1055f4b2:	50                                              	push   eax
1055f4b3:	e8 d8 99 3b 00                                  	call   0x10918e90
1055f4b8:	83 c4 04                                        	add    esp,0x4
1055f4bb:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1055f4bf:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1055f4c3:	2b d0                                           	sub    edx,eax
1055f4c5:	83 fa 01                                        	cmp    edx,0x1
1055f4c8:	7e 0d                                           	jle    0x1055f4d7
1055f4ca:	3b c6                                           	cmp    eax,esi
1055f4cc:	74 09                                           	je     0x1055f4d7
1055f4ce:	50                                              	push   eax
1055f4cf:	e8 bc 99 3b 00                                  	call   0x10918e90
1055f4d4:	83 c4 04                                        	add    esp,0x4
1055f4d7:	8b c7                                           	mov    eax,edi
1055f4d9:	5f                                              	pop    edi
1055f4da:	5e                                              	pop    esi
1055f4db:	83 c4 44                                        	add    esp,0x44
1055f4de:	c3                                              	ret
1055f4df:	cc                                              	int3
