# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109954a0 (ThumbnailManager_ExportObjectThumbnail)
Paired Ghidra pseudocode: 109954A0_ThumbnailManager_ExportObjectThumbnail.c
Window: [0x109954a0, 0x10995630) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109954a0: 83 ec 14 53 55 56 57 8d 44 24 34 50 8d 4c 24 18
109954b0: 51 e8 ea 85 bc ff 83 c4 08 33 db 33 ed c7 44 24
109954c0: 10 01 00 00 00 eb 09 8d a4 24 00 00 00 00 8b ff
109954d0: 8b 54 24 30 85 54 24 10 0f 84 f3 00 00 00 53 53
109954e0: 53 53 68 f8 77 b9 10 6a 30 e8 c2 39 f8 ff 8b f0
109954f0: 83 c4 18 3b f3 0f 84 f7 00 00 00 8b ce e8 1e 00
10995500: 99 ff c7 46 20 cc f8 aa 10 c7 46 24 d8 e9 aa 10
10995510: c7 06 34 78 b9 10 c7 46 20 24 78 b9 10 c7 46 24
10995520: 18 78 b9 10 88 5e 28 88 5e 29 8b 06 8b 50 04 8b
10995530: ce 8b fe ff d2 53 53 53 53 68 f8 77 b9 10 6a 58
10995540: e8 6b 39 f8 ff 83 c4 18 3b c3 0f 84 a9 00 00 00
10995550: 8b c8 e8 19 7e 9a ff 8b f0 3b f3 74 08 8b 06 8b
10995560: 10 8b ce ff d2 8b 4c 24 14 8b 54 24 18 55 57 56
10995570: 83 ec 10 8b c4 89 08 8b 4c 24 38 89 50 04 8b 54
10995580: 24 3c 89 48 08 8b 4c 24 44 89 50 0c 8b 44 24 48
10995590: 50 51 e8 d9 fc ff ff 83 c4 24 84 c0 74 62 8b 54
109955a0: 24 44 52 55 8d 44 24 1c 50 56 57 e8 40 f7 ff ff
109955b0: 83 c4 14 84 c0 74 49 3b f3 74 09 8b 16 8b 42 04
109955c0: 8b ce ff d0 3b fb 74 09 8b 17 8b 42 08 8b cf ff
109955d0: d0 8b 4c 24 10 83 c5 01 83 fd 04 8d 14 09 89 54
109955e0: 24 10 0f 82 e8 fe ff ff b0 01 5f 5e 5d 5b 83 c4
109955f0: 14 c3 33 ff e9 3c ff ff ff 33 f6 e9 65 ff ff ff
10995600: 3b f3 74 09 8b 06 8b 50 04 8b ce ff d2 3b fb 74
10995610: 09 8b 07 8b 50 08 8b cf ff d2 5f 5e 5d 32 c0 5b
10995620: 83 c4 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109954a0 <.text+0x9944a0>:
109954a0:	83 ec 14                                        	sub    esp,0x14
109954a3:	53                                              	push   ebx
109954a4:	55                                              	push   ebp
109954a5:	56                                              	push   esi
109954a6:	57                                              	push   edi
109954a7:	8d 44 24 34                                     	lea    eax,[esp+0x34]
109954ab:	50                                              	push   eax
109954ac:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109954b0:	51                                              	push   ecx
109954b1:	e8 ea 85 bc ff                                  	call   0x1055daa0
109954b6:	83 c4 08                                        	add    esp,0x8
109954b9:	33 db                                           	xor    ebx,ebx
109954bb:	33 ed                                           	xor    ebp,ebp
109954bd:	c7 44 24 10 01 00 00 00                         	mov    DWORD PTR [esp+0x10],0x1
109954c5:	eb 09                                           	jmp    0x109954d0
109954c7:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
109954ce:	8b ff                                           	mov    edi,edi
109954d0:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
109954d4:	85 54 24 10                                     	test   DWORD PTR [esp+0x10],edx
109954d8:	0f 84 f3 00 00 00                               	je     0x109955d1
109954de:	53                                              	push   ebx
109954df:	53                                              	push   ebx
109954e0:	53                                              	push   ebx
109954e1:	53                                              	push   ebx
109954e2:	68 f8 77 b9 10                                  	push   0x10b977f8
109954e7:	6a 30                                           	push   0x30
109954e9:	e8 c2 39 f8 ff                                  	call   0x10918eb0
109954ee:	8b f0                                           	mov    esi,eax
109954f0:	83 c4 18                                        	add    esp,0x18
109954f3:	3b f3                                           	cmp    esi,ebx
109954f5:	0f 84 f7 00 00 00                               	je     0x109955f2
109954fb:	8b ce                                           	mov    ecx,esi
109954fd:	e8 1e 00 99 ff                                  	call   0x10325520
10995502:	c7 46 20 cc f8 aa 10                            	mov    DWORD PTR [esi+0x20],0x10aaf8cc
10995509:	c7 46 24 d8 e9 aa 10                            	mov    DWORD PTR [esi+0x24],0x10aae9d8
10995510:	c7 06 34 78 b9 10                               	mov    DWORD PTR [esi],0x10b97834
10995516:	c7 46 20 24 78 b9 10                            	mov    DWORD PTR [esi+0x20],0x10b97824
1099551d:	c7 46 24 18 78 b9 10                            	mov    DWORD PTR [esi+0x24],0x10b97818
10995524:	88 5e 28                                        	mov    BYTE PTR [esi+0x28],bl
10995527:	88 5e 29                                        	mov    BYTE PTR [esi+0x29],bl
1099552a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1099552c:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1099552f:	8b ce                                           	mov    ecx,esi
10995531:	8b fe                                           	mov    edi,esi
10995533:	ff d2                                           	call   edx
10995535:	53                                              	push   ebx
10995536:	53                                              	push   ebx
10995537:	53                                              	push   ebx
10995538:	53                                              	push   ebx
10995539:	68 f8 77 b9 10                                  	push   0x10b977f8
1099553e:	6a 58                                           	push   0x58
10995540:	e8 6b 39 f8 ff                                  	call   0x10918eb0
10995545:	83 c4 18                                        	add    esp,0x18
10995548:	3b c3                                           	cmp    eax,ebx
1099554a:	0f 84 a9 00 00 00                               	je     0x109955f9
10995550:	8b c8                                           	mov    ecx,eax
10995552:	e8 19 7e 9a ff                                  	call   0x1033d370
10995557:	8b f0                                           	mov    esi,eax
10995559:	3b f3                                           	cmp    esi,ebx
1099555b:	74 08                                           	je     0x10995565
1099555d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1099555f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10995561:	8b ce                                           	mov    ecx,esi
10995563:	ff d2                                           	call   edx
10995565:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10995569:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1099556d:	55                                              	push   ebp
1099556e:	57                                              	push   edi
1099556f:	56                                              	push   esi
10995570:	83 ec 10                                        	sub    esp,0x10
10995573:	8b c4                                           	mov    eax,esp
10995575:	89 08                                           	mov    DWORD PTR [eax],ecx
10995577:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
1099557b:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1099557e:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
10995582:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10995585:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
10995589:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1099558c:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
10995590:	50                                              	push   eax
10995591:	51                                              	push   ecx
10995592:	e8 d9 fc ff ff                                  	call   0x10995270
10995597:	83 c4 24                                        	add    esp,0x24
1099559a:	84 c0                                           	test   al,al
1099559c:	74 62                                           	je     0x10995600
1099559e:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
109955a2:	52                                              	push   edx
109955a3:	55                                              	push   ebp
109955a4:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
109955a8:	50                                              	push   eax
109955a9:	56                                              	push   esi
109955aa:	57                                              	push   edi
109955ab:	e8 40 f7 ff ff                                  	call   0x10994cf0
109955b0:	83 c4 14                                        	add    esp,0x14
109955b3:	84 c0                                           	test   al,al
109955b5:	74 49                                           	je     0x10995600
109955b7:	3b f3                                           	cmp    esi,ebx
109955b9:	74 09                                           	je     0x109955c4
109955bb:	8b 16                                           	mov    edx,DWORD PTR [esi]
109955bd:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109955c0:	8b ce                                           	mov    ecx,esi
109955c2:	ff d0                                           	call   eax
109955c4:	3b fb                                           	cmp    edi,ebx
109955c6:	74 09                                           	je     0x109955d1
109955c8:	8b 17                                           	mov    edx,DWORD PTR [edi]
109955ca:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
109955cd:	8b cf                                           	mov    ecx,edi
109955cf:	ff d0                                           	call   eax
109955d1:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109955d5:	83 c5 01                                        	add    ebp,0x1
109955d8:	83 fd 04                                        	cmp    ebp,0x4
109955db:	8d 14 09                                        	lea    edx,[ecx+ecx*1]
109955de:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
109955e2:	0f 82 e8 fe ff ff                               	jb     0x109954d0
109955e8:	b0 01                                           	mov    al,0x1
109955ea:	5f                                              	pop    edi
109955eb:	5e                                              	pop    esi
109955ec:	5d                                              	pop    ebp
109955ed:	5b                                              	pop    ebx
109955ee:	83 c4 14                                        	add    esp,0x14
109955f1:	c3                                              	ret
109955f2:	33 ff                                           	xor    edi,edi
109955f4:	e9 3c ff ff ff                                  	jmp    0x10995535
109955f9:	33 f6                                           	xor    esi,esi
109955fb:	e9 65 ff ff ff                                  	jmp    0x10995565
10995600:	3b f3                                           	cmp    esi,ebx
10995602:	74 09                                           	je     0x1099560d
10995604:	8b 06                                           	mov    eax,DWORD PTR [esi]
10995606:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10995609:	8b ce                                           	mov    ecx,esi
1099560b:	ff d2                                           	call   edx
1099560d:	3b fb                                           	cmp    edi,ebx
1099560f:	74 09                                           	je     0x1099561a
10995611:	8b 07                                           	mov    eax,DWORD PTR [edi]
10995613:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10995616:	8b cf                                           	mov    ecx,edi
10995618:	ff d2                                           	call   edx
1099561a:	5f                                              	pop    edi
1099561b:	5e                                              	pop    esi
1099561c:	5d                                              	pop    ebp
1099561d:	32 c0                                           	xor    al,al
1099561f:	5b                                              	pop    ebx
10995620:	83 c4 14                                        	add    esp,0x14
10995623:	c3                                              	ret
10995624:	cc                                              	int3
10995625:	cc                                              	int3
10995626:	cc                                              	int3
10995627:	cc                                              	int3
10995628:	cc                                              	int3
10995629:	cc                                              	int3
1099562a:	cc                                              	int3
1099562b:	cc                                              	int3
1099562c:	cc                                              	int3
1099562d:	cc                                              	int3
1099562e:	cc                                              	int3
1099562f:	cc                                              	int3
