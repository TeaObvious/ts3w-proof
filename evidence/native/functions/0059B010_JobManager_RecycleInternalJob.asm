# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059b010..0059b091; JobManager_RecycleInternalJob
  59b010:	53                   	push   ebx
  59b011:	55                   	push   ebp
  59b012:	56                   	push   esi
  59b013:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  59b017:	57                   	push   edi
  59b018:	33 ed                	xor    ebp,ebp
  59b01a:	55                   	push   ebp
  59b01b:	56                   	push   esi
  59b01c:	8b d9                	mov    ebx,ecx
  59b01e:	e8 dd fe ff ff       	call   0x59af00
  59b023:	8b 7e 18             	mov    edi,DWORD PTR [esi+0x18]
  59b026:	3b fd                	cmp    edi,ebp
  59b028:	74 3b                	je     0x59b065
  59b02a:	89 6e 18             	mov    DWORD PTR [esi+0x18],ebp
  59b02d:	8d 6b 08             	lea    ebp,[ebx+0x8]
  59b030:	8b cd                	mov    ecx,ebp
  59b032:	e8 89 6c f4 ff       	call   0x4e1cc0
  59b037:	85 ff                	test   edi,edi
  59b039:	74 0f                	je     0x59b04a
  59b03b:	8b cf                	mov    ecx,edi
  59b03d:	33 ff                	xor    edi,edi
  59b03f:	85 c9                	test   ecx,ecx
  59b041:	74 07                	je     0x59b04a
  59b043:	8b 01                	mov    eax,DWORD PTR [ecx]
  59b045:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  59b048:	ff d2                	call   edx
  59b04a:	68 ac a7 fd 00       	push   0xfda7ac
  59b04f:	8b cd                	mov    ecx,ebp
  59b051:	e8 aa 6b f4 ff       	call   0x4e1c00
  59b056:	85 ff                	test   edi,edi
  59b058:	74 09                	je     0x59b063
  59b05a:	8b 07                	mov    eax,DWORD PTR [edi]
  59b05c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  59b05f:	8b cf                	mov    ecx,edi
  59b061:	ff d2                	call   edx
  59b063:	33 ed                	xor    ebp,ebp
  59b065:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59b068:	8b 0e                	mov    ecx,DWORD PTR [esi]
  59b06a:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  59b06d:	89 6e 0c             	mov    DWORD PTR [esi+0xc],ebp
  59b070:	89 08                	mov    DWORD PTR [eax],ecx
  59b072:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59b075:	8b 4b 4c             	mov    ecx,DWORD PTR [ebx+0x4c]
  59b078:	8d 43 48             	lea    eax,[ebx+0x48]
  59b07b:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  59b07e:	89 06                	mov    DWORD PTR [esi],eax
  59b080:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59b083:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  59b086:	5f                   	pop    edi
  59b087:	89 32                	mov    DWORD PTR [edx],esi
  59b089:	89 6e 24             	mov    DWORD PTR [esi+0x24],ebp
  59b08c:	5e                   	pop    esi
  59b08d:	5d                   	pop    ebp
  59b08e:	5b                   	pop    ebx
  59b08f:	c2 04 00             	ret    0x4
