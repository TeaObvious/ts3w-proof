# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c61b10..00c61bcb; LotDetailScores_AdjustHeap
  c61b10:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c61b14:	55                   	push   ebp
  c61b15:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  c61b19:	56                   	push   esi
  c61b1a:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  c61b1e:	8d 54 09 02          	lea    edx,[ecx+ecx*1+0x2]
  c61b22:	3b d5                	cmp    edx,ebp
  c61b24:	57                   	push   edi
  c61b25:	7d 54                	jge    0xc61b7b
  c61b27:	53                   	push   ebx
  c61b28:	eb 06                	jmp    0xc61b30
  c61b2a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  c61b30:	8b c2                	mov    eax,edx
  c61b32:	c1 e0 04             	shl    eax,0x4
  c61b35:	8b 7c 30 08          	mov    edi,DWORD PTR [eax+esi*1+0x8]
  c61b39:	8b 5c 30 f8          	mov    ebx,DWORD PTR [eax+esi*1-0x8]
  c61b3d:	03 c6                	add    eax,esi
  c61b3f:	3b fb                	cmp    edi,ebx
  c61b41:	74 7c                	je     0xc61bbf
  c61b43:	0f 9f c0             	setg   al
  c61b46:	84 c0                	test   al,al
  c61b48:	74 03                	je     0xc61b4d
  c61b4a:	83 ea 01             	sub    edx,0x1
  c61b4d:	8b c2                	mov    eax,edx
  c61b4f:	c1 e0 04             	shl    eax,0x4
  c61b52:	8b 3c 30             	mov    edi,DWORD PTR [eax+esi*1]
  c61b55:	03 c6                	add    eax,esi
  c61b57:	c1 e1 04             	shl    ecx,0x4
  c61b5a:	03 ce                	add    ecx,esi
  c61b5c:	89 39                	mov    DWORD PTR [ecx],edi
  c61b5e:	8b 78 04             	mov    edi,DWORD PTR [eax+0x4]
  c61b61:	89 79 04             	mov    DWORD PTR [ecx+0x4],edi
  c61b64:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  c61b67:	89 79 08             	mov    DWORD PTR [ecx+0x8],edi
  c61b6a:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  c61b6d:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
  c61b70:	8b ca                	mov    ecx,edx
  c61b72:	8d 54 12 02          	lea    edx,[edx+edx*1+0x2]
  c61b76:	3b d5                	cmp    edx,ebp
  c61b78:	7c b6                	jl     0xc61b30
  c61b7a:	5b                   	pop    ebx
  c61b7b:	75 2a                	jne    0xc61ba7
  c61b7d:	8b c2                	mov    eax,edx
  c61b7f:	c1 e0 04             	shl    eax,0x4
  c61b82:	8d 7c 30 f0          	lea    edi,[eax+esi*1-0x10]
  c61b86:	8b c1                	mov    eax,ecx
  c61b88:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c61b8a:	c1 e0 04             	shl    eax,0x4
  c61b8d:	89 0c 30             	mov    DWORD PTR [eax+esi*1],ecx
  c61b90:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  c61b93:	03 c6                	add    eax,esi
  c61b95:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  c61b98:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  c61b9b:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  c61b9e:	8b 4f 0c             	mov    ecx,DWORD PTR [edi+0xc]
  c61ba1:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  c61ba4:	8d 4a ff             	lea    ecx,[edx-0x1]
  c61ba7:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  c61bab:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c61baf:	52                   	push   edx
  c61bb0:	51                   	push   ecx
  c61bb1:	50                   	push   eax
  c61bb2:	56                   	push   esi
  c61bb3:	e8 48 df ff ff       	call   0xc5fb00
  c61bb8:	83 c4 10             	add    esp,0x10
  c61bbb:	5f                   	pop    edi
  c61bbc:	5e                   	pop    esi
  c61bbd:	5d                   	pop    ebp
  c61bbe:	c3                   	ret
  c61bbf:	f3 0f 10 40 fc       	movss  xmm0,DWORD PTR [eax-0x4]
  c61bc4:	0f 2f 40 0c          	comiss xmm0,DWORD PTR [eax+0xc]
  c61bc8:	77 80                	ja     0xc61b4a
  c61bca:	eb 81                	jmp    0xc61b4d
