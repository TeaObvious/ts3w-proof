# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10655af0 (Audio_UpdateSoundArrayImpl)
Paired Ghidra pseudocode: 10655AF0_Audio_UpdateSoundArrayImpl.c
Window: [0x10655af0, 0x10655c20) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10655af0: a1 a0 d4 c7 10 83 ec 18 53 55 33 ed 3b c5 56 57
10655b00: 74 08 8d b0 30 84 fd ff eb 02 33 f6 e8 8f 46 0d
10655b10: 00 8b d8 e8 08 56 f0 ff 3b f5 8b f8 0f 84 b4 00
10655b20: 00 00 3b dd 0f 84 ac 00 00 00 3b fd 0f 84 a4 00
10655b30: 00 00 8b 4c 24 30 8b 07 8b 50 58 51 8b cf ff d2
10655b40: 50 8d 4c 24 1c 89 6c 24 1c 89 6c 24 20 89 6c 24
10655b50: 24 c7 44 24 28 40 85 b3 10 e8 c2 4a a1 ff 8b 07
10655b60: 8d 4c 24 14 51 8b 4c 24 38 8d 54 24 14 52 8b 50
10655b70: 68 51 8b cf 89 6c 24 1c 89 6c 24 20 ff d2 8b 06
10655b80: 8b 50 44 68 e6 e8 29 0a 8b ce ff d2 8b 44 24 10
10655b90: 8b 54 24 14 53 56 50 8b 44 24 38 8d 4c 24 24 51
10655ba0: 52 50 e8 c9 f9 ff ff 8b 16 83 c4 18 84 c0 8b ce
10655bb0: 75 2e 8b 42 6c ff d0 8b 4c 24 20 8b 44 24 18 2b
10655bc0: c8 83 e1 fe 83 f9 02 7e 0d 3b c5 74 09 50 e8 bd
10655bd0: 32 2c 00 83 c4 04 5f 5e 5d 32 c0 5b 83 c4 18 c3
10655be0: 8b 42 68 ff d0 8b 4c 24 20 8b 44 24 18 2b c8 83
10655bf0: e1 fe 83 f9 02 7e 0d 3b c5 74 09 50 e8 8f 32 2c
10655c00: 00 83 c4 04 5f 5e 5d b0 01 5b 83 c4 18 c3 cc cc
10655c10: 8b 44 24 04 c7 00 38 49 c3 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
10655af0 <.text+0x654af0>:
10655af0:	a1 a0 d4 c7 10                                  	mov    eax,ds:0x10c7d4a0
10655af5:	83 ec 18                                        	sub    esp,0x18
10655af8:	53                                              	push   ebx
10655af9:	55                                              	push   ebp
10655afa:	33 ed                                           	xor    ebp,ebp
10655afc:	3b c5                                           	cmp    eax,ebp
10655afe:	56                                              	push   esi
10655aff:	57                                              	push   edi
10655b00:	74 08                                           	je     0x10655b0a
10655b02:	8d b0 30 84 fd ff                               	lea    esi,[eax-0x27bd0]
10655b08:	eb 02                                           	jmp    0x10655b0c
10655b0a:	33 f6                                           	xor    esi,esi
10655b0c:	e8 8f 46 0d 00                                  	call   0x1072a1a0
10655b11:	8b d8                                           	mov    ebx,eax
10655b13:	e8 08 56 f0 ff                                  	call   0x1055b120
10655b18:	3b f5                                           	cmp    esi,ebp
10655b1a:	8b f8                                           	mov    edi,eax
10655b1c:	0f 84 b4 00 00 00                               	je     0x10655bd6
10655b22:	3b dd                                           	cmp    ebx,ebp
10655b24:	0f 84 ac 00 00 00                               	je     0x10655bd6
10655b2a:	3b fd                                           	cmp    edi,ebp
10655b2c:	0f 84 a4 00 00 00                               	je     0x10655bd6
10655b32:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10655b36:	8b 07                                           	mov    eax,DWORD PTR [edi]
10655b38:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
10655b3b:	51                                              	push   ecx
10655b3c:	8b cf                                           	mov    ecx,edi
10655b3e:	ff d2                                           	call   edx
10655b40:	50                                              	push   eax
10655b41:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10655b45:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
10655b49:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
10655b4d:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
10655b51:	c7 44 24 28 40 85 b3 10                         	mov    DWORD PTR [esp+0x28],0x10b38540
10655b59:	e8 c2 4a a1 ff                                  	call   0x1006a620
10655b5e:	8b 07                                           	mov    eax,DWORD PTR [edi]
10655b60:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10655b64:	51                                              	push   ecx
10655b65:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10655b69:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10655b6d:	52                                              	push   edx
10655b6e:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
10655b71:	51                                              	push   ecx
10655b72:	8b cf                                           	mov    ecx,edi
10655b74:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
10655b78:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
10655b7c:	ff d2                                           	call   edx
10655b7e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10655b80:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10655b83:	68 e6 e8 29 0a                                  	push   0xa29e8e6
10655b88:	8b ce                                           	mov    ecx,esi
10655b8a:	ff d2                                           	call   edx
10655b8c:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10655b90:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10655b94:	53                                              	push   ebx
10655b95:	56                                              	push   esi
10655b96:	50                                              	push   eax
10655b97:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10655b9b:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10655b9f:	51                                              	push   ecx
10655ba0:	52                                              	push   edx
10655ba1:	50                                              	push   eax
10655ba2:	e8 c9 f9 ff ff                                  	call   0x10655570
10655ba7:	8b 16                                           	mov    edx,DWORD PTR [esi]
10655ba9:	83 c4 18                                        	add    esp,0x18
10655bac:	84 c0                                           	test   al,al
10655bae:	8b ce                                           	mov    ecx,esi
10655bb0:	75 2e                                           	jne    0x10655be0
10655bb2:	8b 42 6c                                        	mov    eax,DWORD PTR [edx+0x6c]
10655bb5:	ff d0                                           	call   eax
10655bb7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10655bbb:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10655bbf:	2b c8                                           	sub    ecx,eax
10655bc1:	83 e1 fe                                        	and    ecx,0xfffffffe
10655bc4:	83 f9 02                                        	cmp    ecx,0x2
10655bc7:	7e 0d                                           	jle    0x10655bd6
10655bc9:	3b c5                                           	cmp    eax,ebp
10655bcb:	74 09                                           	je     0x10655bd6
10655bcd:	50                                              	push   eax
10655bce:	e8 bd 32 2c 00                                  	call   0x10918e90
10655bd3:	83 c4 04                                        	add    esp,0x4
10655bd6:	5f                                              	pop    edi
10655bd7:	5e                                              	pop    esi
10655bd8:	5d                                              	pop    ebp
10655bd9:	32 c0                                           	xor    al,al
10655bdb:	5b                                              	pop    ebx
10655bdc:	83 c4 18                                        	add    esp,0x18
10655bdf:	c3                                              	ret
10655be0:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
10655be3:	ff d0                                           	call   eax
10655be5:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10655be9:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10655bed:	2b c8                                           	sub    ecx,eax
10655bef:	83 e1 fe                                        	and    ecx,0xfffffffe
10655bf2:	83 f9 02                                        	cmp    ecx,0x2
10655bf5:	7e 0d                                           	jle    0x10655c04
10655bf7:	3b c5                                           	cmp    eax,ebp
10655bf9:	74 09                                           	je     0x10655c04
10655bfb:	50                                              	push   eax
10655bfc:	e8 8f 32 2c 00                                  	call   0x10918e90
10655c01:	83 c4 04                                        	add    esp,0x4
10655c04:	5f                                              	pop    edi
10655c05:	5e                                              	pop    esi
10655c06:	5d                                              	pop    ebp
10655c07:	b0 01                                           	mov    al,0x1
10655c09:	5b                                              	pop    ebx
10655c0a:	83 c4 18                                        	add    esp,0x18
10655c0d:	c3                                              	ret
10655c0e:	cc                                              	int3
10655c0f:	cc                                              	int3
10655c10:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10655c14:	c7 00 38 49 c3 10                               	mov    DWORD PTR [eax],0x10c34938
10655c1a:	c2 04 00                                        	ret    0x4
10655c1d:	cc                                              	int3
10655c1e:	cc                                              	int3
10655c1f:	cc                                              	int3
