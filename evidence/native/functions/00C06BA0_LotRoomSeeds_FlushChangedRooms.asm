# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00c06ba0 LotRoomSeeds_FlushChangedRooms
# Complete Ghidra body [00c06ba0, 00c06c0b]; [00c06c10, 00c06db4] inclusive: 175 body instructions, 529 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 533 bytes.
# Excluded body gap 00c06c0c..00c06c0f: four alignment LEA bytes; present in envelope, not in body instruction count.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00C06BA0_LotRoomSeeds_FlushChangedRooms.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c06ba0 <.text+0x805ba0>:
  c06ba0:	55                                              	push   ebp
  c06ba1:	8b ec                                           	mov    ebp,esp
  c06ba3:	83 e4 f8                                        	and    esp,0xfffffff8
  c06ba6:	83 ec 28                                        	sub    esp,0x28
  c06ba9:	53                                              	push   ebx
  c06baa:	55                                              	push   ebp
  c06bab:	56                                              	push   esi
  c06bac:	8b f1                                           	mov    esi,ecx
  c06bae:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
  c06bb1:	83 f8 03                                        	cmp    eax,0x3
  c06bb4:	57                                              	push   edi
  c06bb5:	77 2d                                           	ja     0xc06be4
  c06bb7:	ff 24 85 b8 6d c0 00                            	jmp    DWORD PTR [eax*4+0xc06db8]
  c06bbe:	c7 44 24 10 0a 94 26 b1                         	mov    DWORD PTR [esp+0x10],0xb126940a
  c06bc6:	eb 1c                                           	jmp    0xc06be4
  c06bc8:	c7 44 24 10 41 94 26 d1                         	mov    DWORD PTR [esp+0x10],0xd1269441
  c06bd0:	eb 12                                           	jmp    0xc06be4
  c06bd2:	c7 44 24 10 88 94 26 31                         	mov    DWORD PTR [esp+0x10],0x31269488
  c06bda:	eb 08                                           	jmp    0xc06be4
  c06bdc:	c7 44 24 10 36 bd 29 0a                         	mov    DWORD PTR [esp+0x10],0xa29bd36
  c06be4:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  c06be7:	8b 88 90 02 00 00                               	mov    ecx,DWORD PTR [eax+0x290]
  c06bed:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  c06bf1:	e8 fa 58 84 ff                                  	call   0x44c4f0
  c06bf6:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  c06bfa:	8b 46 54                                        	mov    eax,DWORD PTR [esi+0x54]
  c06bfd:	3b 46 58                                        	cmp    eax,DWORD PTR [esi+0x58]
  c06c00:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  c06c04:	0f 84 de 00 00 00                               	je     0xc06ce8
  c06c0a:	eb 08                                           	jmp    0xc06c14
  c06c0c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  c06c10:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  c06c14:	0f b7 28                                        	movzx  ebp,WORD PTR [eax]
  c06c17:	8b 56 3c                                        	mov    edx,DWORD PTR [esi+0x3c]
  c06c1a:	8b 46 38                                        	mov    eax,DWORD PTR [esi+0x38]
  c06c1d:	8b 0c 90                                        	mov    ecx,DWORD PTR [eax+edx*4]
  c06c20:	0f bf dd                                        	movsx  ebx,bp
  c06c23:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
  c06c27:	8b ca                                           	mov    ecx,edx
  c06c29:	33 d2                                           	xor    edx,edx
  c06c2b:	8b c3                                           	mov    eax,ebx
  c06c2d:	f7 f1                                           	div    ecx
  c06c2f:	8b 7e 38                                        	mov    edi,DWORD PTR [esi+0x38]
  c06c32:	8b 04 97                                        	mov    eax,DWORD PTR [edi+edx*4]
  c06c35:	85 c0                                           	test   eax,eax
  c06c37:	8d 14 97                                        	lea    edx,[edi+edx*4]
  c06c3a:	74 10                                           	je     0xc06c4c
  c06c3c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  c06c40:	66 3b 28                                        	cmp    bp,WORD PTR [eax]
  c06c43:	74 44                                           	je     0xc06c89
  c06c45:	8b 40 68                                        	mov    eax,DWORD PTR [eax+0x68]
  c06c48:	85 c0                                           	test   eax,eax
  c06c4a:	75 f4                                           	jne    0xc06c40
  c06c4c:	8b 14 8f                                        	mov    edx,DWORD PTR [edi+ecx*4]
  c06c4f:	8d 0c 8f                                        	lea    ecx,[edi+ecx*4]
  c06c52:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  c06c56:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  c06c5a:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  c06c5e:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  c06c62:	39 08                                           	cmp    DWORD PTR [eax],ecx
  c06c64:	74 5a                                           	je     0xc06cc0
  c06c66:	6a 18                                           	push   0x18
  c06c68:	e8 e3 84 ed ff                                  	call   0xadf150
  c06c6d:	83 c4 04                                        	add    esp,0x4
  c06c70:	85 c0                                           	test   eax,eax
  c06c72:	74 23                                           	je     0xc06c97
  c06c74:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  c06c7a:	33 d2                                           	xor    edx,edx
  c06c7c:	8d 48 04                                        	lea    ecx,[eax+0x4]
  c06c7f:	87 11                                           	xchg   DWORD PTR [ecx],edx
  c06c81:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  c06c87:	eb 10                                           	jmp    0xc06c99
  c06c89:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  c06c8d:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  c06c91:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  c06c95:	eb c7                                           	jmp    0xc06c5e
  c06c97:	33 c0                                           	xor    eax,eax
  c06c99:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  c06c9c:	8b 51 48                                        	mov    edx,DWORD PTR [ecx+0x48]
  c06c9f:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  c06ca2:	8b 49 4c                                        	mov    ecx,DWORD PTR [ecx+0x4c]
  c06ca5:	6a 00                                           	push   0x0
  c06ca7:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  c06caa:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  c06cae:	6a 00                                           	push   0x0
  c06cb0:	89 58 10                                        	mov    DWORD PTR [eax+0x10],ebx
  c06cb3:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  c06cb5:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
  c06cb8:	50                                              	push   eax
  c06cb9:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  c06cbd:	50                                              	push   eax
  c06cbe:	ff d2                                           	call   edx
  c06cc0:	83 7e 0c 01                                     	cmp    DWORD PTR [esi+0xc],0x1
  c06cc4:	75 0e                                           	jne    0xc06cd4
  c06cc6:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  c06cca:	85 c9                                           	test   ecx,ecx
  c06ccc:	74 06                                           	je     0xc06cd4
  c06cce:	55                                              	push   ebp
  c06ccf:	e8 0c ab e8 ff                                  	call   0xa917e0
  c06cd4:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  c06cd8:	83 c0 02                                        	add    eax,0x2
  c06cdb:	3b 46 58                                        	cmp    eax,DWORD PTR [esi+0x58]
  c06cde:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  c06ce2:	0f 85 28 ff ff ff                               	jne    0xc06c10
  c06ce8:	8b ce                                           	mov    ecx,esi
  c06cea:	e8 01 e4 ff ff                                  	call   0xc050f0
  c06cef:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
  c06cf2:	83 e8 00                                        	sub    eax,0x0
  c06cf5:	74 73                                           	je     0xc06d6a
  c06cf7:	83 e8 01                                        	sub    eax,0x1
  c06cfa:	74 39                                           	je     0xc06d35
  c06cfc:	83 e8 01                                        	sub    eax,0x1
  c06cff:	75 7b                                           	jne    0xc06d7c
  c06d01:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  c06d04:	50                                              	push   eax
  c06d05:	e8 46 6f 06 00                                  	call   0xc6dc50
  c06d0a:	50                                              	push   eax
  c06d0b:	8b ce                                           	mov    ecx,esi
  c06d0d:	e8 6e d6 ff ff                                  	call   0xc04380
  c06d12:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  c06d15:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  c06d18:	85 c0                                           	test   eax,eax
  c06d1a:	74 60                                           	je     0xc06d7c
  c06d1c:	8b 80 b0 00 00 00                               	mov    eax,DWORD PTR [eax+0xb0]
  c06d22:	6a 00                                           	push   0x0
  c06d24:	8b c8                                           	mov    ecx,eax
  c06d26:	e8 25 6f 06 00                                  	call   0xc6dc50
  c06d2b:	50                                              	push   eax
  c06d2c:	8b ce                                           	mov    ecx,esi
  c06d2e:	e8 4d d6 ff ff                                  	call   0xc04380
  c06d33:	eb 47                                           	jmp    0xc06d7c
  c06d35:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  c06d38:	6a 01                                           	push   0x1
  c06d3a:	e8 11 6f 06 00                                  	call   0xc6dc50
  c06d3f:	50                                              	push   eax
  c06d40:	8b ce                                           	mov    ecx,esi
  c06d42:	e8 39 d6 ff ff                                  	call   0xc04380
  c06d47:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  c06d4a:	8b 41 0c                                        	mov    eax,DWORD PTR [ecx+0xc]
  c06d4d:	85 c0                                           	test   eax,eax
  c06d4f:	74 2b                                           	je     0xc06d7c
  c06d51:	8b 80 b0 00 00 00                               	mov    eax,DWORD PTR [eax+0xb0]
  c06d57:	6a 01                                           	push   0x1
  c06d59:	8b c8                                           	mov    ecx,eax
  c06d5b:	e8 f0 6e 06 00                                  	call   0xc6dc50
  c06d60:	50                                              	push   eax
  c06d61:	8b ce                                           	mov    ecx,esi
  c06d63:	e8 18 d6 ff ff                                  	call   0xc04380
  c06d68:	eb 12                                           	jmp    0xc06d7c
  c06d6a:	8b ce                                           	mov    ecx,esi
  c06d6c:	e8 4f d8 ff ff                                  	call   0xc045c0
  c06d71:	8d 46 54                                        	lea    eax,[esi+0x54]
  c06d74:	50                                              	push   eax
  c06d75:	8b ce                                           	mov    ecx,esi
  c06d77:	e8 b4 f6 ff ff                                  	call   0xc06430
  c06d7c:	8b 56 54                                        	mov    edx,DWORD PTR [esi+0x54]
  c06d7f:	8b ce                                           	mov    ecx,esi
  c06d81:	89 56 58                                        	mov    DWORD PTR [esi+0x58],edx
  c06d84:	e8 d7 e4 ff ff                                  	call   0xc05260
  c06d89:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  c06d8c:	8b 88 bc 02 00 00                               	mov    ecx,DWORD PTR [eax+0x2bc]
  c06d92:	85 c9                                           	test   ecx,ecx
  c06d94:	74 05                                           	je     0xc06d9b
  c06d96:	e8 65 63 f6 ff                                  	call   0xb6d100
  c06d9b:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  c06d9e:	8b 89 c0 02 00 00                               	mov    ecx,DWORD PTR [ecx+0x2c0]
  c06da4:	85 c9                                           	test   ecx,ecx
  c06da6:	74 05                                           	je     0xc06dad
  c06da8:	e8 43 d0 f4 ff                                  	call   0xb53df0
  c06dad:	5f                                              	pop    edi
  c06dae:	5e                                              	pop    esi
  c06daf:	5d                                              	pop    ebp
  c06db0:	5b                                              	pop    ebx
  c06db1:	8b e5                                           	mov    esp,ebp
  c06db3:	5d                                              	pop    ebp
  c06db4:	c3                                              	ret
