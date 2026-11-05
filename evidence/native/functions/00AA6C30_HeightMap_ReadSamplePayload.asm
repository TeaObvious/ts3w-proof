# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00aa6c30..00aa6d53; HeightMap_ReadSamplePayload
  aa6c30:	83 ec 08             	sub    esp,0x8
  aa6c33:	53                   	push   ebx
  aa6c34:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
  aa6c38:	55                   	push   ebp
  aa6c39:	56                   	push   esi
  aa6c3a:	57                   	push   edi
  aa6c3b:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  aa6c3f:	53                   	push   ebx
  aa6c40:	8d 44 24 14          	lea    eax,[esp+0x14]
  aa6c44:	50                   	push   eax
  aa6c45:	57                   	push   edi
  aa6c46:	8b f1                	mov    esi,ecx
  aa6c48:	e8 33 6d a3 ff       	call   0x4dd980
  aa6c4d:	53                   	push   ebx
  aa6c4e:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  aa6c52:	51                   	push   ecx
  aa6c53:	57                   	push   edi
  aa6c54:	e8 27 6d a3 ff       	call   0x4dd980
  aa6c59:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  aa6c5d:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  aa6c61:	53                   	push   ebx
  aa6c62:	8d 56 08             	lea    edx,[esi+0x8]
  aa6c65:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  aa6c68:	89 4e 18             	mov    DWORD PTR [esi+0x18],ecx
  aa6c6b:	52                   	push   edx
  aa6c6c:	83 c0 ff             	add    eax,0xffffffff
  aa6c6f:	83 c1 ff             	add    ecx,0xffffffff
  aa6c72:	57                   	push   edi
  aa6c73:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  aa6c76:	89 4e 20             	mov    DWORD PTR [esi+0x20],ecx
  aa6c79:	e8 02 6d a3 ff       	call   0x4dd980
  aa6c7e:	53                   	push   ebx
  aa6c7f:	8d 44 24 44          	lea    eax,[esp+0x44]
  aa6c83:	50                   	push   eax
  aa6c84:	57                   	push   edi
  aa6c85:	e8 f6 6c a3 ff       	call   0x4dd980
  aa6c8a:	dd 05 a0 50 06 01    	fld    QWORD PTR ds:0x10650a0
  aa6c90:	d9 f2                	fptan
  aa6c92:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  aa6c98:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  aa6ca0:	53                   	push   ebx
  aa6ca1:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  aa6ca5:	51                   	push   ecx
  aa6ca6:	f3 0f 5e c8          	divss  xmm1,xmm0
  aa6caa:	57                   	push   edi
  aa6cab:	f3 0f 11 46 0c       	movss  DWORD PTR [esi+0xc],xmm0
  aa6cb0:	f3 0f 11 4e 10       	movss  DWORD PTR [esi+0x10],xmm1
  aa6cb5:	c7 44 24 5c 00 00 00 00 	mov    DWORD PTR [esp+0x5c],0x0
  aa6cbd:	dd d8                	fstp   st(0)
  aa6cbf:	d8 4c 24 58          	fmul   DWORD PTR [esp+0x58]
  aa6cc3:	d9 56 24             	fst    DWORD PTR [esi+0x24]
  aa6cc6:	d8 0d 9c 50 06 01    	fmul   DWORD PTR ds:0x106509c
  aa6ccc:	d9 5e 28             	fstp   DWORD PTR [esi+0x28]
  aa6ccf:	e8 ac 6c a3 ff       	call   0x4dd980
  aa6cd4:	8b 6e 18             	mov    ebp,DWORD PTR [esi+0x18]
  aa6cd7:	0f af 6e 14          	imul   ebp,DWORD PTR [esi+0x14]
  aa6cdb:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  aa6ce1:	83 c4 3c             	add    esp,0x3c
  aa6ce4:	6a 00                	push   0x0
  aa6ce6:	8d 54 2d 00          	lea    edx,[ebp+ebp*1+0x0]
  aa6cea:	52                   	push   edx
  aa6ceb:	e8 30 02 a4 ff       	call   0x4e6f20
  aa6cf0:	85 c0                	test   eax,eax
  aa6cf2:	89 46 38             	mov    DWORD PTR [esi+0x38],eax
  aa6cf5:	75 0c                	jne    0xaa6d03
  aa6cf7:	5f                   	pop    edi
  aa6cf8:	5e                   	pop    esi
  aa6cf9:	5d                   	pop    ebp
  aa6cfa:	32 c0                	xor    al,al
  aa6cfc:	5b                   	pop    ebx
  aa6cfd:	83 c4 08             	add    esp,0x8
  aa6d00:	c2 0c 00             	ret    0xc
  aa6d03:	55                   	push   ebp
  aa6d04:	50                   	push   eax
  aa6d05:	53                   	push   ebx
  aa6d06:	57                   	push   edi
  aa6d07:	e8 e4 fb ff ff       	call   0xaa68f0
  aa6d0c:	83 c4 10             	add    esp,0x10
  aa6d0f:	66 83 7c 24 24 03    	cmp    WORD PTR [esp+0x24],0x3
  aa6d15:	76 31                	jbe    0xaa6d48
  aa6d17:	bb 01 00 00 00       	mov    ebx,0x1
  aa6d1c:	39 5c 24 20          	cmp    DWORD PTR [esp+0x20],ebx
  aa6d20:	76 26                	jbe    0xaa6d48
  aa6d22:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  aa6d25:	8b 56 14             	mov    edx,DWORD PTR [esi+0x14]
  aa6d28:	8b cb                	mov    ecx,ebx
  aa6d2a:	d3 ea                	shr    edx,cl
  aa6d2c:	d3 e8                	shr    eax,cl
  aa6d2e:	6a 01                	push   0x1
  aa6d30:	8b cf                	mov    ecx,edi
  aa6d32:	0f af c2             	imul   eax,edx
  aa6d35:	8b 17                	mov    edx,DWORD PTR [edi]
  aa6d37:	8b 52 28             	mov    edx,DWORD PTR [edx+0x28]
  aa6d3a:	03 c0                	add    eax,eax
  aa6d3c:	50                   	push   eax
  aa6d3d:	ff d2                	call   edx
  aa6d3f:	83 c3 01             	add    ebx,0x1
  aa6d42:	3b 5c 24 20          	cmp    ebx,DWORD PTR [esp+0x20]
  aa6d46:	72 da                	jb     0xaa6d22
  aa6d48:	5f                   	pop    edi
  aa6d49:	5e                   	pop    esi
  aa6d4a:	5d                   	pop    ebp
  aa6d4b:	b0 01                	mov    al,0x1
  aa6d4d:	5b                   	pop    ebx
  aa6d4e:	83 c4 08             	add    esp,0x8
  aa6d51:	c2 0c 00             	ret    0xc
