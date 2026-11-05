# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055f4e0 (Simulator_CreateDnPExportFileImpl)
Paired Ghidra pseudocode: 1055F4E0_Simulator_CreateDnPExportFileImpl.c
Window: [0x1055f4e0, 0x1055f740) (608 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055f740
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055f4e0: 81 ec 68 04 00 00 53 56 57 e8 d2 24 fc ff 8b 10
1055f4f0: 8b c8 8b 42 24 ff d0 50 8d 4c 24 68 e8 8f 2e 3c
1055f500: 00 8d 4c 24 64 e8 d6 f7 4c 00 50 e8 00 2a 3b 00
1055f510: 8b 8c 24 7c 04 00 00 83 c4 04 c7 01 00 00 00 00
1055f520: e8 fb bb ff ff 6a ff 8d 4c 24 14 8b d8 e8 ae dd
1055f530: 3c 00 6a 00 8d 4c 24 14 e8 a3 dd 3c 00 bf 44 82
1055f540: ca 10 8d 4c 24 10 c7 44 24 20 ac f4 b1 10 89 7c
1055f550: 24 14 89 7c 24 18 c7 44 24 1c 46 82 ca 10 e8 9d
1055f560: dd 3c 00 50 8d 54 24 18 68 84 f4 b1 10 52 e8 7d
1055f570: ba b0 ff 8b 44 24 20 83 c4 0c 6a 00 50 8d 4c 24
1055f580: 6c e8 9a 30 3c 00 8d 4c 24 64 e8 51 f7 4c 00 8b
1055f590: f0 6a 00 56 c7 44 24 38 64 f4 b1 10 89 7c 24 2c
1055f5a0: 89 7c 24 30 c7 44 24 34 46 82 ca 10 e8 2f 14 3b
1055f5b0: 00 83 c4 08 84 c0 0f 84 84 00 00 00 8b 4c 24 18
1055f5c0: 8b 7c 24 14 51 57 8d 4c 24 2c e8 f1 02 ac ff 6a
1055f5d0: 00 6a 00 6a 00 6a 00 68 44 f4 b1 10 68 28 02 00
1055f5e0: 00 e8 ca 98 3b 00 83 c4 18 85 c0 74 0c 56 8b c8
1055f5f0: e8 3b 12 3b 00 8b f0 eb 02 33 f6 8b 16 8b 42 4c
1055f600: 6a 00 6a 01 6a 03 6a 02 8b ce ff d0 84 c0 74 18
1055f610: 8b 13 8b 82 c8 00 00 00 6a 47 56 8b cb ff d0 8b
1055f620: 8c 24 78 04 00 00 89 01 8b 94 24 78 04 00 00 83
1055f630: 3a 00 75 5c 8b 06 8b 10 6a 01 8b ce ff d2 eb 50
1055f640: 68 24 f4 b1 10 6a ff 8d 44 24 5c 68 00 f4 b1 10
1055f650: 50 e8 5a 77 3c 00 8d 4c 24 34 83 c4 10 3b c1 74
1055f660: 0c 8b 50 04 8b 00 52 50 e8 53 02 ac ff 8b 4c 24
1055f670: 5c 8b 44 24 54 2b c8 83 e1 fe 83 f9 02 7e 0d 85
1055f680: c0 74 09 50 e8 07 98 3b 00 83 c4 04 8b 7c 24 14
1055f690: 6a 01 6a 10 8d 54 24 2c 52 6a 09 6a 13 8d 4c 24
1055f6a0: 48 c7 44 24 48 b4 a5 ac 10 66 c7 44 24 52 13 00
1055f6b0: 66 c7 44 24 50 0b 00 e8 d4 94 3c 00 c7 44 24 0c
1055f6c0: 00 00 00 00 e8 57 ba ff ff 8b 10 8b 52 50 8d 4c
1055f6d0: 24 0c 51 8d 4c 24 38 51 8b c8 ff d2 f6 44 24 3c
1055f6e0: 04 8b 74 24 0c c7 44 24 34 b4 a5 ac 10 74 0b 6a
1055f6f0: 00 8d 4c 24 38 e8 96 93 3c 00 8b 4c 24 2c 8b 44
1055f700: 24 24 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09
1055f710: 50 e8 7a 97 3b 00 83 c4 04 8b 54 24 1c 2b d7 83
1055f720: e2 fe 83 fa 02 7e 0d 85 ff 74 09 57 e8 5f 97 3b
1055f730: 00 83 c4 04 5f 8b c6 5e 5b 81 c4 68 04 00 00 c3

LINEAR DISASSEMBLY
1055f4e0 <.text+0x55e4e0>:
1055f4e0:	81 ec 68 04 00 00                               	sub    esp,0x468
1055f4e6:	53                                              	push   ebx
1055f4e7:	56                                              	push   esi
1055f4e8:	57                                              	push   edi
1055f4e9:	e8 d2 24 fc ff                                  	call   0x105219c0
1055f4ee:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f4f0:	8b c8                                           	mov    ecx,eax
1055f4f2:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
1055f4f5:	ff d0                                           	call   eax
1055f4f7:	50                                              	push   eax
1055f4f8:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
1055f4fc:	e8 8f 2e 3c 00                                  	call   0x10922390
1055f501:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1055f505:	e8 d6 f7 4c 00                                  	call   0x10a2ece0
1055f50a:	50                                              	push   eax
1055f50b:	e8 00 2a 3b 00                                  	call   0x10911f10
1055f510:	8b 8c 24 7c 04 00 00                            	mov    ecx,DWORD PTR [esp+0x47c]
1055f517:	83 c4 04                                        	add    esp,0x4
1055f51a:	c7 01 00 00 00 00                               	mov    DWORD PTR [ecx],0x0
1055f520:	e8 fb bb ff ff                                  	call   0x1055b120
1055f525:	6a ff                                           	push   0xffffffff
1055f527:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1055f52b:	8b d8                                           	mov    ebx,eax
1055f52d:	e8 ae dd 3c 00                                  	call   0x1092d2e0
1055f532:	6a 00                                           	push   0x0
1055f534:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1055f538:	e8 a3 dd 3c 00                                  	call   0x1092d2e0
1055f53d:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
1055f542:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1055f546:	c7 44 24 20 ac f4 b1 10                         	mov    DWORD PTR [esp+0x20],0x10b1f4ac
1055f54e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1055f552:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
1055f556:	c7 44 24 1c 46 82 ca 10                         	mov    DWORD PTR [esp+0x1c],0x10ca8246
1055f55e:	e8 9d dd 3c 00                                  	call   0x1092d300
1055f563:	50                                              	push   eax
1055f564:	8d 54 24 18                                     	lea    edx,[esp+0x18]
1055f568:	68 84 f4 b1 10                                  	push   0x10b1f484
1055f56d:	52                                              	push   edx
1055f56e:	e8 7d ba b0 ff                                  	call   0x1006aff0
1055f573:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1055f577:	83 c4 0c                                        	add    esp,0xc
1055f57a:	6a 00                                           	push   0x0
1055f57c:	50                                              	push   eax
1055f57d:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
1055f581:	e8 9a 30 3c 00                                  	call   0x10922620
1055f586:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1055f58a:	e8 51 f7 4c 00                                  	call   0x10a2ece0
1055f58f:	8b f0                                           	mov    esi,eax
1055f591:	6a 00                                           	push   0x0
1055f593:	56                                              	push   esi
1055f594:	c7 44 24 38 64 f4 b1 10                         	mov    DWORD PTR [esp+0x38],0x10b1f464
1055f59c:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
1055f5a0:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1055f5a4:	c7 44 24 34 46 82 ca 10                         	mov    DWORD PTR [esp+0x34],0x10ca8246
1055f5ac:	e8 2f 14 3b 00                                  	call   0x109109e0
1055f5b1:	83 c4 08                                        	add    esp,0x8
1055f5b4:	84 c0                                           	test   al,al
1055f5b6:	0f 84 84 00 00 00                               	je     0x1055f640
1055f5bc:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055f5c0:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1055f5c4:	51                                              	push   ecx
1055f5c5:	57                                              	push   edi
1055f5c6:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1055f5ca:	e8 f1 02 ac ff                                  	call   0x1001f8c0
1055f5cf:	6a 00                                           	push   0x0
1055f5d1:	6a 00                                           	push   0x0
1055f5d3:	6a 00                                           	push   0x0
1055f5d5:	6a 00                                           	push   0x0
1055f5d7:	68 44 f4 b1 10                                  	push   0x10b1f444
1055f5dc:	68 28 02 00 00                                  	push   0x228
1055f5e1:	e8 ca 98 3b 00                                  	call   0x10918eb0
1055f5e6:	83 c4 18                                        	add    esp,0x18
1055f5e9:	85 c0                                           	test   eax,eax
1055f5eb:	74 0c                                           	je     0x1055f5f9
1055f5ed:	56                                              	push   esi
1055f5ee:	8b c8                                           	mov    ecx,eax
1055f5f0:	e8 3b 12 3b 00                                  	call   0x10910830
1055f5f5:	8b f0                                           	mov    esi,eax
1055f5f7:	eb 02                                           	jmp    0x1055f5fb
1055f5f9:	33 f6                                           	xor    esi,esi
1055f5fb:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055f5fd:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
1055f600:	6a 00                                           	push   0x0
1055f602:	6a 01                                           	push   0x1
1055f604:	6a 03                                           	push   0x3
1055f606:	6a 02                                           	push   0x2
1055f608:	8b ce                                           	mov    ecx,esi
1055f60a:	ff d0                                           	call   eax
1055f60c:	84 c0                                           	test   al,al
1055f60e:	74 18                                           	je     0x1055f628
1055f610:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1055f612:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
1055f618:	6a 47                                           	push   0x47
1055f61a:	56                                              	push   esi
1055f61b:	8b cb                                           	mov    ecx,ebx
1055f61d:	ff d0                                           	call   eax
1055f61f:	8b 8c 24 78 04 00 00                            	mov    ecx,DWORD PTR [esp+0x478]
1055f626:	89 01                                           	mov    DWORD PTR [ecx],eax
1055f628:	8b 94 24 78 04 00 00                            	mov    edx,DWORD PTR [esp+0x478]
1055f62f:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
1055f632:	75 5c                                           	jne    0x1055f690
1055f634:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f636:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f638:	6a 01                                           	push   0x1
1055f63a:	8b ce                                           	mov    ecx,esi
1055f63c:	ff d2                                           	call   edx
1055f63e:	eb 50                                           	jmp    0x1055f690
1055f640:	68 24 f4 b1 10                                  	push   0x10b1f424
1055f645:	6a ff                                           	push   0xffffffff
1055f647:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
1055f64b:	68 00 f4 b1 10                                  	push   0x10b1f400
1055f650:	50                                              	push   eax
1055f651:	e8 5a 77 3c 00                                  	call   0x10926db0
1055f656:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1055f65a:	83 c4 10                                        	add    esp,0x10
1055f65d:	3b c1                                           	cmp    eax,ecx
1055f65f:	74 0c                                           	je     0x1055f66d
1055f661:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1055f664:	8b 00                                           	mov    eax,DWORD PTR [eax]
1055f666:	52                                              	push   edx
1055f667:	50                                              	push   eax
1055f668:	e8 53 02 ac ff                                  	call   0x1001f8c0
1055f66d:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
1055f671:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
1055f675:	2b c8                                           	sub    ecx,eax
1055f677:	83 e1 fe                                        	and    ecx,0xfffffffe
1055f67a:	83 f9 02                                        	cmp    ecx,0x2
1055f67d:	7e 0d                                           	jle    0x1055f68c
1055f67f:	85 c0                                           	test   eax,eax
1055f681:	74 09                                           	je     0x1055f68c
1055f683:	50                                              	push   eax
1055f684:	e8 07 98 3b 00                                  	call   0x10918e90
1055f689:	83 c4 04                                        	add    esp,0x4
1055f68c:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1055f690:	6a 01                                           	push   0x1
1055f692:	6a 10                                           	push   0x10
1055f694:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
1055f698:	52                                              	push   edx
1055f699:	6a 09                                           	push   0x9
1055f69b:	6a 13                                           	push   0x13
1055f69d:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
1055f6a1:	c7 44 24 48 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x48],0x10aca5b4
1055f6a9:	66 c7 44 24 52 13 00                            	mov    WORD PTR [esp+0x52],0x13
1055f6b0:	66 c7 44 24 50 0b 00                            	mov    WORD PTR [esp+0x50],0xb
1055f6b7:	e8 d4 94 3c 00                                  	call   0x10928b90
1055f6bc:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1055f6c4:	e8 57 ba ff ff                                  	call   0x1055b120
1055f6c9:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f6cb:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1055f6ce:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1055f6d2:	51                                              	push   ecx
1055f6d3:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1055f6d7:	51                                              	push   ecx
1055f6d8:	8b c8                                           	mov    ecx,eax
1055f6da:	ff d2                                           	call   edx
1055f6dc:	f6 44 24 3c 04                                  	test   BYTE PTR [esp+0x3c],0x4
1055f6e1:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1055f6e5:	c7 44 24 34 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x34],0x10aca5b4
1055f6ed:	74 0b                                           	je     0x1055f6fa
1055f6ef:	6a 00                                           	push   0x0
1055f6f1:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1055f6f5:	e8 96 93 3c 00                                  	call   0x10928a90
1055f6fa:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1055f6fe:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1055f702:	2b c8                                           	sub    ecx,eax
1055f704:	83 e1 fe                                        	and    ecx,0xfffffffe
1055f707:	83 f9 02                                        	cmp    ecx,0x2
1055f70a:	7e 0d                                           	jle    0x1055f719
1055f70c:	85 c0                                           	test   eax,eax
1055f70e:	74 09                                           	je     0x1055f719
1055f710:	50                                              	push   eax
1055f711:	e8 7a 97 3b 00                                  	call   0x10918e90
1055f716:	83 c4 04                                        	add    esp,0x4
1055f719:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1055f71d:	2b d7                                           	sub    edx,edi
1055f71f:	83 e2 fe                                        	and    edx,0xfffffffe
1055f722:	83 fa 02                                        	cmp    edx,0x2
1055f725:	7e 0d                                           	jle    0x1055f734
1055f727:	85 ff                                           	test   edi,edi
1055f729:	74 09                                           	je     0x1055f734
1055f72b:	57                                              	push   edi
1055f72c:	e8 5f 97 3b 00                                  	call   0x10918e90
1055f731:	83 c4 04                                        	add    esp,0x4
1055f734:	5f                                              	pop    edi
1055f735:	8b c6                                           	mov    eax,esi
1055f737:	5e                                              	pop    esi
1055f738:	5b                                              	pop    ebx
1055f739:	81 c4 68 04 00 00                               	add    esp,0x468
1055f73f:	c3                                              	ret
