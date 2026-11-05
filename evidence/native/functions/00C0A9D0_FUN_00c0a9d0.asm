# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00c0a9d0, 0x00c0ab0f); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c0a9d0 <.text+0x8099d0>:
  c0a9d0:	83 ec 0c             	sub    esp,0xc
  c0a9d3:	57                   	push   edi
  c0a9d4:	8d 44 24 04          	lea    eax,[esp+0x4]
  c0a9d8:	50                   	push   eax
  c0a9d9:	8b f9                	mov    edi,ecx
  c0a9db:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  c0a9df:	68 e6 ac 74 b0       	push   0xb074ace6
  c0a9e4:	51                   	push   ecx
  c0a9e5:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  c0a9e9:	c7 44 24 10 00 00 00 	mov    DWORD PTR [esp+0x10],0x0
  c0a9f0:	00 
  c0a9f1:	e8 9a e8 bc ff       	call   0x7d9290
  c0a9f6:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c0a9fa:	83 c4 0c             	add    esp,0xc
  c0a9fd:	84 c0                	test   al,al
  c0a9ff:	0f 84 f6 00 00 00    	je     0xc0aafb
  c0aa05:	8b 11                	mov    edx,DWORD PTR [ecx]
  c0aa07:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  c0aa0a:	53                   	push   ebx
  c0aa0b:	55                   	push   ebp
  c0aa0c:	56                   	push   esi
  c0aa0d:	ff d0                	call   eax
  c0aa0f:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  c0aa13:	53                   	push   ebx
  c0aa14:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  c0aa18:	8b e8                	mov    ebp,eax
  c0aa1a:	51                   	push   ecx
  c0aa1b:	55                   	push   ebp
  c0aa1c:	e8 bf 2e 8d ff       	call   0x4dd8e0
  c0aa21:	53                   	push   ebx
  c0aa22:	8d 77 14             	lea    esi,[edi+0x14]
  c0aa25:	56                   	push   esi
  c0aa26:	55                   	push   ebp
  c0aa27:	e8 54 2f 8d ff       	call   0x4dd980
  c0aa2c:	d9 06                	fld    DWORD PTR [esi]
  c0aa2e:	83 c4 18             	add    esp,0x18
  c0aa31:	6a 01                	push   0x1
  c0aa33:	51                   	push   ecx
  c0aa34:	8b cf                	mov    ecx,edi
  c0aa36:	d9 1c 24             	fstp   DWORD PTR [esp]
  c0aa39:	e8 d2 fa ff ff       	call   0xc0a510
  c0aa3e:	66 83 7c 24 20 04    	cmp    WORD PTR [esp+0x20],0x4
  c0aa44:	73 22                	jae    0xc0aa68
  c0aa46:	8b 87 c8 02 00 00    	mov    eax,DWORD PTR [edi+0x2c8]
  c0aa4c:	8b 8f cc 02 00 00    	mov    ecx,DWORD PTR [edi+0x2cc]
  c0aa52:	3b c1                	cmp    eax,ecx
  c0aa54:	74 61                	je     0xc0aab7
  c0aa56:	8b 10                	mov    edx,DWORD PTR [eax]
  c0aa58:	83 c0 04             	add    eax,0x4
  c0aa5b:	3b c1                	cmp    eax,ecx
  c0aa5d:	c6 82 41 02 00 00 01 	mov    BYTE PTR [edx+0x241],0x1
  c0aa64:	75 f0                	jne    0xc0aa56
  c0aa66:	eb 4f                	jmp    0xc0aab7
  c0aa68:	53                   	push   ebx
  c0aa69:	8d 44 24 28          	lea    eax,[esp+0x28]
  c0aa6d:	50                   	push   eax
  c0aa6e:	55                   	push   ebp
  c0aa6f:	c7 44 24 30 00 00 00 	mov    DWORD PTR [esp+0x30],0x0
  c0aa76:	00 
  c0aa77:	e8 64 2e 8d ff       	call   0x4dd8e0
  c0aa7c:	8b 87 cc 02 00 00    	mov    eax,DWORD PTR [edi+0x2cc]
  c0aa82:	8b b7 c8 02 00 00    	mov    esi,DWORD PTR [edi+0x2c8]
  c0aa88:	83 c4 0c             	add    esp,0xc
  c0aa8b:	3b f0                	cmp    esi,eax
  c0aa8d:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  c0aa91:	74 24                	je     0xc0aab7
  c0aa93:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  c0aa97:	8b 3e                	mov    edi,DWORD PTR [esi]
  c0aa99:	51                   	push   ecx
  c0aa9a:	53                   	push   ebx
  c0aa9b:	55                   	push   ebp
  c0aa9c:	8b cf                	mov    ecx,edi
  c0aa9e:	e8 dd 20 00 00       	call   0xc0cb80
  c0aaa3:	83 c6 04             	add    esi,0x4
  c0aaa6:	3b 74 24 14          	cmp    esi,DWORD PTR [esp+0x14]
  c0aaaa:	c6 87 41 02 00 00 01 	mov    BYTE PTR [edi+0x241],0x1
  c0aab1:	75 e0                	jne    0xc0aa93
  c0aab3:	8b 7c 24 18          	mov    edi,DWORD PTR [esp+0x18]
  c0aab7:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c0aabb:	8b 11                	mov    edx,DWORD PTR [ecx]
  c0aabd:	8b 42 20             	mov    eax,DWORD PTR [edx+0x20]
  c0aac0:	ff d0                	call   eax
  c0aac2:	8b b7 c8 02 00 00    	mov    esi,DWORD PTR [edi+0x2c8]
  c0aac8:	8b bf cc 02 00 00    	mov    edi,DWORD PTR [edi+0x2cc]
  c0aace:	3b f7                	cmp    esi,edi
  c0aad0:	74 0e                	je     0xc0aae0
  c0aad2:	8b 0e                	mov    ecx,DWORD PTR [esi]
  c0aad4:	e8 17 ff ae ff       	call   0x6fa9f0
  c0aad9:	83 c6 04             	add    esi,0x4
  c0aadc:	3b f7                	cmp    esi,edi
  c0aade:	75 f2                	jne    0xc0aad2
  c0aae0:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  c0aae4:	85 c9                	test   ecx,ecx
  c0aae6:	5e                   	pop    esi
  c0aae7:	5d                   	pop    ebp
  c0aae8:	5b                   	pop    ebx
  c0aae9:	74 07                	je     0xc0aaf2
  c0aaeb:	8b 11                	mov    edx,DWORD PTR [ecx]
  c0aaed:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c0aaf0:	ff d0                	call   eax
  c0aaf2:	b0 01                	mov    al,0x1
  c0aaf4:	5f                   	pop    edi
  c0aaf5:	83 c4 0c             	add    esp,0xc
  c0aaf8:	c2 08 00             	ret    0x8
  c0aafb:	85 c9                	test   ecx,ecx
  c0aafd:	74 07                	je     0xc0ab06
  c0aaff:	8b 11                	mov    edx,DWORD PTR [ecx]
  c0ab01:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  c0ab04:	ff d0                	call   eax
  c0ab06:	32 c0                	xor    al,al
  c0ab08:	5f                   	pop    edi
  c0ab09:	83 c4 0c             	add    esp,0xc
  c0ab0c:	c2 08 00             	ret    0x8
