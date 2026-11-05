# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00945c20, 0x00945e17); analyst name FootprintComponent_SetNamedEnabledBit.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00945c20 <.text+0x544c20>:
  945c20:	83 ec 14             	sub    esp,0x14
  945c23:	55                   	push   ebp
  945c24:	57                   	push   edi
  945c25:	8b e9                	mov    ebp,ecx
  945c27:	33 ff                	xor    edi,edi
  945c29:	39 7d 28             	cmp    DWORD PTR [ebp+0x28],edi
  945c2c:	75 09                	jne    0x945c37
  945c2e:	39 7d 30             	cmp    DWORD PTR [ebp+0x30],edi
  945c31:	0f 84 d8 01 00 00    	je     0x945e0f
  945c37:	53                   	push   ebx
  945c38:	56                   	push   esi
  945c39:	e8 b2 30 ee ff       	call   0x828cf0
  945c3e:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  945c41:	3b cf                	cmp    ecx,edi
  945c43:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  945c47:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  945c4c:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  945c51:	c6 44 24 12 00       	mov    BYTE PTR [esp+0x12],0x0
  945c56:	0f 84 a7 00 00 00    	je     0x945d03
  945c5c:	e8 ef d0 fe ff       	call   0x932d50
  945c61:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  945c64:	2b 18                	sub    ebx,DWORD PTR [eax]
  945c66:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  945c6a:	c1 fb 06             	sar    ebx,0x6
  945c6d:	0f 84 90 00 00 00    	je     0x945d03
  945c73:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  945c77:	eb 0b                	jmp    0x945c84
  945c79:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  945c80:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  945c84:	8b 4d 58             	mov    ecx,DWORD PTR [ebp+0x58]
  945c87:	8b 10                	mov    edx,DWORD PTR [eax]
  945c89:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  945c8d:	8d 34 b9             	lea    esi,[ecx+edi*4]
  945c90:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  945c94:	3b 04 11             	cmp    eax,DWORD PTR [ecx+edx*1]
  945c97:	75 53                	jne    0x945cec
  945c99:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  945c9e:	c6 44 24 12 01       	mov    BYTE PTR [esp+0x12],0x1
  945ca3:	75 20                	jne    0x945cc5
  945ca5:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  945ca9:	85 c9                	test   ecx,ecx
  945cab:	74 11                	je     0x945cbe
  945cad:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  945cb0:	6a 00                	push   0x0
  945cb2:	6a 01                	push   0x1
  945cb4:	50                   	push   eax
  945cb5:	e8 a6 37 ee ff       	call   0x829460
  945cba:	84 c0                	test   al,al
  945cbc:	75 07                	jne    0x945cc5
  945cbe:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  945cc3:	eb 05                	jmp    0x945cca
  945cc5:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  945cca:	80 7c 24 2c 00       	cmp    BYTE PTR [esp+0x2c],0x0
  945ccf:	8b 06                	mov    eax,DWORD PTR [esi]
  945cd1:	74 09                	je     0x945cdc
  945cd3:	8b d0                	mov    edx,eax
  945cd5:	83 ca 04             	or     edx,0x4
  945cd8:	89 16                	mov    DWORD PTR [esi],edx
  945cda:	eb 07                	jmp    0x945ce3
  945cdc:	8b c8                	mov    ecx,eax
  945cde:	83 e1 fb             	and    ecx,0xfffffffb
  945ce1:	89 0e                	mov    DWORD PTR [esi],ecx
  945ce3:	3b 06                	cmp    eax,DWORD PTR [esi]
  945ce5:	74 05                	je     0x945cec
  945ce7:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  945cec:	83 44 24 18 40       	add    DWORD PTR [esp+0x18],0x40
  945cf1:	83 c7 01             	add    edi,0x1
  945cf4:	3b fb                	cmp    edi,ebx
  945cf6:	72 88                	jb     0x945c80
  945cf8:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  945cfd:	0f 85 ac 00 00 00    	jne    0x945daf
  945d03:	8b 4d 30             	mov    ecx,DWORD PTR [ebp+0x30]
  945d06:	33 ff                	xor    edi,edi
  945d08:	3b cf                	cmp    ecx,edi
  945d0a:	0f 84 fd 00 00 00    	je     0x945e0d
  945d10:	e8 4b d0 fe ff       	call   0x932d60
  945d15:	8b 58 04             	mov    ebx,DWORD PTR [eax+0x4]
  945d18:	2b 18                	sub    ebx,DWORD PTR [eax]
  945d1a:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  945d1e:	c1 fb 06             	sar    ebx,0x6
  945d21:	0f 84 e6 00 00 00    	je     0x945e0d
  945d27:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  945d2b:	eb 07                	jmp    0x945d34
  945d2d:	8d 49 00             	lea    ecx,[ecx+0x0]
  945d30:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  945d34:	8b 55 68             	mov    edx,DWORD PTR [ebp+0x68]
  945d37:	8b 00                	mov    eax,DWORD PTR [eax]
  945d39:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  945d3d:	8d 34 ba             	lea    esi,[edx+edi*4]
  945d40:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  945d44:	3b 0c 02             	cmp    ecx,DWORD PTR [edx+eax*1]
  945d47:	75 53                	jne    0x945d9c
  945d49:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  945d4e:	c6 44 24 12 01       	mov    BYTE PTR [esp+0x12],0x1
  945d53:	75 20                	jne    0x945d75
  945d55:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  945d59:	85 c9                	test   ecx,ecx
  945d5b:	74 11                	je     0x945d6e
  945d5d:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  945d60:	6a 00                	push   0x0
  945d62:	6a 01                	push   0x1
  945d64:	50                   	push   eax
  945d65:	e8 f6 36 ee ff       	call   0x829460
  945d6a:	84 c0                	test   al,al
  945d6c:	75 07                	jne    0x945d75
  945d6e:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  945d73:	eb 05                	jmp    0x945d7a
  945d75:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  945d7a:	80 7c 24 2c 00       	cmp    BYTE PTR [esp+0x2c],0x0
  945d7f:	8b 06                	mov    eax,DWORD PTR [esi]
  945d81:	74 09                	je     0x945d8c
  945d83:	8b c8                	mov    ecx,eax
  945d85:	83 c9 04             	or     ecx,0x4
  945d88:	89 0e                	mov    DWORD PTR [esi],ecx
  945d8a:	eb 07                	jmp    0x945d93
  945d8c:	8b d0                	mov    edx,eax
  945d8e:	83 e2 fb             	and    edx,0xfffffffb
  945d91:	89 16                	mov    DWORD PTR [esi],edx
  945d93:	3b 06                	cmp    eax,DWORD PTR [esi]
  945d95:	74 05                	je     0x945d9c
  945d97:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  945d9c:	83 44 24 18 40       	add    DWORD PTR [esp+0x18],0x40
  945da1:	83 c7 01             	add    edi,0x1
  945da4:	3b fb                	cmp    edi,ebx
  945da6:	72 88                	jb     0x945d30
  945da8:	80 7c 24 12 00       	cmp    BYTE PTR [esp+0x12],0x0
  945dad:	74 5e                	je     0x945e0d
  945daf:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  945db4:	74 57                	je     0x945e0d
  945db6:	8b 74 24 1c          	mov    esi,DWORD PTR [esp+0x1c]
  945dba:	85 f6                	test   esi,esi
  945dbc:	74 32                	je     0x945df0
  945dbe:	f6 45 40 01          	test   BYTE PTR [ebp+0x40],0x1
  945dc2:	74 17                	je     0x945ddb
  945dc4:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  945dc7:	50                   	push   eax
  945dc8:	e8 13 ee ff ff       	call   0x944be0
  945dcd:	83 c4 04             	add    esp,0x4
  945dd0:	84 c0                	test   al,al
  945dd2:	75 07                	jne    0x945ddb
  945dd4:	b8 01 00 00 00       	mov    eax,0x1
  945dd9:	eb 02                	jmp    0x945ddd
  945ddb:	33 c0                	xor    eax,eax
  945ddd:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  945de1:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
  945de4:	6a 00                	push   0x0
  945de6:	51                   	push   ecx
  945de7:	50                   	push   eax
  945de8:	52                   	push   edx
  945de9:	8b ce                	mov    ecx,esi
  945deb:	e8 b0 d2 ee ff       	call   0x8330a0
  945df0:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
  945df4:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  945df8:	50                   	push   eax
  945df9:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
  945dfc:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  945dff:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  945e02:	51                   	push   ecx
  945e03:	52                   	push   edx
  945e04:	50                   	push   eax
  945e05:	e8 16 b3 e4 ff       	call   0x791120
  945e0a:	83 c4 10             	add    esp,0x10
  945e0d:	5e                   	pop    esi
  945e0e:	5b                   	pop    ebx
  945e0f:	5f                   	pop    edi
  945e10:	5d                   	pop    ebp
  945e11:	83 c4 14             	add    esp,0x14
  945e14:	c2 08 00             	ret    0x8
