# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007788d0 (ScriptCore.ThumbnailManager::ThumbnailManager_GenerateSelfPhotoPicture)
Paired Ghidra pseudocode: 007788D0_ScriptCore_ThumbnailManager_ThumbnailManager_GenerateSelfPhotoPicture.c
Window: [0x007788d0, 0x00778a00) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00778a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007788d0: 83 ec 24 53 55 56 57 8b 3d 30 ec 1e 01 89 7c 24
007788e0: 10 e8 aa 0a ff ff 8b f0 8b 06 8b 90 18 01 00 00
007788f0: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 a8 00 00 00
00778900: 6a 00 6a 00 6a 00 6a 00 68 44 e2 00 01 6a 38 e8
00778910: ec bb d6 ff 83 c4 18 85 c0 74 7c 8b 4c 24 4c 51
00778920: 53 55 8b c8 e8 47 f3 ff ff 8b f8 85 ff 74 09 8b
00778930: 17 8b 42 04 8b cf ff d0 8b 4c 24 48 8b 54 24 44
00778940: 8b 44 24 40 57 51 8b 4c 24 44 52 8b 54 24 44 50
00778950: 51 8b 4c 24 24 52 e8 a5 6a 5e 00 84 c0 74 3c 8b
00778960: 4c 24 4c 8b 06 8b 90 20 01 00 00 6a 00 51 6a ff
00778970: 53 55 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce
00778980: ff d2 85 ff 74 6e 8b 07 8b 50 08 8b cf ff d2 5f
00778990: 5e 5d 5b 83 c4 24 c3 33 ff eb 9d 85 ff 74 09 8b
007789a0: 07 8b 50 08 8b cf ff d2 8b 54 24 4c 6a 00 8d 4c
007789b0: 24 18 51 53 bf f4 a6 fb 00 89 7c 24 20 c6 44 24
007789c0: 30 00 66 c7 44 24 2a 01 00 66 c7 44 24 28 00 00
007789d0: 8b 06 8b 80 30 01 00 00 55 52 8b ce ff d0 f6 44
007789e0: 24 1c 04 89 7c 24 14 74 0b 6a 00 8d 4c 24 18 e8
007789f0: 6c cd d7 ff 5f 5e 5d 5b 83 c4 24 c3 cc cc cc cc

LINEAR DISASSEMBLY
007788d0 <.text+0x3778d0>:
  7788d0:	83 ec 24                                        	sub    esp,0x24
  7788d3:	53                                              	push   ebx
  7788d4:	55                                              	push   ebp
  7788d5:	56                                              	push   esi
  7788d6:	57                                              	push   edi
  7788d7:	8b 3d 30 ec 1e 01                               	mov    edi,DWORD PTR ds:0x11eec30
  7788dd:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  7788e1:	e8 aa 0a ff ff                                  	call   0x769390
  7788e6:	8b f0                                           	mov    esi,eax
  7788e8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7788ea:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  7788f0:	8b ce                                           	mov    ecx,esi
  7788f2:	ff d2                                           	call   edx
  7788f4:	85 ff                                           	test   edi,edi
  7788f6:	8b e8                                           	mov    ebp,eax
  7788f8:	8b da                                           	mov    ebx,edx
  7788fa:	0f 84 a8 00 00 00                               	je     0x7789a8
  778900:	6a 00                                           	push   0x0
  778902:	6a 00                                           	push   0x0
  778904:	6a 00                                           	push   0x0
  778906:	6a 00                                           	push   0x0
  778908:	68 44 e2 00 01                                  	push   0x100e244
  77890d:	6a 38                                           	push   0x38
  77890f:	e8 ec bb d6 ff                                  	call   0x4e4500
  778914:	83 c4 18                                        	add    esp,0x18
  778917:	85 c0                                           	test   eax,eax
  778919:	74 7c                                           	je     0x778997
  77891b:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  77891f:	51                                              	push   ecx
  778920:	53                                              	push   ebx
  778921:	55                                              	push   ebp
  778922:	8b c8                                           	mov    ecx,eax
  778924:	e8 47 f3 ff ff                                  	call   0x777c70
  778929:	8b f8                                           	mov    edi,eax
  77892b:	85 ff                                           	test   edi,edi
  77892d:	74 09                                           	je     0x778938
  77892f:	8b 17                                           	mov    edx,DWORD PTR [edi]
  778931:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  778934:	8b cf                                           	mov    ecx,edi
  778936:	ff d0                                           	call   eax
  778938:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  77893c:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  778940:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  778944:	57                                              	push   edi
  778945:	51                                              	push   ecx
  778946:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  77894a:	52                                              	push   edx
  77894b:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  77894f:	50                                              	push   eax
  778950:	51                                              	push   ecx
  778951:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  778955:	52                                              	push   edx
  778956:	e8 a5 6a 5e 00                                  	call   0xd5f400
  77895b:	84 c0                                           	test   al,al
  77895d:	74 3c                                           	je     0x77899b
  77895f:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  778963:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778965:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
  77896b:	6a 00                                           	push   0x0
  77896d:	51                                              	push   ecx
  77896e:	6a ff                                           	push   0xffffffff
  778970:	53                                              	push   ebx
  778971:	55                                              	push   ebp
  778972:	8b ce                                           	mov    ecx,esi
  778974:	ff d2                                           	call   edx
  778976:	8b 06                                           	mov    eax,DWORD PTR [esi]
  778978:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  77897e:	8b ce                                           	mov    ecx,esi
  778980:	ff d2                                           	call   edx
  778982:	85 ff                                           	test   edi,edi
  778984:	74 6e                                           	je     0x7789f4
  778986:	8b 07                                           	mov    eax,DWORD PTR [edi]
  778988:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  77898b:	8b cf                                           	mov    ecx,edi
  77898d:	ff d2                                           	call   edx
  77898f:	5f                                              	pop    edi
  778990:	5e                                              	pop    esi
  778991:	5d                                              	pop    ebp
  778992:	5b                                              	pop    ebx
  778993:	83 c4 24                                        	add    esp,0x24
  778996:	c3                                              	ret
  778997:	33 ff                                           	xor    edi,edi
  778999:	eb 9d                                           	jmp    0x778938
  77899b:	85 ff                                           	test   edi,edi
  77899d:	74 09                                           	je     0x7789a8
  77899f:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7789a1:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7789a4:	8b cf                                           	mov    ecx,edi
  7789a6:	ff d2                                           	call   edx
  7789a8:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  7789ac:	6a 00                                           	push   0x0
  7789ae:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7789b2:	51                                              	push   ecx
  7789b3:	53                                              	push   ebx
  7789b4:	bf f4 a6 fb 00                                  	mov    edi,0xfba6f4
  7789b9:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  7789bd:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
  7789c2:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
  7789c9:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
  7789d0:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7789d2:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
  7789d8:	55                                              	push   ebp
  7789d9:	52                                              	push   edx
  7789da:	8b ce                                           	mov    ecx,esi
  7789dc:	ff d0                                           	call   eax
  7789de:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  7789e3:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  7789e7:	74 0b                                           	je     0x7789f4
  7789e9:	6a 00                                           	push   0x0
  7789eb:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  7789ef:	e8 6c cd d7 ff                                  	call   0x4f5760
  7789f4:	5f                                              	pop    edi
  7789f5:	5e                                              	pop    esi
  7789f6:	5d                                              	pop    ebp
  7789f7:	5b                                              	pop    ebx
  7789f8:	83 c4 24                                        	add    esp,0x24
  7789fb:	c3                                              	ret
  7789fc:	cc                                              	int3
  7789fd:	cc                                              	int3
  7789fe:	cc                                              	int3
  7789ff:	cc                                              	int3
