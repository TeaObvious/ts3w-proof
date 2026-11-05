# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 00c62ea0..00c62f1f; LotDetailScores_SortHeap
  c62ea0:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  c62ea4:	83 ec 10             	sub    esp,0x10
  c62ea7:	57                   	push   edi
  c62ea8:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  c62eac:	8b c1                	mov    eax,ecx
  c62eae:	2b c7                	sub    eax,edi
  c62eb0:	c1 f8 04             	sar    eax,0x4
  c62eb3:	83 f8 01             	cmp    eax,0x1
  c62eb6:	7e 63                	jle    0xc62f1b
  c62eb8:	53                   	push   ebx
  c62eb9:	bb 10 00 00 00       	mov    ebx,0x10
  c62ebe:	56                   	push   esi
  c62ebf:	8d 71 f0             	lea    esi,[ecx-0x10]
  c62ec2:	2b df                	sub    ebx,edi
  c62ec4:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c62ec6:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  c62ec9:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  c62ecd:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c62ed0:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  c62ed4:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  c62ed7:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  c62edb:	8b 0f                	mov    ecx,DWORD PTR [edi]
  c62edd:	89 0e                	mov    DWORD PTR [esi],ecx
  c62edf:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  c62ee3:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  c62ee6:	89 56 04             	mov    DWORD PTR [esi+0x4],edx
  c62ee9:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  c62eec:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  c62eef:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
  c62ef2:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c62ef6:	51                   	push   ecx
  c62ef7:	6a 00                	push   0x0
  c62ef9:	83 c0 ff             	add    eax,0xffffffff
  c62efc:	50                   	push   eax
  c62efd:	6a 00                	push   0x0
  c62eff:	57                   	push   edi
  c62f00:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  c62f03:	e8 08 ec ff ff       	call   0xc61b10
  c62f08:	83 ee 10             	sub    esi,0x10
  c62f0b:	8d 04 33             	lea    eax,[ebx+esi*1]
  c62f0e:	c1 f8 04             	sar    eax,0x4
  c62f11:	83 c4 14             	add    esp,0x14
  c62f14:	83 f8 01             	cmp    eax,0x1
  c62f17:	7f ab                	jg     0xc62ec4
  c62f19:	5e                   	pop    esi
  c62f1a:	5b                   	pop    ebx
  c62f1b:	5f                   	pop    edi
  c62f1c:	83 c4 10             	add    esp,0x10
  c62f1f:	c3                   	ret
