# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052ebe0 (CacheManager_IsCachingAllowed)
Paired Ghidra pseudocode: 1052EBE0_CacheManager_IsCachingAllowed.c
Window: [0x1052ebe0, 0x1052ece0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052ece0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052ebe0: 83 ec 20 53 33 db 38 1d 08 d1 c2 10 75 07 32 c0
1052ebf0: 5b 83 c4 20 c3 56 e8 d5 64 3b 00 8b f0 3b f3 75
1052ec00: 08 5e 32 c0 5b 83 c4 20 c3 57 e8 11 c5 02 00 8b
1052ec10: 4c 24 30 8b 10 8b 52 58 51 8b c8 ff d2 50 e8 5d
1052ec20: 4d 09 00 89 54 24 24 83 c4 04 89 44 24 1c c7 44
1052ec30: 24 24 84 35 b4 82 89 5c 24 28 8b 06 8b 50 44 8d
1052ec40: 4c 24 1c 51 8b ce ff d2 8b f8 3b fb 74 7d 89 5c
1052ec50: 24 0c 89 5c 24 10 89 5c 24 14 c7 44 24 18 04 9d
1052ec60: b1 10 8b 07 8b 50 30 53 8d 4c 24 10 51 8b cf ff
1052ec70: d2 8b 4c 24 0c 8b 44 24 10 3b c8 74 27 8d 49 00
1052ec80: 8b 16 83 c0 f0 50 8b 42 44 8b ce ff d0 3b c7 75
1052ec90: 29 8b 44 24 10 8b 4c 24 0c 83 e8 10 3b c8 89 44
1052eca0: 24 10 75 dc 3b cb 74 09 51 e8 e2 a1 3e 00 83 c4
1052ecb0: 04 5f 5e b0 01 5b 83 c4 20 c3 8b 44 24 0c 3b c3
1052ecc0: 74 09 50 e8 c8 a1 3e 00 83 c4 04 5f 5e 32 c0 5b
1052ecd0: 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052ebe0 <.text+0x52dbe0>:
1052ebe0:	83 ec 20                                        	sub    esp,0x20
1052ebe3:	53                                              	push   ebx
1052ebe4:	33 db                                           	xor    ebx,ebx
1052ebe6:	38 1d 08 d1 c2 10                               	cmp    BYTE PTR ds:0x10c2d108,bl
1052ebec:	75 07                                           	jne    0x1052ebf5
1052ebee:	32 c0                                           	xor    al,al
1052ebf0:	5b                                              	pop    ebx
1052ebf1:	83 c4 20                                        	add    esp,0x20
1052ebf4:	c3                                              	ret
1052ebf5:	56                                              	push   esi
1052ebf6:	e8 d5 64 3b 00                                  	call   0x108e50d0
1052ebfb:	8b f0                                           	mov    esi,eax
1052ebfd:	3b f3                                           	cmp    esi,ebx
1052ebff:	75 08                                           	jne    0x1052ec09
1052ec01:	5e                                              	pop    esi
1052ec02:	32 c0                                           	xor    al,al
1052ec04:	5b                                              	pop    ebx
1052ec05:	83 c4 20                                        	add    esp,0x20
1052ec08:	c3                                              	ret
1052ec09:	57                                              	push   edi
1052ec0a:	e8 11 c5 02 00                                  	call   0x1055b120
1052ec0f:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1052ec13:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052ec15:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1052ec18:	51                                              	push   ecx
1052ec19:	8b c8                                           	mov    ecx,eax
1052ec1b:	ff d2                                           	call   edx
1052ec1d:	50                                              	push   eax
1052ec1e:	e8 5d 4d 09 00                                  	call   0x105c3980
1052ec23:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1052ec27:	83 c4 04                                        	add    esp,0x4
1052ec2a:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
1052ec2e:	c7 44 24 24 84 35 b4 82                         	mov    DWORD PTR [esp+0x24],0x82b43584
1052ec36:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
1052ec3a:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052ec3c:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
1052ec3f:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1052ec43:	51                                              	push   ecx
1052ec44:	8b ce                                           	mov    ecx,esi
1052ec46:	ff d2                                           	call   edx
1052ec48:	8b f8                                           	mov    edi,eax
1052ec4a:	3b fb                                           	cmp    edi,ebx
1052ec4c:	74 7d                                           	je     0x1052eccb
1052ec4e:	89 5c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebx
1052ec52:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
1052ec56:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
1052ec5a:	c7 44 24 18 04 9d b1 10                         	mov    DWORD PTR [esp+0x18],0x10b19d04
1052ec62:	8b 07                                           	mov    eax,DWORD PTR [edi]
1052ec64:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
1052ec67:	53                                              	push   ebx
1052ec68:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1052ec6c:	51                                              	push   ecx
1052ec6d:	8b cf                                           	mov    ecx,edi
1052ec6f:	ff d2                                           	call   edx
1052ec71:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1052ec75:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1052ec79:	3b c8                                           	cmp    ecx,eax
1052ec7b:	74 27                                           	je     0x1052eca4
1052ec7d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1052ec80:	8b 16                                           	mov    edx,DWORD PTR [esi]
1052ec82:	83 c0 f0                                        	add    eax,0xfffffff0
1052ec85:	50                                              	push   eax
1052ec86:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
1052ec89:	8b ce                                           	mov    ecx,esi
1052ec8b:	ff d0                                           	call   eax
1052ec8d:	3b c7                                           	cmp    eax,edi
1052ec8f:	75 29                                           	jne    0x1052ecba
1052ec91:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1052ec95:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1052ec99:	83 e8 10                                        	sub    eax,0x10
1052ec9c:	3b c8                                           	cmp    ecx,eax
1052ec9e:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1052eca2:	75 dc                                           	jne    0x1052ec80
1052eca4:	3b cb                                           	cmp    ecx,ebx
1052eca6:	74 09                                           	je     0x1052ecb1
1052eca8:	51                                              	push   ecx
1052eca9:	e8 e2 a1 3e 00                                  	call   0x10918e90
1052ecae:	83 c4 04                                        	add    esp,0x4
1052ecb1:	5f                                              	pop    edi
1052ecb2:	5e                                              	pop    esi
1052ecb3:	b0 01                                           	mov    al,0x1
1052ecb5:	5b                                              	pop    ebx
1052ecb6:	83 c4 20                                        	add    esp,0x20
1052ecb9:	c3                                              	ret
1052ecba:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1052ecbe:	3b c3                                           	cmp    eax,ebx
1052ecc0:	74 09                                           	je     0x1052eccb
1052ecc2:	50                                              	push   eax
1052ecc3:	e8 c8 a1 3e 00                                  	call   0x10918e90
1052ecc8:	83 c4 04                                        	add    esp,0x4
1052eccb:	5f                                              	pop    edi
1052eccc:	5e                                              	pop    esi
1052eccd:	32 c0                                           	xor    al,al
1052eccf:	5b                                              	pop    ebx
1052ecd0:	83 c4 20                                        	add    esp,0x20
1052ecd3:	c3                                              	ret
1052ecd4:	cc                                              	int3
1052ecd5:	cc                                              	int3
1052ecd6:	cc                                              	int3
1052ecd7:	cc                                              	int3
1052ecd8:	cc                                              	int3
1052ecd9:	cc                                              	int3
1052ecda:	cc                                              	int3
1052ecdb:	cc                                              	int3
1052ecdc:	cc                                              	int3
1052ecdd:	cc                                              	int3
1052ecde:	cc                                              	int3
1052ecdf:	cc                                              	int3
