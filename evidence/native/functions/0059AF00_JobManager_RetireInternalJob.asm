# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059af00..0059b008; JobManager_RetireInternalJob
  59af00:	53                   	push   ebx
  59af01:	55                   	push   ebp
  59af02:	56                   	push   esi
  59af03:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  59af07:	8d 5e 38             	lea    ebx,[esi+0x38]
  59af0a:	39 5b 04             	cmp    DWORD PTR [ebx+0x4],ebx
  59af0d:	57                   	push   edi
  59af0e:	8b e9                	mov    ebp,ecx
  59af10:	74 4e                	je     0x59af60
  59af12:	8d bd 94 00 00 00    	lea    edi,[ebp+0x94]
  59af18:	eb 06                	jmp    0x59af20
  59af1a:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  59af20:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
  59af23:	8b 48 10             	mov    ecx,DWORD PTR [eax+0x10]
  59af26:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  59af29:	89 4c 24 14          	mov    DWORD PTR [esp+0x14],ecx
  59af2d:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  59af30:	89 11                	mov    DWORD PTR [ecx],edx
  59af32:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59af35:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59af38:	8b 10                	mov    edx,DWORD PTR [eax]
  59af3a:	89 11                	mov    DWORD PTR [ecx],edx
  59af3c:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  59af3f:	8b 57 04             	mov    edx,DWORD PTR [edi+0x4]
  59af42:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  59af45:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  59af49:	89 38                	mov    DWORD PTR [eax],edi
  59af4b:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  59af4e:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  59af51:	89 01                	mov    DWORD PTR [ecx],eax
  59af53:	52                   	push   edx
  59af54:	8b cd                	mov    ecx,ebp
  59af56:	e8 d5 fe ff ff       	call   0x59ae30
  59af5b:	39 5b 04             	cmp    DWORD PTR [ebx+0x4],ebx
  59af5e:	75 c0                	jne    0x59af20
  59af60:	8b 7e 24             	mov    edi,DWORD PTR [esi+0x24]
  59af63:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  59af66:	8b 0e                	mov    ecx,DWORD PTR [esi]
  59af68:	89 08                	mov    DWORD PTR [eax],ecx
  59af6a:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  59af6d:	8b 8d 84 00 00 00    	mov    ecx,DWORD PTR [ebp+0x84]
  59af73:	8d 85 80 00 00 00    	lea    eax,[ebp+0x80]
  59af79:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  59af7c:	89 06                	mov    DWORD PTR [esi],eax
  59af7e:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59af81:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  59af84:	89 32                	mov    DWORD PTR [edx],esi
  59af86:	56                   	push   esi
  59af87:	8b cd                	mov    ecx,ebp
  59af89:	c7 46 24 07 00 00 00 	mov    DWORD PTR [esi+0x24],0x7
  59af90:	e8 db f2 ff ff       	call   0x59a270
  59af95:	33 db                	xor    ebx,ebx
  59af97:	38 5c 24 18          	cmp    BYTE PTR [esp+0x18],bl
  59af9b:	74 37                	je     0x59afd4
  59af9d:	39 5e 10             	cmp    DWORD PTR [esi+0x10],ebx
  59afa0:	74 32                	je     0x59afd4
  59afa2:	83 ff 04             	cmp    edi,0x4
  59afa5:	74 2d                	je     0x59afd4
  59afa7:	83 ff 05             	cmp    edi,0x5
  59afaa:	74 28                	je     0x59afd4
  59afac:	8d 7d 08             	lea    edi,[ebp+0x8]
  59afaf:	8b cf                	mov    ecx,edi
  59afb1:	e8 0a 6d f4 ff       	call   0x4e1cc0
  59afb6:	8b 46 14             	mov    eax,DWORD PTR [esi+0x14]
  59afb9:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  59afbc:	6a 07                	push   0x7
  59afbe:	50                   	push   eax
  59afbf:	8d 4e 08             	lea    ecx,[esi+0x8]
  59afc2:	51                   	push   ecx
  59afc3:	ff d2                	call   edx
  59afc5:	83 c4 0c             	add    esp,0xc
  59afc8:	68 ac a7 fd 00       	push   0xfda7ac
  59afcd:	8b cf                	mov    ecx,edi
  59afcf:	e8 2c 6c f4 ff       	call   0x4e1c00
  59afd4:	38 5e 4c             	cmp    BYTE PTR [esi+0x4c],bl
  59afd7:	74 0b                	je     0x59afe4
  59afd9:	8d 4d 40             	lea    ecx,[ebp+0x40]
  59afdc:	88 5e 4c             	mov    BYTE PTR [esi+0x4c],bl
  59afdf:	e8 cc ed ff ff       	call   0x599db0
  59afe4:	38 5e 4e             	cmp    BYTE PTR [esi+0x4e],bl
  59afe7:	74 19                	je     0x59b002
  59afe9:	88 5e 4e             	mov    BYTE PTR [esi+0x4e],bl
  59afec:	8d 46 30             	lea    eax,[esi+0x30]
  59afef:	83 c9 ff             	or     ecx,0xffffffff
  59aff2:	f0 0f c1 08          	lock xadd DWORD PTR [eax],ecx
  59aff6:	49                   	dec    ecx
  59aff7:	75 09                	jne    0x59b002
  59aff9:	8b 4e 34             	mov    ecx,DWORD PTR [esi+0x34]
  59affc:	56                   	push   esi
  59affd:	e8 0e 00 00 00       	call   0x59b010
  59b002:	5f                   	pop    edi
  59b003:	5e                   	pop    esi
  59b004:	5d                   	pop    ebp
  59b005:	5b                   	pop    ebx
  59b006:	c2 08 00             	ret    0x8
