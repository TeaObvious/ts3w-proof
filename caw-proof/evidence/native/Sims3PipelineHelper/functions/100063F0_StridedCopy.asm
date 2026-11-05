# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3PipelineHelper.dll CAW 1.22.10 original-byte window and independent linear disassembly
Export: StridedCopy at 0x100063f0
Paired annotated Ghidra pseudocode: 100063F0_StridedCopy.c
Window: [0x100063f0, 0x100064e6) (246 bytes, stop exclusive)
Ghidra function-body intervals: [0x100063f0, 0x1000648d), [0x10006490, 0x100064e6)
Boundary rule: entry through the maximum address of the currently defined Ghidra body.
This is a bounded original-file byte window, not a proof of complete function extent;
it can include gaps, padding, or data. Branches and noncontiguous bodies may extend beyond it.
GNU objdump decodes linearly in Intel syntax; verify control flow against bytes and pseudocode.

ORIGINAL BYTES (16 per line)
100063f0: 8b 54 24 14 85 d2 0f 84 e9 00 00 00 83 7c 24 18
10006400: 00 0f 84 de 00 00 00 8b 44 24 1c 83 e8 00 53 55
10006410: 56 57 0f 84 9d 00 00 00 83 e8 01 74 4f 83 e8 01
10006420: 0f 85 bb 00 00 00 d1 ea 0f 84 b3 00 00 00 8b 6c
10006430: 24 14 85 d2 76 1e 8b 74 24 1c 8b c5 2b f5 8b fa
10006440: 66 8b 0c 06 8a f9 83 c0 02 83 ef 01 8a dd 66 89
10006450: 58 fe 75 ec 8b 44 24 20 03 6c 24 18 01 44 24 1c
10006460: 83 6c 24 28 01 75 cb 5f 5e 5d 5b c3 c1 ea 02 89
10006470: 54 24 24 74 6c 8b 5c 24 20 8b 7c 24 1c 8b 74 24
10006480: 14 85 d2 76 1e 8b cf 8b c6 2b ce eb 03 8d 49 00
10006490: 8b 2c 08 0f cd 89 28 83 c0 04 83 ea 01 75 f1 8b
100064a0: 54 24 24 03 74 24 18 03 fb 83 6c 24 28 01 75 d1
100064b0: 5f 5e 5d 5b c3 8b 6c 24 20 8b 5c 24 18 8b 7c 24
100064c0: 1c 8b 74 24 14 eb 04 8b 54 24 24 52 57 56 e8 bd
100064d0: 8f 27 00 83 c4 0c 03 f3 03 fd 83 6c 24 28 01 75
100064e0: e6 5f 5e 5d 5b c3

LINEAR DISASSEMBLY
100063f0 <.text+0x53f0>:
100063f0:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
100063f4:	85 d2                	test   edx,edx
100063f6:	0f 84 e9 00 00 00    	je     0x100064e5
100063fc:	83 7c 24 18 00       	cmp    DWORD PTR [esp+0x18],0x0
10006401:	0f 84 de 00 00 00    	je     0x100064e5
10006407:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
1000640b:	83 e8 00             	sub    eax,0x0
1000640e:	53                   	push   ebx
1000640f:	55                   	push   ebp
10006410:	56                   	push   esi
10006411:	57                   	push   edi
10006412:	0f 84 9d 00 00 00    	je     0x100064b5
10006418:	83 e8 01             	sub    eax,0x1
1000641b:	74 4f                	je     0x1000646c
1000641d:	83 e8 01             	sub    eax,0x1
10006420:	0f 85 bb 00 00 00    	jne    0x100064e1
10006426:	d1 ea                	shr    edx,1
10006428:	0f 84 b3 00 00 00    	je     0x100064e1
1000642e:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
10006432:	85 d2                	test   edx,edx
10006434:	76 1e                	jbe    0x10006454
10006436:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
1000643a:	8b c5                	mov    eax,ebp
1000643c:	2b f5                	sub    esi,ebp
1000643e:	8b fa                	mov    edi,edx
10006440:	66 8b 0c 06          	mov    cx,WORD PTR [esi+eax*1]
10006444:	8a f9                	mov    bh,cl
10006446:	83 c0 02             	add    eax,0x2
10006449:	83 ef 01             	sub    edi,0x1
1000644c:	8a dd                	mov    bl,ch
1000644e:	66 89 58 fe          	mov    WORD PTR [eax-0x2],bx
10006452:	75 ec                	jne    0x10006440
10006454:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
10006458:	03 6c 24 18          	add    ebp,DWORD PTR [esp+0x18]
1000645c:	01 44 24 1c          	add    DWORD PTR [esp+0x1c],eax
10006460:	83 6c 24 28 01       	sub    DWORD PTR [esp+0x28],0x1
10006465:	75 cb                	jne    0x10006432
10006467:	5f                   	pop    edi
10006468:	5e                   	pop    esi
10006469:	5d                   	pop    ebp
1000646a:	5b                   	pop    ebx
1000646b:	c3                   	ret
1000646c:	c1 ea 02             	shr    edx,0x2
1000646f:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
10006473:	74 6c                	je     0x100064e1
10006475:	8b 5c 24 20          	mov    ebx,DWORD PTR [esp+0x20]
10006479:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
1000647d:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
10006481:	85 d2                	test   edx,edx
10006483:	76 1e                	jbe    0x100064a3
10006485:	8b cf                	mov    ecx,edi
10006487:	8b c6                	mov    eax,esi
10006489:	2b ce                	sub    ecx,esi
1000648b:	eb 03                	jmp    0x10006490
1000648d:	8d 49 00             	lea    ecx,[ecx+0x0]
10006490:	8b 2c 08             	mov    ebp,DWORD PTR [eax+ecx*1]
10006493:	0f cd                	bswap  ebp
10006495:	89 28                	mov    DWORD PTR [eax],ebp
10006497:	83 c0 04             	add    eax,0x4
1000649a:	83 ea 01             	sub    edx,0x1
1000649d:	75 f1                	jne    0x10006490
1000649f:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
100064a3:	03 74 24 18          	add    esi,DWORD PTR [esp+0x18]
100064a7:	03 fb                	add    edi,ebx
100064a9:	83 6c 24 28 01       	sub    DWORD PTR [esp+0x28],0x1
100064ae:	75 d1                	jne    0x10006481
100064b0:	5f                   	pop    edi
100064b1:	5e                   	pop    esi
100064b2:	5d                   	pop    ebp
100064b3:	5b                   	pop    ebx
100064b4:	c3                   	ret
100064b5:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
100064b9:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
100064bd:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
100064c1:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
100064c5:	eb 04                	jmp    0x100064cb
100064c7:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
100064cb:	52                   	push   edx
100064cc:	57                   	push   edi
100064cd:	56                   	push   esi
100064ce:	e8 bd 8f 27 00       	call   0x1027f490
100064d3:	83 c4 0c             	add    esp,0xc
100064d6:	03 f3                	add    esi,ebx
100064d8:	03 fd                	add    edi,ebp
100064da:	83 6c 24 28 01       	sub    DWORD PTR [esp+0x28],0x1
100064df:	75 e6                	jne    0x100064c7
100064e1:	5f                   	pop    edi
100064e2:	5e                   	pop    esi
100064e3:	5d                   	pop    ebp
100064e4:	5b                   	pop    ebx
100064e5:	c3                   	ret
