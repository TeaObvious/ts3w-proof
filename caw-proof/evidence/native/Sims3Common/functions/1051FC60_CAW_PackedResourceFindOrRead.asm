# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

1051fc60 <.text+0x51ec60>:
1051fc60:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1051fc64:	83 ec 1c                                        	sub    esp,0x1c
1051fc67:	83 f8 06                                        	cmp    eax,0x6
1051fc6a:	56                                              	push   esi
1051fc6b:	8b f1                                           	mov    esi,ecx
1051fc6d:	74 0e                                           	je     0x1051fc7d
1051fc6f:	83 f8 03                                        	cmp    eax,0x3
1051fc72:	74 09                                           	je     0x1051fc7d
1051fc74:	32 c0                                           	xor    al,al
1051fc76:	5e                                              	pop    esi
1051fc77:	83 c4 1c                                        	add    esp,0x1c
1051fc7a:	c2 18 00                                        	ret    0x18
1051fc7d:	55                                              	push   ebp
1051fc7e:	8d 6e 40                                        	lea    ebp,[esi+0x40]
1051fc81:	68 4c 83 b1 10                                  	push   0x10b1834c
1051fc86:	8b cd                                           	mov    ecx,ebp
1051fc88:	89 6c 24 0c                                     	mov    DWORD PTR [esp+0xc],ebp
1051fc8c:	e8 2f 6a 3f 00                                  	call   0x109166c0
1051fc91:	8b 46 14                                        	mov    eax,DWORD PTR [esi+0x14]
1051fc94:	85 c0                                           	test   eax,eax
1051fc96:	74 0a                                           	je     0x1051fca2
1051fc98:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1051fc9c:	23 c1                                           	and    eax,ecx
1051fc9e:	3b c1                                           	cmp    eax,ecx
1051fca0:	74 11                                           	je     0x1051fcb3
1051fca2:	8b cd                                           	mov    ecx,ebp
1051fca4:	e8 d7 6a 3f 00                                  	call   0x10916780
1051fca9:	5d                                              	pop    ebp
1051fcaa:	32 c0                                           	xor    al,al
1051fcac:	5e                                              	pop    esi
1051fcad:	83 c4 1c                                        	add    esp,0x1c
1051fcb0:	c2 18 00                                        	ret    0x18
1051fcb3:	8b 4e 70                                        	mov    ecx,DWORD PTR [esi+0x70]
1051fcb6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1051fcb8:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1051fcbc:	8b 40 28                                        	mov    eax,DWORD PTR [eax+0x28]
1051fcbf:	53                                              	push   ebx
1051fcc0:	57                                              	push   edi
1051fcc1:	52                                              	push   edx
1051fcc2:	ff d0                                           	call   eax
1051fcc4:	8b f8                                           	mov    edi,eax
1051fcc6:	85 ff                                           	test   edi,edi
1051fcc8:	0f 95 c3                                        	setne  bl
1051fccb:	84 db                                           	test   bl,bl
1051fccd:	74 1f                                           	je     0x1051fcee
1051fccf:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
1051fcd3:	85 c0                                           	test   eax,eax
1051fcd5:	74 17                                           	je     0x1051fcee
1051fcd7:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
1051fcd9:	89 08                                           	mov    DWORD PTR [eax],ecx
1051fcdb:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
1051fcde:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1051fce1:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
1051fce4:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1051fce7:	0f b7 57 0c                                     	movzx  edx,WORD PTR [edi+0xc]
1051fceb:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1051fcee:	83 7c 24 34 00                                  	cmp    DWORD PTR [esp+0x34],0x0
1051fcf3:	75 13                                           	jne    0x1051fd08
1051fcf5:	8b cd                                           	mov    ecx,ebp
1051fcf7:	e8 84 6a 3f 00                                  	call   0x10916780
1051fcfc:	5f                                              	pop    edi
1051fcfd:	8a c3                                           	mov    al,bl
1051fcff:	5b                                              	pop    ebx
1051fd00:	5d                                              	pop    ebp
1051fd01:	5e                                              	pop    esi
1051fd02:	83 c4 1c                                        	add    esp,0x1c
1051fd05:	c2 18 00                                        	ret    0x18
1051fd08:	84 db                                           	test   bl,bl
1051fd0a:	74 0c                                           	je     0x1051fd18
1051fd0c:	83 7f 08 ff                                     	cmp    DWORD PTR [edi+0x8],0xffffffff
1051fd10:	75 19                                           	jne    0x1051fd2b
1051fd12:	83 7f 04 01                                     	cmp    DWORD PTR [edi+0x4],0x1
1051fd16:	75 13                                           	jne    0x1051fd2b
1051fd18:	8b cd                                           	mov    ecx,ebp
1051fd1a:	e8 61 6a 3f 00                                  	call   0x10916780
1051fd1f:	5f                                              	pop    edi
1051fd20:	5b                                              	pop    ebx
1051fd21:	5d                                              	pop    ebp
1051fd22:	32 c0                                           	xor    al,al
1051fd24:	5e                                              	pop    esi
1051fd25:	83 c4 1c                                        	add    esp,0x1c
1051fd28:	c2 18 00                                        	ret    0x18
1051fd2b:	8b 5c 24 30                                     	mov    ebx,DWORD PTR [esp+0x30]
1051fd2f:	53                                              	push   ebx
1051fd30:	8d 44 24 40                                     	lea    eax,[esp+0x40]
1051fd34:	8d 4e 74                                        	lea    ecx,[esi+0x74]
1051fd37:	50                                              	push   eax
1051fd38:	33 ed                                           	xor    ebp,ebp
1051fd3a:	89 4c 24 40                                     	mov    DWORD PTR [esp+0x40],ecx
1051fd3e:	e8 6d 2d ed ff                                  	call   0x103f2ab0
1051fd43:	8b 00                                           	mov    eax,DWORD PTR [eax]
1051fd45:	8d 4e 78                                        	lea    ecx,[esi+0x78]
1051fd48:	3b c1                                           	cmp    eax,ecx
1051fd4a:	0f 84 88 00 00 00                               	je     0x1051fdd8
1051fd50:	8b 56 10                                        	mov    edx,DWORD PTR [esi+0x10]
1051fd53:	8b 78 20                                        	mov    edi,DWORD PTR [eax+0x20]
1051fd56:	68 34 85 b1 10                                  	push   0x10b18534
1051fd5b:	52                                              	push   edx
1051fd5c:	6a 58                                           	push   0x58
1051fd5e:	e8 7d 8f 3f 00                                  	call   0x10918ce0
1051fd63:	83 c4 0c                                        	add    esp,0xc
1051fd66:	85 c0                                           	test   eax,eax
1051fd68:	74 6a                                           	je     0x1051fdd4
1051fd6a:	57                                              	push   edi
1051fd6b:	8b c8                                           	mov    ecx,eax
1051fd6d:	e8 1e cc 00 00                                  	call   0x1052c990
1051fd72:	8b e8                                           	mov    ebp,eax
1051fd74:	85 ed                                           	test   ebp,ebp
1051fd76:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
1051fd7a:	74 3a                                           	je     0x1051fdb6
1051fd7c:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1051fd7f:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1051fd82:	8b cd                                           	mov    ecx,ebp
1051fd84:	ff d0                                           	call   eax
1051fd86:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1051fd8a:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
1051fd8e:	51                                              	push   ecx
1051fd8f:	52                                              	push   edx
1051fd90:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1051fd94:	e8 b7 d7 ff ff                                  	call   0x1051d550
1051fd99:	8d 44 24 14                                     	lea    eax,[esp+0x14]
1051fd9d:	50                                              	push   eax
1051fd9e:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1051fda2:	51                                              	push   ecx
1051fda3:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
1051fda7:	e8 84 fe ff ff                                  	call   0x1051fc30
1051fdac:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
1051fdaf:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1051fdb2:	8b cd                                           	mov    ecx,ebp
1051fdb4:	ff d0                                           	call   eax
1051fdb6:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
1051fdba:	89 29                                           	mov    DWORD PTR [ecx],ebp
1051fdbc:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1051fdc0:	e8 bb 69 3f 00                                  	call   0x10916780
1051fdc5:	5f                                              	pop    edi
1051fdc6:	5b                                              	pop    ebx
1051fdc7:	85 ed                                           	test   ebp,ebp
1051fdc9:	5d                                              	pop    ebp
1051fdca:	0f 95 c0                                        	setne  al
1051fdcd:	5e                                              	pop    esi
1051fdce:	83 c4 1c                                        	add    esp,0x1c
1051fdd1:	c2 18 00                                        	ret    0x18
1051fdd4:	33 ed                                           	xor    ebp,ebp
1051fdd6:	eb de                                           	jmp    0x1051fdb6
1051fdd8:	39 6e 38                                        	cmp    DWORD PTR [esi+0x38],ebp
1051fddb:	c6 44 24 3c 01                                  	mov    BYTE PTR [esp+0x3c],0x1
1051fde0:	74 0f                                           	je     0x1051fdf1
1051fde2:	8b 4e 38                                        	mov    ecx,DWORD PTR [esi+0x38]
1051fde5:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1051fde7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1051fdea:	53                                              	push   ebx
1051fdeb:	ff d2                                           	call   edx
1051fded:	88 44 24 3c                                     	mov    BYTE PTR [esp+0x3c],al
1051fdf1:	66 39 6f 0c                                     	cmp    WORD PTR [edi+0xc],bp
1051fdf5:	0f 84 a9 00 00 00                               	je     0x1051fea4
1051fdfb:	f6 44 24 40 01                                  	test   BYTE PTR [esp+0x40],0x1
1051fe00:	0f 84 9e 00 00 00                               	je     0x1051fea4
1051fe06:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
1051fe09:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1051fe0b:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
1051fe0e:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
1051fe11:	6a 00                                           	push   0x0
1051fe13:	68 00 85 b1 10                                  	push   0x10b18500
1051fe18:	52                                              	push   edx
1051fe19:	ff d0                                           	call   eax
1051fe1b:	8b d8                                           	mov    ebx,eax
1051fe1d:	85 db                                           	test   ebx,ebx
1051fe1f:	74 95                                           	je     0x1051fdb6
1051fe21:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
1051fe25:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
1051fe28:	8b 47 04                                        	mov    eax,DWORD PTR [edi+0x4]
1051fe2b:	51                                              	push   ecx
1051fe2c:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
1051fe2e:	53                                              	push   ebx
1051fe2f:	52                                              	push   edx
1051fe30:	0f b7 57 0c                                     	movzx  edx,WORD PTR [edi+0xc]
1051fe34:	50                                              	push   eax
1051fe35:	51                                              	push   ecx
1051fe36:	52                                              	push   edx
1051fe37:	8b ce                                           	mov    ecx,esi
1051fe39:	e8 e2 fc ff ff                                  	call   0x1051fb20
1051fe3e:	84 c0                                           	test   al,al
1051fe40:	74 39                                           	je     0x1051fe7b
1051fe42:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
1051fe45:	68 34 85 b1 10                                  	push   0x10b18534
1051fe4a:	50                                              	push   eax
1051fe4b:	6a 58                                           	push   0x58
1051fe4d:	e8 8e 8e 3f 00                                  	call   0x10918ce0
1051fe52:	83 c4 0c                                        	add    esp,0xc
1051fe55:	85 c0                                           	test   eax,eax
1051fe57:	74 36                                           	je     0x1051fe8f
1051fe59:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1051fe5d:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
1051fe60:	56                                              	push   esi
1051fe61:	51                                              	push   ecx
1051fe62:	6a 01                                           	push   0x1
1051fe64:	52                                              	push   edx
1051fe65:	53                                              	push   ebx
1051fe66:	8b c8                                           	mov    ecx,eax
1051fe68:	e8 e3 cb 00 00                                  	call   0x1052ca50
1051fe6d:	8b e8                                           	mov    ebp,eax
1051fe6f:	85 ed                                           	test   ebp,ebp
1051fe71:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
1051fe75:	0f 85 01 ff ff ff                               	jne    0x1051fd7c
1051fe7b:	8b 76 10                                        	mov    esi,DWORD PTR [esi+0x10]
1051fe7e:	8b 06                                           	mov    eax,DWORD PTR [esi]
1051fe80:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1051fe83:	6a 00                                           	push   0x0
1051fe85:	53                                              	push   ebx
1051fe86:	8b ce                                           	mov    ecx,esi
1051fe88:	ff d2                                           	call   edx
1051fe8a:	e9 27 ff ff ff                                  	jmp    0x1051fdb6
1051fe8f:	8b 76 10                                        	mov    esi,DWORD PTR [esi+0x10]
1051fe92:	8b 06                                           	mov    eax,DWORD PTR [esi]
1051fe94:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1051fe97:	33 ed                                           	xor    ebp,ebp
1051fe99:	55                                              	push   ebp
1051fe9a:	53                                              	push   ebx
1051fe9b:	8b ce                                           	mov    ecx,esi
1051fe9d:	ff d2                                           	call   edx
1051fe9f:	e9 12 ff ff ff                                  	jmp    0x1051fdb6
1051fea4:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
1051fea7:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1051fea9:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
1051feac:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
1051feaf:	6a 00                                           	push   0x0
1051feb1:	68 d8 84 b1 10                                  	push   0x10b184d8
1051feb6:	52                                              	push   edx
1051feb7:	ff d0                                           	call   eax
1051feb9:	8b d8                                           	mov    ebx,eax
1051febb:	85 db                                           	test   ebx,ebx
1051febd:	0f 84 f3 fe ff ff                               	je     0x1051fdb6
1051fec3:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
1051fec7:	8b 57 04                                        	mov    edx,DWORD PTR [edi+0x4]
1051feca:	8b 07                                           	mov    eax,DWORD PTR [edi]
1051fecc:	51                                              	push   ecx
1051fecd:	52                                              	push   edx
1051fece:	50                                              	push   eax
1051fecf:	53                                              	push   ebx
1051fed0:	8b ce                                           	mov    ecx,esi
1051fed2:	e8 e9 fb ff ff                                  	call   0x1051fac0
1051fed7:	84 c0                                           	test   al,al
1051fed9:	74 39                                           	je     0x1051ff14
1051fedb:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
1051fede:	68 34 85 b1 10                                  	push   0x10b18534
1051fee3:	51                                              	push   ecx
1051fee4:	6a 58                                           	push   0x58
1051fee6:	e8 f5 8d 3f 00                                  	call   0x10918ce0
1051feeb:	83 c4 0c                                        	add    esp,0xc
1051feee:	85 c0                                           	test   eax,eax
1051fef0:	74 36                                           	je     0x1051ff28
1051fef2:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1051fef6:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
1051fef9:	56                                              	push   esi
1051fefa:	52                                              	push   edx
1051fefb:	6a 01                                           	push   0x1
1051fefd:	51                                              	push   ecx
1051fefe:	53                                              	push   ebx
1051feff:	8b c8                                           	mov    ecx,eax
1051ff01:	e8 4a cb 00 00                                  	call   0x1052ca50
1051ff06:	8b e8                                           	mov    ebp,eax
1051ff08:	85 ed                                           	test   ebp,ebp
1051ff0a:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
1051ff0e:	0f 85 68 fe ff ff                               	jne    0x1051fd7c
1051ff14:	8b 76 10                                        	mov    esi,DWORD PTR [esi+0x10]
1051ff17:	8b 16                                           	mov    edx,DWORD PTR [esi]
1051ff19:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1051ff1c:	6a 00                                           	push   0x0
1051ff1e:	53                                              	push   ebx
1051ff1f:	8b ce                                           	mov    ecx,esi
1051ff21:	ff d0                                           	call   eax
1051ff23:	e9 8e fe ff ff                                  	jmp    0x1051fdb6
1051ff28:	8b 76 10                                        	mov    esi,DWORD PTR [esi+0x10]
1051ff2b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1051ff2d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1051ff30:	33 ed                                           	xor    ebp,ebp
1051ff32:	55                                              	push   ebp
1051ff33:	53                                              	push   ebx
1051ff34:	8b ce                                           	mov    ecx,esi
1051ff36:	ff d0                                           	call   eax
1051ff38:	e9 79 fe ff ff                                  	jmp    0x1051fdb6
