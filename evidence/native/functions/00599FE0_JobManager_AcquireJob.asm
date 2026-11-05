# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00599fe0..0059a0d5; JobManager_AcquireJob
  599fe0:	53                   	push   ebx
  599fe1:	55                   	push   ebp
  599fe2:	56                   	push   esi
  599fe3:	57                   	push   edi
  599fe4:	8b f9                	mov    edi,ecx
  599fe6:	8d 6f 08             	lea    ebp,[edi+0x8]
  599fe9:	68 ac a7 fd 00       	push   0xfda7ac
  599fee:	8b cd                	mov    ecx,ebp
  599ff0:	e8 0b 7c f4 ff       	call   0x4e1c00
  599ff5:	8d 47 48             	lea    eax,[edi+0x48]
  599ff8:	33 db                	xor    ebx,ebx
  599ffa:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  599ffd:	74 7a                	je     0x59a079
  599fff:	8b 30                	mov    esi,DWORD PTR [eax]
  59a001:	8b ce                	mov    ecx,esi
  59a003:	8b 11                	mov    edx,DWORD PTR [ecx]
  59a005:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  59a008:	8b 08                	mov    ecx,DWORD PTR [eax]
  59a00a:	8b 11                	mov    edx,DWORD PTR [ecx]
  59a00c:	89 10                	mov    DWORD PTR [eax],edx
  59a00e:	3b f3                	cmp    esi,ebx
  59a010:	74 45                	je     0x59a057
  59a012:	8d 46 30             	lea    eax,[esi+0x30]
  59a015:	b9 01 00 00 00       	mov    ecx,0x1
  59a01a:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  59a01e:	89 5e 08             	mov    DWORD PTR [esi+0x8],ebx
  59a021:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  59a024:	89 7e 34             	mov    DWORD PTR [esi+0x34],edi
  59a027:	89 5e 10             	mov    DWORD PTR [esi+0x10],ebx
  59a02a:	89 5e 20             	mov    DWORD PTR [esi+0x20],ebx
  59a02d:	89 5e 48             	mov    DWORD PTR [esi+0x48],ebx
  59a030:	c7 46 28 ff ff ff ff 	mov    DWORD PTR [esi+0x28],0xffffffff
  59a037:	8d 47 50             	lea    eax,[edi+0x50]
  59a03a:	c7 46 24 01 00 00 00 	mov    DWORD PTR [esi+0x24],0x1
  59a041:	88 5e 4c             	mov    BYTE PTR [esi+0x4c],bl
  59a044:	88 5e 4d             	mov    BYTE PTR [esi+0x4d],bl
  59a047:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  59a04a:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  59a04d:	89 06                	mov    DWORD PTR [esi],eax
  59a04f:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59a052:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59a055:	89 30                	mov    DWORD PTR [eax],esi
  59a057:	8b cd                	mov    ecx,ebp
  59a059:	e8 62 7c f4 ff       	call   0x4e1cc0
  59a05e:	3b f3                	cmp    esi,ebx
  59a060:	74 60                	je     0x59a0c2
  59a062:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  59a066:	8d 46 08             	lea    eax,[esi+0x8]
  59a069:	89 01                	mov    DWORD PTR [ecx],eax
  59a06b:	5f                   	pop    edi
  59a06c:	33 c0                	xor    eax,eax
  59a06e:	3b f3                	cmp    esi,ebx
  59a070:	5e                   	pop    esi
  59a071:	5d                   	pop    ebp
  59a072:	0f 95 c0             	setne  al
  59a075:	5b                   	pop    ebx
  59a076:	c2 04 00             	ret    0x4
  59a079:	53                   	push   ebx
  59a07a:	53                   	push   ebx
  59a07b:	53                   	push   ebx
  59a07c:	53                   	push   ebx
  59a07d:	68 ac a8 fd 00       	push   0xfda8ac
  59a082:	6a 50                	push   0x50
  59a084:	e8 77 a4 f4 ff       	call   0x4e4500
  59a089:	83 c4 18             	add    esp,0x18
  59a08c:	3b c3                	cmp    eax,ebx
  59a08e:	74 2e                	je     0x59a0be
  59a090:	33 c9                	xor    ecx,ecx
  59a092:	8d 50 30             	lea    edx,[eax+0x30]
  59a095:	87 0a                	xchg   DWORD PTR [edx],ecx
  59a097:	8d 48 38             	lea    ecx,[eax+0x38]
  59a09a:	89 49 04             	mov    DWORD PTR [ecx+0x4],ecx
  59a09d:	89 09                	mov    DWORD PTR [ecx],ecx
  59a09f:	8d 48 40             	lea    ecx,[eax+0x40]
  59a0a2:	89 49 04             	mov    DWORD PTR [ecx+0x4],ecx
  59a0a5:	89 09                	mov    DWORD PTR [ecx],ecx
  59a0a7:	88 58 4e             	mov    BYTE PTR [eax+0x4e],bl
  59a0aa:	c7 40 1c 7a 8f f9 00 	mov    DWORD PTR [eax+0x1c],0xf98f7a
  59a0b1:	89 58 18             	mov    DWORD PTR [eax+0x18],ebx
  59a0b4:	89 58 2c             	mov    DWORD PTR [eax+0x2c],ebx
  59a0b7:	8b f0                	mov    esi,eax
  59a0b9:	e9 50 ff ff ff       	jmp    0x59a00e
  59a0be:	33 f6                	xor    esi,esi
  59a0c0:	eb 95                	jmp    0x59a057
  59a0c2:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  59a0c6:	33 c0                	xor    eax,eax
  59a0c8:	5f                   	pop    edi
  59a0c9:	3b f3                	cmp    esi,ebx
  59a0cb:	5e                   	pop    esi
  59a0cc:	5d                   	pop    ebp
  59a0cd:	89 01                	mov    DWORD PTR [ecx],eax
  59a0cf:	0f 95 c0             	setne  al
  59a0d2:	5b                   	pop    ebx
  59a0d3:	c2 04 00             	ret    0x4
