# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c22c30..00c22cff; TerrainOptimizerOwner_InitializeBudgets
  c22c30:	83 ec 0c             	sub    esp,0xc
  c22c33:	56                   	push   esi
  c22c34:	8b f1                	mov    esi,ecx
  c22c36:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c22c39:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  c22c3c:	57                   	push   edi
  c22c3d:	8b 78 18             	mov    edi,DWORD PTR [eax+0x18]
  c22c40:	0f af 78 14          	imul   edi,DWORD PTR [eax+0x14]
  c22c44:	b8 87 61 18 86       	mov    eax,0x86186187
  c22c49:	f7 e7                	mul    edi
  c22c4b:	8b c7                	mov    eax,edi
  c22c4d:	2b c2                	sub    eax,edx
  c22c4f:	d1 e8                	shr    eax,1
  c22c51:	03 c2                	add    eax,edx
  c22c53:	c1 e8 05             	shr    eax,0x5
  c22c56:	80 3d 78 51 18 01 00 	cmp    BYTE PTR ds:0x1185178,0x0
  c22c5d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  c22c61:	74 1d                	je     0xc22c80
  c22c63:	3d 10 27 00 00       	cmp    eax,0x2710
  c22c68:	c7 44 24 08 10 27 00 00 	mov    DWORD PTR [esp+0x8],0x2710
  c22c70:	8d 44 24 08          	lea    eax,[esp+0x8]
  c22c74:	72 04                	jb     0xc22c7a
  c22c76:	8d 44 24 10          	lea    eax,[esp+0x10]
  c22c7a:	8b 00                	mov    eax,DWORD PTR [eax]
  c22c7c:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  c22c80:	8b 4e 68             	mov    ecx,DWORD PTR [esi+0x68]
  c22c83:	85 c9                	test   ecx,ecx
  c22c85:	c7 46 58 98 3a 00 00 	mov    DWORD PTR [esi+0x58],0x3a98
  c22c8c:	89 46 5c             	mov    DWORD PTR [esi+0x5c],eax
  c22c8f:	74 12                	je     0xc22ca3
  c22c91:	8b 56 58             	mov    edx,DWORD PTR [esi+0x58]
  c22c94:	52                   	push   edx
  c22c95:	68 00 01 00 00       	push   0x100
  c22c9a:	50                   	push   eax
  c22c9b:	e8 e0 5d 06 00       	call   0xc88a80
  c22ca0:	d9 5e 60             	fstp   DWORD PTR [esi+0x60]
  c22ca3:	b8 cd cc cc cc       	mov    eax,0xcccccccd
  c22ca8:	f7 e7                	mul    edi
  c22caa:	c1 ea 03             	shr    edx,0x3
  c22cad:	80 3d 78 51 18 01 00 	cmp    BYTE PTR ds:0x1185178,0x0
  c22cb4:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  c22cb8:	74 1a                	je     0xc22cd4
  c22cba:	81 fa 40 9c 00 00    	cmp    edx,0x9c40
  c22cc0:	c7 44 24 08 40 9c 00 00 	mov    DWORD PTR [esp+0x8],0x9c40
  c22cc8:	8d 44 24 08          	lea    eax,[esp+0x8]
  c22ccc:	72 04                	jb     0xc22cd2
  c22cce:	8d 44 24 0c          	lea    eax,[esp+0xc]
  c22cd2:	8b 10                	mov    edx,DWORD PTR [eax]
  c22cd4:	8b 4e 68             	mov    ecx,DWORD PTR [esi+0x68]
  c22cd7:	85 c9                	test   ecx,ecx
  c22cd9:	c7 46 4c b8 88 00 00 	mov    DWORD PTR [esi+0x4c],0x88b8
  c22ce0:	89 56 50             	mov    DWORD PTR [esi+0x50],edx
  c22ce3:	74 15                	je     0xc22cfa
  c22ce5:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  c22ce8:	8b 46 50             	mov    eax,DWORD PTR [esi+0x50]
  c22ceb:	52                   	push   edx
  c22cec:	68 00 01 00 00       	push   0x100
  c22cf1:	50                   	push   eax
  c22cf2:	e8 89 5d 06 00       	call   0xc88a80
  c22cf7:	d9 5e 54             	fstp   DWORD PTR [esi+0x54]
  c22cfa:	5f                   	pop    edi
  c22cfb:	5e                   	pop    esi
  c22cfc:	83 c4 0c             	add    esp,0xc
  c22cff:	c3                   	ret
