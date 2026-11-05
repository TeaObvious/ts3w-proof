# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x006c9e50 (MaterialShaderBinding_RequestKeyTextureEntry)
Paired actual Ghidra pseudocode: 006C9E50_MaterialShaderBinding_RequestKeyTextureEntry.c
Envelope [0x006c9e50,0x006ca0c3); 627 bytes; exact owned ranges: [0x006c9e50,0x006c9e9d),[0x006c9ea0,0x006ca0c3)
Owned: 624 original bytes / 230 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
006c9e50 <original>:
  6c9e50:	56                                              	push   esi
  6c9e51:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  6c9e55:	85 f6                                           	test   esi,esi
  6c9e57:	57                                              	push   edi
  6c9e58:	8b f9                                           	mov    edi,ecx
  6c9e5a:	0f 84 5e 02 00 00                               	je     0x6ca0be
  6c9e60:	8b 47 64                                        	mov    eax,DWORD PTR [edi+0x64]
  6c9e63:	8b 4f 68                                        	mov    ecx,DWORD PTR [edi+0x68]
  6c9e66:	3b c1                                           	cmp    eax,ecx
  6c9e68:	74 15                                           	je     0x6c9e7f
  6c9e6a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  6c9e70:	81 38 2f 71 7f 70                               	cmp    DWORD PTR [eax],0x707f712f
  6c9e76:	74 10                                           	je     0x6c9e88
  6c9e78:	83 c0 20                                        	add    eax,0x20
  6c9e7b:	3b c1                                           	cmp    eax,ecx
  6c9e7d:	75 f1                                           	jne    0x6c9e70
  6c9e7f:	c7 46 1c 00 02 00 00                            	mov    DWORD PTR [esi+0x1c],0x200
  6c9e86:	eb 08                                           	jmp    0x6c9e90
  6c9e88:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
  6c9e8b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  6c9e8d:	89 4e 1c                                        	mov    DWORD PTR [esi+0x1c],ecx
  6c9e90:	8b 47 64                                        	mov    eax,DWORD PTR [edi+0x64]
  6c9e93:	8b 4f 68                                        	mov    ecx,DWORD PTR [edi+0x68]
  6c9e96:	3b c1                                           	cmp    eax,ecx
  6c9e98:	55                                              	push   ebp
  6c9e99:	74 14                                           	je     0x6c9eaf
  6c9e9b:	eb 03                                           	jmp    0x6c9ea0
  6c9e9d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  6c9ea0:	81 38 dc da 9c 84                               	cmp    DWORD PTR [eax],0x849cdadc
  6c9ea6:	74 13                                           	je     0x6c9ebb
  6c9ea8:	83 c0 20                                        	add    eax,0x20
  6c9eab:	3b c1                                           	cmp    eax,ecx
  6c9ead:	75 f1                                           	jne    0x6c9ea0
  6c9eaf:	8d 6e 20                                        	lea    ebp,[esi+0x20]
  6c9eb2:	c7 45 00 00 02 00 00                            	mov    DWORD PTR [ebp+0x0],0x200
  6c9eb9:	eb 0b                                           	jmp    0x6c9ec6
  6c9ebb:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  6c9ebe:	8b 02                                           	mov    eax,DWORD PTR [edx]
  6c9ec0:	8d 6e 20                                        	lea    ebp,[esi+0x20]
  6c9ec3:	89 45 00                                        	mov    DWORD PTR [ebp+0x0],eax
  6c9ec6:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  6c9eca:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  6c9ecc:	53                                              	push   ebx
  6c9ecd:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
  6c9ed0:	c6 40 1e 06                                     	mov    BYTE PTR [eax+0x1e],0x6
  6c9ed4:	c7 40 14 00 00 00 00                            	mov    DWORD PTR [eax+0x14],0x0
  6c9edb:	8a 5e 42                                        	mov    bl,BYTE PTR [esi+0x42]
  6c9ede:	8b 4d 00                                        	mov    ecx,DWORD PTR [ebp+0x0]
  6c9ee1:	8b 56 1c                                        	mov    edx,DWORD PTR [esi+0x1c]
  6c9ee4:	80 e3 f8                                        	and    bl,0xf8
  6c9ee7:	56                                              	push   esi
  6c9ee8:	89 4e 3c                                        	mov    DWORD PTR [esi+0x3c],ecx
  6c9eeb:	80 cb 08                                        	or     bl,0x8
  6c9eee:	50                                              	push   eax
  6c9eef:	8b cf                                           	mov    ecx,edi
  6c9ef1:	88 5e 42                                        	mov    BYTE PTR [esi+0x42],bl
  6c9ef4:	89 7e 34                                        	mov    DWORD PTR [esi+0x34],edi
  6c9ef7:	89 56 38                                        	mov    DWORD PTR [esi+0x38],edx
  6c9efa:	e8 a1 fa ff ff                                  	call   0x6c99a0
  6c9eff:	84 c0                                           	test   al,al
  6c9f01:	74 32                                           	je     0x6c9f35
  6c9f03:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  6c9f07:	52                                              	push   edx
  6c9f08:	6a 00                                           	push   0x0
  6c9f0a:	8d 46 08                                        	lea    eax,[esi+0x8]
  6c9f0d:	50                                              	push   eax
  6c9f0e:	68 90 c8 15 01                                  	push   0x115c890
  6c9f13:	8d 4e 24                                        	lea    ecx,[esi+0x24]
  6c9f16:	e8 35 07 f0 ff                                  	call   0x5ca650
  6c9f1b:	84 c0                                           	test   al,al
  6c9f1d:	8b ce                                           	mov    ecx,esi
  6c9f1f:	0f 85 70 01 00 00                               	jne    0x6ca095
  6c9f25:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6c9f27:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  6c9f2a:	6a 01                                           	push   0x1
  6c9f2c:	ff d0                                           	call   eax
  6c9f2e:	5b                                              	pop    ebx
  6c9f2f:	5d                                              	pop    ebp
  6c9f30:	5f                                              	pop    edi
  6c9f31:	5e                                              	pop    esi
  6c9f32:	c2 10 00                                        	ret    0x10
  6c9f35:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  6c9f39:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  6c9f3c:	81 f9 35 14 3a 03                               	cmp    ecx,0x33a1435
  6c9f42:	0f 85 b7 00 00 00                               	jne    0x6c9fff
  6c9f48:	81 7e 18 60 8a 52 ad                            	cmp    DWORD PTR [esi+0x18],0xad528a60
  6c9f4f:	8d 46 1c                                        	lea    eax,[esi+0x1c]
  6c9f52:	75 0d                                           	jne    0x6c9f61
  6c9f54:	80 e3 ef                                        	and    bl,0xef
  6c9f57:	80 cb 20                                        	or     bl,0x20
  6c9f5a:	88 5e 42                                        	mov    BYTE PTR [esi+0x42],bl
  6c9f5d:	6a 01                                           	push   0x1
  6c9f5f:	eb 02                                           	jmp    0x6c9f63
  6c9f61:	6a 00                                           	push   0x0
  6c9f63:	55                                              	push   ebp
  6c9f64:	50                                              	push   eax
  6c9f65:	e8 d6 8d 05 00                                  	call   0x722d40
  6c9f6a:	83 47 48 01                                     	add    DWORD PTR [edi+0x48],0x1
  6c9f6e:	80 4e 42 01                                     	or     BYTE PTR [esi+0x42],0x1
  6c9f72:	8a 5e 42                                        	mov    bl,BYTE PTR [esi+0x42]
  6c9f75:	83 c4 0c                                        	add    esp,0xc
  6c9f78:	81 7e 18 85 fd c0 6c                            	cmp    DWORD PTR [esi+0x18],0x6cc0fd85
  6c9f7f:	75 32                                           	jne    0x6c9fb3
  6c9f81:	68 60 2b 7a e7                                  	push   0xe77a2b60
  6c9f86:	8b cf                                           	mov    ecx,edi
  6c9f88:	e8 f3 f9 ff ff                                  	call   0x6c9980
  6c9f8d:	85 c0                                           	test   eax,eax
  6c9f8f:	74 22                                           	je     0x6c9fb3
  6c9f91:	8b 48 14                                        	mov    ecx,DWORD PTR [eax+0x14]
  6c9f94:	f3 0f 10 01                                     	movss  xmm0,DWORD PTR [ecx]
  6c9f98:	0f 2f 05 64 e5 fa 00                            	comiss xmm0,DWORD PTR ds:0xfae564
  6c9f9f:	76 04                                           	jbe    0x6c9fa5
  6c9fa1:	b0 01                                           	mov    al,0x1
  6c9fa3:	eb 02                                           	jmp    0x6c9fa7
  6c9fa5:	32 c0                                           	xor    al,al
  6c9fa7:	c0 e0 04                                        	shl    al,0x4
  6c9faa:	32 c3                                           	xor    al,bl
  6c9fac:	24 10                                           	and    al,0x10
  6c9fae:	32 c3                                           	xor    al,bl
  6c9fb0:	88 46 42                                        	mov    BYTE PTR [esi+0x42],al
  6c9fb3:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  6c9fb7:	50                                              	push   eax
  6c9fb8:	6a 00                                           	push   0x0
  6c9fba:	8d 56 08                                        	lea    edx,[esi+0x8]
  6c9fbd:	66 89 46 40                                     	mov    WORD PTR [esi+0x40],ax
  6c9fc1:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  6c9fc5:	52                                              	push   edx
  6c9fc6:	50                                              	push   eax
  6c9fc7:	8d 4e 2c                                        	lea    ecx,[esi+0x2c]
  6c9fca:	e8 81 fa ff ff                                  	call   0x6c9a50
  6c9fcf:	8b ce                                           	mov    ecx,esi
  6c9fd1:	e8 1a 53 00 00                                  	call   0x6cf2f0
  6c9fd6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6c9fd8:	8b 02                                           	mov    eax,DWORD PTR [edx]
  6c9fda:	80 66 42 fb                                     	and    BYTE PTR [esi+0x42],0xfb
  6c9fde:	8b ce                                           	mov    ecx,esi
  6c9fe0:	ff d0                                           	call   eax
  6c9fe2:	8b 4f 50                                        	mov    ecx,DWORD PTR [edi+0x50]
  6c9fe5:	83 c6 10                                        	add    esi,0x10
  6c9fe8:	83 c7 4c                                        	add    edi,0x4c
  6c9feb:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  6c9fee:	89 3e                                           	mov    DWORD PTR [esi],edi
  6c9ff0:	5b                                              	pop    ebx
  6c9ff1:	89 77 04                                        	mov    DWORD PTR [edi+0x4],esi
  6c9ff4:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
  6c9ff7:	5d                                              	pop    ebp
  6c9ff8:	5f                                              	pop    edi
  6c9ff9:	89 32                                           	mov    DWORD PTR [edx],esi
  6c9ffb:	5e                                              	pop    esi
  6c9ffc:	c2 10 00                                        	ret    0x10
  6c9fff:	81 f9 a7 3e a3 63                               	cmp    ecx,0x63a33ea7
  6ca005:	75 48                                           	jne    0x6ca04f
  6ca007:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  6ca00b:	83 47 48 01                                     	add    DWORD PTR [edi+0x48],0x1
  6ca00f:	80 4e 42 02                                     	or     BYTE PTR [esi+0x42],0x2
  6ca013:	51                                              	push   ecx
  6ca014:	6a 00                                           	push   0x0
  6ca016:	8d 56 08                                        	lea    edx,[esi+0x8]
  6ca019:	52                                              	push   edx
  6ca01a:	50                                              	push   eax
  6ca01b:	8d 4e 30                                        	lea    ecx,[esi+0x30]
  6ca01e:	e8 7d fa ff ff                                  	call   0x6c9aa0
  6ca023:	8b ce                                           	mov    ecx,esi
  6ca025:	e8 c6 52 00 00                                  	call   0x6cf2f0
  6ca02a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  6ca02c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  6ca02e:	8b ce                                           	mov    ecx,esi
  6ca030:	ff d2                                           	call   edx
  6ca032:	8b 47 50                                        	mov    eax,DWORD PTR [edi+0x50]
  6ca035:	83 c6 10                                        	add    esi,0x10
  6ca038:	83 c7 4c                                        	add    edi,0x4c
  6ca03b:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  6ca03e:	89 3e                                           	mov    DWORD PTR [esi],edi
  6ca040:	5b                                              	pop    ebx
  6ca041:	89 77 04                                        	mov    DWORD PTR [edi+0x4],esi
  6ca044:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  6ca047:	5d                                              	pop    ebp
  6ca048:	5f                                              	pop    edi
  6ca049:	89 31                                           	mov    DWORD PTR [ecx],esi
  6ca04b:	5e                                              	pop    esi
  6ca04c:	c2 10 00                                        	ret    0x10
  6ca04f:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  6ca053:	52                                              	push   edx
  6ca054:	6a 00                                           	push   0x0
  6ca056:	8d 5e 08                                        	lea    ebx,[esi+0x8]
  6ca059:	53                                              	push   ebx
  6ca05a:	8d 6e 24                                        	lea    ebp,[esi+0x24]
  6ca05d:	50                                              	push   eax
  6ca05e:	8b cd                                           	mov    ecx,ebp
  6ca060:	e8 eb 05 f0 ff                                  	call   0x5ca650
  6ca065:	84 c0                                           	test   al,al
  6ca067:	75 2a                                           	jne    0x6ca093
  6ca069:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  6ca06d:	50                                              	push   eax
  6ca06e:	6a 00                                           	push   0x0
  6ca070:	53                                              	push   ebx
  6ca071:	68 90 c8 15 01                                  	push   0x115c890
  6ca076:	8b cd                                           	mov    ecx,ebp
  6ca078:	e8 d3 05 f0 ff                                  	call   0x5ca650
  6ca07d:	84 c0                                           	test   al,al
  6ca07f:	75 12                                           	jne    0x6ca093
  6ca081:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6ca083:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  6ca086:	6a 01                                           	push   0x1
  6ca088:	8b ce                                           	mov    ecx,esi
  6ca08a:	ff d0                                           	call   eax
  6ca08c:	5b                                              	pop    ebx
  6ca08d:	5d                                              	pop    ebp
  6ca08e:	5f                                              	pop    edi
  6ca08f:	5e                                              	pop    esi
  6ca090:	c2 10 00                                        	ret    0x10
  6ca093:	8b ce                                           	mov    ecx,esi
  6ca095:	83 47 48 01                                     	add    DWORD PTR [edi+0x48],0x1
  6ca099:	e8 52 52 00 00                                  	call   0x6cf2f0
  6ca09e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  6ca0a0:	8b 02                                           	mov    eax,DWORD PTR [edx]
  6ca0a2:	8b ce                                           	mov    ecx,esi
  6ca0a4:	ff d0                                           	call   eax
  6ca0a6:	8b 57 50                                        	mov    edx,DWORD PTR [edi+0x50]
  6ca0a9:	8d 4f 4c                                        	lea    ecx,[edi+0x4c]
  6ca0ac:	8d 46 10                                        	lea    eax,[esi+0x10]
  6ca0af:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  6ca0b2:	89 08                                           	mov    DWORD PTR [eax],ecx
  6ca0b4:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  6ca0b7:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  6ca0ba:	5b                                              	pop    ebx
  6ca0bb:	89 01                                           	mov    DWORD PTR [ecx],eax
  6ca0bd:	5d                                              	pop    ebp
  6ca0be:	5f                                              	pop    edi
  6ca0bf:	5e                                              	pop    esi
  6ca0c0:	c2 10 00                                        	ret    0x10
