# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d4e0 (Route_GetObstructionAtPoint)
Paired Ghidra pseudocode: 1053D4E0_Route_GetObstructionAtPoint.c
Window: [0x1053d4e0, 0x1053d5d0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d5d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d4e0: 55 8b ec 83 e4 f0 8b 0d 44 89 c7 10 83 ec 24 85
1053d4f0: c9 53 56 57 0f 84 bc 00 00 00 8b 45 08 50 e8 ed
1053d500: eb ff ff 8b f0 85 f6 0f 84 a9 00 00 00 8b 16 8b
1053d510: 42 10 8b ce ff d0 80 be f4 00 00 00 00 f3 0f 10
1053d520: 4d 14 f3 0f 10 45 0c 8b 4e 40 8b 56 44 8b 46 48
1053d530: f3 0f 11 4c 24 18 f3 0f 10 4d 10 f3 0f 11 44 24
1053d540: 1c f3 0f 11 4c 24 14 f3 0f 11 44 24 10 0f 28 44
1053d550: 24 10 89 4c 24 10 8b 4e 4c 0f 29 44 24 20 89 54
1053d560: 24 14 89 44 24 18 89 4c 24 1c 74 08 8b 86 ec 00
1053d570: 00 00 eb 13 8d 86 e0 00 00 00 39 00 74 07 8b 10
1053d580: 8b 42 08 eb 02 33 c0 6a 02 8d 4c 24 14 51 8d 54
1053d590: 24 28 52 6a 00 50 e8 35 a6 0f 00 8b f8 8b 06 8b
1053d5a0: da 8b 50 14 83 c4 14 8b ce ff d2 8b c7 8b d3 5f
1053d5b0: 5e 5b 8b e5 5d c3 5f 5e 33 c0 33 d2 5b 8b e5 5d
1053d5c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053d4e0 <.text+0x53c4e0>:
1053d4e0:	55                                              	push   ebp
1053d4e1:	8b ec                                           	mov    ebp,esp
1053d4e3:	83 e4 f0                                        	and    esp,0xfffffff0
1053d4e6:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053d4ec:	83 ec 24                                        	sub    esp,0x24
1053d4ef:	85 c9                                           	test   ecx,ecx
1053d4f1:	53                                              	push   ebx
1053d4f2:	56                                              	push   esi
1053d4f3:	57                                              	push   edi
1053d4f4:	0f 84 bc 00 00 00                               	je     0x1053d5b6
1053d4fa:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1053d4fd:	50                                              	push   eax
1053d4fe:	e8 ed eb ff ff                                  	call   0x1053c0f0
1053d503:	8b f0                                           	mov    esi,eax
1053d505:	85 f6                                           	test   esi,esi
1053d507:	0f 84 a9 00 00 00                               	je     0x1053d5b6
1053d50d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053d50f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1053d512:	8b ce                                           	mov    ecx,esi
1053d514:	ff d0                                           	call   eax
1053d516:	80 be f4 00 00 00 00                            	cmp    BYTE PTR [esi+0xf4],0x0
1053d51d:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
1053d522:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
1053d527:	8b 4e 40                                        	mov    ecx,DWORD PTR [esi+0x40]
1053d52a:	8b 56 44                                        	mov    edx,DWORD PTR [esi+0x44]
1053d52d:	8b 46 48                                        	mov    eax,DWORD PTR [esi+0x48]
1053d530:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1053d536:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1053d53b:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1053d541:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
1053d547:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1053d54d:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1053d552:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1053d556:	8b 4e 4c                                        	mov    ecx,DWORD PTR [esi+0x4c]
1053d559:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1053d55e:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1053d562:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1053d566:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
1053d56a:	74 08                                           	je     0x1053d574
1053d56c:	8b 86 ec 00 00 00                               	mov    eax,DWORD PTR [esi+0xec]
1053d572:	eb 13                                           	jmp    0x1053d587
1053d574:	8d 86 e0 00 00 00                               	lea    eax,[esi+0xe0]
1053d57a:	39 00                                           	cmp    DWORD PTR [eax],eax
1053d57c:	74 07                                           	je     0x1053d585
1053d57e:	8b 10                                           	mov    edx,DWORD PTR [eax]
1053d580:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
1053d583:	eb 02                                           	jmp    0x1053d587
1053d585:	33 c0                                           	xor    eax,eax
1053d587:	6a 02                                           	push   0x2
1053d589:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1053d58d:	51                                              	push   ecx
1053d58e:	8d 54 24 28                                     	lea    edx,[esp+0x28]
1053d592:	52                                              	push   edx
1053d593:	6a 00                                           	push   0x0
1053d595:	50                                              	push   eax
1053d596:	e8 35 a6 0f 00                                  	call   0x10637bd0
1053d59b:	8b f8                                           	mov    edi,eax
1053d59d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1053d59f:	8b da                                           	mov    ebx,edx
1053d5a1:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1053d5a4:	83 c4 14                                        	add    esp,0x14
1053d5a7:	8b ce                                           	mov    ecx,esi
1053d5a9:	ff d2                                           	call   edx
1053d5ab:	8b c7                                           	mov    eax,edi
1053d5ad:	8b d3                                           	mov    edx,ebx
1053d5af:	5f                                              	pop    edi
1053d5b0:	5e                                              	pop    esi
1053d5b1:	5b                                              	pop    ebx
1053d5b2:	8b e5                                           	mov    esp,ebp
1053d5b4:	5d                                              	pop    ebp
1053d5b5:	c3                                              	ret
1053d5b6:	5f                                              	pop    edi
1053d5b7:	5e                                              	pop    esi
1053d5b8:	33 c0                                           	xor    eax,eax
1053d5ba:	33 d2                                           	xor    edx,edx
1053d5bc:	5b                                              	pop    ebx
1053d5bd:	8b e5                                           	mov    esp,ebp
1053d5bf:	5d                                              	pop    ebp
1053d5c0:	c3                                              	ret
1053d5c1:	cc                                              	int3
1053d5c2:	cc                                              	int3
1053d5c3:	cc                                              	int3
1053d5c4:	cc                                              	int3
1053d5c5:	cc                                              	int3
1053d5c6:	cc                                              	int3
1053d5c7:	cc                                              	int3
1053d5c8:	cc                                              	int3
1053d5c9:	cc                                              	int3
1053d5ca:	cc                                              	int3
1053d5cb:	cc                                              	int3
1053d5cc:	cc                                              	int3
1053d5cd:	cc                                              	int3
1053d5ce:	cc                                              	int3
1053d5cf:	cc                                              	int3
