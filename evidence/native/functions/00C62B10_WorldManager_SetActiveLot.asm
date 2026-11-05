# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c62b10..00c62c02; WorldManager_SetActiveLot
  c62b10:	53                   	push   ebx
  c62b11:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  c62b15:	55                   	push   ebp
  c62b16:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  c62b1a:	56                   	push   esi
  c62b1b:	8b f1                	mov    esi,ecx
  c62b1d:	8b 86 70 01 00 00    	mov    eax,DWORD PTR [esi+0x170]
  c62b23:	3b c3                	cmp    eax,ebx
  c62b25:	8b 8e 74 01 00 00    	mov    ecx,DWORD PTR [esi+0x174]
  c62b2b:	75 08                	jne    0xc62b35
  c62b2d:	3b cd                	cmp    ecx,ebp
  c62b2f:	0f 84 c8 00 00 00    	je     0xc62bfd
  c62b35:	57                   	push   edi
  c62b36:	6a 00                	push   0x0
  c62b38:	51                   	push   ecx
  c62b39:	50                   	push   eax
  c62b3a:	8b ce                	mov    ecx,esi
  c62b3c:	e8 ff db ff ff       	call   0xc60740
  c62b41:	8b f8                	mov    edi,eax
  c62b43:	85 ff                	test   edi,edi
  c62b45:	74 39                	je     0xc62b80
  c62b47:	8b 07                	mov    eax,DWORD PTR [edi]
  c62b49:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
  c62b4c:	8b cf                	mov    ecx,edi
  c62b4e:	ff d2                	call   edx
  c62b50:	83 f8 01             	cmp    eax,0x1
  c62b53:	75 2b                	jne    0xc62b80
  c62b55:	8b 86 54 01 00 00    	mov    eax,DWORD PTR [esi+0x154]
  c62b5b:	3d c9 00 00 00       	cmp    eax,0xc9
  c62b60:	74 0e                	je     0xc62b70
  c62b62:	3d ca 00 00 00       	cmp    eax,0xca
  c62b67:	74 07                	je     0xc62b70
  c62b69:	3d cc 00 00 00       	cmp    eax,0xcc
  c62b6e:	75 07                	jne    0xc62b77
  c62b70:	8b cf                	mov    ecx,edi
  c62b72:	e8 b9 b6 e6 ff       	call   0xace230
  c62b77:	6a 00                	push   0x0
  c62b79:	8b cf                	mov    ecx,edi
  c62b7b:	e8 90 81 e6 ff       	call   0xacad10
  c62b80:	6a 00                	push   0x0
  c62b82:	55                   	push   ebp
  c62b83:	53                   	push   ebx
  c62b84:	8b ce                	mov    ecx,esi
  c62b86:	89 9e 70 01 00 00    	mov    DWORD PTR [esi+0x170],ebx
  c62b8c:	89 ae 74 01 00 00    	mov    DWORD PTR [esi+0x174],ebp
  c62b92:	e8 a9 db ff ff       	call   0xc60740
  c62b97:	8b f0                	mov    esi,eax
  c62b99:	85 f6                	test   esi,esi
  c62b9b:	5f                   	pop    edi
  c62b9c:	74 16                	je     0xc62bb4
  c62b9e:	8b 06                	mov    eax,DWORD PTR [esi]
  c62ba0:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
  c62ba3:	8b ce                	mov    ecx,esi
  c62ba5:	ff d2                	call   edx
  c62ba7:	83 f8 01             	cmp    eax,0x1
  c62baa:	75 08                	jne    0xc62bb4
  c62bac:	50                   	push   eax
  c62bad:	8b ce                	mov    ecx,esi
  c62baf:	e8 5c 81 e6 ff       	call   0xacad10
  c62bb4:	6a 10                	push   0x10
  c62bb6:	e8 95 c5 e7 ff       	call   0xadf150
  c62bbb:	8b f0                	mov    esi,eax
  c62bbd:	83 c4 04             	add    esp,0x4
  c62bc0:	85 f6                	test   esi,esi
  c62bc2:	74 39                	je     0xc62bfd
  c62bc4:	c7 06 8c 5f 06 01    	mov    DWORD PTR [esi],0x1065f8c
  c62bca:	33 c0                	xor    eax,eax
  c62bcc:	8d 4e 04             	lea    ecx,[esi+0x4]
  c62bcf:	87 01                	xchg   DWORD PTR [ecx],eax
  c62bd1:	c7 06 8c 5f 06 01    	mov    DWORD PTR [esi],0x1065f8c
  c62bd7:	8b 16                	mov    edx,DWORD PTR [esi]
  c62bd9:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c62bdc:	8b ce                	mov    ecx,esi
  c62bde:	ff d0                	call   eax
  c62be0:	56                   	push   esi
  c62be1:	68 02 1b 89 04       	push   0x4891b02
  c62be6:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  c62be9:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
  c62bec:	e8 1f 06 b7 ff       	call   0x7d3210
  c62bf1:	8b 16                	mov    edx,DWORD PTR [esi]
  c62bf3:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c62bf6:	83 c4 08             	add    esp,0x8
  c62bf9:	8b ce                	mov    ecx,esi
  c62bfb:	ff d0                	call   eax
  c62bfd:	5e                   	pop    esi
  c62bfe:	5d                   	pop    ebp
  c62bff:	5b                   	pop    ebx
  c62c00:	c2 08 00             	ret    0x8
