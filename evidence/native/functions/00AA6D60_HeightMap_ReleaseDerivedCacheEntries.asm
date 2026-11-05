# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00aa6d60..00aa6dc8; HeightMap_ReleaseDerivedCacheEntries
  aa6d60:	51                   	push   ecx
  aa6d61:	55                   	push   ebp
  aa6d62:	8b 69 48             	mov    ebp,DWORD PTR [ecx+0x48]
  aa6d65:	57                   	push   edi
  aa6d66:	8b 79 44             	mov    edi,DWORD PTR [ecx+0x44]
  aa6d69:	3b fd                	cmp    edi,ebp
  aa6d6b:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  aa6d6f:	74 4e                	je     0xaa6dbf
  aa6d71:	56                   	push   esi
  aa6d72:	8b 37                	mov    esi,DWORD PTR [edi]
  aa6d74:	85 f6                	test   esi,esi
  aa6d76:	74 39                	je     0xaa6db1
  aa6d78:	8b 06                	mov    eax,DWORD PTR [esi]
  aa6d7a:	85 c0                	test   eax,eax
  aa6d7c:	74 0f                	je     0xaa6d8d
  aa6d7e:	50                   	push   eax
  aa6d7f:	e8 5c d7 a3 ff       	call   0x4e44e0
  aa6d84:	83 c4 04             	add    esp,0x4
  aa6d87:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  aa6d8d:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  aa6d90:	85 c0                	test   eax,eax
  aa6d92:	74 10                	je     0xaa6da4
  aa6d94:	50                   	push   eax
  aa6d95:	e8 46 d7 a3 ff       	call   0x4e44e0
  aa6d9a:	83 c4 04             	add    esp,0x4
  aa6d9d:	c7 46 04 00 00 00 00 	mov    DWORD PTR [esi+0x4],0x0
  aa6da4:	56                   	push   esi
  aa6da5:	e8 36 d7 a3 ff       	call   0x4e44e0
  aa6daa:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  aa6dae:	83 c4 04             	add    esp,0x4
  aa6db1:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  aa6db7:	83 c7 04             	add    edi,0x4
  aa6dba:	3b fd                	cmp    edi,ebp
  aa6dbc:	75 b4                	jne    0xaa6d72
  aa6dbe:	5e                   	pop    esi
  aa6dbf:	8b 41 44             	mov    eax,DWORD PTR [ecx+0x44]
  aa6dc2:	5f                   	pop    edi
  aa6dc3:	89 41 48             	mov    DWORD PTR [ecx+0x48],eax
  aa6dc6:	5d                   	pop    ebp
  aa6dc7:	59                   	pop    ecx
  aa6dc8:	c3                   	ret
