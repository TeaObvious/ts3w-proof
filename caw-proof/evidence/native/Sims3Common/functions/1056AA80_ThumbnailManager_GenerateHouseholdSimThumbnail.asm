# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056aa80 (ThumbnailManager_GenerateHouseholdSimThumbnail)
Paired Ghidra pseudocode: 1056AA80_ThumbnailManager_GenerateHouseholdSimThumbnail.c
Window: [0x1056aa80, 0x1056ac20) (416 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056ac20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056aa80: 83 ec 34 83 7c 24 64 00 57 8b 3d 50 11 c7 10 89
1056aa90: 7c 24 04 75 48 85 ff 0f 84 76 01 00 00 8b 44 24
1056aaa0: 64 8b 4c 24 60 8b 54 24 5c 6a 00 50 8b 44 24 60
1056aab0: 51 8b 4c 24 60 52 8b 54 24 60 50 8b 44 24 60 51
1056aac0: 52 50 8d 4c 24 28 51 8d 4c 24 60 e8 e0 30 ff ff
1056aad0: 50 8b cf e8 78 f6 dc ff 5f 83 c4 34 c3 53 55 56
1056aae0: e8 3b 06 ff ff 8b f0 8b 16 8b 82 18 01 00 00 8b
1056aaf0: ce ff d0 85 ff 8b e8 8b da 0f 84 c5 00 00 00 6a
1056ab00: 00 6a 00 6a 00 6a 00 68 5c 0a b2 10 6a 38 e8 9d
1056ab10: e3 3a 00 83 c4 18 85 c0 0f 84 95 00 00 00 8b 4c
1056ab20: 24 74 51 53 55 8b c8 e8 c4 f1 ff ff 8b f8 85 ff
1056ab30: 74 09 8b 17 8b 42 04 8b cf ff d0 8b 4c 24 70 8b
1056ab40: 54 24 6c 8b 44 24 68 57 51 8b 4c 24 6c 52 8b 54
1056ab50: 24 6c 50 8b 44 24 6c 51 8b 4c 24 6c 52 50 51 8d
1056ab60: 54 24 34 52 8d 4c 24 6c e8 43 30 ff ff 8b 4c 24
1056ab70: 30 50 e8 d9 f5 dc ff 84 c0 74 3c 8b 4c 24 74 8b
1056ab80: 06 8b 90 20 01 00 00 6a 00 51 6a ff 53 55 8b ce
1056ab90: ff d2 8b 06 8b 90 1c 01 00 00 8b ce ff d2 85 ff
1056aba0: 74 6e 8b 07 8b 50 08 8b cf ff d2 5e 5d 5b 5f 83
1056abb0: c4 34 c3 33 ff eb 84 85 ff 74 09 8b 07 8b 50 08
1056abc0: 8b cf ff d2 8b 54 24 74 6a 00 8d 4c 24 28 51 53
1056abd0: bf b4 a5 ac 10 89 7c 24 30 c6 44 24 40 00 66 c7
1056abe0: 44 24 3a 01 00 66 c7 44 24 38 00 00 8b 06 8b 80
1056abf0: 30 01 00 00 55 52 8b ce ff d0 f6 44 24 2c 04 89
1056ac00: 7c 24 24 74 0b 6a 00 8d 4c 24 28 e8 80 de 3b 00
1056ac10: 5e 5d 5b 5f 83 c4 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056aa80 <.text+0x569a80>:
1056aa80:	83 ec 34                                        	sub    esp,0x34
1056aa83:	83 7c 24 64 00                                  	cmp    DWORD PTR [esp+0x64],0x0
1056aa88:	57                                              	push   edi
1056aa89:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056aa8f:	89 7c 24 04                                     	mov    DWORD PTR [esp+0x4],edi
1056aa93:	75 48                                           	jne    0x1056aadd
1056aa95:	85 ff                                           	test   edi,edi
1056aa97:	0f 84 76 01 00 00                               	je     0x1056ac13
1056aa9d:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
1056aaa1:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
1056aaa5:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
1056aaa9:	6a 00                                           	push   0x0
1056aaab:	50                                              	push   eax
1056aaac:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
1056aab0:	51                                              	push   ecx
1056aab1:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
1056aab5:	52                                              	push   edx
1056aab6:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
1056aaba:	50                                              	push   eax
1056aabb:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
1056aabf:	51                                              	push   ecx
1056aac0:	52                                              	push   edx
1056aac1:	50                                              	push   eax
1056aac2:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1056aac6:	51                                              	push   ecx
1056aac7:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
1056aacb:	e8 e0 30 ff ff                                  	call   0x1055dbb0
1056aad0:	50                                              	push   eax
1056aad1:	8b cf                                           	mov    ecx,edi
1056aad3:	e8 78 f6 dc ff                                  	call   0x1033a150
1056aad8:	5f                                              	pop    edi
1056aad9:	83 c4 34                                        	add    esp,0x34
1056aadc:	c3                                              	ret
1056aadd:	53                                              	push   ebx
1056aade:	55                                              	push   ebp
1056aadf:	56                                              	push   esi
1056aae0:	e8 3b 06 ff ff                                  	call   0x1055b120
1056aae5:	8b f0                                           	mov    esi,eax
1056aae7:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056aae9:	8b 82 18 01 00 00                               	mov    eax,DWORD PTR [edx+0x118]
1056aaef:	8b ce                                           	mov    ecx,esi
1056aaf1:	ff d0                                           	call   eax
1056aaf3:	85 ff                                           	test   edi,edi
1056aaf5:	8b e8                                           	mov    ebp,eax
1056aaf7:	8b da                                           	mov    ebx,edx
1056aaf9:	0f 84 c5 00 00 00                               	je     0x1056abc4
1056aaff:	6a 00                                           	push   0x0
1056ab01:	6a 00                                           	push   0x0
1056ab03:	6a 00                                           	push   0x0
1056ab05:	6a 00                                           	push   0x0
1056ab07:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056ab0c:	6a 38                                           	push   0x38
1056ab0e:	e8 9d e3 3a 00                                  	call   0x10918eb0
1056ab13:	83 c4 18                                        	add    esp,0x18
1056ab16:	85 c0                                           	test   eax,eax
1056ab18:	0f 84 95 00 00 00                               	je     0x1056abb3
1056ab1e:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
1056ab22:	51                                              	push   ecx
1056ab23:	53                                              	push   ebx
1056ab24:	55                                              	push   ebp
1056ab25:	8b c8                                           	mov    ecx,eax
1056ab27:	e8 c4 f1 ff ff                                  	call   0x10569cf0
1056ab2c:	8b f8                                           	mov    edi,eax
1056ab2e:	85 ff                                           	test   edi,edi
1056ab30:	74 09                                           	je     0x1056ab3b
1056ab32:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056ab34:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056ab37:	8b cf                                           	mov    ecx,edi
1056ab39:	ff d0                                           	call   eax
1056ab3b:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
1056ab3f:	8b 54 24 6c                                     	mov    edx,DWORD PTR [esp+0x6c]
1056ab43:	8b 44 24 68                                     	mov    eax,DWORD PTR [esp+0x68]
1056ab47:	57                                              	push   edi
1056ab48:	51                                              	push   ecx
1056ab49:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
1056ab4d:	52                                              	push   edx
1056ab4e:	8b 54 24 6c                                     	mov    edx,DWORD PTR [esp+0x6c]
1056ab52:	50                                              	push   eax
1056ab53:	8b 44 24 6c                                     	mov    eax,DWORD PTR [esp+0x6c]
1056ab57:	51                                              	push   ecx
1056ab58:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
1056ab5c:	52                                              	push   edx
1056ab5d:	50                                              	push   eax
1056ab5e:	51                                              	push   ecx
1056ab5f:	8d 54 24 34                                     	lea    edx,[esp+0x34]
1056ab63:	52                                              	push   edx
1056ab64:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
1056ab68:	e8 43 30 ff ff                                  	call   0x1055dbb0
1056ab6d:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1056ab71:	50                                              	push   eax
1056ab72:	e8 d9 f5 dc ff                                  	call   0x1033a150
1056ab77:	84 c0                                           	test   al,al
1056ab79:	74 3c                                           	je     0x1056abb7
1056ab7b:	8b 4c 24 74                                     	mov    ecx,DWORD PTR [esp+0x74]
1056ab7f:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056ab81:	8b 90 20 01 00 00                               	mov    edx,DWORD PTR [eax+0x120]
1056ab87:	6a 00                                           	push   0x0
1056ab89:	51                                              	push   ecx
1056ab8a:	6a ff                                           	push   0xffffffff
1056ab8c:	53                                              	push   ebx
1056ab8d:	55                                              	push   ebp
1056ab8e:	8b ce                                           	mov    ecx,esi
1056ab90:	ff d2                                           	call   edx
1056ab92:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056ab94:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056ab9a:	8b ce                                           	mov    ecx,esi
1056ab9c:	ff d2                                           	call   edx
1056ab9e:	85 ff                                           	test   edi,edi
1056aba0:	74 6e                                           	je     0x1056ac10
1056aba2:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056aba4:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056aba7:	8b cf                                           	mov    ecx,edi
1056aba9:	ff d2                                           	call   edx
1056abab:	5e                                              	pop    esi
1056abac:	5d                                              	pop    ebp
1056abad:	5b                                              	pop    ebx
1056abae:	5f                                              	pop    edi
1056abaf:	83 c4 34                                        	add    esp,0x34
1056abb2:	c3                                              	ret
1056abb3:	33 ff                                           	xor    edi,edi
1056abb5:	eb 84                                           	jmp    0x1056ab3b
1056abb7:	85 ff                                           	test   edi,edi
1056abb9:	74 09                                           	je     0x1056abc4
1056abbb:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056abbd:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056abc0:	8b cf                                           	mov    ecx,edi
1056abc2:	ff d2                                           	call   edx
1056abc4:	8b 54 24 74                                     	mov    edx,DWORD PTR [esp+0x74]
1056abc8:	6a 00                                           	push   0x0
1056abca:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1056abce:	51                                              	push   ecx
1056abcf:	53                                              	push   ebx
1056abd0:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056abd5:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
1056abd9:	c6 44 24 40 00                                  	mov    BYTE PTR [esp+0x40],0x0
1056abde:	66 c7 44 24 3a 01 00                            	mov    WORD PTR [esp+0x3a],0x1
1056abe5:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
1056abec:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056abee:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056abf4:	55                                              	push   ebp
1056abf5:	52                                              	push   edx
1056abf6:	8b ce                                           	mov    ecx,esi
1056abf8:	ff d0                                           	call   eax
1056abfa:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
1056abff:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
1056ac03:	74 0b                                           	je     0x1056ac10
1056ac05:	6a 00                                           	push   0x0
1056ac07:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1056ac0b:	e8 80 de 3b 00                                  	call   0x10928a90
1056ac10:	5e                                              	pop    esi
1056ac11:	5d                                              	pop    ebp
1056ac12:	5b                                              	pop    ebx
1056ac13:	5f                                              	pop    edi
1056ac14:	83 c4 34                                        	add    esp,0x34
1056ac17:	c3                                              	ret
1056ac18:	cc                                              	int3
1056ac19:	cc                                              	int3
1056ac1a:	cc                                              	int3
1056ac1b:	cc                                              	int3
1056ac1c:	cc                                              	int3
1056ac1d:	cc                                              	int3
1056ac1e:	cc                                              	int3
1056ac1f:	cc                                              	int3
