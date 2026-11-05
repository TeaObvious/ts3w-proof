# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe complete envelope; paired actual annotated Ghidra pseudocode is 00935E80_ObjectIoContexts_WriteSizedEntries.c.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00935e80 <.text+0x534e80>:
  935e80:	51                   	push   ecx
  935e81:	53                   	push   ebx
  935e82:	55                   	push   ebp
  935e83:	56                   	push   esi
  935e84:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  935e88:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  935e8b:	57                   	push   edi
  935e8c:	50                   	push   eax
  935e8d:	8b d9                	mov    ebx,ecx
  935e8f:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  935e92:	68 01 01 00 00       	push   0x101
  935e97:	51                   	push   ecx
  935e98:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
  935e9c:	e8 cf 7f ba ff       	call   0x4dde70
  935ea1:	83 c4 0c             	add    esp,0xc
  935ea4:	8b ce                	mov    ecx,esi
  935ea6:	50                   	push   eax
  935ea7:	e8 44 1b ea ff       	call   0x7d79f0
  935eac:	0f b7 43 04          	movzx  eax,WORD PTR [ebx+0x4]
  935eb0:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  935eb3:	52                   	push   edx
  935eb4:	50                   	push   eax
  935eb5:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  935eb8:	50                   	push   eax
  935eb9:	e8 b2 7f ba ff       	call   0x4dde70
  935ebe:	83 c4 0c             	add    esp,0xc
  935ec1:	8b ce                	mov    ecx,esi
  935ec3:	50                   	push   eax
  935ec4:	e8 27 1b ea ff       	call   0x7d79f0
  935ec9:	e8 a2 16 00 00       	call   0x937570
  935ece:	33 ff                	xor    edi,edi
  935ed0:	39 7b 04             	cmp    DWORD PTR [ebx+0x4],edi
  935ed3:	8b e8                	mov    ebp,eax
  935ed5:	0f 86 af 00 00 00    	jbe    0x935f8a
  935edb:	eb 03                	jmp    0x935ee0
  935edd:	8d 49 00             	lea    ecx,[ecx+0x0]
  935ee0:	57                   	push   edi
  935ee1:	8b cd                	mov    ecx,ebp
  935ee3:	e8 b8 15 00 00       	call   0x9374a0
  935ee8:	8b cf                	mov    ecx,edi
  935eea:	ba 01 00 00 00       	mov    edx,0x1
  935eef:	d3 e2                	shl    edx,cl
  935ef1:	8b cd                	mov    ecx,ebp
  935ef3:	52                   	push   edx
  935ef4:	e8 c7 15 00 00       	call   0x9374c0
  935ef9:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  935efc:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  935eff:	51                   	push   ecx
  935f00:	50                   	push   eax
  935f01:	52                   	push   edx
  935f02:	e8 69 80 ba ff       	call   0x4ddf70
  935f07:	83 c4 0c             	add    esp,0xc
  935f0a:	8b ce                	mov    ecx,esi
  935f0c:	50                   	push   eax
  935f0d:	e8 de 1a ea ff       	call   0x7d79f0
  935f12:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  935f15:	8b 01                	mov    eax,DWORD PTR [ecx]
  935f17:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  935f1a:	6a 00                	push   0x0
  935f1c:	ff d2                	call   edx
  935f1e:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  935f21:	8b d8                	mov    ebx,eax
  935f23:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  935f26:	50                   	push   eax
  935f27:	6a 00                	push   0x0
  935f29:	51                   	push   ecx
  935f2a:	e8 41 80 ba ff       	call   0x4ddf70
  935f2f:	83 c4 0c             	add    esp,0xc
  935f32:	8b ce                	mov    ecx,esi
  935f34:	50                   	push   eax
  935f35:	e8 b6 1a ea ff       	call   0x7d79f0
  935f3a:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  935f3e:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  935f41:	8b 0c b8             	mov    ecx,DWORD PTR [eax+edi*4]
  935f44:	8b 11                	mov    edx,DWORD PTR [ecx]
  935f46:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  935f4a:	8b 52 1c             	mov    edx,DWORD PTR [edx+0x1c]
  935f4d:	56                   	push   esi
  935f4e:	50                   	push   eax
  935f4f:	ff d2                	call   edx
  935f51:	84 c0                	test   al,al
  935f53:	6a 00                	push   0x0
  935f55:	74 3e                	je     0x935f95
  935f57:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  935f5a:	8b 01                	mov    eax,DWORD PTR [ecx]
  935f5c:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  935f5f:	ff d2                	call   edx
  935f61:	83 f8 ff             	cmp    eax,0xffffffff
  935f64:	75 06                	jne    0x935f6c
  935f66:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  935f6a:	eb 0e                	jmp    0x935f7a
  935f6c:	2b c3                	sub    eax,ebx
  935f6e:	83 e8 04             	sub    eax,0x4
  935f71:	50                   	push   eax
  935f72:	53                   	push   ebx
  935f73:	8b ce                	mov    ecx,esi
  935f75:	e8 c6 8e c8 ff       	call   0x5bee40
  935f7a:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  935f7e:	83 c7 01             	add    edi,0x1
  935f81:	3b 78 04             	cmp    edi,DWORD PTR [eax+0x4]
  935f84:	0f 82 56 ff ff ff    	jb     0x935ee0
  935f8a:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  935f8d:	5f                   	pop    edi
  935f8e:	5e                   	pop    esi
  935f8f:	5d                   	pop    ebp
  935f90:	5b                   	pop    ebx
  935f91:	59                   	pop    ecx
  935f92:	c2 08 00             	ret    0x8
  935f95:	8b ce                	mov    ecx,esi
  935f97:	e8 54 1a ea ff       	call   0x7d79f0
  935f9c:	5f                   	pop    edi
  935f9d:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  935fa1:	5e                   	pop    esi
  935fa2:	5d                   	pop    ebp
  935fa3:	32 c0                	xor    al,al
  935fa5:	5b                   	pop    ebx
  935fa6:	59                   	pop    ecx
  935fa7:	c2 08 00             	ret    0x8
