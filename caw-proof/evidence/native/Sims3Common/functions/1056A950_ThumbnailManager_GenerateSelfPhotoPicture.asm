# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056a950 (ThumbnailManager_GenerateSelfPhotoPicture)
Paired Ghidra pseudocode: 1056A950_ThumbnailManager_GenerateSelfPhotoPicture.c
Window: [0x1056a950, 0x1056aa80) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056aa80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056a950: 83 ec 24 53 55 56 57 8b 3d 50 11 c7 10 89 7c 24
1056a960: 10 e8 ba 07 ff ff 8b f0 8b 06 8b 90 18 01 00 00
1056a970: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 a8 00 00 00
1056a980: 6a 00 6a 00 6a 00 6a 00 68 5c 0a b2 10 6a 38 e8
1056a990: 1c e5 3a 00 83 c4 18 85 c0 74 7c 8b 4c 24 4c 51
1056a9a0: 53 55 8b c8 e8 47 f3 ff ff 8b f8 85 ff 74 09 8b
1056a9b0: 17 8b 42 04 8b cf ff d0 8b 4c 24 48 8b 54 24 44
1056a9c0: 8b 44 24 40 57 51 8b 4c 24 44 52 8b 54 24 44 50
1056a9d0: 51 8b 4c 24 24 52 e8 55 d5 dc ff 84 c0 74 3c 8b
1056a9e0: 4c 24 4c 8b 06 8b 90 20 01 00 00 6a 00 51 6a ff
1056a9f0: 53 55 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce
1056aa00: ff d2 85 ff 74 6e 8b 07 8b 50 08 8b cf ff d2 5f
1056aa10: 5e 5d 5b 83 c4 24 c3 33 ff eb 9d 85 ff 74 09 8b
1056aa20: 07 8b 50 08 8b cf ff d2 8b 54 24 4c 6a 00 8d 4c
1056aa30: 24 18 51 53 bf b4 a5 ac 10 89 7c 24 20 c6 44 24
1056aa40: 30 00 66 c7 44 24 2a 01 00 66 c7 44 24 28 00 00
1056aa50: 8b 06 8b 80 30 01 00 00 55 52 8b ce ff d0 f6 44
1056aa60: 24 1c 04 89 7c 24 14 74 0b 6a 00 8d 4c 24 18 e8
1056aa70: 1c e0 3b 00 5f 5e 5d 5b 83 c4 24 c3 cc cc cc cc

LINEAR DISASSEMBLY
1056a950 <.text+0x569950>:
1056a950:	83 ec 24                                        	sub    esp,0x24
1056a953:	53                                              	push   ebx
1056a954:	55                                              	push   ebp
1056a955:	56                                              	push   esi
1056a956:	57                                              	push   edi
1056a957:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056a95d:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
1056a961:	e8 ba 07 ff ff                                  	call   0x1055b120
1056a966:	8b f0                                           	mov    esi,eax
1056a968:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a96a:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056a970:	8b ce                                           	mov    ecx,esi
1056a972:	ff d2                                           	call   edx
1056a974:	85 ff                                           	test   edi,edi
1056a976:	8b e8                                           	mov    ebp,eax
1056a978:	8b da                                           	mov    ebx,edx
1056a97a:	0f 84 a8 00 00 00                               	je     0x1056aa28
1056a980:	6a 00                                           	push   0x0
1056a982:	6a 00                                           	push   0x0
1056a984:	6a 00                                           	push   0x0
1056a986:	6a 00                                           	push   0x0
1056a988:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056a98d:	6a 38                                           	push   0x38
1056a98f:	e8 1c e5 3a 00                                  	call   0x10918eb0
1056a994:	83 c4 18                                        	add    esp,0x18
1056a997:	85 c0                                           	test   eax,eax
1056a999:	74 7c                                           	je     0x1056aa17
1056a99b:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a99f:	51                                              	push   ecx
1056a9a0:	53                                              	push   ebx
1056a9a1:	55                                              	push   ebp
1056a9a2:	8b c8                                           	mov    ecx,eax
1056a9a4:	e8 47 f3 ff ff                                  	call   0x10569cf0
1056a9a9:	8b f8                                           	mov    edi,eax
1056a9ab:	85 ff                                           	test   edi,edi
1056a9ad:	74 09                                           	je     0x1056a9b8
1056a9af:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056a9b1:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056a9b4:	8b cf                                           	mov    ecx,edi
1056a9b6:	ff d0                                           	call   eax
1056a9b8:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
1056a9bc:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a9c0:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
1056a9c4:	57                                              	push   edi
1056a9c5:	51                                              	push   ecx
1056a9c6:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1056a9ca:	52                                              	push   edx
1056a9cb:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056a9cf:	50                                              	push   eax
1056a9d0:	51                                              	push   ecx
1056a9d1:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1056a9d5:	52                                              	push   edx
1056a9d6:	e8 55 d5 dc ff                                  	call   0x10337f30
1056a9db:	84 c0                                           	test   al,al
1056a9dd:	74 3c                                           	je     0x1056aa1b
1056a9df:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1056a9e3:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a9e5:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
1056a9eb:	6a 00                                           	push   0x0
1056a9ed:	51                                              	push   ecx
1056a9ee:	6a ff                                           	push   0xffffffff
1056a9f0:	53                                              	push   ebx
1056a9f1:	55                                              	push   ebp
1056a9f2:	8b ce                                           	mov    ecx,esi
1056a9f4:	ff d2                                           	call   edx
1056a9f6:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056a9f8:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056a9fe:	8b ce                                           	mov    ecx,esi
1056aa00:	ff d2                                           	call   edx
1056aa02:	85 ff                                           	test   edi,edi
1056aa04:	74 6e                                           	je     0x1056aa74
1056aa06:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056aa08:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056aa0b:	8b cf                                           	mov    ecx,edi
1056aa0d:	ff d2                                           	call   edx
1056aa0f:	5f                                              	pop    edi
1056aa10:	5e                                              	pop    esi
1056aa11:	5d                                              	pop    ebp
1056aa12:	5b                                              	pop    ebx
1056aa13:	83 c4 24                                        	add    esp,0x24
1056aa16:	c3                                              	ret
1056aa17:	33 ff                                           	xor    edi,edi
1056aa19:	eb 9d                                           	jmp    0x1056a9b8
1056aa1b:	85 ff                                           	test   edi,edi
1056aa1d:	74 09                                           	je     0x1056aa28
1056aa1f:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056aa21:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056aa24:	8b cf                                           	mov    ecx,edi
1056aa26:	ff d2                                           	call   edx
1056aa28:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
1056aa2c:	6a 00                                           	push   0x0
1056aa2e:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056aa32:	51                                              	push   ecx
1056aa33:	53                                              	push   ebx
1056aa34:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056aa39:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056aa3d:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056aa42:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056aa49:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056aa50:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056aa52:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056aa58:	55                                              	push   ebp
1056aa59:	52                                              	push   edx
1056aa5a:	8b ce                                           	mov    ecx,esi
1056aa5c:	ff d0                                           	call   eax
1056aa5e:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056aa63:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056aa67:	74 0b                                           	je     0x1056aa74
1056aa69:	6a 00                                           	push   0x0
1056aa6b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056aa6f:	e8 1c e0 3b 00                                  	call   0x10928a90
1056aa74:	5f                                              	pop    edi
1056aa75:	5e                                              	pop    esi
1056aa76:	5d                                              	pop    ebp
1056aa77:	5b                                              	pop    ebx
1056aa78:	83 c4 24                                        	add    esp,0x24
1056aa7b:	c3                                              	ret
1056aa7c:	cc                                              	int3
1056aa7d:	cc                                              	int3
1056aa7e:	cc                                              	int3
1056aa7f:	cc                                              	int3
