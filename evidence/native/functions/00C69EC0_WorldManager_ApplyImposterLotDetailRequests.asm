# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c69ec0..00c69f4c; WorldManager_ApplyImposterLotDetailRequests
  c69ec0:	51                   	push   ecx
  c69ec1:	55                   	push   ebp
  c69ec2:	57                   	push   edi
  c69ec3:	8b f9                	mov    edi,ecx
  c69ec5:	80 bf cc 01 00 00 00 	cmp    BYTE PTR [edi+0x1cc],0x0
  c69ecc:	74 05                	je     0xc69ed3
  c69ece:	e8 ed e5 ff ff       	call   0xc684c0
  c69ed3:	8b 87 08 02 00 00    	mov    eax,DWORD PTR [edi+0x208]
  c69ed9:	8b af 04 02 00 00    	mov    ebp,DWORD PTR [edi+0x204]
  c69edf:	3b e8                	cmp    ebp,eax
  c69ee1:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  c69ee5:	74 62                	je     0xc69f49
  c69ee7:	53                   	push   ebx
  c69ee8:	56                   	push   esi
  c69ee9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  c69ef0:	8b 5d 00             	mov    ebx,DWORD PTR [ebp+0x0]
  c69ef3:	85 db                	test   ebx,ebx
  c69ef5:	74 47                	je     0xc69f3e
  c69ef7:	80 bf da 00 00 00 00 	cmp    BYTE PTR [edi+0xda],0x0
  c69efe:	74 35                	je     0xc69f35
  c69f00:	8b 8f 74 01 00 00    	mov    ecx,DWORD PTR [edi+0x174]
  c69f06:	8b 87 70 01 00 00    	mov    eax,DWORD PTR [edi+0x170]
  c69f0c:	6a 00                	push   0x0
  c69f0e:	51                   	push   ecx
  c69f0f:	50                   	push   eax
  c69f10:	8b cf                	mov    ecx,edi
  c69f12:	e8 29 68 ff ff       	call   0xc60740
  c69f17:	8b f0                	mov    esi,eax
  c69f19:	85 f6                	test   esi,esi
  c69f1b:	74 0e                	je     0xc69f2b
  c69f1d:	8b 06                	mov    eax,DWORD PTR [esi]
  c69f1f:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
  c69f22:	8b ce                	mov    ecx,esi
  c69f24:	ff d2                	call   edx
  c69f26:	83 f8 01             	cmp    eax,0x1
  c69f29:	74 02                	je     0xc69f2d
  c69f2b:	33 f6                	xor    esi,esi
  c69f2d:	3b de                	cmp    ebx,esi
  c69f2f:	75 04                	jne    0xc69f35
  c69f31:	6a 01                	push   0x1
  c69f33:	eb 02                	jmp    0xc69f37
  c69f35:	6a 00                	push   0x0
  c69f37:	8b cb                	mov    ecx,ebx
  c69f39:	e8 12 73 e5 ff       	call   0xac1250
  c69f3e:	83 c5 04             	add    ebp,0x4
  c69f41:	3b 6c 24 10          	cmp    ebp,DWORD PTR [esp+0x10]
  c69f45:	75 a9                	jne    0xc69ef0
  c69f47:	5e                   	pop    esi
  c69f48:	5b                   	pop    ebx
  c69f49:	5f                   	pop    edi
  c69f4a:	5d                   	pop    ebp
  c69f4b:	59                   	pop    ecx
  c69f4c:	c3                   	ret
