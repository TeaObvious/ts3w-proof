# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00945e20, 0x00946042); analyst name FootprintComponent_ResetRuntimeFlags.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00945e20 <.text+0x544e20>:
  945e20:	83 ec 18             	sub    esp,0x18
  945e23:	55                   	push   ebp
  945e24:	57                   	push   edi
  945e25:	8b f9                	mov    edi,ecx
  945e27:	33 ed                	xor    ebp,ebp
  945e29:	39 6f 28             	cmp    DWORD PTR [edi+0x28],ebp
  945e2c:	75 09                	jne    0x945e37
  945e2e:	39 6f 30             	cmp    DWORD PTR [edi+0x30],ebp
  945e31:	0f 84 05 02 00 00    	je     0x94603c
  945e37:	53                   	push   ebx
  945e38:	56                   	push   esi
  945e39:	e8 b2 2e ee ff       	call   0x828cf0
  945e3e:	8b 4f 28             	mov    ecx,DWORD PTR [edi+0x28]
  945e41:	3b cd                	cmp    ecx,ebp
  945e43:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  945e47:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  945e4c:	c6 44 24 13 00       	mov    BYTE PTR [esp+0x13],0x0
  945e51:	74 7a                	je     0x945ecd
  945e53:	e8 f8 ce fe ff       	call   0x932d50
  945e58:	8b c8                	mov    ecx,eax
  945e5a:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  945e5d:	2b 01                	sub    eax,DWORD PTR [ecx]
  945e5f:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  945e63:	c1 f8 06             	sar    eax,0x6
  945e66:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  945e6a:	74 61                	je     0x945ecd
  945e6c:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  945e70:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
  945e73:	8b 31                	mov    esi,DWORD PTR [ecx]
  945e75:	03 74 24 1c          	add    esi,DWORD PTR [esp+0x1c]
  945e79:	8d 1c aa             	lea    ebx,[edx+ebp*4]
  945e7c:	8b 13                	mov    edx,DWORD PTR [ebx]
  945e7e:	3b 56 08             	cmp    edx,DWORD PTR [esi+0x8]
  945e81:	74 3e                	je     0x945ec1
  945e83:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  945e88:	75 24                	jne    0x945eae
  945e8a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  945e8e:	85 c9                	test   ecx,ecx
  945e90:	74 15                	je     0x945ea7
  945e92:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  945e95:	6a 00                	push   0x0
  945e97:	6a 01                	push   0x1
  945e99:	50                   	push   eax
  945e9a:	e8 c1 35 ee ff       	call   0x829460
  945e9f:	84 c0                	test   al,al
  945ea1:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  945ea5:	75 07                	jne    0x945eae
  945ea7:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  945eac:	eb 05                	jmp    0x945eb3
  945eae:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  945eb3:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  945eb6:	89 0b                	mov    DWORD PTR [ebx],ecx
  945eb8:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  945ebc:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  945ec1:	83 44 24 1c 40       	add    DWORD PTR [esp+0x1c],0x40
  945ec6:	83 c5 01             	add    ebp,0x1
  945ec9:	3b e8                	cmp    ebp,eax
  945ecb:	72 a3                	jb     0x945e70
  945ecd:	8b 4f 30             	mov    ecx,DWORD PTR [edi+0x30]
  945ed0:	33 ed                	xor    ebp,ebp
  945ed2:	3b cd                	cmp    ecx,ebp
  945ed4:	74 7a                	je     0x945f50
  945ed6:	e8 85 ce fe ff       	call   0x932d60
  945edb:	8b c8                	mov    ecx,eax
  945edd:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  945ee0:	2b 01                	sub    eax,DWORD PTR [ecx]
  945ee2:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  945ee6:	c1 f8 06             	sar    eax,0x6
  945ee9:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  945eed:	74 61                	je     0x945f50
  945eef:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  945ef3:	8b 57 68             	mov    edx,DWORD PTR [edi+0x68]
  945ef6:	8b 31                	mov    esi,DWORD PTR [ecx]
  945ef8:	03 74 24 1c          	add    esi,DWORD PTR [esp+0x1c]
  945efc:	8d 1c aa             	lea    ebx,[edx+ebp*4]
  945eff:	8b 13                	mov    edx,DWORD PTR [ebx]
  945f01:	3b 56 08             	cmp    edx,DWORD PTR [esi+0x8]
  945f04:	74 3e                	je     0x945f44
  945f06:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  945f0b:	75 24                	jne    0x945f31
  945f0d:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  945f11:	85 c9                	test   ecx,ecx
  945f13:	74 15                	je     0x945f2a
  945f15:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  945f18:	6a 00                	push   0x0
  945f1a:	6a 01                	push   0x1
  945f1c:	50                   	push   eax
  945f1d:	e8 3e 35 ee ff       	call   0x829460
  945f22:	84 c0                	test   al,al
  945f24:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  945f28:	75 07                	jne    0x945f31
  945f2a:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  945f2f:	eb 05                	jmp    0x945f36
  945f31:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  945f36:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  945f39:	89 0b                	mov    DWORD PTR [ebx],ecx
  945f3b:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  945f3f:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  945f44:	83 44 24 1c 40       	add    DWORD PTR [esp+0x1c],0x40
  945f49:	83 c5 01             	add    ebp,0x1
  945f4c:	3b e8                	cmp    ebp,eax
  945f4e:	72 a3                	jb     0x945ef3
  945f50:	8b 4f 2c             	mov    ecx,DWORD PTR [edi+0x2c]
  945f53:	33 ed                	xor    ebp,ebp
  945f55:	3b cd                	cmp    ecx,ebp
  945f57:	74 7a                	je     0x945fd3
  945f59:	e8 f2 cd fe ff       	call   0x932d50
  945f5e:	8b c8                	mov    ecx,eax
  945f60:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  945f63:	2b 01                	sub    eax,DWORD PTR [ecx]
  945f65:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  945f69:	c1 f8 06             	sar    eax,0x6
  945f6c:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  945f70:	74 61                	je     0x945fd3
  945f72:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  945f76:	8b 57 48             	mov    edx,DWORD PTR [edi+0x48]
  945f79:	8b 31                	mov    esi,DWORD PTR [ecx]
  945f7b:	03 74 24 1c          	add    esi,DWORD PTR [esp+0x1c]
  945f7f:	8d 1c aa             	lea    ebx,[edx+ebp*4]
  945f82:	8b 13                	mov    edx,DWORD PTR [ebx]
  945f84:	3b 56 08             	cmp    edx,DWORD PTR [esi+0x8]
  945f87:	74 3e                	je     0x945fc7
  945f89:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  945f8e:	75 24                	jne    0x945fb4
  945f90:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  945f94:	85 c9                	test   ecx,ecx
  945f96:	74 15                	je     0x945fad
  945f98:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  945f9b:	6a 00                	push   0x0
  945f9d:	6a 01                	push   0x1
  945f9f:	50                   	push   eax
  945fa0:	e8 bb 34 ee ff       	call   0x829460
  945fa5:	84 c0                	test   al,al
  945fa7:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  945fab:	75 07                	jne    0x945fb4
  945fad:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  945fb2:	eb 05                	jmp    0x945fb9
  945fb4:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  945fb9:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  945fbc:	89 0b                	mov    DWORD PTR [ebx],ecx
  945fbe:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  945fc2:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  945fc7:	83 44 24 1c 40       	add    DWORD PTR [esp+0x1c],0x40
  945fcc:	83 c5 01             	add    ebp,0x1
  945fcf:	3b e8                	cmp    ebp,eax
  945fd1:	72 a3                	jb     0x945f76
  945fd3:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  945fd8:	74 60                	je     0x94603a
  945fda:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  945fde:	85 f6                	test   esi,esi
  945fe0:	74 58                	je     0x94603a
  945fe2:	f6 47 40 01          	test   BYTE PTR [edi+0x40],0x1
  945fe6:	74 3d                	je     0x946025
  945fe8:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  945feb:	85 c9                	test   ecx,ecx
  945fed:	74 2f                	je     0x94601e
  945fef:	8b 15 58 a1 1e 01    	mov    edx,DWORD PTR ds:0x11ea158
  945ff5:	52                   	push   edx
  945ff6:	e8 65 e2 fe ff       	call   0x934260
  945ffb:	85 c0                	test   eax,eax
  945ffd:	74 1f                	je     0x94601e
  945fff:	8b 40 30             	mov    eax,DWORD PTR [eax+0x30]
  946002:	85 c0                	test   eax,eax
  946004:	74 18                	je     0x94601e
  946006:	8b 0d fc a0 1e 01    	mov    ecx,DWORD PTR ds:0x11ea0fc
  94600c:	85 48 2c             	test   DWORD PTR [eax+0x2c],ecx
  94600f:	75 14                	jne    0x946025
  946011:	50                   	push   eax
  946012:	e8 c9 eb ff ff       	call   0x944be0
  946017:	83 c4 04             	add    esp,0x4
  94601a:	84 c0                	test   al,al
  94601c:	75 07                	jne    0x946025
  94601e:	b8 01 00 00 00       	mov    eax,0x1
  946023:	eb 02                	jmp    0x946027
  946025:	33 c0                	xor    eax,eax
  946027:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  94602b:	6a 00                	push   0x0
  94602d:	52                   	push   edx
  94602e:	50                   	push   eax
  94602f:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  946032:	50                   	push   eax
  946033:	8b ce                	mov    ecx,esi
  946035:	e8 66 d0 ee ff       	call   0x8330a0
  94603a:	5e                   	pop    esi
  94603b:	5b                   	pop    ebx
  94603c:	5f                   	pop    edi
  94603d:	5d                   	pop    ebp
  94603e:	83 c4 18             	add    esp,0x18
  946041:	c3                   	ret
