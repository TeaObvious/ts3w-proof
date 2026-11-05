# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c5fb00..00c5fb90; LotDetailScores_PushHeap
  c5fb00:	53                   	push   ebx
  c5fb01:	8b 5c 24 08          	mov    ebx,DWORD PTR [esp+0x8]
  c5fb05:	55                   	push   ebp
  c5fb06:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  c5fb0a:	56                   	push   esi
  c5fb0b:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  c5fb0f:	8d 56 ff             	lea    edx,[esi-0x1]
  c5fb12:	d1 fa                	sar    edx,1
  c5fb14:	3b 74 24 14          	cmp    esi,DWORD PTR [esp+0x14]
  c5fb18:	7e 4a                	jle    0xc5fb64
  c5fb1a:	57                   	push   edi
  c5fb1b:	eb 03                	jmp    0xc5fb20
  c5fb1d:	8d 49 00             	lea    ecx,[ecx+0x0]
  c5fb20:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  c5fb23:	8b c2                	mov    eax,edx
  c5fb25:	c1 e0 04             	shl    eax,0x4
  c5fb28:	8d 0c 18             	lea    ecx,[eax+ebx*1]
  c5fb2b:	8b 41 08             	mov    eax,DWORD PTR [ecx+0x8]
  c5fb2e:	3b c7                	cmp    eax,edi
  c5fb30:	74 52                	je     0xc5fb84
  c5fb32:	0f 9f c0             	setg   al
  c5fb35:	84 c0                	test   al,al
  c5fb37:	74 2a                	je     0xc5fb63
  c5fb39:	8b c6                	mov    eax,esi
  c5fb3b:	8b 31                	mov    esi,DWORD PTR [ecx]
  c5fb3d:	c1 e0 04             	shl    eax,0x4
  c5fb40:	03 c3                	add    eax,ebx
  c5fb42:	89 30                	mov    DWORD PTR [eax],esi
  c5fb44:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  c5fb47:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  c5fb4a:	8b 71 08             	mov    esi,DWORD PTR [ecx+0x8]
  c5fb4d:	89 70 08             	mov    DWORD PTR [eax+0x8],esi
  c5fb50:	8b 49 0c             	mov    ecx,DWORD PTR [ecx+0xc]
  c5fb53:	8b f2                	mov    esi,edx
  c5fb55:	83 c2 ff             	add    edx,0xffffffff
  c5fb58:	d1 fa                	sar    edx,1
  c5fb5a:	3b 74 24 18          	cmp    esi,DWORD PTR [esp+0x18]
  c5fb5e:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  c5fb61:	7f bd                	jg     0xc5fb20
  c5fb63:	5f                   	pop    edi
  c5fb64:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  c5fb67:	c1 e6 04             	shl    esi,0x4
  c5fb6a:	03 f3                	add    esi,ebx
  c5fb6c:	89 16                	mov    DWORD PTR [esi],edx
  c5fb6e:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  c5fb71:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  c5fb74:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  c5fb77:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  c5fb7a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  c5fb7d:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  c5fb80:	5e                   	pop    esi
  c5fb81:	5d                   	pop    ebp
  c5fb82:	5b                   	pop    ebx
  c5fb83:	c3                   	ret
  c5fb84:	f3 0f 10 45 0c       	movss  xmm0,DWORD PTR [ebp+0xc]
  c5fb89:	0f 2f 41 0c          	comiss xmm0,DWORD PTR [ecx+0xc]
  c5fb8d:	76 d4                	jbe    0xc5fb63
  c5fb8f:	eb a8                	jmp    0xc5fb39
