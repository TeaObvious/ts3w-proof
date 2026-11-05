# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c63b80..00c63c24; LotDetailScores_PartialSort
  c63b80:	83 ec 10             	sub    esp,0x10
  c63b83:	53                   	push   ebx
  c63b84:	8b 5c 24 1c          	mov    ebx,DWORD PTR [esp+0x1c]
  c63b88:	55                   	push   ebp
  c63b89:	56                   	push   esi
  c63b8a:	57                   	push   edi
  c63b8b:	8b 7c 24 24          	mov    edi,DWORD PTR [esp+0x24]
  c63b8f:	53                   	push   ebx
  c63b90:	57                   	push   edi
  c63b91:	e8 9a f2 ff ff       	call   0xc62e30
  c63b96:	8b 6c 24 34          	mov    ebp,DWORD PTR [esp+0x34]
  c63b9a:	83 c4 08             	add    esp,0x8
  c63b9d:	3b dd                	cmp    ebx,ebp
  c63b9f:	8b f3                	mov    esi,ebx
  c63ba1:	73 63                	jae    0xc63c06
  c63ba3:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c63ba6:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  c63ba9:	3b c1                	cmp    eax,ecx
  c63bab:	74 6b                	je     0xc63c18
  c63bad:	0f 9f c0             	setg   al
  c63bb0:	84 c0                	test   al,al
  c63bb2:	74 4b                	je     0xc63bff
  c63bb4:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  c63bb7:	8b 06                	mov    eax,DWORD PTR [esi]
  c63bb9:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c63bbc:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  c63bc0:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  c63bc3:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  c63bc7:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c63bc9:	89 0e                	mov    DWORD PTR [esi],ecx
  c63bcb:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  c63bcf:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  c63bd2:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  c63bd5:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  c63bd9:	8b 47 08             	mov    eax,DWORD PTR [edi+0x8]
  c63bdc:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  c63bdf:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  c63be2:	8d 54 24 10          	lea    edx,[esp+0x10]
  c63be6:	52                   	push   edx
  c63be7:	8b c3                	mov    eax,ebx
  c63be9:	2b c7                	sub    eax,edi
  c63beb:	6a 00                	push   0x0
  c63bed:	c1 f8 04             	sar    eax,0x4
  c63bf0:	50                   	push   eax
  c63bf1:	6a 00                	push   0x0
  c63bf3:	57                   	push   edi
  c63bf4:	89 4e 0c             	mov    DWORD PTR [esi+0xc],ecx
  c63bf7:	e8 14 df ff ff       	call   0xc61b10
  c63bfc:	83 c4 14             	add    esp,0x14
  c63bff:	83 c6 10             	add    esi,0x10
  c63c02:	3b f5                	cmp    esi,ebp
  c63c04:	72 9d                	jb     0xc63ba3
  c63c06:	53                   	push   ebx
  c63c07:	57                   	push   edi
  c63c08:	e8 93 f2 ff ff       	call   0xc62ea0
  c63c0d:	83 c4 08             	add    esp,0x8
  c63c10:	5f                   	pop    edi
  c63c11:	5e                   	pop    esi
  c63c12:	5d                   	pop    ebp
  c63c13:	5b                   	pop    ebx
  c63c14:	83 c4 10             	add    esp,0x10
  c63c17:	c3                   	ret
  c63c18:	f3 0f 10 47 0c       	movss  xmm0,DWORD PTR [edi+0xc]
  c63c1d:	0f 2f 46 0c          	comiss xmm0,DWORD PTR [esi+0xc]
  c63c21:	77 91                	ja     0xc63bb4
  c63c23:	eb da                	jmp    0xc63bff
