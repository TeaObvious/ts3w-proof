# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073c890 (ScriptCore.CacheManager::CacheManager_ReadDatabaseChecksum)
Paired Ghidra pseudocode: 0073C890_ScriptCore_CacheManager_CacheManager_ReadDatabaseChecksum.c
Window: [0x0073c890, 0x0073c9e0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073c9e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073c890: 83 ec 28 53 8b 5c 24 38 55 8b 6c 24 40 33 c0 56
0073c8a0: 57 8b 7c 24 40 89 07 89 47 04 89 03 89 43 04 89
0073c8b0: 45 00 e8 c9 35 d7 ff 8b f0 85 f6 74 7c e8 ce ca
0073c8c0: 02 00 8b 4c 24 3c 8b 10 8b 52 58 51 8b c8 ff d2
0073c8d0: 50 e8 ea 37 09 00 89 54 24 18 83 c4 04 89 44 24
0073c8e0: 10 c7 44 24 18 84 35 b4 82 c7 44 24 1c 00 00 00
0073c8f0: 00 8b 06 8b 50 44 8d 4c 24 10 51 8b ce ff d2 85
0073c900: c0 74 36 6a 00 6a 01 6a 06 6a 01 8d 4c 24 50 51
0073c910: c7 44 24 54 00 00 00 00 8b 10 8b 52 34 8d 4c 24
0073c920: 24 51 8b c8 ff d2 84 c0 8b 4c 24 40 75 15 85 c9
0073c930: 74 07 8b 01 8b 50 08 ff d2 5f 5e 5d 32 c0 5b 83
0073c940: c4 28 c3 8b 01 8b 50 18 6a 01 ff d2 50 8d 4c 24
0073c950: 28 e8 8a ca 09 00 8b 44 24 30 8b 4c 24 28 50 57
0073c960: 51 e8 4a 11 da ff 83 c4 0c 8d 4c 24 20 50 e8 7d
0073c970: b0 09 00 8b 54 24 30 8b 44 24 28 52 53 50 e8 2d
0073c980: 11 da ff 83 c4 0c 8d 4c 24 20 50 e8 60 b0 09 00
0073c990: 8b 4c 24 30 8b 54 24 28 51 55 52 e8 e0 0f da ff
0073c9a0: 83 c4 0c 8d 4c 24 20 50 e8 43 b0 09 00 8b 4c 24
0073c9b0: 40 8b 01 8b 50 20 ff d2 8a 5c 24 34 8d 4c 24 20
0073c9c0: e8 cb af 09 00 8b 4c 24 40 85 c9 74 07 8b 01 8b
0073c9d0: 50 08 ff d2 5f 5e 5d 8a c3 5b 83 c4 28 c3 cc cc

LINEAR DISASSEMBLY
0073c890 <.text+0x33b890>:
  73c890:	83 ec 28                                        	sub    esp,0x28
  73c893:	53                                              	push   ebx
  73c894:	8b 5c 24 38                                     	mov    ebx,DWORD PTR [esp+0x38]
  73c898:	55                                              	push   ebp
  73c899:	8b 6c 24 40                                     	mov    ebp,DWORD PTR [esp+0x40]
  73c89d:	33 c0                                           	xor    eax,eax
  73c89f:	56                                              	push   esi
  73c8a0:	57                                              	push   edi
  73c8a1:	8b 7c 24 40                                     	mov    edi,DWORD PTR [esp+0x40]
  73c8a5:	89 07                                           	mov    DWORD PTR [edi],eax
  73c8a7:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
  73c8aa:	89 03                                           	mov    DWORD PTR [ebx],eax
  73c8ac:	89 43 04                                        	mov    DWORD PTR [ebx+0x4],eax
  73c8af:	89 45 00                                        	mov    DWORD PTR [ebp+0x0],eax
  73c8b2:	e8 c9 35 d7 ff                                  	call   0x4afe80
  73c8b7:	8b f0                                           	mov    esi,eax
  73c8b9:	85 f6                                           	test   esi,esi
  73c8bb:	74 7c                                           	je     0x73c939
  73c8bd:	e8 ce ca 02 00                                  	call   0x769390
  73c8c2:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  73c8c6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73c8c8:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  73c8cb:	51                                              	push   ecx
  73c8cc:	8b c8                                           	mov    ecx,eax
  73c8ce:	ff d2                                           	call   edx
  73c8d0:	50                                              	push   eax
  73c8d1:	e8 ea 37 09 00                                  	call   0x7d00c0
  73c8d6:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  73c8da:	83 c4 04                                        	add    esp,0x4
  73c8dd:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  73c8e1:	c7 44 24 18 84 35 b4 82                         	mov    DWORD PTR [esp+0x18],0x82b43584
  73c8e9:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  73c8f1:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73c8f3:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  73c8f6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73c8fa:	51                                              	push   ecx
  73c8fb:	8b ce                                           	mov    ecx,esi
  73c8fd:	ff d2                                           	call   edx
  73c8ff:	85 c0                                           	test   eax,eax
  73c901:	74 36                                           	je     0x73c939
  73c903:	6a 00                                           	push   0x0
  73c905:	6a 01                                           	push   0x1
  73c907:	6a 06                                           	push   0x6
  73c909:	6a 01                                           	push   0x1
  73c90b:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  73c90f:	51                                              	push   ecx
  73c910:	c7 44 24 54 00 00 00 00                         	mov    DWORD PTR [esp+0x54],0x0
  73c918:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73c91a:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  73c91d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  73c921:	51                                              	push   ecx
  73c922:	8b c8                                           	mov    ecx,eax
  73c924:	ff d2                                           	call   edx
  73c926:	84 c0                                           	test   al,al
  73c928:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  73c92c:	75 15                                           	jne    0x73c943
  73c92e:	85 c9                                           	test   ecx,ecx
  73c930:	74 07                                           	je     0x73c939
  73c932:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73c934:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  73c937:	ff d2                                           	call   edx
  73c939:	5f                                              	pop    edi
  73c93a:	5e                                              	pop    esi
  73c93b:	5d                                              	pop    ebp
  73c93c:	32 c0                                           	xor    al,al
  73c93e:	5b                                              	pop    ebx
  73c93f:	83 c4 28                                        	add    esp,0x28
  73c942:	c3                                              	ret
  73c943:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73c945:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  73c948:	6a 01                                           	push   0x1
  73c94a:	ff d2                                           	call   edx
  73c94c:	50                                              	push   eax
  73c94d:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  73c951:	e8 8a ca 09 00                                  	call   0x7d93e0
  73c956:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  73c95a:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  73c95e:	50                                              	push   eax
  73c95f:	57                                              	push   edi
  73c960:	51                                              	push   ecx
  73c961:	e8 4a 11 da ff                                  	call   0x4ddab0
  73c966:	83 c4 0c                                        	add    esp,0xc
  73c969:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  73c96d:	50                                              	push   eax
  73c96e:	e8 7d b0 09 00                                  	call   0x7d79f0
  73c973:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  73c977:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  73c97b:	52                                              	push   edx
  73c97c:	53                                              	push   ebx
  73c97d:	50                                              	push   eax
  73c97e:	e8 2d 11 da ff                                  	call   0x4ddab0
  73c983:	83 c4 0c                                        	add    esp,0xc
  73c986:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  73c98a:	50                                              	push   eax
  73c98b:	e8 60 b0 09 00                                  	call   0x7d79f0
  73c990:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  73c994:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  73c998:	51                                              	push   ecx
  73c999:	55                                              	push   ebp
  73c99a:	52                                              	push   edx
  73c99b:	e8 e0 0f da ff                                  	call   0x4dd980
  73c9a0:	83 c4 0c                                        	add    esp,0xc
  73c9a3:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  73c9a7:	50                                              	push   eax
  73c9a8:	e8 43 b0 09 00                                  	call   0x7d79f0
  73c9ad:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  73c9b1:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73c9b3:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
  73c9b6:	ff d2                                           	call   edx
  73c9b8:	8a 5c 24 34                                     	mov    bl,BYTE PTR [esp+0x34]
  73c9bc:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  73c9c0:	e8 cb af 09 00                                  	call   0x7d7990
  73c9c5:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  73c9c9:	85 c9                                           	test   ecx,ecx
  73c9cb:	74 07                                           	je     0x73c9d4
  73c9cd:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73c9cf:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  73c9d2:	ff d2                                           	call   edx
  73c9d4:	5f                                              	pop    edi
  73c9d5:	5e                                              	pop    esi
  73c9d6:	5d                                              	pop    ebp
  73c9d7:	8a c3                                           	mov    al,bl
  73c9d9:	5b                                              	pop    ebx
  73c9da:	83 c4 28                                        	add    esp,0x28
  73c9dd:	c3                                              	ret
  73c9de:	cc                                              	int3
  73c9df:	cc                                              	int3
