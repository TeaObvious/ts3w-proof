# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097e3d0 (App3D_GetInstalledGameUserDataDir)
Paired Ghidra pseudocode: 1097E3D0_App3D_GetInstalledGameUserDataDir.c
Window: [0x1097e3d0, 0x1097e5d0) (512 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097e5d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097e3d0: 81 ec 54 02 00 00 56 8d 44 24 30 6a 10 50 e8 ad
1097e3e0: 5d c4 ff 33 f6 83 c4 08 3b c6 0f 84 d2 01 00 00
1097e3f0: 53 55 57 50 8d 4c 24 28 89 74 24 28 89 74 24 2c
1097e400: 89 74 24 30 c7 44 24 34 48 61 b9 10 e8 0f c2 6e
1097e410: ff 8b 2d 4c b7 aa 10 89 74 24 10 bb e8 03 00 00
1097e420: eb 02 33 f6 6a 10 8d 4c 24 40 51 53 68 00 00 00
1097e430: 10 ff d5 85 c0 74 63 66 39 74 24 3c 8d 44 24 3c
1097e440: 74 08 83 c0 02 66 39 30 75 f8 8b 74 24 28 8b 4c
1097e450: 24 24 8d 54 24 3c 2b c2 d1 f8 03 c0 2b f1 8b f8
1097e460: d1 fe d1 ff 3b fe 89 74 24 34 89 7c 24 38 8d 44
1097e470: 24 38 7c 04 8d 44 24 34 8b 00 50 8d 44 24 40 50
1097e480: 51 e8 da e4 6e ff 83 c4 0c 85 c0 75 0d 3b f7 7c
1097e490: 09 3b f7 0f 9f c0 85 c0 74 11 83 c3 64 81 fb e4
1097e4a0: 0c 00 00 0f 8c 79 ff ff ff eb 07 0f b7 cb 89 4c
1097e4b0: 24 10 68 08 02 00 00 8d 54 24 60 68 24 61 b9 10
1097e4c0: 52 e8 ba 39 fb ff 83 c4 0c b8 44 82 ca 10 6a 00
1097e4d0: 68 00 02 00 00 8d 4c 24 1c c7 44 24 28 f8 60 b9
1097e4e0: 10 89 44 24 1c 89 44 24 20 c7 44 24 24 46 82 ca
1097e4f0: 10 e8 fa c3 6e ff 8b 5c 24 18 8b 7c 24 14 0f b7
1097e500: 44 24 10 8b f3 2b f7 d1 fe 56 57 83 c0 02 50 68
1097e510: 00 00 00 10 ff d5 3b c6 73 16 8d 04 47 3b c3 74
1097e520: 23 6a 02 53 50 ff 15 00 b6 aa 10 83 c4 0c eb 14
1097e530: 76 12 6a 00 2b c6 50 8d 4c 24 1c e8 b0 c3 6e ff
1097e540: 8b 7c 24 14 68 08 02 00 00 8d 4c 24 60 57 51 e8
1097e550: 1c 3a fb ff 8b 54 24 28 2b d7 83 e2 fe 83 c4 0c
1097e560: 83 fa 02 7e 0d 85 ff 74 09 57 e8 21 a9 f9 ff 83
1097e570: c4 04 68 08 02 00 00 8d 44 24 60 68 34 41 ab 10
1097e580: 50 e8 ea 39 fb ff 83 c4 0c 8d 4c 24 5c 51 ff 15
1097e590: c4 b6 aa 10 8b 54 24 2c 8b f0 8b 44 24 24 2b d0
1097e5a0: 5f 83 e2 fe 83 fa 02 5d 5b 7e 0d 85 c0 74 09 50
1097e5b0: e8 db a8 f9 ff 83 c4 04 8b c6 5e 81 c4 54 02 00
1097e5c0: 00 c3 33 c0 5e 81 c4 54 02 00 00 c3 cc cc cc cc

LINEAR DISASSEMBLY
1097e3d0 <.text+0x97d3d0>:
1097e3d0:	81 ec 54 02 00 00                               	sub    esp,0x254
1097e3d6:	56                                              	push   esi
1097e3d7:	8d 44 24 30                                     	lea    eax,[esp+0x30]
1097e3db:	6a 10                                           	push   0x10
1097e3dd:	50                                              	push   eax
1097e3de:	e8 ad 5d c4 ff                                  	call   0x105c4190
1097e3e3:	33 f6                                           	xor    esi,esi
1097e3e5:	83 c4 08                                        	add    esp,0x8
1097e3e8:	3b c6                                           	cmp    eax,esi
1097e3ea:	0f 84 d2 01 00 00                               	je     0x1097e5c2
1097e3f0:	53                                              	push   ebx
1097e3f1:	55                                              	push   ebp
1097e3f2:	57                                              	push   edi
1097e3f3:	50                                              	push   eax
1097e3f4:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1097e3f8:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
1097e3fc:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
1097e400:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
1097e404:	c7 44 24 34 48 61 b9 10                         	mov    DWORD PTR [esp+0x34],0x10b96148
1097e40c:	e8 0f c2 6e ff                                  	call   0x1006a620
1097e411:	8b 2d 4c b7 aa 10                               	mov    ebp,DWORD PTR ds:0x10aab74c
1097e417:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
1097e41b:	bb e8 03 00 00                                  	mov    ebx,0x3e8
1097e420:	eb 02                                           	jmp    0x1097e424
1097e422:	33 f6                                           	xor    esi,esi
1097e424:	6a 10                                           	push   0x10
1097e426:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1097e42a:	51                                              	push   ecx
1097e42b:	53                                              	push   ebx
1097e42c:	68 00 00 00 10                                  	push   0x10000000
1097e431:	ff d5                                           	call   ebp
1097e433:	85 c0                                           	test   eax,eax
1097e435:	74 63                                           	je     0x1097e49a
1097e437:	66 39 74 24 3c                                  	cmp    WORD PTR [esp+0x3c],si
1097e43c:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
1097e440:	74 08                                           	je     0x1097e44a
1097e442:	83 c0 02                                        	add    eax,0x2
1097e445:	66 39 30                                        	cmp    WORD PTR [eax],si
1097e448:	75 f8                                           	jne    0x1097e442
1097e44a:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
1097e44e:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1097e452:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
1097e456:	2b c2                                           	sub    eax,edx
1097e458:	d1 f8                                           	sar    eax,1
1097e45a:	03 c0                                           	add    eax,eax
1097e45c:	2b f1                                           	sub    esi,ecx
1097e45e:	8b f8                                           	mov    edi,eax
1097e460:	d1 fe                                           	sar    esi,1
1097e462:	d1 ff                                           	sar    edi,1
1097e464:	3b fe                                           	cmp    edi,esi
1097e466:	89 74 24 34                                     	mov    DWORD PTR [esp+0x34],esi
1097e46a:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
1097e46e:	8d 44 24 38                                     	lea    eax,[esp+0x38]
1097e472:	7c 04                                           	jl     0x1097e478
1097e474:	8d 44 24 34                                     	lea    eax,[esp+0x34]
1097e478:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097e47a:	50                                              	push   eax
1097e47b:	8d 44 24 40                                     	lea    eax,[esp+0x40]
1097e47f:	50                                              	push   eax
1097e480:	51                                              	push   ecx
1097e481:	e8 da e4 6e ff                                  	call   0x1006c960
1097e486:	83 c4 0c                                        	add    esp,0xc
1097e489:	85 c0                                           	test   eax,eax
1097e48b:	75 0d                                           	jne    0x1097e49a
1097e48d:	3b f7                                           	cmp    esi,edi
1097e48f:	7c 09                                           	jl     0x1097e49a
1097e491:	3b f7                                           	cmp    esi,edi
1097e493:	0f 9f c0                                        	setg   al
1097e496:	85 c0                                           	test   eax,eax
1097e498:	74 11                                           	je     0x1097e4ab
1097e49a:	83 c3 64                                        	add    ebx,0x64
1097e49d:	81 fb e4 0c 00 00                               	cmp    ebx,0xce4
1097e4a3:	0f 8c 79 ff ff ff                               	jl     0x1097e422
1097e4a9:	eb 07                                           	jmp    0x1097e4b2
1097e4ab:	0f b7 cb                                        	movzx  ecx,bx
1097e4ae:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1097e4b2:	68 08 02 00 00                                  	push   0x208
1097e4b7:	8d 54 24 60                                     	lea    edx,[esp+0x60]
1097e4bb:	68 24 61 b9 10                                  	push   0x10b96124
1097e4c0:	52                                              	push   edx
1097e4c1:	e8 ba 39 fb ff                                  	call   0x10931e80
1097e4c6:	83 c4 0c                                        	add    esp,0xc
1097e4c9:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1097e4ce:	6a 00                                           	push   0x0
1097e4d0:	68 00 02 00 00                                  	push   0x200
1097e4d5:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1097e4d9:	c7 44 24 28 f8 60 b9 10                         	mov    DWORD PTR [esp+0x28],0x10b960f8
1097e4e1:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1097e4e5:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
1097e4e9:	c7 44 24 24 46 82 ca 10                         	mov    DWORD PTR [esp+0x24],0x10ca8246
1097e4f1:	e8 fa c3 6e ff                                  	call   0x1006a8f0
1097e4f6:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
1097e4fa:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1097e4fe:	0f b7 44 24 10                                  	movzx  eax,WORD PTR [esp+0x10]
1097e503:	8b f3                                           	mov    esi,ebx
1097e505:	2b f7                                           	sub    esi,edi
1097e507:	d1 fe                                           	sar    esi,1
1097e509:	56                                              	push   esi
1097e50a:	57                                              	push   edi
1097e50b:	83 c0 02                                        	add    eax,0x2
1097e50e:	50                                              	push   eax
1097e50f:	68 00 00 00 10                                  	push   0x10000000
1097e514:	ff d5                                           	call   ebp
1097e516:	3b c6                                           	cmp    eax,esi
1097e518:	73 16                                           	jae    0x1097e530
1097e51a:	8d 04 47                                        	lea    eax,[edi+eax*2]
1097e51d:	3b c3                                           	cmp    eax,ebx
1097e51f:	74 23                                           	je     0x1097e544
1097e521:	6a 02                                           	push   0x2
1097e523:	53                                              	push   ebx
1097e524:	50                                              	push   eax
1097e525:	ff 15 00 b6 aa 10                               	call   DWORD PTR ds:0x10aab600
1097e52b:	83 c4 0c                                        	add    esp,0xc
1097e52e:	eb 14                                           	jmp    0x1097e544
1097e530:	76 12                                           	jbe    0x1097e544
1097e532:	6a 00                                           	push   0x0
1097e534:	2b c6                                           	sub    eax,esi
1097e536:	50                                              	push   eax
1097e537:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1097e53b:	e8 b0 c3 6e ff                                  	call   0x1006a8f0
1097e540:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1097e544:	68 08 02 00 00                                  	push   0x208
1097e549:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1097e54d:	57                                              	push   edi
1097e54e:	51                                              	push   ecx
1097e54f:	e8 1c 3a fb ff                                  	call   0x10931f70
1097e554:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1097e558:	2b d7                                           	sub    edx,edi
1097e55a:	83 e2 fe                                        	and    edx,0xfffffffe
1097e55d:	83 c4 0c                                        	add    esp,0xc
1097e560:	83 fa 02                                        	cmp    edx,0x2
1097e563:	7e 0d                                           	jle    0x1097e572
1097e565:	85 ff                                           	test   edi,edi
1097e567:	74 09                                           	je     0x1097e572
1097e569:	57                                              	push   edi
1097e56a:	e8 21 a9 f9 ff                                  	call   0x10918e90
1097e56f:	83 c4 04                                        	add    esp,0x4
1097e572:	68 08 02 00 00                                  	push   0x208
1097e577:	8d 44 24 60                                     	lea    eax,[esp+0x60]
1097e57b:	68 34 41 ab 10                                  	push   0x10ab4134
1097e580:	50                                              	push   eax
1097e581:	e8 ea 39 fb ff                                  	call   0x10931f70
1097e586:	83 c4 0c                                        	add    esp,0xc
1097e589:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
1097e58d:	51                                              	push   ecx
1097e58e:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097e594:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1097e598:	8b f0                                           	mov    esi,eax
1097e59a:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1097e59e:	2b d0                                           	sub    edx,eax
1097e5a0:	5f                                              	pop    edi
1097e5a1:	83 e2 fe                                        	and    edx,0xfffffffe
1097e5a4:	83 fa 02                                        	cmp    edx,0x2
1097e5a7:	5d                                              	pop    ebp
1097e5a8:	5b                                              	pop    ebx
1097e5a9:	7e 0d                                           	jle    0x1097e5b8
1097e5ab:	85 c0                                           	test   eax,eax
1097e5ad:	74 09                                           	je     0x1097e5b8
1097e5af:	50                                              	push   eax
1097e5b0:	e8 db a8 f9 ff                                  	call   0x10918e90
1097e5b5:	83 c4 04                                        	add    esp,0x4
1097e5b8:	8b c6                                           	mov    eax,esi
1097e5ba:	5e                                              	pop    esi
1097e5bb:	81 c4 54 02 00 00                               	add    esp,0x254
1097e5c1:	c3                                              	ret
1097e5c2:	33 c0                                           	xor    eax,eax
1097e5c4:	5e                                              	pop    esi
1097e5c5:	81 c4 54 02 00 00                               	add    esp,0x254
1097e5cb:	c3                                              	ret
1097e5cc:	cc                                              	int3
1097e5cd:	cc                                              	int3
1097e5ce:	cc                                              	int3
1097e5cf:	cc                                              	int3
