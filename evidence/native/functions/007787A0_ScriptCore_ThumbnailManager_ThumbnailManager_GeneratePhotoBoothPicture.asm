# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007787a0 (ScriptCore.ThumbnailManager::ThumbnailManager_GeneratePhotoBoothPicture)
Paired Ghidra pseudocode: 007787A0_ScriptCore_ThumbnailManager_ThumbnailManager_GeneratePhotoBoothPicture.c
Window: [0x007787a0, 0x007788d0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x007788d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007787a0: 83 ec 24 53 55 56 57 8b 3d 30 ec 1e 01 89 7c 24
007787b0: 10 e8 da 0b ff ff 8b f0 8b 06 8b 90 18 01 00 00
007787c0: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 a8 00 00 00
007787d0: 6a 00 6a 00 6a 00 6a 00 68 44 e2 00 01 6a 38 e8
007787e0: 1c bd d6 ff 83 c4 18 85 c0 74 7c 8b 4c 24 4c 51
007787f0: 53 55 8b c8 e8 77 f4 ff ff 8b f8 85 ff 74 09 8b
00778800: 17 8b 42 04 8b cf ff d0 8b 4c 24 48 8b 54 24 44
00778810: 8b 44 24 40 57 51 8b 4c 24 44 52 8b 54 24 44 50
00778820: 51 8b 4c 24 24 52 e8 b5 66 5e 00 84 c0 74 3c 8b
00778830: 4c 24 4c 8b 06 8b 90 20 01 00 00 6a 00 51 6a ff
00778840: 53 55 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce
00778850: ff d2 85 ff 74 6e 8b 07 8b 50 08 8b cf ff d2 5f
00778860: 5e 5d 5b 83 c4 24 c3 33 ff eb 9d 85 ff 74 09 8b
00778870: 07 8b 50 08 8b cf ff d2 8b 54 24 4c 6a 00 8d 4c
00778880: 24 18 51 53 bf f4 a6 fb 00 89 7c 24 20 c6 44 24
00778890: 30 00 66 c7 44 24 2a 01 00 66 c7 44 24 28 00 00
007788a0: 8b 06 8b 80 30 01 00 00 55 52 8b ce ff d0 f6 44
007788b0: 24 1c 04 89 7c 24 14 74 0b 6a 00 8d 4c 24 18 e8
007788c0: 9c ce d7 ff 5f 5e 5d 5b 83 c4 24 c3 cc cc cc cc

LINEAR DISASSEMBLY
007787a0 <.text+0x3777a0>:
  7787a0:	83 ec 24                                        	sub    esp,0x24
  7787a3:	53                                              	push   ebx
  7787a4:	55                                              	push   ebp
  7787a5:	56                                              	push   esi
  7787a6:	57                                              	push   edi
  7787a7:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  7787ad:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  7787b1:	e8 da 0b ff ff                                  	call   0x769390
  7787b6:	8b f0                                           	mov    esi,eax
  7787b8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7787ba:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  7787c0:	8b ce                                           	mov    ecx,esi
  7787c2:	ff d2                                           	call   edx
  7787c4:	85 ff                                           	test   edi,edi
  7787c6:	8b e8                                           	mov    ebp,eax
  7787c8:	8b da                                           	mov    ebx,edx
  7787ca:	0f 84 a8 00 00 00                               	je     0x778878
  7787d0:	6a 00                                           	push   0x0
  7787d2:	6a 00                                           	push   0x0
  7787d4:	6a 00                                           	push   0x0
  7787d6:	6a 00                                           	push   0x0
  7787d8:	68 44 e2 00 01                                  	push   0x100e244
  7787dd:	6a 38                                           	push   0x38
  7787df:	e8 1c bd d6 ff                                  	call   0x4e4500
  7787e4:	83 c4 18                                        	add    esp,0x18
  7787e7:	85 c0                                           	test   eax,eax
  7787e9:	74 7c                                           	je     0x778867
  7787eb:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  7787ef:	51                                              	push   ecx
  7787f0:	53                                              	push   ebx
  7787f1:	55                                              	push   ebp
  7787f2:	8b c8                                           	mov    ecx,eax
  7787f4:	e8 77 f4 ff ff                                  	call   0x777c70
  7787f9:	8b f8                                           	mov    edi,eax
  7787fb:	85 ff                                           	test   edi,edi
  7787fd:	74 09                                           	je     0x778808
  7787ff:	8b 17                                           	mov    edx,DWORD PTR [edi]
  778801:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  778804:	8b cf                                           	mov    ecx,edi
  778806:	ff d0                                           	call   eax
  778808:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  77880c:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  778810:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  778814:	57                                              	push   edi
  778815:	51                                              	push   ecx
  778816:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  77881a:	52                                              	push   edx
  77881b:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  77881f:	50                                              	push   eax
  778820:	51                                              	push   ecx
  778821:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  778825:	52                                              	push   edx
  778826:	e8 b5 66 5e 00                                  	call   0xd5eee0
  77882b:	84 c0                                           	test   al,al
  77882d:	74 3c                                           	je     0x77886b
  77882f:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  778833:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778835:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
  77883b:	6a 00                                           	push   0x0
  77883d:	51                                              	push   ecx
  77883e:	6a ff                                           	push   0xffffffff
  778840:	53                                              	push   ebx
  778841:	55                                              	push   ebp
  778842:	8b ce                                           	mov    ecx,esi
  778844:	ff d2                                           	call   edx
  778846:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778848:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  77884e:	8b ce                                           	mov    ecx,esi
  778850:	ff d2                                           	call   edx
  778852:	85 ff                                           	test   edi,edi
  778854:	74 6e                                           	je     0x7788c4
  778856:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778858:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  77885b:	8b cf                                           	mov    ecx,edi
  77885d:	ff d2                                           	call   edx
  77885f:	5f                                              	pop    edi
  778860:	5e                                              	pop    esi
  778861:	5d                                              	pop    ebp
  778862:	5b                                              	pop    ebx
  778863:	83 c4 24                                        	add    esp,0x24
  778866:	c3                                              	ret
  778867:	33 ff                                           	xor    edi,edi
  778869:	eb 9d                                           	jmp    0x778808
  77886b:	85 ff                                           	test   edi,edi
  77886d:	74 09                                           	je     0x778878
  77886f:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778871:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  778874:	8b cf                                           	mov    ecx,edi
  778876:	ff d2                                           	call   edx
  778878:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  77887c:	6a 00                                           	push   0x0
  77887e:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  778882:	51                                              	push   ecx
  778883:	53                                              	push   ebx
  778884:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  778889:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  77888d:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
  778892:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
  778899:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
  7788a0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7788a2:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
  7788a8:	55                                              	push   ebp
  7788a9:	52                                              	push   edx
  7788aa:	8b ce                                           	mov    ecx,esi
  7788ac:	ff d0                                           	call   eax
  7788ae:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  7788b3:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7788b7:	74 0b                                           	je     0x7788c4
  7788b9:	6a 00                                           	push   0x0
  7788bb:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7788bf:	e8 9c ce d7 ff                                  	call   0x4f5760
  7788c4:	5f                                              	pop    edi
  7788c5:	5e                                              	pop    esi
  7788c6:	5d                                              	pop    ebp
  7788c7:	5b                                              	pop    ebx
  7788c8:	83 c4 24                                        	add    esp,0x24
  7788cb:	c3                                              	ret
  7788cc:	cc                                              	int3
  7788cd:	cc                                              	int3
  7788ce:	cc                                              	int3
  7788cf:	cc                                              	int3
