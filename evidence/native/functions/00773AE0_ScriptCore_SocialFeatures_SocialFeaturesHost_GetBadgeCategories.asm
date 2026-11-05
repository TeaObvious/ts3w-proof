# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773ae0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetBadgeCategories)
Paired Ghidra pseudocode: 00773AE0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetBadgeCategories.c
Window: [0x00773ae0, 0x00773c40) (352 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773ae0: 83 ec 34 56 c7 44 24 04 00 00 00 00 e8 9f 58 ff
00773af0: ff 8b f0 85 f6 0f 84 2e 01 00 00 8b 4c 24 3c 8b
00773b00: 06 8b 50 58 53 57 51 8b ce ff d2 6a 00 6a ff 50
00773b10: 8d 44 24 3c bf 54 8e 1c 01 bb 55 8e 1c 01 50 c7
00773b20: 44 24 2c bc 9c 00 01 89 7c 24 20 89 7c 24 24 89
00773b30: 5c 24 28 e8 88 01 d8 ff 8d 4c 24 20 83 c4 10 3b
00773b40: c1 74 14 8b 50 04 8b 00 52 50 e8 c1 1d c9 ff 8b
00773b50: 5c 24 18 8b 7c 24 10 8b 4c 24 38 8b 44 24 30 2b
00773b60: c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 70 09 d7 ff
00773b70: 83 c4 04 57 e8 77 0e 2b 00 83 c4 04 85 c0 0f 84
00773b80: 86 00 00 00 6a 00 6a ff 50 8d 54 24 3c 52 e8 bd
00773b90: ff d7 ff 83 c4 10 6a 01 6a 10 50 6a 09 6a 13 8d
00773ba0: 4c 24 24 c7 44 24 24 6c 88 00 01 66 c7 44 24 2e
00773bb0: 13 00 66 c7 44 24 2c 0b 00 e8 02 1e d8 ff 8b 4c
00773bc0: 24 38 8b 44 24 30 2b c8 83 e1 fe 83 f9 02 7e 0d
00773bd0: 85 c0 74 09 50 e8 06 09 d7 ff 83 c4 04 8b 16 8b
00773be0: 52 50 8d 44 24 0c 50 8d 4c 24 14 51 8b ce ff d2
00773bf0: f6 44 24 18 04 c7 44 24 10 f4 a6 fb 00 74 0b 6a
00773c00: 00 8d 4c 24 14 e8 56 1b d8 ff 2b df 83 fb 01 7e
00773c10: 0d 85 ff 74 09 57 e8 c5 08 d7 ff 83 c4 04 8b 44
00773c20: 24 0c 5f 5b 5e 83 c4 34 c3 8b 44 24 04 5e 83 c4
00773c30: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00773ae0 <.text+0x372ae0>:
  773ae0:	83 ec 34                                        	sub    esp,0x34
  773ae3:	56                                              	push   esi
  773ae4:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
  773aec:	e8 9f 58 ff ff                                  	call   0x769390
  773af1:	8b f0                                           	mov    esi,eax
  773af3:	85 f6                                           	test   esi,esi
  773af5:	0f 84 2e 01 00 00                               	je     0x773c29
  773afb:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  773aff:	8b 06                                           	mov    eax,DWORD PTR [esi]
  773b01:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  773b04:	53                                              	push   ebx
  773b05:	57                                              	push   edi
  773b06:	51                                              	push   ecx
  773b07:	8b ce                                           	mov    ecx,esi
  773b09:	ff d2                                           	call   edx
  773b0b:	6a 00                                           	push   0x0
  773b0d:	6a ff                                           	push   0xffffffff
  773b0f:	50                                              	push   eax
  773b10:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  773b14:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  773b19:	bb 55 8e 1c 01                                  	mov    ebx,0x11c8e55
  773b1e:	50                                              	push   eax
  773b1f:	c7 44 24 2c bc 9c 00 01                         	mov    DWORD PTR [esp+0x2c],0x1009cbc
  773b27:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  773b2b:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  773b2f:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  773b33:	e8 88 01 d8 ff                                  	call   0x4f3cc0
  773b38:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773b3c:	83 c4 10                                        	add    esp,0x10
  773b3f:	3b c1                                           	cmp    eax,ecx
  773b41:	74 14                                           	je     0x773b57
  773b43:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  773b46:	8b 00                                           	mov    eax,DWORD PTR [eax]
  773b48:	52                                              	push   edx
  773b49:	50                                              	push   eax
  773b4a:	e8 c1 1d c9 ff                                  	call   0x405910
  773b4f:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  773b53:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  773b57:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  773b5b:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773b5f:	2b c8                                           	sub    ecx,eax
  773b61:	83 f9 01                                        	cmp    ecx,0x1
  773b64:	7e 0d                                           	jle    0x773b73
  773b66:	85 c0                                           	test   eax,eax
  773b68:	74 09                                           	je     0x773b73
  773b6a:	50                                              	push   eax
  773b6b:	e8 70 09 d7 ff                                  	call   0x4e44e0
  773b70:	83 c4 04                                        	add    esp,0x4
  773b73:	57                                              	push   edi
  773b74:	e8 77 0e 2b 00                                  	call   0xa249f0
  773b79:	83 c4 04                                        	add    esp,0x4
  773b7c:	85 c0                                           	test   eax,eax
  773b7e:	0f 84 86 00 00 00                               	je     0x773c0a
  773b84:	6a 00                                           	push   0x0
  773b86:	6a ff                                           	push   0xffffffff
  773b88:	50                                              	push   eax
  773b89:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  773b8d:	52                                              	push   edx
  773b8e:	e8 bd ff d7 ff                                  	call   0x4f3b50
  773b93:	83 c4 10                                        	add    esp,0x10
  773b96:	6a 01                                           	push   0x1
  773b98:	6a 10                                           	push   0x10
  773b9a:	50                                              	push   eax
  773b9b:	6a 09                                           	push   0x9
  773b9d:	6a 13                                           	push   0x13
  773b9f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  773ba3:	c7 44 24 24 6c 88 00 01                         	mov    DWORD PTR [esp+0x24],0x100886c
  773bab:	66 c7 44 24 2e 13 00                            	mov    WORD PTR [esp+0x2e],0x13
  773bb2:	66 c7 44 24 2c 0b 00                            	mov    WORD PTR [esp+0x2c],0xb
  773bb9:	e8 02 1e d8 ff                                  	call   0x4f59c0
  773bbe:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  773bc2:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  773bc6:	2b c8                                           	sub    ecx,eax
  773bc8:	83 e1 fe                                        	and    ecx,0xfffffffe
  773bcb:	83 f9 02                                        	cmp    ecx,0x2
  773bce:	7e 0d                                           	jle    0x773bdd
  773bd0:	85 c0                                           	test   eax,eax
  773bd2:	74 09                                           	je     0x773bdd
  773bd4:	50                                              	push   eax
  773bd5:	e8 06 09 d7 ff                                  	call   0x4e44e0
  773bda:	83 c4 04                                        	add    esp,0x4
  773bdd:	8b 16                                           	mov    edx,DWORD PTR [esi]
  773bdf:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  773be2:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  773be6:	50                                              	push   eax
  773be7:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  773beb:	51                                              	push   ecx
  773bec:	8b ce                                           	mov    ecx,esi
  773bee:	ff d2                                           	call   edx
  773bf0:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  773bf5:	c7 44 24 10 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x10],0xfba6f4
  773bfd:	74 0b                                           	je     0x773c0a
  773bff:	6a 00                                           	push   0x0
  773c01:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  773c05:	e8 56 1b d8 ff                                  	call   0x4f5760
  773c0a:	2b df                                           	sub    ebx,edi
  773c0c:	83 fb 01                                        	cmp    ebx,0x1
  773c0f:	7e 0d                                           	jle    0x773c1e
  773c11:	85 ff                                           	test   edi,edi
  773c13:	74 09                                           	je     0x773c1e
  773c15:	57                                              	push   edi
  773c16:	e8 c5 08 d7 ff                                  	call   0x4e44e0
  773c1b:	83 c4 04                                        	add    esp,0x4
  773c1e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  773c22:	5f                                              	pop    edi
  773c23:	5b                                              	pop    ebx
  773c24:	5e                                              	pop    esi
  773c25:	83 c4 34                                        	add    esp,0x34
  773c28:	c3                                              	ret
  773c29:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  773c2d:	5e                                              	pop    esi
  773c2e:	83 c4 34                                        	add    esp,0x34
  773c31:	c3                                              	ret
  773c32:	cc                                              	int3
  773c33:	cc                                              	int3
  773c34:	cc                                              	int3
  773c35:	cc                                              	int3
  773c36:	cc                                              	int3
  773c37:	cc                                              	int3
  773c38:	cc                                              	int3
  773c39:	cc                                              	int3
  773c3a:	cc                                              	int3
  773c3b:	cc                                              	int3
  773c3c:	cc                                              	int3
  773c3d:	cc                                              	int3
  773c3e:	cc                                              	int3
  773c3f:	cc                                              	int3
