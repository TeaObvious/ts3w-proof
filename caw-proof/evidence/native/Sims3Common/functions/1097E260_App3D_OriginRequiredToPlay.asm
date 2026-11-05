# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097e260 (App3D_OriginRequiredToPlay)
Paired Ghidra pseudocode: 1097E260_App3D_OriginRequiredToPlay.c
Window: [0x1097e260, 0x1097e3d0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097e3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097e260: 83 ec 20 53 8b 5c 24 28 55 56 57 bd 44 82 ca 10
1097e270: 33 ff 39 3b c7 44 24 1c 94 ec b3 10 89 6c 24 10
1097e280: 89 6c 24 14 c7 44 24 18 46 82 ca 10 74 69 8b f3
1097e290: 85 ff 7e 32 b8 98 94 ac 10 8d a4 24 00 00 00 00
1097e2a0: 83 c0 02 66 83 38 00 75 f7 2d 98 94 ac 10 d1 f8
1097e2b0: 8d 04 45 98 94 ac 10 50 68 98 94 ac 10 8d 4c 24
1097e2c0: 18 e8 ea 10 6a ff 8b 0e 66 83 39 00 8b c1 74 09
1097e2d0: 83 c0 02 66 83 38 00 75 f7 2b c1 d1 f8 8d 14 41
1097e2e0: 52 51 8d 4c 24 18 e8 c5 10 6a ff 83 c7 01 83 3c
1097e2f0: bb 00 8d 34 bb 75 99 8d 44 24 20 50 c7 44 24 30
1097e300: 94 ec b3 10 89 6c 24 24 89 6c 24 28 c7 44 24 2c
1097e310: 46 82 ca 10 e8 27 61 c4 ff 83 c4 04 83 f8 ff 74
1097e320: 5e 6a 00 8d 4c 24 14 51 8d 54 24 28 52 e8 2e 6b
1097e330: c4 ff 8b 4c 24 34 8b f0 8b 44 24 2c 2b c8 83 e1
1097e340: fe 83 c4 0c 83 f9 02 7e 0d 85 c0 74 09 50 e8 3d
1097e350: ab f9 ff 83 c4 04 8b 54 24 18 8b 44 24 10 2b d0
1097e360: 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8 1e ab
1097e370: f9 ff 83 c4 04 5f 8b c6 5e 5d 5b 83 c4 20 c3 8b
1097e380: 4c 24 28 8b 44 24 20 2b c8 83 e1 fe 83 f9 02 7e
1097e390: 0d 85 c0 74 09 50 e8 f5 aa f9 ff 83 c4 04 8b 54
1097e3a0: 24 18 8b 44 24 10 2b d0 83 e2 fe 83 fa 02 7e 0d
1097e3b0: 85 c0 74 09 50 e8 d6 aa f9 ff 83 c4 04 5f 5e 5d
1097e3c0: 83 c8 ff 5b 83 c4 20 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097e260 <.text+0x97d260>:
1097e260:	83 ec 20                                        	sub    esp,0x20
1097e263:	53                                              	push   ebx
1097e264:	8b 5c 24 28                                     	mov    ebx,DWORD PTR [esp+0x28]
1097e268:	55                                              	push   ebp
1097e269:	56                                              	push   esi
1097e26a:	57                                              	push   edi
1097e26b:	bd 44 82 ca 10                                  	mov    ebp,0x10ca8244
1097e270:	33 ff                                           	xor    edi,edi
1097e272:	39 3b                                           	cmp    DWORD PTR [ebx],edi
1097e274:	c7 44 24 1c 94 ec b3 10                         	mov    DWORD PTR [esp+0x1c],0x10b3ec94
1097e27c:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
1097e280:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
1097e284:	c7 44 24 18 46 82 ca 10                         	mov    DWORD PTR [esp+0x18],0x10ca8246
1097e28c:	74 69                                           	je     0x1097e2f7
1097e28e:	8b f3                                           	mov    esi,ebx
1097e290:	85 ff                                           	test   edi,edi
1097e292:	7e 32                                           	jle    0x1097e2c6
1097e294:	b8 98 94 ac 10                                  	mov    eax,0x10ac9498
1097e299:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
1097e2a0:	83 c0 02                                        	add    eax,0x2
1097e2a3:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1097e2a7:	75 f7                                           	jne    0x1097e2a0
1097e2a9:	2d 98 94 ac 10                                  	sub    eax,0x10ac9498
1097e2ae:	d1 f8                                           	sar    eax,1
1097e2b0:	8d 04 45 98 94 ac 10                            	lea    eax,[eax*2+0x10ac9498]
1097e2b7:	50                                              	push   eax
1097e2b8:	68 98 94 ac 10                                  	push   0x10ac9498
1097e2bd:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1097e2c1:	e8 ea 10 6a ff                                  	call   0x1001f3b0
1097e2c6:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
1097e2c8:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
1097e2cc:	8b c1                                           	mov    eax,ecx
1097e2ce:	74 09                                           	je     0x1097e2d9
1097e2d0:	83 c0 02                                        	add    eax,0x2
1097e2d3:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
1097e2d7:	75 f7                                           	jne    0x1097e2d0
1097e2d9:	2b c1                                           	sub    eax,ecx
1097e2db:	d1 f8                                           	sar    eax,1
1097e2dd:	8d 14 41                                        	lea    edx,[ecx+eax*2]
1097e2e0:	52                                              	push   edx
1097e2e1:	51                                              	push   ecx
1097e2e2:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1097e2e6:	e8 c5 10 6a ff                                  	call   0x1001f3b0
1097e2eb:	83 c7 01                                        	add    edi,0x1
1097e2ee:	83 3c bb 00                                     	cmp    DWORD PTR [ebx+edi*4],0x0
1097e2f2:	8d 34 bb                                        	lea    esi,[ebx+edi*4]
1097e2f5:	75 99                                           	jne    0x1097e290
1097e2f7:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1097e2fb:	50                                              	push   eax
1097e2fc:	c7 44 24 30 94 ec b3 10                         	mov    DWORD PTR [esp+0x30],0x10b3ec94
1097e304:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
1097e308:	89 6c 24 28                                     	mov    DWORD PTR [esp+0x28],ebp
1097e30c:	c7 44 24 2c 46 82 ca 10                         	mov    DWORD PTR [esp+0x2c],0x10ca8246
1097e314:	e8 27 61 c4 ff                                  	call   0x105c4440
1097e319:	83 c4 04                                        	add    esp,0x4
1097e31c:	83 f8 ff                                        	cmp    eax,0xffffffff
1097e31f:	74 5e                                           	je     0x1097e37f
1097e321:	6a 00                                           	push   0x0
1097e323:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1097e327:	51                                              	push   ecx
1097e328:	8d 54 24 28                                     	lea    edx,[esp+0x28]
1097e32c:	52                                              	push   edx
1097e32d:	e8 2e 6b c4 ff                                  	call   0x105c4e60
1097e332:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1097e336:	8b f0                                           	mov    esi,eax
1097e338:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1097e33c:	2b c8                                           	sub    ecx,eax
1097e33e:	83 e1 fe                                        	and    ecx,0xfffffffe
1097e341:	83 c4 0c                                        	add    esp,0xc
1097e344:	83 f9 02                                        	cmp    ecx,0x2
1097e347:	7e 0d                                           	jle    0x1097e356
1097e349:	85 c0                                           	test   eax,eax
1097e34b:	74 09                                           	je     0x1097e356
1097e34d:	50                                              	push   eax
1097e34e:	e8 3d ab f9 ff                                  	call   0x10918e90
1097e353:	83 c4 04                                        	add    esp,0x4
1097e356:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1097e35a:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1097e35e:	2b d0                                           	sub    edx,eax
1097e360:	83 e2 fe                                        	and    edx,0xfffffffe
1097e363:	83 fa 02                                        	cmp    edx,0x2
1097e366:	7e 0d                                           	jle    0x1097e375
1097e368:	85 c0                                           	test   eax,eax
1097e36a:	74 09                                           	je     0x1097e375
1097e36c:	50                                              	push   eax
1097e36d:	e8 1e ab f9 ff                                  	call   0x10918e90
1097e372:	83 c4 04                                        	add    esp,0x4
1097e375:	5f                                              	pop    edi
1097e376:	8b c6                                           	mov    eax,esi
1097e378:	5e                                              	pop    esi
1097e379:	5d                                              	pop    ebp
1097e37a:	5b                                              	pop    ebx
1097e37b:	83 c4 20                                        	add    esp,0x20
1097e37e:	c3                                              	ret
1097e37f:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1097e383:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1097e387:	2b c8                                           	sub    ecx,eax
1097e389:	83 e1 fe                                        	and    ecx,0xfffffffe
1097e38c:	83 f9 02                                        	cmp    ecx,0x2
1097e38f:	7e 0d                                           	jle    0x1097e39e
1097e391:	85 c0                                           	test   eax,eax
1097e393:	74 09                                           	je     0x1097e39e
1097e395:	50                                              	push   eax
1097e396:	e8 f5 aa f9 ff                                  	call   0x10918e90
1097e39b:	83 c4 04                                        	add    esp,0x4
1097e39e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1097e3a2:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1097e3a6:	2b d0                                           	sub    edx,eax
1097e3a8:	83 e2 fe                                        	and    edx,0xfffffffe
1097e3ab:	83 fa 02                                        	cmp    edx,0x2
1097e3ae:	7e 0d                                           	jle    0x1097e3bd
1097e3b0:	85 c0                                           	test   eax,eax
1097e3b2:	74 09                                           	je     0x1097e3bd
1097e3b4:	50                                              	push   eax
1097e3b5:	e8 d6 aa f9 ff                                  	call   0x10918e90
1097e3ba:	83 c4 04                                        	add    esp,0x4
1097e3bd:	5f                                              	pop    edi
1097e3be:	5e                                              	pop    esi
1097e3bf:	5d                                              	pop    ebp
1097e3c0:	83 c8 ff                                        	or     eax,0xffffffff
1097e3c3:	5b                                              	pop    ebx
1097e3c4:	83 c4 20                                        	add    esp,0x20
1097e3c7:	c3                                              	ret
1097e3c8:	cc                                              	int3
1097e3c9:	cc                                              	int3
1097e3ca:	cc                                              	int3
1097e3cb:	cc                                              	int3
1097e3cc:	cc                                              	int3
1097e3cd:	cc                                              	int3
1097e3ce:	cc                                              	int3
1097e3cf:	cc                                              	int3
