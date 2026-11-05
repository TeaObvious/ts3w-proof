# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e2b0 (SacsWrap_SelectOnDestinationNode_GetCaseTargets)
Paired Ghidra pseudocode: 1098E2B0_SacsWrap_SelectOnDestinationNode_GetCaseTargets.c
Window: [0x1098e2b0, 0x1098e400) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e2b0: 83 ec 28 55 56 8b 74 24 34 85 f6 0f 84 31 01 00
1098e2c0: 00 83 7c 24 3c 00 8b 6c 24 40 74 08 85 ed 0f 84
1098e2d0: 1e 01 00 00 8b 44 24 38 f3 0f 10 05 d4 b0 ac 10
1098e2e0: 57 50 f3 0f 11 44 24 28 f3 0f 10 05 fc df aa 10
1098e2f0: bf f8 71 c5 10 56 f3 0f 11 44 24 30 c7 44 24 38
1098e300: 78 70 b9 10 c7 44 24 24 01 00 00 00 89 7c 24 20
1098e310: c7 44 24 28 00 00 00 00 c7 44 24 34 00 00 00 00
1098e320: e8 ab fa ff ff 83 c4 08 8d 4c 24 38 51 8d 54 24
1098e330: 10 83 c6 30 52 8b ce 89 44 24 40 e8 50 2b c6 ff
1098e340: 8b 00 8b 4e 08 8b 56 04 3b 04 8a 74 11 83 c0 04
1098e350: 50 8d 4c 24 18 e8 36 75 c5 ff 8b 7c 24 18 8b 07
1098e360: 85 c0 8b cf 75 14 39 47 04 8d 4f 04 75 0a 8b ff
1098e370: 83 c1 04 83 39 00 74 f8 8b 01 8b 54 24 1c 8b 14
1098e380: 97 33 f6 3b c2 89 54 24 0c 74 33 eb 03 8d 49 00
1098e390: 3b 74 24 40 73 0a 8b 10 89 54 b5 00 8b 54 24 0c
1098e3a0: 8b 40 04 83 c6 01 85 c0 75 10 8d 9b 00 00 00 00
1098e3b0: 8b 41 04 83 c1 04 85 c0 74 f6 3b c2 75 d2 8b 44
1098e3c0: 24 1c 50 57 8d 4c 24 1c e8 43 d5 c5 ff 83 7c 24
1098e3d0: 1c 01 c7 44 24 20 00 00 00 00 5f 76 0d 8b 4c 24
1098e3e0: 14 51 e8 a9 aa f8 ff 83 c4 04 8b c6 5e 5d 83 c4
1098e3f0: 28 c3 5e 33 c0 5d 83 c4 28 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e2b0 <.text+0x98d2b0>:
1098e2b0:	83 ec 28                                        	sub    esp,0x28
1098e2b3:	55                                              	push   ebp
1098e2b4:	56                                              	push   esi
1098e2b5:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
1098e2b9:	85 f6                                           	test   esi,esi
1098e2bb:	0f 84 31 01 00 00                               	je     0x1098e3f2
1098e2c1:	83 7c 24 3c 00                                  	cmp    DWORD PTR [esp+0x3c],0x0
1098e2c6:	8b 6c 24 40                                     	mov    ebp,DWORD PTR [esp+0x40]
1098e2ca:	74 08                                           	je     0x1098e2d4
1098e2cc:	85 ed                                           	test   ebp,ebp
1098e2ce:	0f 84 1e 01 00 00                               	je     0x1098e3f2
1098e2d4:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1098e2d8:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1098e2e0:	57                                              	push   edi
1098e2e1:	50                                              	push   eax
1098e2e2:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
1098e2e8:	f3 0f 10 05 fc df aa 10                         	movss  xmm0,DWORD PTR ds:0x10aadffc
1098e2f0:	bf f8 71 c5 10                                  	mov    edi,0x10c571f8
1098e2f5:	56                                              	push   esi
1098e2f6:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
1098e2fc:	c7 44 24 38 78 70 b9 10                         	mov    DWORD PTR [esp+0x38],0x10b97078
1098e304:	c7 44 24 24 01 00 00 00                         	mov    DWORD PTR [esp+0x24],0x1
1098e30c:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1098e310:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [esp+0x28],0x0
1098e318:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [esp+0x34],0x0
1098e320:	e8 ab fa ff ff                                  	call   0x1098ddd0
1098e325:	83 c4 08                                        	add    esp,0x8
1098e328:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1098e32c:	51                                              	push   ecx
1098e32d:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1098e331:	83 c6 30                                        	add    esi,0x30
1098e334:	52                                              	push   edx
1098e335:	8b ce                                           	mov    ecx,esi
1098e337:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
1098e33b:	e8 50 2b c6 ff                                  	call   0x105f0e90
1098e340:	8b 00                                           	mov    eax,DWORD PTR [eax]
1098e342:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
1098e345:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
1098e348:	3b 04 8a                                        	cmp    eax,DWORD PTR [edx+ecx*4]
1098e34b:	74 11                                           	je     0x1098e35e
1098e34d:	83 c0 04                                        	add    eax,0x4
1098e350:	50                                              	push   eax
1098e351:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098e355:	e8 36 75 c5 ff                                  	call   0x105e5890
1098e35a:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
1098e35e:	8b 07                                           	mov    eax,DWORD PTR [edi]
1098e360:	85 c0                                           	test   eax,eax
1098e362:	8b cf                                           	mov    ecx,edi
1098e364:	75 14                                           	jne    0x1098e37a
1098e366:	39 47 04                                        	cmp    DWORD PTR [edi+0x4],eax
1098e369:	8d 4f 04                                        	lea    ecx,[edi+0x4]
1098e36c:	75 0a                                           	jne    0x1098e378
1098e36e:	8b ff                                           	mov    edi,edi
1098e370:	83 c1 04                                        	add    ecx,0x4
1098e373:	83 39 00                                        	cmp    DWORD PTR [ecx],0x0
1098e376:	74 f8                                           	je     0x1098e370
1098e378:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098e37a:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1098e37e:	8b 14 97                                        	mov    edx,DWORD PTR [edi+edx*4]
1098e381:	33 f6                                           	xor    esi,esi
1098e383:	3b c2                                           	cmp    eax,edx
1098e385:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1098e389:	74 33                                           	je     0x1098e3be
1098e38b:	eb 03                                           	jmp    0x1098e390
1098e38d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1098e390:	3b 74 24 40                                     	cmp    esi,DWORD PTR [esp+0x40]
1098e394:	73 0a                                           	jae    0x1098e3a0
1098e396:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098e398:	89 54 b5 00                                     	mov    DWORD PTR [ebp+esi*4+0x0],edx
1098e39c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098e3a0:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
1098e3a3:	83 c6 01                                        	add    esi,0x1
1098e3a6:	85 c0                                           	test   eax,eax
1098e3a8:	75 10                                           	jne    0x1098e3ba
1098e3aa:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
1098e3b0:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
1098e3b3:	83 c1 04                                        	add    ecx,0x4
1098e3b6:	85 c0                                           	test   eax,eax
1098e3b8:	74 f6                                           	je     0x1098e3b0
1098e3ba:	3b c2                                           	cmp    eax,edx
1098e3bc:	75 d2                                           	jne    0x1098e390
1098e3be:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098e3c2:	50                                              	push   eax
1098e3c3:	57                                              	push   edi
1098e3c4:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1098e3c8:	e8 43 d5 c5 ff                                  	call   0x105eb910
1098e3cd:	83 7c 24 1c 01                                  	cmp    DWORD PTR [esp+0x1c],0x1
1098e3d2:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
1098e3da:	5f                                              	pop    edi
1098e3db:	76 0d                                           	jbe    0x1098e3ea
1098e3dd:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098e3e1:	51                                              	push   ecx
1098e3e2:	e8 a9 aa f8 ff                                  	call   0x10918e90
1098e3e7:	83 c4 04                                        	add    esp,0x4
1098e3ea:	8b c6                                           	mov    eax,esi
1098e3ec:	5e                                              	pop    esi
1098e3ed:	5d                                              	pop    ebp
1098e3ee:	83 c4 28                                        	add    esp,0x28
1098e3f1:	c3                                              	ret
1098e3f2:	5e                                              	pop    esi
1098e3f3:	33 c0                                           	xor    eax,eax
1098e3f5:	5d                                              	pop    ebp
1098e3f6:	83 c4 28                                        	add    esp,0x28
1098e3f9:	c3                                              	ret
1098e3fa:	cc                                              	int3
1098e3fb:	cc                                              	int3
1098e3fc:	cc                                              	int3
1098e3fd:	cc                                              	int3
1098e3fe:	cc                                              	int3
1098e3ff:	cc                                              	int3
