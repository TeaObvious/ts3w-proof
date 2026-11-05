# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10786530 (DownloadContent_ImportHouseholdContentsImpl)
Paired Ghidra pseudocode: 10786530_DownloadContent_ImportHouseholdContentsImpl.c
Window: [0x10786530, 0x10786840) (784 bytes; stop exclusive)
Next defined Ghidra entry: 0x10786840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10786530: 81 ec d4 00 00 00 53 56 e8 e3 4b dd ff 8b 35 94
10786540: de c8 10 8d 4c 24 20 8b d8 e8 22 43 e4 ff 8d 44
10786550: 24 20 50 8b ce e8 d6 a2 00 00 84 c0 75 14 8d 4c
10786560: 24 20 e8 99 43 e4 ff 5e 32 c0 5b 81 c4 d4 00 00
10786570: 00 c3 57 6a 00 8d 4c 24 60 e8 d2 35 e4 ff 8b b4
10786580: 24 e8 00 00 00 8b bc 24 e4 00 00 00 6a 00 56 57
10786590: 68 95 30 28 00 8d 4c 24 34 51 8d 4c 24 70 e8 bd
107865a0: 3d e4 ff 84 c0 75 1e 8d 4c 24 5c e8 50 32 e4 ff
107865b0: 8d 4c 24 24 e8 47 43 e4 ff 5f 5e 32 c0 5b 81 c4
107865c0: d4 00 00 00 c3 55 8b 6c 24 28 8d 54 24 10 52 8d
107865d0: 4c 24 1c c7 44 24 14 f8 8e b5 10 e8 30 12 fa ff
107865e0: 8d 44 24 18 50 8d 4c 24 64 e8 82 3f e4 ff 8d 4c
107865f0: 24 18 55 51 e8 07 34 00 00 83 c4 08 84 c0 75 30
10786600: 8b 44 24 18 85 c0 74 09 50 e8 82 28 19 00 83 c4
10786610: 04 8d 4c 24 60 e8 e6 31 e4 ff 8d 4c 24 28 e8 dd
10786620: 42 e4 ff 5d 5f 5e 32 c0 5b 81 c4 d4 00 00 00 c3
10786630: 8b 94 24 f0 00 00 00 52 8d 44 24 1c 50 53 e8 cd
10786640: e1 ff ff 83 c4 0c 84 c0 75 30 8b 44 24 18 85 c0
10786650: 74 09 50 e8 38 28 19 00 83 c4 04 8d 4c 24 60 e8
10786660: 9c 31 e4 ff 8d 4c 24 28 e8 93 42 e4 ff 5d 5f 5e
10786670: 32 c0 5b 81 c4 d4 00 00 00 c3 8d 4c 24 40 e8 fd
10786680: 86 01 00 56 57 33 ed 55 8d 4c 24 34 51 8d 4c 24
10786690: 50 e8 0a 87 01 00 84 c0 75 41 8b 44 24 40 3b c5
107866a0: 74 09 50 e8 e8 27 19 00 83 c4 04 8b 44 24 18 3b
107866b0: c5 74 09 50 e8 d7 27 19 00 83 c4 04 8d 4c 24 60
107866c0: e8 3b 31 e4 ff 8d 4c 24 28 e8 32 42 e4 ff 5d 5f
107866d0: 5e 32 c0 5b 81 c4 d4 00 00 00 c3 8b 4c 24 40 8b
107866e0: 44 24 44 8b 94 24 f8 00 00 00 52 2b c1 50 51 53
107866f0: e8 4b da ff ff 83 c4 10 84 c0 75 41 8b 44 24 40
10786700: 3b c5 74 09 50 e8 86 27 19 00 83 c4 04 8b 44 24
10786710: 18 3b c5 74 09 50 e8 75 27 19 00 83 c4 04 8d 4c
10786720: 24 60 e8 d9 30 e4 ff 8d 4c 24 28 e8 d0 41 e4 ff
10786730: 5d 5f 5e 32 c0 5b 81 c4 d4 00 00 00 c3 8d 44 24
10786740: 10 50 8d 4c 24 54 c7 44 24 14 44 8c b5 10 e8 bd
10786750: 10 fa ff 8d 4c 24 10 51 8d 4c 24 54 89 6c 24 14
10786760: 89 6c 24 18 e8 f7 05 8b ff 8b 94 24 f4 00 00 00
10786770: 52 8d 44 24 54 50 53 e8 74 e1 ff ff 83 c4 0c 84
10786780: c0 75 52 8b 44 24 50 3b c5 74 09 50 e8 ff 26 19
10786790: 00 83 c4 04 8b 44 24 40 3b c5 74 09 50 e8 ee 26
107867a0: 19 00 83 c4 04 8b 44 24 18 3b c5 74 09 50 e8 dd
107867b0: 26 19 00 83 c4 04 8d 4c 24 60 e8 41 30 e4 ff 8d
107867c0: 4c 24 28 e8 38 41 e4 ff 5d 5f 5e 32 c0 5b 81 c4
107867d0: d4 00 00 00 c3 8d 4c 24 28 51 8b 0d d8 e9 c6 10
107867e0: 56 57 e8 b9 48 91 ff 8b 44 24 50 3b c5 74 09 50
107867f0: e8 9b 26 19 00 83 c4 04 8b 44 24 40 3b c5 74 09
10786800: 50 e8 8a 26 19 00 83 c4 04 8b 44 24 18 3b c5 74
10786810: 09 50 e8 79 26 19 00 83 c4 04 8d 4c 24 60 e8 dd
10786820: 2f e4 ff 8d 4c 24 28 e8 d4 40 e4 ff 5d 5f 5e b0
10786830: 01 5b 81 c4 d4 00 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10786530 <.text+0x785530>:
10786530:	81 ec d4 00 00 00                               	sub    esp,0xd4
10786536:	53                                              	push   ebx
10786537:	56                                              	push   esi
10786538:	e8 e3 4b dd ff                                  	call   0x1055b120
1078653d:	8b 35 94 de c8 10                               	mov    esi,DWORD PTR ds:0x10c8de94
10786543:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10786547:	8b d8                                           	mov    ebx,eax
10786549:	e8 22 43 e4 ff                                  	call   0x105ca870
1078654e:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10786552:	50                                              	push   eax
10786553:	8b ce                                           	mov    ecx,esi
10786555:	e8 d6 a2 00 00                                  	call   0x10790830
1078655a:	84 c0                                           	test   al,al
1078655c:	75 14                                           	jne    0x10786572
1078655e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10786562:	e8 99 43 e4 ff                                  	call   0x105ca900
10786567:	5e                                              	pop    esi
10786568:	32 c0                                           	xor    al,al
1078656a:	5b                                              	pop    ebx
1078656b:	81 c4 d4 00 00 00                               	add    esp,0xd4
10786571:	c3                                              	ret
10786572:	57                                              	push   edi
10786573:	6a 00                                           	push   0x0
10786575:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10786579:	e8 d2 35 e4 ff                                  	call   0x105c9b50
1078657e:	8b b4 24 e8 00 00 00                            	mov    esi,DWORD PTR [esp+0xe8]
10786585:	8b bc 24 e4 00 00 00                            	mov    edi,DWORD PTR [esp+0xe4]
1078658c:	6a 00                                           	push   0x0
1078658e:	56                                              	push   esi
1078658f:	57                                              	push   edi
10786590:	68 95 30 28 00                                  	push   0x283095
10786595:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10786599:	51                                              	push   ecx
1078659a:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
1078659e:	e8 bd 3d e4 ff                                  	call   0x105ca360
107865a3:	84 c0                                           	test   al,al
107865a5:	75 1e                                           	jne    0x107865c5
107865a7:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
107865ab:	e8 50 32 e4 ff                                  	call   0x105c9800
107865b0:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
107865b4:	e8 47 43 e4 ff                                  	call   0x105ca900
107865b9:	5f                                              	pop    edi
107865ba:	5e                                              	pop    esi
107865bb:	32 c0                                           	xor    al,al
107865bd:	5b                                              	pop    ebx
107865be:	81 c4 d4 00 00 00                               	add    esp,0xd4
107865c4:	c3                                              	ret
107865c5:	55                                              	push   ebp
107865c6:	8b 6c 24 28                                     	mov    ebp,DWORD PTR [esp+0x28]
107865ca:	8d 54 24 10                                     	lea    edx,[esp+0x10]
107865ce:	52                                              	push   edx
107865cf:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
107865d3:	c7 44 24 14 f8 8e b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58ef8
107865db:	e8 30 12 fa ff                                  	call   0x10727810
107865e0:	8d 44 24 18                                     	lea    eax,[esp+0x18]
107865e4:	50                                              	push   eax
107865e5:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
107865e9:	e8 82 3f e4 ff                                  	call   0x105ca570
107865ee:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
107865f2:	55                                              	push   ebp
107865f3:	51                                              	push   ecx
107865f4:	e8 07 34 00 00                                  	call   0x10789a00
107865f9:	83 c4 08                                        	add    esp,0x8
107865fc:	84 c0                                           	test   al,al
107865fe:	75 30                                           	jne    0x10786630
10786600:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10786604:	85 c0                                           	test   eax,eax
10786606:	74 09                                           	je     0x10786611
10786608:	50                                              	push   eax
10786609:	e8 82 28 19 00                                  	call   0x10918e90
1078660e:	83 c4 04                                        	add    esp,0x4
10786611:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10786615:	e8 e6 31 e4 ff                                  	call   0x105c9800
1078661a:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1078661e:	e8 dd 42 e4 ff                                  	call   0x105ca900
10786623:	5d                                              	pop    ebp
10786624:	5f                                              	pop    edi
10786625:	5e                                              	pop    esi
10786626:	32 c0                                           	xor    al,al
10786628:	5b                                              	pop    ebx
10786629:	81 c4 d4 00 00 00                               	add    esp,0xd4
1078662f:	c3                                              	ret
10786630:	8b 94 24 f0 00 00 00                            	mov    edx,DWORD PTR [esp+0xf0]
10786637:	52                                              	push   edx
10786638:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1078663c:	50                                              	push   eax
1078663d:	53                                              	push   ebx
1078663e:	e8 cd e1 ff ff                                  	call   0x10784810
10786643:	83 c4 0c                                        	add    esp,0xc
10786646:	84 c0                                           	test   al,al
10786648:	75 30                                           	jne    0x1078667a
1078664a:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1078664e:	85 c0                                           	test   eax,eax
10786650:	74 09                                           	je     0x1078665b
10786652:	50                                              	push   eax
10786653:	e8 38 28 19 00                                  	call   0x10918e90
10786658:	83 c4 04                                        	add    esp,0x4
1078665b:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1078665f:	e8 9c 31 e4 ff                                  	call   0x105c9800
10786664:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10786668:	e8 93 42 e4 ff                                  	call   0x105ca900
1078666d:	5d                                              	pop    ebp
1078666e:	5f                                              	pop    edi
1078666f:	5e                                              	pop    esi
10786670:	32 c0                                           	xor    al,al
10786672:	5b                                              	pop    ebx
10786673:	81 c4 d4 00 00 00                               	add    esp,0xd4
10786679:	c3                                              	ret
1078667a:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
1078667e:	e8 fd 86 01 00                                  	call   0x1079ed80
10786683:	56                                              	push   esi
10786684:	57                                              	push   edi
10786685:	33 ed                                           	xor    ebp,ebp
10786687:	55                                              	push   ebp
10786688:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1078668c:	51                                              	push   ecx
1078668d:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10786691:	e8 0a 87 01 00                                  	call   0x1079eda0
10786696:	84 c0                                           	test   al,al
10786698:	75 41                                           	jne    0x107866db
1078669a:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1078669e:	3b c5                                           	cmp    eax,ebp
107866a0:	74 09                                           	je     0x107866ab
107866a2:	50                                              	push   eax
107866a3:	e8 e8 27 19 00                                  	call   0x10918e90
107866a8:	83 c4 04                                        	add    esp,0x4
107866ab:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
107866af:	3b c5                                           	cmp    eax,ebp
107866b1:	74 09                                           	je     0x107866bc
107866b3:	50                                              	push   eax
107866b4:	e8 d7 27 19 00                                  	call   0x10918e90
107866b9:	83 c4 04                                        	add    esp,0x4
107866bc:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
107866c0:	e8 3b 31 e4 ff                                  	call   0x105c9800
107866c5:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
107866c9:	e8 32 42 e4 ff                                  	call   0x105ca900
107866ce:	5d                                              	pop    ebp
107866cf:	5f                                              	pop    edi
107866d0:	5e                                              	pop    esi
107866d1:	32 c0                                           	xor    al,al
107866d3:	5b                                              	pop    ebx
107866d4:	81 c4 d4 00 00 00                               	add    esp,0xd4
107866da:	c3                                              	ret
107866db:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
107866df:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
107866e3:	8b 94 24 f8 00 00 00                            	mov    edx,DWORD PTR [esp+0xf8]
107866ea:	52                                              	push   edx
107866eb:	2b c1                                           	sub    eax,ecx
107866ed:	50                                              	push   eax
107866ee:	51                                              	push   ecx
107866ef:	53                                              	push   ebx
107866f0:	e8 4b da ff ff                                  	call   0x10784140
107866f5:	83 c4 10                                        	add    esp,0x10
107866f8:	84 c0                                           	test   al,al
107866fa:	75 41                                           	jne    0x1078673d
107866fc:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10786700:	3b c5                                           	cmp    eax,ebp
10786702:	74 09                                           	je     0x1078670d
10786704:	50                                              	push   eax
10786705:	e8 86 27 19 00                                  	call   0x10918e90
1078670a:	83 c4 04                                        	add    esp,0x4
1078670d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10786711:	3b c5                                           	cmp    eax,ebp
10786713:	74 09                                           	je     0x1078671e
10786715:	50                                              	push   eax
10786716:	e8 75 27 19 00                                  	call   0x10918e90
1078671b:	83 c4 04                                        	add    esp,0x4
1078671e:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
10786722:	e8 d9 30 e4 ff                                  	call   0x105c9800
10786727:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1078672b:	e8 d0 41 e4 ff                                  	call   0x105ca900
10786730:	5d                                              	pop    ebp
10786731:	5f                                              	pop    edi
10786732:	5e                                              	pop    esi
10786733:	32 c0                                           	xor    al,al
10786735:	5b                                              	pop    ebx
10786736:	81 c4 d4 00 00 00                               	add    esp,0xd4
1078673c:	c3                                              	ret
1078673d:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10786741:	50                                              	push   eax
10786742:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10786746:	c7 44 24 14 44 8c b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58c44
1078674e:	e8 bd 10 fa ff                                  	call   0x10727810
10786753:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10786757:	51                                              	push   ecx
10786758:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
1078675c:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
10786760:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
10786764:	e8 f7 05 8b ff                                  	call   0x10036d60
10786769:	8b 94 24 f4 00 00 00                            	mov    edx,DWORD PTR [esp+0xf4]
10786770:	52                                              	push   edx
10786771:	8d 44 24 54                                     	lea    eax,[esp+0x54]
10786775:	50                                              	push   eax
10786776:	53                                              	push   ebx
10786777:	e8 74 e1 ff ff                                  	call   0x107848f0
1078677c:	83 c4 0c                                        	add    esp,0xc
1078677f:	84 c0                                           	test   al,al
10786781:	75 52                                           	jne    0x107867d5
10786783:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
10786787:	3b c5                                           	cmp    eax,ebp
10786789:	74 09                                           	je     0x10786794
1078678b:	50                                              	push   eax
1078678c:	e8 ff 26 19 00                                  	call   0x10918e90
10786791:	83 c4 04                                        	add    esp,0x4
10786794:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
10786798:	3b c5                                           	cmp    eax,ebp
1078679a:	74 09                                           	je     0x107867a5
1078679c:	50                                              	push   eax
1078679d:	e8 ee 26 19 00                                  	call   0x10918e90
107867a2:	83 c4 04                                        	add    esp,0x4
107867a5:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
107867a9:	3b c5                                           	cmp    eax,ebp
107867ab:	74 09                                           	je     0x107867b6
107867ad:	50                                              	push   eax
107867ae:	e8 dd 26 19 00                                  	call   0x10918e90
107867b3:	83 c4 04                                        	add    esp,0x4
107867b6:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
107867ba:	e8 41 30 e4 ff                                  	call   0x105c9800
107867bf:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
107867c3:	e8 38 41 e4 ff                                  	call   0x105ca900
107867c8:	5d                                              	pop    ebp
107867c9:	5f                                              	pop    edi
107867ca:	5e                                              	pop    esi
107867cb:	32 c0                                           	xor    al,al
107867cd:	5b                                              	pop    ebx
107867ce:	81 c4 d4 00 00 00                               	add    esp,0xd4
107867d4:	c3                                              	ret
107867d5:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
107867d9:	51                                              	push   ecx
107867da:	8b 0d d8 e9 c6 10                               	mov    ecx,DWORD PTR ds:0x10c6e9d8
107867e0:	56                                              	push   esi
107867e1:	57                                              	push   edi
107867e2:	e8 b9 48 91 ff                                  	call   0x1009b0a0
107867e7:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
107867eb:	3b c5                                           	cmp    eax,ebp
107867ed:	74 09                                           	je     0x107867f8
107867ef:	50                                              	push   eax
107867f0:	e8 9b 26 19 00                                  	call   0x10918e90
107867f5:	83 c4 04                                        	add    esp,0x4
107867f8:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
107867fc:	3b c5                                           	cmp    eax,ebp
107867fe:	74 09                                           	je     0x10786809
10786800:	50                                              	push   eax
10786801:	e8 8a 26 19 00                                  	call   0x10918e90
10786806:	83 c4 04                                        	add    esp,0x4
10786809:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1078680d:	3b c5                                           	cmp    eax,ebp
1078680f:	74 09                                           	je     0x1078681a
10786811:	50                                              	push   eax
10786812:	e8 79 26 19 00                                  	call   0x10918e90
10786817:	83 c4 04                                        	add    esp,0x4
1078681a:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1078681e:	e8 dd 2f e4 ff                                  	call   0x105c9800
10786823:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10786827:	e8 d4 40 e4 ff                                  	call   0x105ca900
1078682c:	5d                                              	pop    ebp
1078682d:	5f                                              	pop    edi
1078682e:	5e                                              	pop    esi
1078682f:	b0 01                                           	mov    al,0x1
10786831:	5b                                              	pop    ebx
10786832:	81 c4 d4 00 00 00                               	add    esp,0xd4
10786838:	c3                                              	ret
10786839:	cc                                              	int3
1078683a:	cc                                              	int3
1078683b:	cc                                              	int3
1078683c:	cc                                              	int3
1078683d:	cc                                              	int3
1078683e:	cc                                              	int3
1078683f:	cc                                              	int3
