# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aa7e0 (ScriptCore.CASUtils::CASUtils_CompleteDelayedModelSwapImpl)
Paired Ghidra pseudocode: 005AA7E0_ScriptCore_CASUtils_CASUtils_CompleteDelayedModelSwapImpl.c
Window: [0x005aa7e0, 0x005aa9e0) (512 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aa9e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aa7e0: 55 8b ec 83 e4 f0 83 ec 64 53 56 57 e8 7f cd 38
005aa7f0: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 80 d7 38 00
005aa800: 8b d8 85 db 0f 84 7f 01 00 00 a1 fc a0 1e 01 50
005aa810: 8b cb e8 49 9a 38 00 8b f0 85 f6 0f 84 68 01 00
005aa820: 00 8b 4e 34 f6 c1 03 75 09 8b 7e 34 89 7c 24 1c
005aa830: eb 0c c7 44 24 1c 00 00 00 00 8b 7c 24 1c 57 8d
005aa840: 4e 30 e8 69 11 4f 00 8b 56 20 8b 46 24 8b 4e 28
005aa850: 89 56 10 8b 56 2c 89 46 14 89 4e 18 89 56 1c a1
005aa860: 84 d4 1d 01 50 8b cb e8 f4 99 38 00 85 c0 0f 84
005aa870: c4 00 00 00 85 ff 0f 84 bc 00 00 00 8b 50 08 8d
005aa880: 48 08 8b 42 20 ff d0 8b f8 85 ff 74 08 8b 17 8b
005aa890: 02 8b cf ff d0 57 53 6a 13 e8 22 ae 38 00 83 c4
005aa8a0: 0c 8d 4c 24 18 c7 44 24 18 00 00 00 00 e8 3e 56
005aa8b0: 0e 00 8b 4c 24 1c 50 e8 c4 b5 03 00 84 c0 75 49
005aa8c0: 6a 00 6a 00 6a 00 6a 00 68 d4 f8 fd 00 6a 14 e8
005aa8d0: 2c 9c f3 ff 8b d8 83 c4 18 85 db 74 12 8d 4f 28
005aa8e0: e8 6b ae fc ff 50 8b cb e8 63 9f fc ff eb 02 33
005aa8f0: c0 50 8d 4c 24 1c e8 b5 a6 2c 00 8b 4c 24 18 51
005aa900: 8b 4c 24 20 e8 17 b5 03 00 8b 54 24 18 8b 4d 0c
005aa910: 52 8b 55 08 8d 47 08 50 51 52 e8 b1 8b 0e 00 83
005aa920: c4 10 8d 4c 24 18 e8 b5 b9 19 00 85 ff 74 09 8b
005aa930: 07 8b 50 04 8b cf ff d2 8b 0d 84 4c 1d 01 85 c9
005aa940: 74 10 8b 11 68 a0 b3 d4 00 8d 46 34 50 8b 42 3c
005aa950: ff d0 8b 4e 34 85 c9 74 19 8b 56 34 f6 c2 03 75
005aa960: 11 8b 4e 34 8b 01 8b 50 04 ff d2 c7 46 34 00 00
005aa970: 00 00 33 d2 89 56 34 33 c0 33 c9 89 46 20 89 4e
005aa980: 24 33 ff 89 56 28 89 7e 2c 8b 45 08 8b 4d 0c 8d
005aa990: 54 24 20 52 c7 44 24 24 20 11 21 76 89 44 24 2c
005aa9a0: 89 4c 24 30 c7 44 24 28 70 68 15 01 c6 44 24 34
005aa9b0: 00 e8 ca 89 0e 00 8b 4c 24 28 83 c4 04 85 c9 74
005aa9c0: 0b 8b 01 8b 00 8d 54 24 30 52 ff d0 5f 5e 5b 8b
005aa9d0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005aa7e0 <.text+0x1a97e0>:
  5aa7e0:	55                                              	push   ebp
  5aa7e1:	8b ec                                           	mov    ebp,esp
  5aa7e3:	83 e4 f0                                        	and    esp,0xfffffff0
  5aa7e6:	83 ec 64                                        	sub    esp,0x64
  5aa7e9:	53                                              	push   ebx
  5aa7ea:	56                                              	push   esi
  5aa7eb:	57                                              	push   edi
  5aa7ec:	e8 7f cd 38 00                                  	call   0x937570
  5aa7f1:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  5aa7f4:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  5aa7f7:	51                                              	push   ecx
  5aa7f8:	52                                              	push   edx
  5aa7f9:	8b c8                                           	mov    ecx,eax
  5aa7fb:	e8 80 d7 38 00                                  	call   0x937f80
  5aa800:	8b d8                                           	mov    ebx,eax
  5aa802:	85 db                                           	test   ebx,ebx
  5aa804:	0f 84 7f 01 00 00                               	je     0x5aa989
  5aa80a:	a1 fc a0 1e 01                                  	mov    eax,ds:0x11ea0fc
  5aa80f:	50                                              	push   eax
  5aa810:	8b cb                                           	mov    ecx,ebx
  5aa812:	e8 49 9a 38 00                                  	call   0x934260
  5aa817:	8b f0                                           	mov    esi,eax
  5aa819:	85 f6                                           	test   esi,esi
  5aa81b:	0f 84 68 01 00 00                               	je     0x5aa989
  5aa821:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  5aa824:	f6 c1 03                                        	test   cl,0x3
  5aa827:	75 09                                           	jne    0x5aa832
  5aa829:	8b 7e 34                                        	mov    edi,DWORD PTR [esi+0x34]
  5aa82c:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  5aa830:	eb 0c                                           	jmp    0x5aa83e
  5aa832:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  5aa83a:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  5aa83e:	57                                              	push   edi
  5aa83f:	8d 4e 30                                        	lea    ecx,[esi+0x30]
  5aa842:	e8 69 11 4f 00                                  	call   0xa9b9b0
  5aa847:	8b 56 20                                        	mov    edx,DWORD PTR [esi+0x20]
  5aa84a:	8b 46 24                                        	mov    eax,DWORD PTR [esi+0x24]
  5aa84d:	8b 4e 28                                        	mov    ecx,DWORD PTR [esi+0x28]
  5aa850:	89 56 10                                        	mov    DWORD PTR [esi+0x10],edx
  5aa853:	8b 56 2c                                        	mov    edx,DWORD PTR [esi+0x2c]
  5aa856:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
  5aa859:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
  5aa85c:	89 56 1c                                        	mov    DWORD PTR [esi+0x1c],edx
  5aa85f:	a1 84 d4 1d 01                                  	mov    eax,ds:0x11dd484
  5aa864:	50                                              	push   eax
  5aa865:	8b cb                                           	mov    ecx,ebx
  5aa867:	e8 f4 99 38 00                                  	call   0x934260
  5aa86c:	85 c0                                           	test   eax,eax
  5aa86e:	0f 84 c4 00 00 00                               	je     0x5aa938
  5aa874:	85 ff                                           	test   edi,edi
  5aa876:	0f 84 bc 00 00 00                               	je     0x5aa938
  5aa87c:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5aa87f:	8d 48 08                                        	lea    ecx,[eax+0x8]
  5aa882:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  5aa885:	ff d0                                           	call   eax
  5aa887:	8b f8                                           	mov    edi,eax
  5aa889:	85 ff                                           	test   edi,edi
  5aa88b:	74 08                                           	je     0x5aa895
  5aa88d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5aa88f:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5aa891:	8b cf                                           	mov    ecx,edi
  5aa893:	ff d0                                           	call   eax
  5aa895:	57                                              	push   edi
  5aa896:	53                                              	push   ebx
  5aa897:	6a 13                                           	push   0x13
  5aa899:	e8 22 ae 38 00                                  	call   0x9356c0
  5aa89e:	83 c4 0c                                        	add    esp,0xc
  5aa8a1:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5aa8a5:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  5aa8ad:	e8 3e 56 0e 00                                  	call   0x68fef0
  5aa8b2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5aa8b6:	50                                              	push   eax
  5aa8b7:	e8 c4 b5 03 00                                  	call   0x5e5e80
  5aa8bc:	84 c0                                           	test   al,al
  5aa8be:	75 49                                           	jne    0x5aa909
  5aa8c0:	6a 00                                           	push   0x0
  5aa8c2:	6a 00                                           	push   0x0
  5aa8c4:	6a 00                                           	push   0x0
  5aa8c6:	6a 00                                           	push   0x0
  5aa8c8:	68 d4 f8 fd 00                                  	push   0xfdf8d4
  5aa8cd:	6a 14                                           	push   0x14
  5aa8cf:	e8 2c 9c f3 ff                                  	call   0x4e4500
  5aa8d4:	8b d8                                           	mov    ebx,eax
  5aa8d6:	83 c4 18                                        	add    esp,0x18
  5aa8d9:	85 db                                           	test   ebx,ebx
  5aa8db:	74 12                                           	je     0x5aa8ef
  5aa8dd:	8d 4f 28                                        	lea    ecx,[edi+0x28]
  5aa8e0:	e8 6b ae fc ff                                  	call   0x575750
  5aa8e5:	50                                              	push   eax
  5aa8e6:	8b cb                                           	mov    ecx,ebx
  5aa8e8:	e8 63 9f fc ff                                  	call   0x574850
  5aa8ed:	eb 02                                           	jmp    0x5aa8f1
  5aa8ef:	33 c0                                           	xor    eax,eax
  5aa8f1:	50                                              	push   eax
  5aa8f2:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5aa8f6:	e8 b5 a6 2c 00                                  	call   0x874fb0
  5aa8fb:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5aa8ff:	51                                              	push   ecx
  5aa900:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5aa904:	e8 17 b5 03 00                                  	call   0x5e5e20
  5aa909:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5aa90d:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  5aa910:	52                                              	push   edx
  5aa911:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  5aa914:	8d 47 08                                        	lea    eax,[edi+0x8]
  5aa917:	50                                              	push   eax
  5aa918:	51                                              	push   ecx
  5aa919:	52                                              	push   edx
  5aa91a:	e8 b1 8b 0e 00                                  	call   0x6934d0
  5aa91f:	83 c4 10                                        	add    esp,0x10
  5aa922:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5aa926:	e8 b5 b9 19 00                                  	call   0x7462e0
  5aa92b:	85 ff                                           	test   edi,edi
  5aa92d:	74 09                                           	je     0x5aa938
  5aa92f:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5aa931:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5aa934:	8b cf                                           	mov    ecx,edi
  5aa936:	ff d2                                           	call   edx
  5aa938:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  5aa93e:	85 c9                                           	test   ecx,ecx
  5aa940:	74 10                                           	je     0x5aa952
  5aa942:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5aa944:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  5aa949:	8d 46 34                                        	lea    eax,[esi+0x34]
  5aa94c:	50                                              	push   eax
  5aa94d:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  5aa950:	ff d0                                           	call   eax
  5aa952:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  5aa955:	85 c9                                           	test   ecx,ecx
  5aa957:	74 19                                           	je     0x5aa972
  5aa959:	8b 56 34                                        	mov    edx,DWORD PTR [esi+0x34]
  5aa95c:	f6 c2 03                                        	test   dl,0x3
  5aa95f:	75 11                                           	jne    0x5aa972
  5aa961:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  5aa964:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5aa966:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5aa969:	ff d2                                           	call   edx
  5aa96b:	c7 46 34 00 00 00 00                            	mov    DWORD PTR [esi+0x34],0x0
  5aa972:	33 d2                                           	xor    edx,edx
  5aa974:	89 56 34                                        	mov    DWORD PTR [esi+0x34],edx
  5aa977:	33 c0                                           	xor    eax,eax
  5aa979:	33 c9                                           	xor    ecx,ecx
  5aa97b:	89 46 20                                        	mov    DWORD PTR [esi+0x20],eax
  5aa97e:	89 4e 24                                        	mov    DWORD PTR [esi+0x24],ecx
  5aa981:	33 ff                                           	xor    edi,edi
  5aa983:	89 56 28                                        	mov    DWORD PTR [esi+0x28],edx
  5aa986:	89 7e 2c                                        	mov    DWORD PTR [esi+0x2c],edi
  5aa989:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  5aa98c:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  5aa98f:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  5aa993:	52                                              	push   edx
  5aa994:	c7 44 24 24 20 11 21 76                         	mov    DWORD PTR [esp+0x24],0x76211120
  5aa99c:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  5aa9a0:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  5aa9a4:	c7 44 24 28 70 68 15 01                         	mov    DWORD PTR [esp+0x28],0x1156870
  5aa9ac:	c6 44 24 34 00                                  	mov    BYTE PTR [esp+0x34],0x0
  5aa9b1:	e8 ca 89 0e 00                                  	call   0x693380
  5aa9b6:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  5aa9ba:	83 c4 04                                        	add    esp,0x4
  5aa9bd:	85 c9                                           	test   ecx,ecx
  5aa9bf:	74 0b                                           	je     0x5aa9cc
  5aa9c1:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5aa9c3:	8b 00                                           	mov    eax,DWORD PTR [eax]
  5aa9c5:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  5aa9c9:	52                                              	push   edx
  5aa9ca:	ff d0                                           	call   eax
  5aa9cc:	5f                                              	pop    edi
  5aa9cd:	5e                                              	pop    esi
  5aa9ce:	5b                                              	pop    ebx
  5aa9cf:	8b e5                                           	mov    esp,ebp
  5aa9d1:	5d                                              	pop    ebp
  5aa9d2:	c3                                              	ret
  5aa9d3:	cc                                              	int3
  5aa9d4:	cc                                              	int3
  5aa9d5:	cc                                              	int3
  5aa9d6:	cc                                              	int3
  5aa9d7:	cc                                              	int3
  5aa9d8:	cc                                              	int3
  5aa9d9:	cc                                              	int3
  5aa9da:	cc                                              	int3
  5aa9db:	cc                                              	int3
  5aa9dc:	cc                                              	int3
  5aa9dd:	cc                                              	int3
  5aa9de:	cc                                              	int3
  5aa9df:	cc                                              	int3
