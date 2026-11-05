# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999af0 (WorldWrap_Save)
Paired Ghidra pseudocode: 10999AF0_WorldWrap_Save.c
Window: [0x10999af0, 0x10999cb0) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999af0: 83 ec 34 53 55 56 57 33 db 53 53 53 53 68 40 7c
10999b00: b9 10 6a 28 e8 a7 f3 f7 ff 8b 7c 24 60 8b f0 83
10999b10: c4 18 3b f3 74 6c 8b ce e8 03 ba 98 ff c7 06 18
10999b20: 7c b9 10 89 7e 20 88 5e 24 88 5e 25 8b 06 8b 50
10999b30: 04 8b ce 8b ee ff d2 8b cd e8 32 fe ff ff 84 c0
10999b40: 74 28 e8 a9 9a 9f ff 89 5c 24 10 8b 10 8b 52 10
10999b50: 8d 4c 24 10 51 8b c8 ff d2 84 c0 75 29 8b 4c 24
10999b60: 10 3b cb 74 05 e8 a6 b2 9f ff 3b eb 74 0a 8b 45
10999b70: 00 8b 50 08 8b cd ff d2 5f 5e 5d 33 c0 5b 83 c4
10999b80: 34 c3 33 ed eb b1 8b 54 24 10 8b 44 24 4c 8b 4c
10999b90: 24 50 89 4c 24 28 89 44 24 24 89 7c 24 20 c7 42
10999ba0: 20 04 00 00 00 8b 44 24 10 8d 4c 24 20 c7 40 08
10999bb0: 00 85 99 10 89 48 0c 8b 4c 24 10 e8 10 ac 9f ff
10999bc0: be 01 00 00 00 56 6a 05 8d 4c 24 34 e8 cf d0 f8
10999bd0: ff 8b 4c 24 10 e8 d6 9a 9f ff 83 c0 fa 3b c6 0f
10999be0: 86 86 00 00 00 8d 4c 24 2c e8 c2 ce f8 ff d9 5c
10999bf0: 24 14 39 74 24 3c 89 5c 24 2c 89 5c 24 30 89 5c
10999c00: 24 34 89 5c 24 38 75 08 0f 31 89 54 24 30 eb 17
10999c10: 8d 54 24 18 52 ff 15 a4 b2 aa 10 8b 4c 24 1c 8b
10999c20: 44 24 18 89 4c 24 30 d9 ee 83 ec 08 d9 5c 24 04
10999c30: 89 44 24 34 d9 44 24 1c d9 1c 24 e8 60 ce 9e ff
10999c40: d9 ee d9 54 24 04 d9 1c 24 57 e8 11 e9 ff ff 83
10999c50: c4 0c e8 49 47 b4 ff 3b c3 0f 84 72 ff ff ff 8b
10999c60: c8 e8 3a 49 b4 ff e9 66 ff ff ff 8b 4c 24 10 e8
10999c70: 3c 9a 9f ff 8b 4c 24 10 33 d2 83 f8 06 0f 94 c2
10999c80: 3b cb 8b f2 74 05 e8 85 b1 9f ff 3b eb 74 0a 8b
10999c90: 45 00 8b 50 08 8b cd ff d2 5f 8b c6 5e 5d 5b 83
10999ca0: c4 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999af0 <.text+0x998af0>:
10999af0:	83 ec 34                                        	sub    esp,0x34
10999af3:	53                                              	push   ebx
10999af4:	55                                              	push   ebp
10999af5:	56                                              	push   esi
10999af6:	57                                              	push   edi
10999af7:	33 db                                           	xor    ebx,ebx
10999af9:	53                                              	push   ebx
10999afa:	53                                              	push   ebx
10999afb:	53                                              	push   ebx
10999afc:	53                                              	push   ebx
10999afd:	68 40 7c b9 10                                  	push   0x10b97c40
10999b02:	6a 28                                           	push   0x28
10999b04:	e8 a7 f3 f7 ff                                  	call   0x10918eb0
10999b09:	8b 7c 24 60                                     	mov    edi,DWORD PTR [esp+0x60]
10999b0d:	8b f0                                           	mov    esi,eax
10999b0f:	83 c4 18                                        	add    esp,0x18
10999b12:	3b f3                                           	cmp    esi,ebx
10999b14:	74 6c                                           	je     0x10999b82
10999b16:	8b ce                                           	mov    ecx,esi
10999b18:	e8 03 ba 98 ff                                  	call   0x10325520
10999b1d:	c7 06 18 7c b9 10                               	mov    DWORD PTR [esi],0x10b97c18
10999b23:	89 7e 20                                        	mov    DWORD PTR [esi+0x20],edi
10999b26:	88 5e 24                                        	mov    BYTE PTR [esi+0x24],bl
10999b29:	88 5e 25                                        	mov    BYTE PTR [esi+0x25],bl
10999b2c:	8b 06                                           	mov    eax,DWORD PTR [esi]
10999b2e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10999b31:	8b ce                                           	mov    ecx,esi
10999b33:	8b ee                                           	mov    ebp,esi
10999b35:	ff d2                                           	call   edx
10999b37:	8b cd                                           	mov    ecx,ebp
10999b39:	e8 32 fe ff ff                                  	call   0x10999970
10999b3e:	84 c0                                           	test   al,al
10999b40:	74 28                                           	je     0x10999b6a
10999b42:	e8 a9 9a 9f ff                                  	call   0x103935f0
10999b47:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
10999b4b:	8b 10                                           	mov    edx,DWORD PTR [eax]
10999b4d:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
10999b50:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10999b54:	51                                              	push   ecx
10999b55:	8b c8                                           	mov    ecx,eax
10999b57:	ff d2                                           	call   edx
10999b59:	84 c0                                           	test   al,al
10999b5b:	75 29                                           	jne    0x10999b86
10999b5d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10999b61:	3b cb                                           	cmp    ecx,ebx
10999b63:	74 05                                           	je     0x10999b6a
10999b65:	e8 a6 b2 9f ff                                  	call   0x10394e10
10999b6a:	3b eb                                           	cmp    ebp,ebx
10999b6c:	74 0a                                           	je     0x10999b78
10999b6e:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10999b71:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10999b74:	8b cd                                           	mov    ecx,ebp
10999b76:	ff d2                                           	call   edx
10999b78:	5f                                              	pop    edi
10999b79:	5e                                              	pop    esi
10999b7a:	5d                                              	pop    ebp
10999b7b:	33 c0                                           	xor    eax,eax
10999b7d:	5b                                              	pop    ebx
10999b7e:	83 c4 34                                        	add    esp,0x34
10999b81:	c3                                              	ret
10999b82:	33 ed                                           	xor    ebp,ebp
10999b84:	eb b1                                           	jmp    0x10999b37
10999b86:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10999b8a:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
10999b8e:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
10999b92:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
10999b96:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
10999b9a:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
10999b9e:	c7 42 20 04 00 00 00                            	mov    DWORD PTR [edx+0x20],0x4
10999ba5:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10999ba9:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10999bad:	c7 40 08 00 85 99 10                            	mov    DWORD PTR [eax+0x8],0x10998500
10999bb4:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
10999bb7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10999bbb:	e8 10 ac 9f ff                                  	call   0x103947d0
10999bc0:	be 01 00 00 00                                  	mov    esi,0x1
10999bc5:	56                                              	push   esi
10999bc6:	6a 05                                           	push   0x5
10999bc8:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
10999bcc:	e8 cf d0 f8 ff                                  	call   0x10926ca0
10999bd1:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10999bd5:	e8 d6 9a 9f ff                                  	call   0x103936b0
10999bda:	83 c0 fa                                        	add    eax,0xfffffffa
10999bdd:	3b c6                                           	cmp    eax,esi
10999bdf:	0f 86 86 00 00 00                               	jbe    0x10999c6b
10999be5:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10999be9:	e8 c2 ce f8 ff                                  	call   0x10926ab0
10999bee:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
10999bf2:	39 74 24 3c                                     	cmp    DWORD PTR [esp+0x3c],esi
10999bf6:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
10999bfa:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
10999bfe:	89 5c 24 34                                     	mov    DWORD PTR [esp+0x34],ebx
10999c02:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
10999c06:	75 08                                           	jne    0x10999c10
10999c08:	0f 31                                           	rdtsc
10999c0a:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
10999c0e:	eb 17                                           	jmp    0x10999c27
10999c10:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10999c14:	52                                              	push   edx
10999c15:	ff 15 a4 b2 aa 10                               	call   DWORD PTR ds:0x10aab2a4
10999c1b:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10999c1f:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10999c23:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
10999c27:	d9 ee                                           	fldz
10999c29:	83 ec 08                                        	sub    esp,0x8
10999c2c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10999c30:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
10999c34:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
10999c38:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10999c3b:	e8 60 ce 9e ff                                  	call   0x10386aa0
10999c40:	d9 ee                                           	fldz
10999c42:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
10999c46:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10999c49:	57                                              	push   edi
10999c4a:	e8 11 e9 ff ff                                  	call   0x10998560
10999c4f:	83 c4 0c                                        	add    esp,0xc
10999c52:	e8 49 47 b4 ff                                  	call   0x104de3a0
10999c57:	3b c3                                           	cmp    eax,ebx
10999c59:	0f 84 72 ff ff ff                               	je     0x10999bd1
10999c5f:	8b c8                                           	mov    ecx,eax
10999c61:	e8 3a 49 b4 ff                                  	call   0x104de5a0
10999c66:	e9 66 ff ff ff                                  	jmp    0x10999bd1
10999c6b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10999c6f:	e8 3c 9a 9f ff                                  	call   0x103936b0
10999c74:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10999c78:	33 d2                                           	xor    edx,edx
10999c7a:	83 f8 06                                        	cmp    eax,0x6
10999c7d:	0f 94 c2                                        	sete   dl
10999c80:	3b cb                                           	cmp    ecx,ebx
10999c82:	8b f2                                           	mov    esi,edx
10999c84:	74 05                                           	je     0x10999c8b
10999c86:	e8 85 b1 9f ff                                  	call   0x10394e10
10999c8b:	3b eb                                           	cmp    ebp,ebx
10999c8d:	74 0a                                           	je     0x10999c99
10999c8f:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
10999c92:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10999c95:	8b cd                                           	mov    ecx,ebp
10999c97:	ff d2                                           	call   edx
10999c99:	5f                                              	pop    edi
10999c9a:	8b c6                                           	mov    eax,esi
10999c9c:	5e                                              	pop    esi
10999c9d:	5d                                              	pop    ebp
10999c9e:	5b                                              	pop    ebx
10999c9f:	83 c4 34                                        	add    esp,0x34
10999ca2:	c3                                              	ret
10999ca3:	cc                                              	int3
10999ca4:	cc                                              	int3
10999ca5:	cc                                              	int3
10999ca6:	cc                                              	int3
10999ca7:	cc                                              	int3
10999ca8:	cc                                              	int3
10999ca9:	cc                                              	int3
10999caa:	cc                                              	int3
10999cab:	cc                                              	int3
10999cac:	cc                                              	int3
10999cad:	cc                                              	int3
10999cae:	cc                                              	int3
10999caf:	cc                                              	int3
