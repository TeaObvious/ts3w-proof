# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00b52c40,0x00b52de5); analyst name LotPartition_RefreshFoggedRoomList.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b52c40 <.text+0x751c40>:
  b52c40:	83 ec 14             	sub    esp,0x14
  b52c43:	53                   	push   ebx
  b52c44:	55                   	push   ebp
  b52c45:	33 db                	xor    ebx,ebx
  b52c47:	8b e9                	mov    ebp,ecx
  b52c49:	8b 4d 44             	mov    ecx,DWORD PTR [ebp+0x44]
  b52c4c:	3b cb                	cmp    ecx,ebx
  b52c4e:	89 5c 24 08          	mov    DWORD PTR [esp+0x8],ebx
  b52c52:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
  b52c56:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  b52c5a:	c7 44 24 14 3c e4 06 01 	mov    DWORD PTR [esp+0x14],0x106e43c
  b52c62:	74 0b                	je     0xb52c6f
  b52c64:	8d 44 24 08          	lea    eax,[esp+0x8]
  b52c68:	50                   	push   eax
  b52c69:	53                   	push   ebx
  b52c6a:	e8 a1 43 0b 00       	call   0xc07010
  b52c6f:	38 5c 24 20          	cmp    BYTE PTR [esp+0x20],bl
  b52c73:	75 1c                	jne    0xb52c91
  b52c75:	8d 8d d0 00 00 00    	lea    ecx,[ebp+0xd0]
  b52c7b:	51                   	push   ecx
  b52c7c:	8d 54 24 0c          	lea    edx,[esp+0xc]
  b52c80:	52                   	push   edx
  b52c81:	e8 ea 58 ff ff       	call   0xb48570
  b52c86:	83 c4 08             	add    esp,0x8
  b52c89:	84 c0                	test   al,al
  b52c8b:	0f 85 30 01 00 00    	jne    0xb52dc1
  b52c91:	56                   	push   esi
  b52c92:	57                   	push   edi
  b52c93:	8d 44 24 10          	lea    eax,[esp+0x10]
  b52c97:	50                   	push   eax
  b52c98:	8d 8d d0 00 00 00    	lea    ecx,[ebp+0xd0]
  b52c9e:	e8 0d 07 a8 ff       	call   0x5d33b0
  b52ca3:	6a 20                	push   0x20
  b52ca5:	e8 a6 c4 f8 ff       	call   0xadf150
  b52caa:	83 c4 04             	add    esp,0x4
  b52cad:	3b c3                	cmp    eax,ebx
  b52caf:	0f 84 25 01 00 00    	je     0xb52dda
  b52cb5:	c7 00 8c 5f 06 01    	mov    DWORD PTR [eax],0x1065f8c
  b52cbb:	33 c9                	xor    ecx,ecx
  b52cbd:	8d 50 04             	lea    edx,[eax+0x4]
  b52cc0:	87 0a                	xchg   DWORD PTR [edx],ecx
  b52cc2:	c7 00 f0 dd 06 01    	mov    DWORD PTR [eax],0x106ddf0
  b52cc8:	89 58 10             	mov    DWORD PTR [eax+0x10],ebx
  b52ccb:	89 58 14             	mov    DWORD PTR [eax+0x14],ebx
  b52cce:	89 58 18             	mov    DWORD PTR [eax+0x18],ebx
  b52cd1:	c7 40 1c fc dd 06 01 	mov    DWORD PTR [eax+0x1c],0x106ddfc
  b52cd8:	8b 10                	mov    edx,DWORD PTR [eax]
  b52cda:	8b f8                	mov    edi,eax
  b52cdc:	8b c8                	mov    ecx,eax
  b52cde:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  b52ce1:	ff d0                	call   eax
  b52ce3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  b52ce6:	8b 48 48             	mov    ecx,DWORD PTR [eax+0x48]
  b52ce9:	89 4f 08             	mov    DWORD PTR [edi+0x8],ecx
  b52cec:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  b52cef:	89 57 0c             	mov    DWORD PTR [edi+0xc],edx
  b52cf2:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  b52cf6:	2b 44 24 10          	sub    eax,DWORD PTR [esp+0x10]
  b52cfa:	8d 77 10             	lea    esi,[edi+0x10]
  b52cfd:	d1 f8                	sar    eax,1
  b52cff:	50                   	push   eax
  b52d00:	8b ce                	mov    ecx,esi
  b52d02:	e8 79 07 a8 ff       	call   0x5d3480
  b52d07:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  b52d0b:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  b52d0f:	56                   	push   esi
  b52d10:	51                   	push   ecx
  b52d11:	52                   	push   edx
  b52d12:	8d 44 24 34          	lea    eax,[esp+0x34]
  b52d16:	50                   	push   eax
  b52d17:	e8 f4 c5 ff ff       	call   0xb4f310
  b52d1c:	83 c4 10             	add    esp,0x10
  b52d1f:	e8 7c 66 c1 ff       	call   0x7693a0
  b52d24:	3b c3                	cmp    eax,ebx
  b52d26:	74 11                	je     0xb52d39
  b52d28:	8b 10                	mov    edx,DWORD PTR [eax]
  b52d2a:	53                   	push   ebx
  b52d2b:	53                   	push   ebx
  b52d2c:	57                   	push   edi
  b52d2d:	8b c8                	mov    ecx,eax
  b52d2f:	8b 42 1c             	mov    eax,DWORD PTR [edx+0x1c]
  b52d32:	68 27 0c 6b 08       	push   0x86b0c27
  b52d37:	ff d0                	call   eax
  b52d39:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  b52d3c:	57                   	push   edi
  b52d3d:	68 27 0c 6b 08       	push   0x86b0c27
  b52d42:	e8 89 05 f6 ff       	call   0xab32d0
  b52d47:	e8 a4 97 8f ff       	call   0x44c4f0
  b52d4c:	6a 70                	push   0x70
  b52d4e:	8b d8                	mov    ebx,eax
  b52d50:	e8 fb c3 f8 ff       	call   0xadf150
  b52d55:	83 c4 04             	add    esp,0x4
  b52d58:	85 c0                	test   eax,eax
  b52d5a:	0f 84 81 00 00 00    	je     0xb52de1
  b52d60:	8b c8                	mov    ecx,eax
  b52d62:	e8 e9 76 ff ff       	call   0xb4a450
  b52d67:	8b f0                	mov    esi,eax
  b52d69:	85 f6                	test   esi,esi
  b52d6b:	74 09                	je     0xb52d76
  b52d6d:	8b 16                	mov    edx,DWORD PTR [esi]
  b52d6f:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  b52d72:	8b ce                	mov    ecx,esi
  b52d74:	ff d0                	call   eax
  b52d76:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  b52d79:	8b 48 48             	mov    ecx,DWORD PTR [eax+0x48]
  b52d7c:	89 4e 08             	mov    DWORD PTR [esi+0x8],ecx
  b52d7f:	8b 50 4c             	mov    edx,DWORD PTR [eax+0x4c]
  b52d82:	8d 46 50             	lea    eax,[esi+0x50]
  b52d85:	50                   	push   eax
  b52d86:	8d 4e 30             	lea    ecx,[esi+0x30]
  b52d89:	89 56 0c             	mov    DWORD PTR [esi+0xc],edx
  b52d8c:	51                   	push   ecx
  b52d8d:	8d 56 10             	lea    edx,[esi+0x10]
  b52d90:	52                   	push   edx
  b52d91:	8b cd                	mov    ecx,ebp
  b52d93:	e8 28 9b ff ff       	call   0xb4c8c0
  b52d98:	8b 03                	mov    eax,DWORD PTR [ebx]
  b52d9a:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  b52d9d:	6a 00                	push   0x0
  b52d9f:	6a 00                	push   0x0
  b52da1:	56                   	push   esi
  b52da2:	68 fb 83 a2 08       	push   0x8a283fb
  b52da7:	8b cb                	mov    ecx,ebx
  b52da9:	ff d2                	call   edx
  b52dab:	8b 06                	mov    eax,DWORD PTR [esi]
  b52dad:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  b52db0:	8b ce                	mov    ecx,esi
  b52db2:	ff d2                	call   edx
  b52db4:	8b 07                	mov    eax,DWORD PTR [edi]
  b52db6:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  b52db9:	8b cf                	mov    ecx,edi
  b52dbb:	ff d2                	call   edx
  b52dbd:	5f                   	pop    edi
  b52dbe:	33 db                	xor    ebx,ebx
  b52dc0:	5e                   	pop    esi
  b52dc1:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  b52dc5:	5d                   	pop    ebp
  b52dc6:	3b c3                	cmp    eax,ebx
  b52dc8:	5b                   	pop    ebx
  b52dc9:	74 09                	je     0xb52dd4
  b52dcb:	50                   	push   eax
  b52dcc:	e8 0f 17 99 ff       	call   0x4e44e0
  b52dd1:	83 c4 04             	add    esp,0x4
  b52dd4:	83 c4 14             	add    esp,0x14
  b52dd7:	c2 04 00             	ret    0x4
  b52dda:	33 ff                	xor    edi,edi
  b52ddc:	e9 02 ff ff ff       	jmp    0xb52ce3
  b52de1:	33 f6                	xor    esi,esi
  b52de3:	eb 91                	jmp    0xb52d76
