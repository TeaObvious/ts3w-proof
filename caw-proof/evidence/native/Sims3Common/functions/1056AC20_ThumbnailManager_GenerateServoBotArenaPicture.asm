# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056ac20 (ThumbnailManager_GenerateServoBotArenaPicture)
Paired Ghidra pseudocode: 1056AC20_ThumbnailManager_GenerateServoBotArenaPicture.c
Window: [0x1056ac20, 0x1056ad50) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056ad50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056ac20: 83 ec 24 53 55 56 57 8b 3d 50 11 c7 10 89 7c 24
1056ac30: 10 e8 ea 04 ff ff 8b f0 8b 06 8b 90 18 01 00 00
1056ac40: 8b ce ff d2 85 ff 8b e8 8b da 0f 84 9e 00 00 00
1056ac50: 6a 00 6a 00 6a 00 6a 00 68 5c 0a b2 10 6a 38 e8
1056ac60: 4c e2 3a 00 83 c4 18 85 c0 74 72 8b 4c 24 44 51
1056ac70: 53 55 8b c8 e8 77 f0 ff ff 8b f8 85 ff 74 09 8b
1056ac80: 17 8b 42 04 8b cf ff d0 8b 4c 24 40 8b 54 24 3c
1056ac90: 8b 44 24 38 57 51 8b 4c 24 18 52 50 e8 2f c9 dc
1056aca0: ff 84 c0 74 3c 8b 44 24 44 8b 16 8b 92 20 01 00
1056acb0: 00 6a 00 50 6a ff 53 55 8b ce ff d2 8b 06 8b 90
1056acc0: 1c 01 00 00 8b ce ff d2 85 ff 74 6e 8b 07 8b 50
1056acd0: 08 8b cf ff d2 5f 5e 5d 5b 83 c4 24 c3 33 ff eb
1056ace0: a7 85 ff 74 09 8b 07 8b 50 08 8b cf ff d2 8b 54
1056acf0: 24 44 6a 00 8d 4c 24 18 51 53 bf b4 a5 ac 10 89
1056ad00: 7c 24 20 c6 44 24 30 00 66 c7 44 24 2a 01 00 66
1056ad10: c7 44 24 28 00 00 8b 06 8b 80 30 01 00 00 55 52
1056ad20: 8b ce ff d0 f6 44 24 1c 04 89 7c 24 14 74 0b 6a
1056ad30: 00 8d 4c 24 18 e8 56 dd 3b 00 5f 5e 5d 5b 83 c4
1056ad40: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056ac20 <.text+0x569c20>:
1056ac20:	83 ec 24                                        	sub    esp,0x24
1056ac23:	53                                              	push   ebx
1056ac24:	55                                              	push   ebp
1056ac25:	56                                              	push   esi
1056ac26:	57                                              	push   edi
1056ac27:	8b 3d 50 11 c7 10                               	mov    edi,DWORD PTR ds:0x10c71150
1056ac2d:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
1056ac31:	e8 ea 04 ff ff                                  	call   0x1055b120
1056ac36:	8b f0                                           	mov    esi,eax
1056ac38:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056ac3a:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
1056ac40:	8b ce                                           	mov    ecx,esi
1056ac42:	ff d2                                           	call   edx
1056ac44:	85 ff                                           	test   edi,edi
1056ac46:	8b e8                                           	mov    ebp,eax
1056ac48:	8b da                                           	mov    ebx,edx
1056ac4a:	0f 84 9e 00 00 00                               	je     0x1056acee
1056ac50:	6a 00                                           	push   0x0
1056ac52:	6a 00                                           	push   0x0
1056ac54:	6a 00                                           	push   0x0
1056ac56:	6a 00                                           	push   0x0
1056ac58:	68 5c 0a b2 10                                  	push   0x10b20a5c
1056ac5d:	6a 38                                           	push   0x38
1056ac5f:	e8 4c e2 3a 00                                  	call   0x10918eb0
1056ac64:	83 c4 18                                        	add    esp,0x18
1056ac67:	85 c0                                           	test   eax,eax
1056ac69:	74 72                                           	je     0x1056acdd
1056ac6b:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1056ac6f:	51                                              	push   ecx
1056ac70:	53                                              	push   ebx
1056ac71:	55                                              	push   ebp
1056ac72:	8b c8                                           	mov    ecx,eax
1056ac74:	e8 77 f0 ff ff                                  	call   0x10569cf0
1056ac79:	8b f8                                           	mov    edi,eax
1056ac7b:	85 ff                                           	test   edi,edi
1056ac7d:	74 09                                           	je     0x1056ac88
1056ac7f:	8b 17                                           	mov    edx,DWORD PTR [edi]
1056ac81:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1056ac84:	8b cf                                           	mov    ecx,edi
1056ac86:	ff d0                                           	call   eax
1056ac88:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1056ac8c:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
1056ac90:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
1056ac94:	57                                              	push   edi
1056ac95:	51                                              	push   ecx
1056ac96:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1056ac9a:	52                                              	push   edx
1056ac9b:	50                                              	push   eax
1056ac9c:	e8 2f c9 dc ff                                  	call   0x103375d0
1056aca1:	84 c0                                           	test   al,al
1056aca3:	74 3c                                           	je     0x1056ace1
1056aca5:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1056aca9:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056acab:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
1056acb1:	6a 00                                           	push   0x0
1056acb3:	50                                              	push   eax
1056acb4:	6a ff                                           	push   0xffffffff
1056acb6:	53                                              	push   ebx
1056acb7:	55                                              	push   ebp
1056acb8:	8b ce                                           	mov    ecx,esi
1056acba:	ff d2                                           	call   edx
1056acbc:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056acbe:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
1056acc4:	8b ce                                           	mov    ecx,esi
1056acc6:	ff d2                                           	call   edx
1056acc8:	85 ff                                           	test   edi,edi
1056acca:	74 6e                                           	je     0x1056ad3a
1056accc:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056acce:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056acd1:	8b cf                                           	mov    ecx,edi
1056acd3:	ff d2                                           	call   edx
1056acd5:	5f                                              	pop    edi
1056acd6:	5e                                              	pop    esi
1056acd7:	5d                                              	pop    ebp
1056acd8:	5b                                              	pop    ebx
1056acd9:	83 c4 24                                        	add    esp,0x24
1056acdc:	c3                                              	ret
1056acdd:	33 ff                                           	xor    edi,edi
1056acdf:	eb a7                                           	jmp    0x1056ac88
1056ace1:	85 ff                                           	test   edi,edi
1056ace3:	74 09                                           	je     0x1056acee
1056ace5:	8b 07                                           	mov    eax,DWORD PTR [edi]
1056ace7:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1056acea:	8b cf                                           	mov    ecx,edi
1056acec:	ff d2                                           	call   edx
1056acee:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056acf2:	6a 00                                           	push   0x0
1056acf4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056acf8:	51                                              	push   ecx
1056acf9:	53                                              	push   ebx
1056acfa:	bf b4 a5 ac 10                                  	mov    edi,0x10aca5b4
1056acff:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
1056ad03:	c6 44 24 30 00                                  	mov    BYTE PTR [esp+0x30],0x0
1056ad08:	66 c7 44 24 2a 01 00                            	mov    WORD PTR [esp+0x2a],0x1
1056ad0f:	66 c7 44 24 28 00 00                            	mov    WORD PTR [esp+0x28],0x0
1056ad16:	8b 06                                           	mov    eax,DWORD PTR [esi]
1056ad18:	8b 80 30 01 00 00                               	mov    eax,DWORD PTR [eax+0x130]
1056ad1e:	55                                              	push   ebp
1056ad1f:	52                                              	push   edx
1056ad20:	8b ce                                           	mov    ecx,esi
1056ad22:	ff d0                                           	call   eax
1056ad24:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
1056ad29:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1056ad2d:	74 0b                                           	je     0x1056ad3a
1056ad2f:	6a 00                                           	push   0x0
1056ad31:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056ad35:	e8 56 dd 3b 00                                  	call   0x10928a90
1056ad3a:	5f                                              	pop    edi
1056ad3b:	5e                                              	pop    esi
1056ad3c:	5d                                              	pop    ebp
1056ad3d:	5b                                              	pop    ebx
1056ad3e:	83 c4 24                                        	add    esp,0x24
1056ad41:	c3                                              	ret
1056ad42:	cc                                              	int3
1056ad43:	cc                                              	int3
1056ad44:	cc                                              	int3
1056ad45:	cc                                              	int3
1056ad46:	cc                                              	int3
1056ad47:	cc                                              	int3
1056ad48:	cc                                              	int3
1056ad49:	cc                                              	int3
1056ad4a:	cc                                              	int3
1056ad4b:	cc                                              	int3
1056ad4c:	cc                                              	int3
1056ad4d:	cc                                              	int3
1056ad4e:	cc                                              	int3
1056ad4f:	cc                                              	int3
