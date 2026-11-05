# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c28da0..00c28e70; TerrainData_LoadHeightMap
  c28da0:	83 ec 18             	sub    esp,0x18
  c28da3:	53                   	push   ebx
  c28da4:	8a 5c 24 28          	mov    bl,BYTE PTR [esp+0x28]
  c28da8:	84 db                	test   bl,bl
  c28daa:	56                   	push   esi
  c28dab:	8b f1                	mov    esi,ecx
  c28dad:	74 10                	je     0xc28dbf
  c28daf:	80 7e 1c 00          	cmp    BYTE PTR [esi+0x1c],0x0
  c28db3:	75 0a                	jne    0xc28dbf
  c28db5:	5e                   	pop    esi
  c28db6:	32 c0                	xor    al,al
  c28db8:	5b                   	pop    ebx
  c28db9:	83 c4 18             	add    esp,0x18
  c28dbc:	c2 0c 00             	ret    0xc
  c28dbf:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  c28dc3:	57                   	push   edi
  c28dc4:	8b 7c 24 2c          	mov    edi,DWORD PTR [esp+0x2c]
  c28dc8:	57                   	push   edi
  c28dc9:	50                   	push   eax
  c28dca:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  c28dce:	e8 4d eb ba ff       	call   0x7d7920
  c28dd3:	6a 00                	push   0x0
  c28dd5:	6a 00                	push   0x0
  c28dd7:	6a 00                	push   0x0
  c28dd9:	6a 00                	push   0x0
  c28ddb:	68 c0 79 07 01       	push   0x10779c0
  c28de0:	6a 64                	push   0x64
  c28de2:	c6 46 1c 00          	mov    BYTE PTR [esi+0x1c],0x0
  c28de6:	88 5e 1d             	mov    BYTE PTR [esi+0x1d],bl
  c28de9:	e8 12 b7 8b ff       	call   0x4e4500
  c28dee:	83 c4 18             	add    esp,0x18
  c28df1:	85 c0                	test   eax,eax
  c28df3:	74 09                	je     0xc28dfe
  c28df5:	8b c8                	mov    ecx,eax
  c28df7:	e8 c4 dd e7 ff       	call   0xaa6bc0
  c28dfc:	eb 02                	jmp    0xc28e00
  c28dfe:	33 c0                	xor    eax,eax
  c28e00:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  c28e03:	83 c0 04             	add    eax,0x4
  c28e06:	b9 01 00 00 00       	mov    ecx,0x1
  c28e0b:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  c28e0f:	68 f2 95 d1 2a       	push   0x2ad195f2
  c28e14:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  c28e18:	e8 f3 05 bb ff       	call   0x7d9410
  c28e1d:	84 c0                	test   al,al
  c28e1f:	75 14                	jne    0xc28e35
  c28e21:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c28e25:	e8 66 eb ba ff       	call   0x7d7990
  c28e2a:	5f                   	pop    edi
  c28e2b:	5e                   	pop    esi
  c28e2c:	32 c0                	xor    al,al
  c28e2e:	5b                   	pop    ebx
  c28e2f:	83 c4 18             	add    esp,0x18
  c28e32:	c2 0c 00             	ret    0xc
  c28e35:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  c28e39:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c28e3c:	6a 07                	push   0x7
  c28e3e:	57                   	push   edi
  c28e3f:	52                   	push   edx
  c28e40:	e8 eb dd e7 ff       	call   0xaa6c30
  c28e45:	84 c0                	test   al,al
  c28e47:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c28e4b:	74 d8                	je     0xc28e25
  c28e4d:	e8 1e ec ba ff       	call   0x7d7a70
  c28e52:	80 7c 24 20 00       	cmp    BYTE PTR [esp+0x20],0x0
  c28e57:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c28e5b:	74 c8                	je     0xc28e25
  c28e5d:	c6 46 20 01          	mov    BYTE PTR [esi+0x20],0x1
  c28e61:	e8 2a eb ba ff       	call   0x7d7990
  c28e66:	5f                   	pop    edi
  c28e67:	5e                   	pop    esi
  c28e68:	b0 01                	mov    al,0x1
  c28e6a:	5b                   	pop    ebx
  c28e6b:	83 c4 18             	add    esp,0x18
  c28e6e:	c2 0c 00             	ret    0xc
