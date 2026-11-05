# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe complete envelope; paired actual annotated Ghidra pseudocode is 00935C90_ObjectIoContexts_ReadOrInitialize.c.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00935c90 <.text+0x534c90>:
  935c90:	83 ec 14             	sub    esp,0x14
  935c93:	53                   	push   ebx
  935c94:	55                   	push   ebp
  935c95:	56                   	push   esi
  935c96:	8b 74 24 28          	mov    esi,DWORD PTR [esp+0x28]
  935c9a:	33 db                	xor    ebx,ebx
  935c9c:	3b f3                	cmp    esi,ebx
  935c9e:	57                   	push   edi
  935c9f:	8b e9                	mov    ebp,ecx
  935ca1:	75 38                	jne    0x935cdb
  935ca3:	33 f6                	xor    esi,esi
  935ca5:	39 5d 04             	cmp    DWORD PTR [ebp+0x4],ebx
  935ca8:	76 25                	jbe    0x935ccf
  935caa:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  935cae:	8b ff                	mov    edi,edi
  935cb0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  935cb3:	8b 0c b0             	mov    ecx,DWORD PTR [eax+esi*4]
  935cb6:	8b 11                	mov    edx,DWORD PTR [ecx]
  935cb8:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  935cbb:	53                   	push   ebx
  935cbc:	57                   	push   edi
  935cbd:	ff d0                	call   eax
  935cbf:	84 c0                	test   al,al
  935cc1:	0f 84 a5 01 00 00    	je     0x935e6c
  935cc7:	83 c6 01             	add    esi,0x1
  935cca:	3b 75 04             	cmp    esi,DWORD PTR [ebp+0x4]
  935ccd:	72 e1                	jb     0x935cb0
  935ccf:	5f                   	pop    edi
  935cd0:	5e                   	pop    esi
  935cd1:	5d                   	pop    ebp
  935cd2:	b0 01                	mov    al,0x1
  935cd4:	5b                   	pop    ebx
  935cd5:	83 c4 14             	add    esp,0x14
  935cd8:	c2 08 00             	ret    0x8
  935cdb:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  935cde:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  935ce1:	51                   	push   ecx
  935ce2:	8d 54 24 18          	lea    edx,[esp+0x18]
  935ce6:	52                   	push   edx
  935ce7:	50                   	push   eax
  935ce8:	89 5c 24 20          	mov    DWORD PTR [esp+0x20],ebx
  935cec:	e8 ef 7b ba ff       	call   0x4dd8e0
  935cf1:	83 c4 0c             	add    esp,0xc
  935cf4:	8b ce                	mov    ecx,esi
  935cf6:	50                   	push   eax
  935cf7:	e8 f4 1c ea ff       	call   0x7d79f0
  935cfc:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  935cff:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  935d02:	51                   	push   ecx
  935d03:	8d 54 24 30          	lea    edx,[esp+0x30]
  935d07:	52                   	push   edx
  935d08:	50                   	push   eax
  935d09:	e8 d2 7b ba ff       	call   0x4dd8e0
  935d0e:	83 c4 0c             	add    esp,0xc
  935d11:	8b ce                	mov    ecx,esi
  935d13:	50                   	push   eax
  935d14:	e8 d7 1c ea ff       	call   0x7d79f0
  935d19:	38 5e 14             	cmp    BYTE PTR [esi+0x14],bl
  935d1c:	0f 84 4a 01 00 00    	je     0x935e6c
  935d22:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  935d26:	81 c1 ff fe ff ff    	add    ecx,0xfffffeff
  935d2c:	66 81 f9 fe 00       	cmp    cx,0xfe
  935d31:	0f 87 2a 01 00 00    	ja     0x935e61
  935d37:	e8 34 18 00 00       	call   0x937570
  935d3c:	66 39 5c 24 2c       	cmp    WORD PTR [esp+0x2c],bx
  935d41:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  935d45:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
  935d49:	0f 86 af 00 00 00    	jbe    0x935dfe
  935d4f:	90                   	nop
  935d50:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  935d53:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  935d56:	52                   	push   edx
  935d57:	8d 44 24 24          	lea    eax,[esp+0x24]
  935d5b:	50                   	push   eax
  935d5c:	51                   	push   ecx
  935d5d:	e8 1e 7c ba ff       	call   0x4dd980
  935d62:	83 c4 0c             	add    esp,0xc
  935d65:	8b ce                	mov    ecx,esi
  935d67:	50                   	push   eax
  935d68:	e8 83 1c ea ff       	call   0x7d79f0
  935d6d:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  935d70:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  935d73:	52                   	push   edx
  935d74:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  935d78:	50                   	push   eax
  935d79:	51                   	push   ecx
  935d7a:	e8 01 7c ba ff       	call   0x4dd980
  935d7f:	83 c4 0c             	add    esp,0xc
  935d82:	8b ce                	mov    ecx,esi
  935d84:	50                   	push   eax
  935d85:	e8 66 1c ea ff       	call   0x7d79f0
  935d8a:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  935d8e:	0f 84 d8 00 00 00    	je     0x935e6c
  935d94:	8b ce                	mov    ecx,esi
  935d96:	e8 d5 26 ea ff       	call   0x7d8470
  935d9b:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  935d9f:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  935da3:	52                   	push   edx
  935da4:	8b f8                	mov    edi,eax
  935da6:	e8 85 17 00 00       	call   0x937530
  935dab:	85 c0                	test   eax,eax
  935dad:	74 2f                	je     0x935dde
  935daf:	09 44 24 10          	or     DWORD PTR [esp+0x10],eax
  935db3:	50                   	push   eax
  935db4:	e8 d7 9a c7 ff       	call   0x5af890
  935db9:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  935dbc:	8b 0c 81             	mov    ecx,DWORD PTR [ecx+eax*4]
  935dbf:	8b 11                	mov    edx,DWORD PTR [ecx]
  935dc1:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  935dc5:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  935dc8:	83 c4 04             	add    esp,0x4
  935dcb:	83 7c 24 18 00       	cmp    DWORD PTR [esp+0x18],0x0
  935dd0:	74 03                	je     0x935dd5
  935dd2:	56                   	push   esi
  935dd3:	eb 02                	jmp    0x935dd7
  935dd5:	6a 00                	push   0x0
  935dd7:	50                   	push   eax
  935dd8:	ff d2                	call   edx
  935dda:	84 c0                	test   al,al
  935ddc:	74 6a                	je     0x935e48
  935dde:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  935de2:	6a 00                	push   0x0
  935de4:	03 f8                	add    edi,eax
  935de6:	57                   	push   edi
  935de7:	8b ce                	mov    ecx,esi
  935de9:	e8 a2 26 ea ff       	call   0x7d8490
  935dee:	0f b7 4c 24 2c       	movzx  ecx,WORD PTR [esp+0x2c]
  935df3:	83 c3 01             	add    ebx,0x1
  935df6:	3b d9                	cmp    ebx,ecx
  935df8:	0f 82 52 ff ff ff    	jb     0x935d50
  935dfe:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  935e02:	e8 19 17 00 00       	call   0x937520
  935e07:	8b d8                	mov    ebx,eax
  935e09:	33 ff                	xor    edi,edi
  935e0b:	85 db                	test   ebx,ebx
  935e0d:	7e 2c                	jle    0x935e3b
  935e0f:	90                   	nop
  935e10:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  935e14:	ba 01 00 00 00       	mov    edx,0x1
  935e19:	8b cf                	mov    ecx,edi
  935e1b:	d3 e2                	shl    edx,cl
  935e1d:	85 d0                	test   eax,edx
  935e1f:	75 13                	jne    0x935e34
  935e21:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
  935e24:	8b 0c b9             	mov    ecx,DWORD PTR [ecx+edi*4]
  935e27:	8b 11                	mov    edx,DWORD PTR [ecx]
  935e29:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  935e2c:	6a 00                	push   0x0
  935e2e:	ff d0                	call   eax
  935e30:	84 c0                	test   al,al
  935e32:	74 14                	je     0x935e48
  935e34:	83 c7 01             	add    edi,0x1
  935e37:	3b fb                	cmp    edi,ebx
  935e39:	7c d5                	jl     0x935e10
  935e3b:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  935e3e:	5f                   	pop    edi
  935e3f:	5e                   	pop    esi
  935e40:	5d                   	pop    ebp
  935e41:	5b                   	pop    ebx
  935e42:	83 c4 14             	add    esp,0x14
  935e45:	c2 08 00             	ret    0x8
  935e48:	6a 00                	push   0x0
  935e4a:	8b ce                	mov    ecx,esi
  935e4c:	e8 9f 1b ea ff       	call   0x7d79f0
  935e51:	5f                   	pop    edi
  935e52:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  935e56:	5e                   	pop    esi
  935e57:	5d                   	pop    ebp
  935e58:	32 c0                	xor    al,al
  935e5a:	5b                   	pop    ebx
  935e5b:	83 c4 14             	add    esp,0x14
  935e5e:	c2 08 00             	ret    0x8
  935e61:	53                   	push   ebx
  935e62:	8b ce                	mov    ecx,esi
  935e64:	e8 87 1b ea ff       	call   0x7d79f0
  935e69:	88 5e 14             	mov    BYTE PTR [esi+0x14],bl
  935e6c:	5f                   	pop    edi
  935e6d:	5e                   	pop    esi
  935e6e:	5d                   	pop    ebp
  935e6f:	32 c0                	xor    al,al
  935e71:	5b                   	pop    ebx
  935e72:	83 c4 14             	add    esp,0x14
  935e75:	c2 08 00             	ret    0x8
