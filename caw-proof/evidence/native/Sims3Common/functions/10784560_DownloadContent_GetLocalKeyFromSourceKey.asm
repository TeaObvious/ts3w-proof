# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10784560 (DownloadContent_GetLocalKeyFromSourceKey)
Paired Ghidra pseudocode: 10784560_DownloadContent_GetLocalKeyFromSourceKey.c
Window: [0x10784560, 0x10784600) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10784560: 83 ec 40 56 57 e8 56 ff fe ff 8b f8 85 ff 0f 84
10784570: 80 00 00 00 8d 44 24 18 50 8d 4c 24 60 e8 2e 96
10784580: dd ff 8b 74 24 6c 8d 4c 24 08 51 8b ce e8 1e 96
10784590: dd ff 8d 54 24 28 52 8d 4c 24 50 e8 20 95 dd ff
107845a0: 8d 44 24 08 50 8d 4c 24 1c 51 83 ec 10 8d 54 24
107845b0: 40 8b cc 52 e8 07 f0 1a 00 8b cf e8 70 57 ff ff
107845c0: 84 c0 74 30 8d 44 24 08 50 8d 4c 24 3c 51 e8 cd
107845d0: 94 dd ff 8b 10 89 16 8b 48 04 89 4e 04 8b 50 08
107845e0: 89 56 08 8b 40 0c 89 46 0c 83 c4 08 b0 01 5f 5e
107845f0: 83 c4 40 c3 5f 32 c0 5e 83 c4 40 c3 cc cc cc cc

LINEAR DISASSEMBLY
10784560 <.text+0x783560>:
10784560:	83 ec 40                                        	sub    esp,0x40
10784563:	56                                              	push   esi
10784564:	57                                              	push   edi
10784565:	e8 56 ff fe ff                                  	call   0x107744c0
1078456a:	8b f8                                           	mov    edi,eax
1078456c:	85 ff                                           	test   edi,edi
1078456e:	0f 84 80 00 00 00                               	je     0x107845f4
10784574:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10784578:	50                                              	push   eax
10784579:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1078457d:	e8 2e 96 dd ff                                  	call   0x1055dbb0
10784582:	8b 74 24 6c                                     	mov    esi,DWORD PTR [esp+0x6c]
10784586:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1078458a:	51                                              	push   ecx
1078458b:	8b ce                                           	mov    ecx,esi
1078458d:	e8 1e 96 dd ff                                  	call   0x1055dbb0
10784592:	8d 54 24 28                                     	lea    edx,[esp+0x28]
10784596:	52                                              	push   edx
10784597:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
1078459b:	e8 20 95 dd ff                                  	call   0x1055dac0
107845a0:	8d 44 24 08                                     	lea    eax,[esp+0x8]
107845a4:	50                                              	push   eax
107845a5:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
107845a9:	51                                              	push   ecx
107845aa:	83 ec 10                                        	sub    esp,0x10
107845ad:	8d 54 24 40                                     	lea    edx,[esp+0x40]
107845b1:	8b cc                                           	mov    ecx,esp
107845b3:	52                                              	push   edx
107845b4:	e8 07 f0 1a 00                                  	call   0x109335c0
107845b9:	8b cf                                           	mov    ecx,edi
107845bb:	e8 70 57 ff ff                                  	call   0x10779d30
107845c0:	84 c0                                           	test   al,al
107845c2:	74 30                                           	je     0x107845f4
107845c4:	8d 44 24 08                                     	lea    eax,[esp+0x8]
107845c8:	50                                              	push   eax
107845c9:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
107845cd:	51                                              	push   ecx
107845ce:	e8 cd 94 dd ff                                  	call   0x1055daa0
107845d3:	8b 10                                           	mov    edx,DWORD PTR [eax]
107845d5:	89 16                                           	mov    DWORD PTR [esi],edx
107845d7:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
107845da:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
107845dd:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
107845e0:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
107845e3:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
107845e6:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
107845e9:	83 c4 08                                        	add    esp,0x8
107845ec:	b0 01                                           	mov    al,0x1
107845ee:	5f                                              	pop    edi
107845ef:	5e                                              	pop    esi
107845f0:	83 c4 40                                        	add    esp,0x40
107845f3:	c3                                              	ret
107845f4:	5f                                              	pop    edi
107845f5:	32 c0                                           	xor    al,al
107845f7:	5e                                              	pop    esi
107845f8:	83 c4 40                                        	add    esp,0x40
107845fb:	c3                                              	ret
107845fc:	cc                                              	int3
107845fd:	cc                                              	int3
107845fe:	cc                                              	int3
107845ff:	cc                                              	int3
