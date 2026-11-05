# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055f740 (Simulator_CreateExportFileImpl)
Paired Ghidra pseudocode: 1055F740_Simulator_CreateExportFileImpl.c
Window: [0x1055f740, 0x1055f9d0) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055f9d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055f740: 81 ec 68 04 00 00 56 e8 d4 b9 ff ff 8b 8c 24 74
1055f750: 04 00 00 8b 10 8b 52 58 51 8b c8 ff d2 8b f0 85
1055f760: f6 75 08 5e 81 c4 68 04 00 00 c3 53 57 e8 4e 22
1055f770: fc ff 8b 10 8b c8 8b 42 24 ff d0 50 8d 4c 24 68
1055f780: e8 0b 2c 3c 00 8d 4c 24 64 e8 52 f5 4c 00 50 e8
1055f790: 7c 27 3b 00 8b 8c 24 7c 04 00 00 83 c4 04 c7 01
1055f7a0: 00 00 00 00 e8 77 b9 ff ff 6a ff 8d 4c 24 14 8b
1055f7b0: d8 e8 2a db 3c 00 6a 00 8d 4c 24 14 e8 1f db 3c
1055f7c0: 00 bf 44 82 ca 10 8d 4c 24 10 c7 44 24 20 68 f5
1055f7d0: b1 10 89 7c 24 14 89 7c 24 18 c7 44 24 1c 46 82
1055f7e0: ca 10 e8 19 db 3c 00 50 56 8d 54 24 1c 68 44 f5
1055f7f0: b1 10 52 e8 f8 b7 b0 ff 8b 44 24 24 83 c4 10 6a
1055f800: 00 50 8d 4c 24 6c e8 15 2e 3c 00 8d 4c 24 64 e8
1055f810: cc f4 4c 00 8b f0 6a 00 56 c7 44 24 38 1c f5 b1
1055f820: 10 89 7c 24 2c 89 7c 24 30 c7 44 24 34 46 82 ca
1055f830: 10 e8 aa 11 3b 00 83 c4 08 84 c0 0f 84 84 00 00
1055f840: 00 8b 4c 24 18 8b 7c 24 14 51 57 8d 4c 24 2c e8
1055f850: 6c 00 ac ff 6a 00 6a 00 6a 00 6a 00 68 f4 f4 b1
1055f860: 10 68 28 02 00 00 e8 45 96 3b 00 83 c4 18 85 c0
1055f870: 74 0c 56 8b c8 e8 b6 0f 3b 00 8b f0 eb 02 33 f6
1055f880: 8b 16 8b 42 4c 6a 00 6a 01 6a 03 6a 02 8b ce ff
1055f890: d0 84 c0 74 18 8b 13 8b 82 c8 00 00 00 6a 47 56
1055f8a0: 8b cb ff d0 8b 8c 24 78 04 00 00 89 01 8b 94 24
1055f8b0: 78 04 00 00 83 3a 00 75 5c 8b 06 8b 10 6a 01 8b
1055f8c0: ce ff d2 eb 50 68 cc f4 b1 10 6a ff 8d 44 24 5c
1055f8d0: 68 00 f4 b1 10 50 e8 d5 74 3c 00 8d 4c 24 34 83
1055f8e0: c4 10 3b c1 74 0c 8b 50 04 8b 00 52 50 e8 ce ff
1055f8f0: ab ff 8b 4c 24 5c 8b 44 24 54 2b c8 83 e1 fe 83
1055f900: f9 02 7e 0d 85 c0 74 09 50 e8 82 95 3b 00 83 c4
1055f910: 04 8b 7c 24 14 6a 01 6a 10 8d 54 24 2c 52 6a 09
1055f920: 6a 13 8d 4c 24 48 c7 44 24 48 b4 a5 ac 10 66 c7
1055f930: 44 24 52 13 00 66 c7 44 24 50 0b 00 e8 4f 92 3c
1055f940: 00 c7 44 24 0c 00 00 00 00 e8 d2 b7 ff ff 8b 10
1055f950: 8b 52 50 8d 4c 24 0c 51 8d 4c 24 38 51 8b c8 ff
1055f960: d2 f6 44 24 3c 04 8b 74 24 0c c7 44 24 34 b4 a5
1055f970: ac 10 74 0b 6a 00 8d 4c 24 38 e8 11 91 3c 00 8b
1055f980: 4c 24 2c 8b 44 24 24 2b c8 83 e1 fe 83 f9 02 7e
1055f990: 0d 85 c0 74 09 50 e8 f5 94 3b 00 83 c4 04 8b 54
1055f9a0: 24 1c 2b d7 83 e2 fe 83 fa 02 7e 0d 85 ff 74 09
1055f9b0: 57 e8 da 94 3b 00 83 c4 04 5f 5b 8b c6 5e 81 c4
1055f9c0: 68 04 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055f740 <.text+0x55e740>:
1055f740:	81 ec 68 04 00 00                               	sub    esp,0x468
1055f746:	56                                              	push   esi
1055f747:	e8 d4 b9 ff ff                                  	call   0x1055b120
1055f74c:	8b 8c 24 74 04 00 00                            	mov    ecx,DWORD PTR [esp+0x474]
1055f753:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f755:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1055f758:	51                                              	push   ecx
1055f759:	8b c8                                           	mov    ecx,eax
1055f75b:	ff d2                                           	call   edx
1055f75d:	8b f0                                           	mov    esi,eax
1055f75f:	85 f6                                           	test   esi,esi
1055f761:	75 08                                           	jne    0x1055f76b
1055f763:	5e                                              	pop    esi
1055f764:	81 c4 68 04 00 00                               	add    esp,0x468
1055f76a:	c3                                              	ret
1055f76b:	53                                              	push   ebx
1055f76c:	57                                              	push   edi
1055f76d:	e8 4e 22 fc ff                                  	call   0x105219c0
1055f772:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f774:	8b c8                                           	mov    ecx,eax
1055f776:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
1055f779:	ff d0                                           	call   eax
1055f77b:	50                                              	push   eax
1055f77c:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
1055f780:	e8 0b 2c 3c 00                                  	call   0x10922390
1055f785:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1055f789:	e8 52 f5 4c 00                                  	call   0x10a2ece0
1055f78e:	50                                              	push   eax
1055f78f:	e8 7c 27 3b 00                                  	call   0x10911f10
1055f794:	8b 8c 24 7c 04 00 00                            	mov    ecx,DWORD PTR [esp+0x47c]
1055f79b:	83 c4 04                                        	add    esp,0x4
1055f79e:	c7 01 00 00 00 00                               	mov    DWORD PTR [ecx],0x0
1055f7a4:	e8 77 b9 ff ff                                  	call   0x1055b120
1055f7a9:	6a ff                                           	push   0xffffffff
1055f7ab:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1055f7af:	8b d8                                           	mov    ebx,eax
1055f7b1:	e8 2a db 3c 00                                  	call   0x1092d2e0
1055f7b6:	6a 00                                           	push   0x0
1055f7b8:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1055f7bc:	e8 1f db 3c 00                                  	call   0x1092d2e0
1055f7c1:	bf 44 82 ca 10                                  	mov    edi,0x10ca8244
1055f7c6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1055f7ca:	c7 44 24 20 68 f5 b1 10                         	mov    DWORD PTR [esp+0x20],0x10b1f568
1055f7d2:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1055f7d6:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
1055f7da:	c7 44 24 1c 46 82 ca 10                         	mov    DWORD PTR [esp+0x1c],0x10ca8246
1055f7e2:	e8 19 db 3c 00                                  	call   0x1092d300
1055f7e7:	50                                              	push   eax
1055f7e8:	56                                              	push   esi
1055f7e9:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
1055f7ed:	68 44 f5 b1 10                                  	push   0x10b1f544
1055f7f2:	52                                              	push   edx
1055f7f3:	e8 f8 b7 b0 ff                                  	call   0x1006aff0
1055f7f8:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1055f7fc:	83 c4 10                                        	add    esp,0x10
1055f7ff:	6a 00                                           	push   0x0
1055f801:	50                                              	push   eax
1055f802:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
1055f806:	e8 15 2e 3c 00                                  	call   0x10922620
1055f80b:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
1055f80f:	e8 cc f4 4c 00                                  	call   0x10a2ece0
1055f814:	8b f0                                           	mov    esi,eax
1055f816:	6a 00                                           	push   0x0
1055f818:	56                                              	push   esi
1055f819:	c7 44 24 38 1c f5 b1 10                         	mov    DWORD PTR [esp+0x38],0x10b1f51c
1055f821:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
1055f825:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1055f829:	c7 44 24 34 46 82 ca 10                         	mov    DWORD PTR [esp+0x34],0x10ca8246
1055f831:	e8 aa 11 3b 00                                  	call   0x109109e0
1055f836:	83 c4 08                                        	add    esp,0x8
1055f839:	84 c0                                           	test   al,al
1055f83b:	0f 84 84 00 00 00                               	je     0x1055f8c5
1055f841:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055f845:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1055f849:	51                                              	push   ecx
1055f84a:	57                                              	push   edi
1055f84b:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
1055f84f:	e8 6c 00 ac ff                                  	call   0x1001f8c0
1055f854:	6a 00                                           	push   0x0
1055f856:	6a 00                                           	push   0x0
1055f858:	6a 00                                           	push   0x0
1055f85a:	6a 00                                           	push   0x0
1055f85c:	68 f4 f4 b1 10                                  	push   0x10b1f4f4
1055f861:	68 28 02 00 00                                  	push   0x228
1055f866:	e8 45 96 3b 00                                  	call   0x10918eb0
1055f86b:	83 c4 18                                        	add    esp,0x18
1055f86e:	85 c0                                           	test   eax,eax
1055f870:	74 0c                                           	je     0x1055f87e
1055f872:	56                                              	push   esi
1055f873:	8b c8                                           	mov    ecx,eax
1055f875:	e8 b6 0f 3b 00                                  	call   0x10910830
1055f87a:	8b f0                                           	mov    esi,eax
1055f87c:	eb 02                                           	jmp    0x1055f880
1055f87e:	33 f6                                           	xor    esi,esi
1055f880:	8b 16                                           	mov    edx,DWORD PTR [esi]
1055f882:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
1055f885:	6a 00                                           	push   0x0
1055f887:	6a 01                                           	push   0x1
1055f889:	6a 03                                           	push   0x3
1055f88b:	6a 02                                           	push   0x2
1055f88d:	8b ce                                           	mov    ecx,esi
1055f88f:	ff d0                                           	call   eax
1055f891:	84 c0                                           	test   al,al
1055f893:	74 18                                           	je     0x1055f8ad
1055f895:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1055f897:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
1055f89d:	6a 47                                           	push   0x47
1055f89f:	56                                              	push   esi
1055f8a0:	8b cb                                           	mov    ecx,ebx
1055f8a2:	ff d0                                           	call   eax
1055f8a4:	8b 8c 24 78 04 00 00                            	mov    ecx,DWORD PTR [esp+0x478]
1055f8ab:	89 01                                           	mov    DWORD PTR [ecx],eax
1055f8ad:	8b 94 24 78 04 00 00                            	mov    edx,DWORD PTR [esp+0x478]
1055f8b4:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
1055f8b7:	75 5c                                           	jne    0x1055f915
1055f8b9:	8b 06                                           	mov    eax,DWORD PTR [esi]
1055f8bb:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f8bd:	6a 01                                           	push   0x1
1055f8bf:	8b ce                                           	mov    ecx,esi
1055f8c1:	ff d2                                           	call   edx
1055f8c3:	eb 50                                           	jmp    0x1055f915
1055f8c5:	68 cc f4 b1 10                                  	push   0x10b1f4cc
1055f8ca:	6a ff                                           	push   0xffffffff
1055f8cc:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
1055f8d0:	68 00 f4 b1 10                                  	push   0x10b1f400
1055f8d5:	50                                              	push   eax
1055f8d6:	e8 d5 74 3c 00                                  	call   0x10926db0
1055f8db:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1055f8df:	83 c4 10                                        	add    esp,0x10
1055f8e2:	3b c1                                           	cmp    eax,ecx
1055f8e4:	74 0c                                           	je     0x1055f8f2
1055f8e6:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1055f8e9:	8b 00                                           	mov    eax,DWORD PTR [eax]
1055f8eb:	52                                              	push   edx
1055f8ec:	50                                              	push   eax
1055f8ed:	e8 ce ff ab ff                                  	call   0x1001f8c0
1055f8f2:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
1055f8f6:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
1055f8fa:	2b c8                                           	sub    ecx,eax
1055f8fc:	83 e1 fe                                        	and    ecx,0xfffffffe
1055f8ff:	83 f9 02                                        	cmp    ecx,0x2
1055f902:	7e 0d                                           	jle    0x1055f911
1055f904:	85 c0                                           	test   eax,eax
1055f906:	74 09                                           	je     0x1055f911
1055f908:	50                                              	push   eax
1055f909:	e8 82 95 3b 00                                  	call   0x10918e90
1055f90e:	83 c4 04                                        	add    esp,0x4
1055f911:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1055f915:	6a 01                                           	push   0x1
1055f917:	6a 10                                           	push   0x10
1055f919:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
1055f91d:	52                                              	push   edx
1055f91e:	6a 09                                           	push   0x9
1055f920:	6a 13                                           	push   0x13
1055f922:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
1055f926:	c7 44 24 48 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x48],0x10aca5b4
1055f92e:	66 c7 44 24 52 13 00                            	mov    WORD PTR [esp+0x52],0x13
1055f935:	66 c7 44 24 50 0b 00                            	mov    WORD PTR [esp+0x50],0xb
1055f93c:	e8 4f 92 3c 00                                  	call   0x10928b90
1055f941:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1055f949:	e8 d2 b7 ff ff                                  	call   0x1055b120
1055f94e:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f950:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1055f953:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1055f957:	51                                              	push   ecx
1055f958:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1055f95c:	51                                              	push   ecx
1055f95d:	8b c8                                           	mov    ecx,eax
1055f95f:	ff d2                                           	call   edx
1055f961:	f6 44 24 3c 04                                  	test   BYTE PTR [esp+0x3c],0x4
1055f966:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1055f96a:	c7 44 24 34 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x34],0x10aca5b4
1055f972:	74 0b                                           	je     0x1055f97f
1055f974:	6a 00                                           	push   0x0
1055f976:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1055f97a:	e8 11 91 3c 00                                  	call   0x10928a90
1055f97f:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1055f983:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1055f987:	2b c8                                           	sub    ecx,eax
1055f989:	83 e1 fe                                        	and    ecx,0xfffffffe
1055f98c:	83 f9 02                                        	cmp    ecx,0x2
1055f98f:	7e 0d                                           	jle    0x1055f99e
1055f991:	85 c0                                           	test   eax,eax
1055f993:	74 09                                           	je     0x1055f99e
1055f995:	50                                              	push   eax
1055f996:	e8 f5 94 3b 00                                  	call   0x10918e90
1055f99b:	83 c4 04                                        	add    esp,0x4
1055f99e:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1055f9a2:	2b d7                                           	sub    edx,edi
1055f9a4:	83 e2 fe                                        	and    edx,0xfffffffe
1055f9a7:	83 fa 02                                        	cmp    edx,0x2
1055f9aa:	7e 0d                                           	jle    0x1055f9b9
1055f9ac:	85 ff                                           	test   edi,edi
1055f9ae:	74 09                                           	je     0x1055f9b9
1055f9b0:	57                                              	push   edi
1055f9b1:	e8 da 94 3b 00                                  	call   0x10918e90
1055f9b6:	83 c4 04                                        	add    esp,0x4
1055f9b9:	5f                                              	pop    edi
1055f9ba:	5b                                              	pop    ebx
1055f9bb:	8b c6                                           	mov    eax,esi
1055f9bd:	5e                                              	pop    esi
1055f9be:	81 c4 68 04 00 00                               	add    esp,0x468
1055f9c4:	c3                                              	ret
1055f9c5:	cc                                              	int3
1055f9c6:	cc                                              	int3
1055f9c7:	cc                                              	int3
1055f9c8:	cc                                              	int3
1055f9c9:	cc                                              	int3
1055f9ca:	cc                                              	int3
1055f9cb:	cc                                              	int3
1055f9cc:	cc                                              	int3
1055f9cd:	cc                                              	int3
1055f9ce:	cc                                              	int3
1055f9cf:	cc                                              	int3
