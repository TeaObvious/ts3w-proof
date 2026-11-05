# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d5c0 (SacsWrap_StateMachine_Load)
Paired Ghidra pseudocode: 1098D5C0_SacsWrap_StateMachine_Load.c
Window: [0x1098d5c0, 0x1098d6b0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d6b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d5c0: 83 ec 14 8b 44 24 1c 8b 4c 24 18 8b 54 24 20 53
1098d5d0: 56 89 44 24 18 8b 44 24 2c 33 f6 57 89 4c 24 18
1098d5e0: 89 54 24 10 89 44 24 14 89 74 24 24 e8 df 7a f5
1098d5f0: ff 8b f8 3b fe 0f 84 9f 00 00 00 8b 17 8b 52 0c
1098d600: 56 56 56 56 8d 44 24 34 50 8d 4c 24 24 51 8b cf
1098d610: ff d2 84 c0 0f 84 80 00 00 00 8b 4c 24 24 3b ce
1098d620: 74 71 8b 01 8b 50 0c 68 13 df d5 02 ff d2 8b d8
1098d630: 3b de 74 5b 56 56 56 56 8d 4c 24 1c c7 44 24 28
1098d640: 8c 03 66 01 8b 07 8b 40 0c 51 8d 54 24 24 52 8b
1098d650: cf 89 74 24 24 ff d0 84 c0 74 2b 8b 4c 24 0c 3b
1098d660: ce 74 0e 8b 11 8b 42 0c 68 96 03 66 01 ff d0 8b
1098d670: f0 56 8d 8b 20 01 00 00 e8 a3 80 a3 ff 8b 16 8b
1098d680: 42 04 8b ce ff d0 5f 5e 8b c3 5b 83 c4 14 c3 8b
1098d690: 4c 24 24 8b 11 8b 42 04 ff d0 5f 5e 33 c0 5b 83
1098d6a0: c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d5c0 <.text+0x98c5c0>:
1098d5c0:	83 ec 14                                        	sub    esp,0x14
1098d5c3:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098d5c7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098d5cb:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1098d5cf:	53                                              	push   ebx
1098d5d0:	56                                              	push   esi
1098d5d1:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
1098d5d5:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1098d5d9:	33 f6                                           	xor    esi,esi
1098d5db:	57                                              	push   edi
1098d5dc:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1098d5e0:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1098d5e4:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1098d5e8:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
1098d5ec:	e8 df 7a f5 ff                                  	call   0x108e50d0
1098d5f1:	8b f8                                           	mov    edi,eax
1098d5f3:	3b fe                                           	cmp    edi,esi
1098d5f5:	0f 84 9f 00 00 00                               	je     0x1098d69a
1098d5fb:	8b 17                                           	mov    edx,DWORD PTR [edi]
1098d5fd:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1098d600:	56                                              	push   esi
1098d601:	56                                              	push   esi
1098d602:	56                                              	push   esi
1098d603:	56                                              	push   esi
1098d604:	8d 44 24 34                                     	lea    eax,[esp+0x34]
1098d608:	50                                              	push   eax
1098d609:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098d60d:	51                                              	push   ecx
1098d60e:	8b cf                                           	mov    ecx,edi
1098d610:	ff d2                                           	call   edx
1098d612:	84 c0                                           	test   al,al
1098d614:	0f 84 80 00 00 00                               	je     0x1098d69a
1098d61a:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1098d61e:	3b ce                                           	cmp    ecx,esi
1098d620:	74 71                                           	je     0x1098d693
1098d622:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1098d624:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098d627:	68 13 df d5 02                                  	push   0x2d5df13
1098d62c:	ff d2                                           	call   edx
1098d62e:	8b d8                                           	mov    ebx,eax
1098d630:	3b de                                           	cmp    ebx,esi
1098d632:	74 5b                                           	je     0x1098d68f
1098d634:	56                                              	push   esi
1098d635:	56                                              	push   esi
1098d636:	56                                              	push   esi
1098d637:	56                                              	push   esi
1098d638:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1098d63c:	c7 44 24 28 8c 03 66 01                         	mov    DWORD PTR [esp+0x28],0x166038c
1098d644:	8b 07                                           	mov    eax,DWORD PTR [edi]
1098d646:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1098d649:	51                                              	push   ecx
1098d64a:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1098d64e:	52                                              	push   edx
1098d64f:	8b cf                                           	mov    ecx,edi
1098d651:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
1098d655:	ff d0                                           	call   eax
1098d657:	84 c0                                           	test   al,al
1098d659:	74 2b                                           	je     0x1098d686
1098d65b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098d65f:	3b ce                                           	cmp    ecx,esi
1098d661:	74 0e                                           	je     0x1098d671
1098d663:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098d665:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1098d668:	68 96 03 66 01                                  	push   0x1660396
1098d66d:	ff d0                                           	call   eax
1098d66f:	8b f0                                           	mov    esi,eax
1098d671:	56                                              	push   esi
1098d672:	8d 8b 20 01 00 00                               	lea    ecx,[ebx+0x120]
1098d678:	e8 a3 80 a3 ff                                  	call   0x103c5720
1098d67d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1098d67f:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098d682:	8b ce                                           	mov    ecx,esi
1098d684:	ff d0                                           	call   eax
1098d686:	5f                                              	pop    edi
1098d687:	5e                                              	pop    esi
1098d688:	8b c3                                           	mov    eax,ebx
1098d68a:	5b                                              	pop    ebx
1098d68b:	83 c4 14                                        	add    esp,0x14
1098d68e:	c3                                              	ret
1098d68f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1098d693:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1098d695:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1098d698:	ff d0                                           	call   eax
1098d69a:	5f                                              	pop    edi
1098d69b:	5e                                              	pop    esi
1098d69c:	33 c0                                           	xor    eax,eax
1098d69e:	5b                                              	pop    ebx
1098d69f:	83 c4 14                                        	add    esp,0x14
1098d6a2:	c3                                              	ret
1098d6a3:	cc                                              	int3
1098d6a4:	cc                                              	int3
1098d6a5:	cc                                              	int3
1098d6a6:	cc                                              	int3
1098d6a7:	cc                                              	int3
1098d6a8:	cc                                              	int3
1098d6a9:	cc                                              	int3
1098d6aa:	cc                                              	int3
1098d6ab:	cc                                              	int3
1098d6ac:	cc                                              	int3
1098d6ad:	cc                                              	int3
1098d6ae:	cc                                              	int3
1098d6af:	cc                                              	int3
