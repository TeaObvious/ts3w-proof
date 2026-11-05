# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 0059abe0..0059ad06; JobManager_WaitForInternalJob
  59abe0:	51                   	push   ecx
  59abe1:	55                   	push   ebp
  59abe2:	56                   	push   esi
  59abe3:	57                   	push   edi
  59abe4:	8b e9                	mov    ebp,ecx
  59abe6:	e8 95 6b f4 ff       	call   0x4e1780
  59abeb:	8b 8d 88 00 00 00    	mov    ecx,DWORD PTR [ebp+0x88]
  59abf1:	8d 95 88 00 00 00    	lea    edx,[ebp+0x88]
  59abf7:	33 ff                	xor    edi,edi
  59abf9:	3b ca                	cmp    ecx,edx
  59abfb:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
  59abff:	74 0b                	je     0x59ac0c
  59ac01:	39 41 24             	cmp    DWORD PTR [ecx+0x24],eax
  59ac04:	74 3f                	je     0x59ac45
  59ac06:	8b 09                	mov    ecx,DWORD PTR [ecx]
  59ac08:	3b ca                	cmp    ecx,edx
  59ac0a:	75 f5                	jne    0x59ac01
  59ac0c:	8d 85 9c 00 00 00    	lea    eax,[ebp+0x9c]
  59ac12:	39 40 04             	cmp    DWORD PTR [eax+0x4],eax
  59ac15:	75 3d                	jne    0x59ac54
  59ac17:	6a 00                	push   0x0
  59ac19:	6a 00                	push   0x0
  59ac1b:	6a 00                	push   0x0
  59ac1d:	6a 00                	push   0x0
  59ac1f:	68 54 a8 fd 00       	push   0xfda854
  59ac24:	6a 18                	push   0x18
  59ac26:	e8 d5 98 f4 ff       	call   0x4e4500
  59ac2b:	8b f0                	mov    esi,eax
  59ac2d:	83 c4 18             	add    esp,0x18
  59ac30:	85 f6                	test   esi,esi
  59ac32:	74 1c                	je     0x59ac50
  59ac34:	6a 00                	push   0x0
  59ac36:	8d 4e 08             	lea    ecx,[esi+0x8]
  59ac39:	e8 f2 81 f4 ff       	call   0x4e2e30
  59ac3e:	89 36                	mov    DWORD PTR [esi],esi
  59ac40:	89 76 04             	mov    DWORD PTR [esi+0x4],esi
  59ac43:	eb 1e                	jmp    0x59ac63
  59ac45:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  59ac49:	8d 71 08             	lea    esi,[ecx+0x8]
  59ac4c:	8b f9                	mov    edi,ecx
  59ac4e:	eb 13                	jmp    0x59ac63
  59ac50:	33 f6                	xor    esi,esi
  59ac52:	eb 0f                	jmp    0x59ac63
  59ac54:	8b 30                	mov    esi,DWORD PTR [eax]
  59ac56:	8b ce                	mov    ecx,esi
  59ac58:	8b 11                	mov    edx,DWORD PTR [ecx]
  59ac5a:	89 42 04             	mov    DWORD PTR [edx+0x4],eax
  59ac5d:	8b 08                	mov    ecx,DWORD PTR [eax]
  59ac5f:	8b 11                	mov    edx,DWORD PTR [ecx]
  59ac61:	89 10                	mov    DWORD PTR [eax],edx
  59ac63:	53                   	push   ebx
  59ac64:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  59ac68:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  59ac6b:	83 f8 07             	cmp    eax,0x7
  59ac6e:	74 73                	je     0x59ace3
  59ac70:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
  59ac73:	83 f9 06             	cmp    ecx,0x6
  59ac76:	74 6b                	je     0x59ace3
  59ac78:	8b 53 24             	mov    edx,DWORD PTR [ebx+0x24]
  59ac7b:	85 d2                	test   edx,edx
  59ac7d:	74 64                	je     0x59ace3
  59ac7f:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  59ac82:	83 f8 01             	cmp    eax,0x1
  59ac85:	74 5c                	je     0x59ace3
  59ac87:	85 ff                	test   edi,edi
  59ac89:	c6 43 4c 01          	mov    BYTE PTR [ebx+0x4c],0x1
  59ac8d:	74 12                	je     0x59aca1
  59ac8f:	6a 01                	push   0x1
  59ac91:	6a 01                	push   0x1
  59ac93:	6a 00                	push   0x0
  59ac95:	57                   	push   edi
  59ac96:	8b cd                	mov    ecx,ebp
  59ac98:	e8 83 fb ff ff       	call   0x59a820
  59ac9d:	84 c0                	test   al,al
  59ac9f:	75 3a                	jne    0x59acdb
  59aca1:	8b 4d 44             	mov    ecx,DWORD PTR [ebp+0x44]
  59aca4:	8d 45 40             	lea    eax,[ebp+0x40]
  59aca7:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  59acaa:	89 06                	mov    DWORD PTR [esi],eax
  59acac:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  59acaf:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  59acb2:	8d 7d 08             	lea    edi,[ebp+0x8]
  59acb5:	8b cf                	mov    ecx,edi
  59acb7:	89 32                	mov    DWORD PTR [edx],esi
  59acb9:	e8 02 70 f4 ff       	call   0x4e1cc0
  59acbe:	68 ac a7 fd 00       	push   0xfda7ac
  59acc3:	8d 4e 08             	lea    ecx,[esi+0x8]
  59acc6:	e8 a5 7f f4 ff       	call   0x4e2c70
  59accb:	68 ac a7 fd 00       	push   0xfda7ac
  59acd0:	8b cf                	mov    ecx,edi
  59acd2:	e8 29 6f f4 ff       	call   0x4e1c00
  59acd7:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  59acdb:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  59acde:	83 f8 07             	cmp    eax,0x7
  59ace1:	75 8d                	jne    0x59ac70
  59ace3:	85 ff                	test   edi,edi
  59ace5:	5b                   	pop    ebx
  59ace6:	75 18                	jne    0x59ad00
  59ace8:	8b 8d 9c 00 00 00    	mov    ecx,DWORD PTR [ebp+0x9c]
  59acee:	8d 85 9c 00 00 00    	lea    eax,[ebp+0x9c]
  59acf4:	89 0e                	mov    DWORD PTR [esi],ecx
  59acf6:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  59acf9:	89 30                	mov    DWORD PTR [eax],esi
  59acfb:	8b 16                	mov    edx,DWORD PTR [esi]
  59acfd:	89 72 04             	mov    DWORD PTR [edx+0x4],esi
  59ad00:	5f                   	pop    edi
  59ad01:	5e                   	pop    esi
  59ad02:	5d                   	pop    ebp
  59ad03:	59                   	pop    ecx
  59ad04:	c2 04 00             	ret    0x4
