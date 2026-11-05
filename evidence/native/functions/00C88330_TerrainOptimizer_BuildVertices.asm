# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c88330..00c88440; TerrainOptimizer_BuildVertices
  c88330:	f3 0f 10 44 24 10    	movss  xmm0,DWORD PTR [esp+0x10]
  c88336:	55                   	push   ebp
  c88337:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  c8833b:	83 fd 02             	cmp    ebp,0x2
  c8833e:	56                   	push   esi
  c8833f:	8b f1                	mov    esi,ecx
  c88341:	57                   	push   edi
  c88342:	f3 0f 11 46 30       	movss  DWORD PTR [esi+0x30],xmm0
  c88347:	c7 46 0c 00 00 00 00 	mov    DWORD PTR [esi+0xc],0x0
  c8834e:	76 15                	jbe    0xc88365
  c88350:	83 46 0c 01          	add    DWORD PTR [esi+0xc],0x1
  c88354:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c88357:	b8 01 00 00 00       	mov    eax,0x1
  c8835c:	d3 e0                	shl    eax,cl
  c8835e:	83 c0 01             	add    eax,0x1
  c88361:	3b c5                	cmp    eax,ebp
  c88363:	72 eb                	jb     0xc88350
  c88365:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  c88368:	bf 01 00 00 00       	mov    edi,0x1
  c8836d:	d3 e7                	shl    edi,cl
  c8836f:	83 c5 01             	add    ebp,0x1
  c88372:	83 c7 01             	add    edi,0x1
  c88375:	3b 7e 08             	cmp    edi,DWORD PTR [esi+0x8]
  c88378:	0f 84 ab 00 00 00    	je     0xc88429
  c8837e:	8b 06                	mov    eax,DWORD PTR [esi]
  c88380:	85 c0                	test   eax,eax
  c88382:	74 23                	je     0xc883a7
  c88384:	8b 08                	mov    ecx,DWORD PTR [eax]
  c88386:	51                   	push   ecx
  c88387:	e8 54 c1 85 ff       	call   0x4e44e0
  c8838c:	8b 16                	mov    edx,DWORD PTR [esi]
  c8838e:	52                   	push   edx
  c8838f:	e8 4c c1 85 ff       	call   0x4e44e0
  c88394:	83 c4 08             	add    esp,0x8
  c88397:	33 c0                	xor    eax,eax
  c88399:	89 06                	mov    DWORD PTR [esi],eax
  c8839b:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  c8839e:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  c883a1:	88 46 34             	mov    BYTE PTR [esi+0x34],al
  c883a4:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  c883a7:	33 c9                	xor    ecx,ecx
  c883a9:	8b c7                	mov    eax,edi
  c883ab:	ba 04 00 00 00       	mov    edx,0x4
  c883b0:	f7 e2                	mul    edx
  c883b2:	6a 00                	push   0x0
  c883b4:	0f 90 c1             	seto   cl
  c883b7:	6a 00                	push   0x0
  c883b9:	6a 00                	push   0x0
  c883bb:	6a 00                	push   0x0
  c883bd:	68 d4 ba 07 01       	push   0x107bad4
  c883c2:	89 7e 08             	mov    DWORD PTR [esi+0x8],edi
  c883c5:	f7 d9                	neg    ecx
  c883c7:	0b c8                	or     ecx,eax
  c883c9:	51                   	push   ecx
  c883ca:	e8 31 c1 85 ff       	call   0x4e4500
  c883cf:	89 06                	mov    DWORD PTR [esi],eax
  c883d1:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c883d4:	0f af c0             	imul   eax,eax
  c883d7:	33 c9                	xor    ecx,ecx
  c883d9:	ba 04 00 00 00       	mov    edx,0x4
  c883de:	f7 e2                	mul    edx
  c883e0:	6a 00                	push   0x0
  c883e2:	0f 90 c1             	seto   cl
  c883e5:	6a 00                	push   0x0
  c883e7:	6a 00                	push   0x0
  c883e9:	6a 00                	push   0x0
  c883eb:	68 b8 ba 07 01       	push   0x107bab8
  c883f0:	f7 d9                	neg    ecx
  c883f2:	0b c8                	or     ecx,eax
  c883f4:	51                   	push   ecx
  c883f5:	e8 06 c1 85 ff       	call   0x4e4500
  c883fa:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c883fc:	89 01                	mov    DWORD PTR [ecx],eax
  c883fe:	b8 01 00 00 00       	mov    eax,0x1
  c88403:	83 c4 30             	add    esp,0x30
  c88406:	39 46 08             	cmp    DWORD PTR [esi+0x8],eax
  c88409:	76 1e                	jbe    0xc88429
  c8840b:	eb 03                	jmp    0xc88410
  c8840d:	8d 49 00             	lea    ecx,[ecx+0x0]
  c88410:	8b 16                	mov    edx,DWORD PTR [esi]
  c88412:	8b 7c 82 fc          	mov    edi,DWORD PTR [edx+eax*4-0x4]
  c88416:	8d 0c 82             	lea    ecx,[edx+eax*4]
  c88419:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c8841c:	8d 14 97             	lea    edx,[edi+edx*4]
  c8841f:	83 c0 01             	add    eax,0x1
  c88422:	89 11                	mov    DWORD PTR [ecx],edx
  c88424:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  c88427:	72 e7                	jb     0xc88410
  c88429:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c8842d:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c88431:	55                   	push   ebp
  c88432:	50                   	push   eax
  c88433:	51                   	push   ecx
  c88434:	8b ce                	mov    ecx,esi
  c88436:	e8 45 fe ff ff       	call   0xc88280
  c8843b:	5f                   	pop    edi
  c8843c:	5e                   	pop    esi
  c8843d:	5d                   	pop    ebp
  c8843e:	c2 10 00             	ret    0x10
