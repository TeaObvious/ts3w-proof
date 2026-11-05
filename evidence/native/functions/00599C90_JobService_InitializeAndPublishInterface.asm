# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00599c90..00599d3d; JobService_InitializeAndPublishInterface
  599c90:	56                   	push   esi
  599c91:	57                   	push   edi
  599c92:	8b f9                	mov    edi,ecx
  599c94:	8b 47 18             	mov    eax,DWORD PTR [edi+0x18]
  599c97:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  599c9a:	8d 77 18             	lea    esi,[edi+0x18]
  599c9d:	6a 01                	push   0x1
  599c9f:	8b ce                	mov    ecx,esi
  599ca1:	ff d2                	call   edx
  599ca3:	84 c0                	test   al,al
  599ca5:	75 03                	jne    0x599caa
  599ca7:	5f                   	pop    edi
  599ca8:	5e                   	pop    esi
  599ca9:	c3                   	ret
  599caa:	80 bf d0 00 00 00 00 	cmp    BYTE PTR [edi+0xd0],0x0
  599cb1:	b8 01 00 00 80       	mov    eax,0x80000001
  599cb6:	74 05                	je     0x599cbd
  599cb8:	b8 05 00 00 80       	mov    eax,0x80000005
  599cbd:	8b 16                	mov    edx,DWORD PTR [esi]
  599cbf:	6a ff                	push   0xffffffff
  599cc1:	6a 00                	push   0x0
  599cc3:	50                   	push   eax
  599cc4:	8b 42 14             	mov    eax,DWORD PTR [edx+0x14]
  599cc7:	8b ce                	mov    ecx,esi
  599cc9:	ff d0                	call   eax
  599ccb:	89 87 c8 00 00 00    	mov    DWORD PTR [edi+0xc8],eax
  599cd1:	89 35 cc f2 1c 01    	mov    DWORD PTR ds:0x11cf2cc,esi
  599cd7:	e8 f4 6b 00 00       	call   0x5a08d0
  599cdc:	85 c0                	test   eax,eax
  599cde:	74 13                	je     0x599cf3
  599ce0:	8b 10                	mov    edx,DWORD PTR [eax]
  599ce2:	68 10 27 00 00       	push   0x2710
  599ce7:	8b c8                	mov    ecx,eax
  599ce9:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  599cec:	68 f4 a7 fd 00       	push   0xfda7f4
  599cf1:	ff d0                	call   eax
  599cf3:	e8 d8 6b 00 00       	call   0x5a08d0
  599cf8:	85 c0                	test   eax,eax
  599cfa:	74 1b                	je     0x599d17
  599cfc:	8b 10                	mov    edx,DWORD PTR [eax]
  599cfe:	8b 52 38             	mov    edx,DWORD PTR [edx+0x38]
  599d01:	6a 01                	push   0x1
  599d03:	6a 64                	push   0x64
  599d05:	6a 01                	push   0x1
  599d07:	68 dc a7 fd 00       	push   0xfda7dc
  599d0c:	8d 8f cc 00 00 00    	lea    ecx,[edi+0xcc]
  599d12:	51                   	push   ecx
  599d13:	8b c8                	mov    ecx,eax
  599d15:	ff d2                	call   edx
  599d17:	e8 b4 6b 00 00       	call   0x5a08d0
  599d1c:	85 c0                	test   eax,eax
  599d1e:	74 10                	je     0x599d30
  599d20:	8b 10                	mov    edx,DWORD PTR [eax]
  599d22:	68 ff ff ff 7f       	push   0x7fffffff
  599d27:	8b c8                	mov    ecx,eax
  599d29:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  599d2c:	6a 00                	push   0x0
  599d2e:	ff d0                	call   eax
  599d30:	83 c7 10             	add    edi,0x10
  599d33:	89 3d c8 f2 1c 01    	mov    DWORD PTR ds:0x11cf2c8,edi
  599d39:	5f                   	pop    edi
  599d3a:	b0 01                	mov    al,0x1
  599d3c:	5e                   	pop    esi
  599d3d:	c3                   	ret
