# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053d420 (Route_GetDestinationObstruction)
Paired Ghidra pseudocode: 1053D420_Route_GetDestinationObstruction.c
Window: [0x1053d420, 0x1053d4e0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053d4e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053d420: 55 8b ec 83 e4 f0 8b 0d 44 89 c7 10 83 ec 24 85
1053d430: c9 53 56 57 0f 84 98 00 00 00 8b 45 08 50 e8 ad
1053d440: ec ff ff 8b f0 85 f6 0f 84 85 00 00 00 8b 16 8b
1053d450: 42 10 8b ce ff d0 8d 86 e0 00 00 00 39 00 74 69
1053d460: 8b 8e e4 00 00 00 8b 79 08 85 ff 74 5c 8b 17 8b
1053d470: 92 34 01 00 00 8d 44 24 20 50 8b cf ff d2 8b 4e
1053d480: 44 8b 56 48 8b 46 40 6a 02 89 4c 24 18 8d 4c 24
1053d490: 14 51 89 54 24 20 8d 54 24 28 52 89 44 24 1c 8b
1053d4a0: 46 4c 6a 00 57 89 44 24 30 e8 22 a7 0f 00 8b f8
1053d4b0: 8b 06 8b da 8b 50 14 83 c4 14 8b ce ff d2 8b c7
1053d4c0: 8b d3 5f 5e 5b 8b e5 5d c3 8b 06 8b 50 14 8b ce
1053d4d0: ff d2 5f 5e 33 c0 33 d2 5b 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
1053d420 <.text+0x53c420>:
1053d420:	55                                              	push   ebp
1053d421:	8b ec                                           	mov    ebp,esp
1053d423:	83 e4 f0                                        	and    esp,0xfffffff0
1053d426:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053d42c:	83 ec 24                                        	sub    esp,0x24
1053d42f:	85 c9                                           	test   ecx,ecx
1053d431:	53                                              	push   ebx
1053d432:	56                                              	push   esi
1053d433:	57                                              	push   edi
1053d434:	0f 84 98 00 00 00                               	je     0x1053d4d2
1053d43a:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1053d43d:	50                                              	push   eax
1053d43e:	e8 ad ec ff ff                                  	call   0x1053c0f0
1053d443:	8b f0                                           	mov    esi,eax
1053d445:	85 f6                                           	test   esi,esi
1053d447:	0f 84 85 00 00 00                               	je     0x1053d4d2
1053d44d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053d44f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1053d452:	8b ce                                           	mov    ecx,esi
1053d454:	ff d0                                           	call   eax
1053d456:	8d 86 e0 00 00 00                               	lea    eax,[esi+0xe0]
1053d45c:	39 00                                           	cmp    DWORD PTR [eax],eax
1053d45e:	74 69                                           	je     0x1053d4c9
1053d460:	8b 8e e4 00 00 00                               	mov    ecx,DWORD PTR [esi+0xe4]
1053d466:	8b 79 08                                        	mov    edi,DWORD PTR [ecx+0x8]
1053d469:	85 ff                                           	test   edi,edi
1053d46b:	74 5c                                           	je     0x1053d4c9
1053d46d:	8b 17                                           	mov    edx,DWORD PTR [edi]
1053d46f:	8b 92 34 01 00 00                               	mov    edx,DWORD PTR [edx+0x134]
1053d475:	8d 44 24 20                                     	lea    eax,[esp+0x20]
1053d479:	50                                              	push   eax
1053d47a:	8b cf                                           	mov    ecx,edi
1053d47c:	ff d2                                           	call   edx
1053d47e:	8b 4e 44                                        	mov    ecx,DWORD PTR [esi+0x44]
1053d481:	8b 56 48                                        	mov    edx,DWORD PTR [esi+0x48]
1053d484:	8b 46 40                                        	mov    eax,DWORD PTR [esi+0x40]
1053d487:	6a 02                                           	push   0x2
1053d489:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1053d48d:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1053d491:	51                                              	push   ecx
1053d492:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
1053d496:	8d 54 24 28                                     	lea    edx,[esp+0x28]
1053d49a:	52                                              	push   edx
1053d49b:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1053d49f:	8b 46 4c                                        	mov    eax,DWORD PTR [esi+0x4c]
1053d4a2:	6a 00                                           	push   0x0
1053d4a4:	57                                              	push   edi
1053d4a5:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
1053d4a9:	e8 22 a7 0f 00                                  	call   0x10637bd0
1053d4ae:	8b f8                                           	mov    edi,eax
1053d4b0:	8b 06                                           	mov    eax,DWORD PTR [esi]
1053d4b2:	8b da                                           	mov    ebx,edx
1053d4b4:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1053d4b7:	83 c4 14                                        	add    esp,0x14
1053d4ba:	8b ce                                           	mov    ecx,esi
1053d4bc:	ff d2                                           	call   edx
1053d4be:	8b c7                                           	mov    eax,edi
1053d4c0:	8b d3                                           	mov    edx,ebx
1053d4c2:	5f                                              	pop    edi
1053d4c3:	5e                                              	pop    esi
1053d4c4:	5b                                              	pop    ebx
1053d4c5:	8b e5                                           	mov    esp,ebp
1053d4c7:	5d                                              	pop    ebp
1053d4c8:	c3                                              	ret
1053d4c9:	8b 06                                           	mov    eax,DWORD PTR [esi]
1053d4cb:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1053d4ce:	8b ce                                           	mov    ecx,esi
1053d4d0:	ff d2                                           	call   edx
1053d4d2:	5f                                              	pop    edi
1053d4d3:	5e                                              	pop    esi
1053d4d4:	33 c0                                           	xor    eax,eax
1053d4d6:	33 d2                                           	xor    edx,edx
1053d4d8:	5b                                              	pop    ebx
1053d4d9:	8b e5                                           	mov    esp,ebp
1053d4db:	5d                                              	pop    ebp
1053d4dc:	c3                                              	ret
1053d4dd:	cc                                              	int3
1053d4de:	cc                                              	int3
1053d4df:	cc                                              	int3
