# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c665c0..00c6662d; LotDetailScores_Resize
  c665c0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  c665c4:	83 ec 10             	sub    esp,0x10
  c665c7:	56                   	push   esi
  c665c8:	57                   	push   edi
  c665c9:	8b f9                	mov    edi,ecx
  c665cb:	8b 77 04             	mov    esi,DWORD PTR [edi+0x4]
  c665ce:	8b 17                	mov    edx,DWORD PTR [edi]
  c665d0:	8b ce                	mov    ecx,esi
  c665d2:	2b ca                	sub    ecx,edx
  c665d4:	c1 f9 04             	sar    ecx,0x4
  c665d7:	3b c1                	cmp    eax,ecx
  c665d9:	76 2a                	jbe    0xc66605
  c665db:	33 d2                	xor    edx,edx
  c665dd:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
  c665e1:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  c665e5:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  c665e9:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  c665ed:	8d 54 24 08          	lea    edx,[esp+0x8]
  c665f1:	52                   	push   edx
  c665f2:	2b c1                	sub    eax,ecx
  c665f4:	50                   	push   eax
  c665f5:	56                   	push   esi
  c665f6:	8b cf                	mov    ecx,edi
  c665f8:	e8 03 e5 ff ff       	call   0xc64b00
  c665fd:	5f                   	pop    edi
  c665fe:	5e                   	pop    esi
  c665ff:	83 c4 10             	add    esp,0x10
  c66602:	c2 04 00             	ret    0x4
  c66605:	c1 e0 04             	shl    eax,0x4
  c66608:	53                   	push   ebx
  c66609:	03 c2                	add    eax,edx
  c6660b:	8b d8                	mov    ebx,eax
  c6660d:	53                   	push   ebx
  c6660e:	56                   	push   esi
  c6660f:	56                   	push   esi
  c66610:	e8 eb 98 b9 ff       	call   0x7fff00
  c66615:	2b f3                	sub    esi,ebx
  c66617:	c1 fe 04             	sar    esi,0x4
  c6661a:	83 c4 0c             	add    esp,0xc
  c6661d:	f7 de                	neg    esi
  c6661f:	c1 e6 04             	shl    esi,0x4
  c66622:	01 77 04             	add    DWORD PTR [edi+0x4],esi
  c66625:	5b                   	pop    ebx
  c66626:	5f                   	pop    edi
  c66627:	5e                   	pop    esi
  c66628:	83 c4 10             	add    esp,0x10
  c6662b:	c2 04 00             	ret    0x4
