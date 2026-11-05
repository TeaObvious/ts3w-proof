# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0064fb20,0x0064fda6); analyst name Portal_GetDirectionalPermission.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0064fb20 <.text+0x24eb20>:
  64fb20:	83 ec 28             	sub    esp,0x28
  64fb23:	56                   	push   esi
  64fb24:	57                   	push   edi
  64fb25:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  64fb29:	85 ff                	test   edi,edi
  64fb2b:	8b f1                	mov    esi,ecx
  64fb2d:	0f 84 66 02 00 00    	je     0x64fd99
  64fb33:	83 7f 40 00          	cmp    DWORD PTR [edi+0x40],0x0
  64fb37:	0f 84 5c 02 00 00    	je     0x64fd99
  64fb3d:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  64fb40:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  64fb43:	66 8b 56 48          	mov    dx,WORD PTR [esi+0x48]
  64fb47:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  64fb4b:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  64fb4f:	66 8b 46 4a          	mov    ax,WORD PTR [esi+0x4a]
  64fb53:	c6 44 24 0c 00       	mov    BYTE PTR [esp+0xc],0x0
  64fb58:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  64fb5c:	51                   	push   ecx
  64fb5d:	66 89 54 24 2c       	mov    WORD PTR [esp+0x2c],dx
  64fb62:	8d 54 24 24          	lea    edx,[esp+0x24]
  64fb66:	66 89 44 24 2e       	mov    WORD PTR [esp+0x2e],ax
  64fb6b:	52                   	push   edx
  64fb6c:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  64fb70:	50                   	push   eax
  64fb71:	8b cf                	mov    ecx,edi
  64fb73:	e8 c8 fe ff ff       	call   0x64fa40
  64fb78:	80 7c 24 38 00       	cmp    BYTE PTR [esp+0x38],0x0
  64fb7d:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  64fb81:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
  64fb84:	74 05                	je     0x64fb8b
  64fb86:	0f b6 c4             	movzx  eax,ah
  64fb89:	eb 05                	jmp    0x64fb90
  64fb8b:	25 ff 00 00 00       	and    eax,0xff
  64fb90:	85 c0                	test   eax,eax
  64fb92:	0f 85 f9 01 00 00    	jne    0x64fd91
  64fb98:	f3 0f 10 46 2c       	movss  xmm0,DWORD PTR [esi+0x2c]
  64fb9d:	0f 2f 05 88 e0 fe 00 	comiss xmm0,DWORD PTR ds:0xfee088
  64fba4:	c7 44 24 08 01 00 00 00 	mov    DWORD PTR [esp+0x8],0x1
  64fbac:	73 08                	jae    0x64fbb6
  64fbae:	c7 44 24 08 02 00 00 00 	mov    DWORD PTR [esp+0x8],0x2
  64fbb6:	8b 57 40             	mov    edx,DWORD PTR [edi+0x40]
  64fbb9:	53                   	push   ebx
  64fbba:	55                   	push   ebp
  64fbbb:	8b 2a                	mov    ebp,DWORD PTR [edx]
  64fbbd:	55                   	push   ebp
  64fbbe:	e8 ad 4d fd ff       	call   0x624970
  64fbc3:	81 e5 00 cf 00 00    	and    ebp,0xcf00
  64fbc9:	55                   	push   ebp
  64fbca:	8b f8                	mov    edi,eax
  64fbcc:	8b da                	mov    ebx,edx
  64fbce:	e8 ed e1 f0 ff       	call   0x55ddc0
  64fbd3:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  64fbd7:	83 c4 08             	add    esp,0x8
  64fbda:	84 c0                	test   al,al
  64fbdc:	75 47                	jne    0x64fc25
  64fbde:	83 fd 01             	cmp    ebp,0x1
  64fbe1:	74 42                	je     0x64fc25
  64fbe3:	8b 46 78             	mov    eax,DWORD PTR [esi+0x78]
  64fbe6:	8b 4e 7c             	mov    ecx,DWORD PTR [esi+0x7c]
  64fbe9:	23 c7                	and    eax,edi
  64fbeb:	23 cb                	and    ecx,ebx
  64fbed:	3b f8                	cmp    edi,eax
  64fbef:	75 04                	jne    0x64fbf5
  64fbf1:	3b d9                	cmp    ebx,ecx
  64fbf3:	74 30                	je     0x64fc25
  64fbf5:	8b 4e 5c             	mov    ecx,DWORD PTR [esi+0x5c]
  64fbf8:	8b 6e 60             	mov    ebp,DWORD PTR [esi+0x60]
  64fbfb:	3b cd                	cmp    ecx,ebp
  64fbfd:	74 1a                	je     0x64fc19
  64fbff:	90                   	nop
  64fc00:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
  64fc03:	8b 51 34             	mov    edx,DWORD PTR [ecx+0x34]
  64fc06:	23 c7                	and    eax,edi
  64fc08:	23 d3                	and    edx,ebx
  64fc0a:	3b f8                	cmp    edi,eax
  64fc0c:	75 04                	jne    0x64fc12
  64fc0e:	3b da                	cmp    ebx,edx
  64fc10:	74 0f                	je     0x64fc21
  64fc12:	83 c1 38             	add    ecx,0x38
  64fc15:	3b cd                	cmp    ecx,ebp
  64fc17:	75 e7                	jne    0x64fc00
  64fc19:	c7 44 24 10 01 00 00 00 	mov    DWORD PTR [esp+0x10],0x1
  64fc21:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  64fc25:	e8 c6 90 1d 00       	call   0x828cf0
  64fc2a:	85 c0                	test   eax,eax
  64fc2c:	74 32                	je     0x64fc60
  64fc2e:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  64fc32:	8b 51 40             	mov    edx,DWORD PTR [ecx+0x40]
  64fc35:	52                   	push   edx
  64fc36:	8b c8                	mov    ecx,eax
  64fc38:	e8 c3 92 1d 00       	call   0x828f00
  64fc3d:	85 c0                	test   eax,eax
  64fc3f:	74 1f                	je     0x64fc60
  64fc41:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  64fc44:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  64fc47:	51                   	push   ecx
  64fc48:	52                   	push   edx
  64fc49:	8b c8                	mov    ecx,eax
  64fc4b:	e8 b0 c9 1c 00       	call   0x81c600
  64fc50:	3c 01                	cmp    al,0x1
  64fc52:	75 0c                	jne    0x64fc60
  64fc54:	c7 44 24 10 01 00 00 00 	mov    DWORD PTR [esp+0x10],0x1
  64fc5c:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  64fc60:	e8 0b 79 2e 00       	call   0x937570
  64fc65:	85 c0                	test   eax,eax
  64fc67:	0f 84 20 01 00 00    	je     0x64fd8d
  64fc6d:	8b 4e 0c             	mov    ecx,DWORD PTR [esi+0xc]
  64fc70:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  64fc73:	51                   	push   ecx
  64fc74:	52                   	push   edx
  64fc75:	8b c8                	mov    ecx,eax
  64fc77:	e8 04 83 2e 00       	call   0x937f80
  64fc7c:	85 c0                	test   eax,eax
  64fc7e:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  64fc82:	0f 84 fc 00 00 00    	je     0x64fd84
  64fc88:	8d 48 04             	lea    ecx,[eax+0x4]
  64fc8b:	ba 01 00 00 00       	mov    edx,0x1
  64fc90:	f0 0f c1 11          	lock xadd DWORD PTR [ecx],edx
  64fc94:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  64fc9a:	51                   	push   ecx
  64fc9b:	8b c8                	mov    ecx,eax
  64fc9d:	e8 be 45 2e 00       	call   0x934260
  64fca2:	85 c0                	test   eax,eax
  64fca4:	0f 84 da 00 00 00    	je     0x64fd84
  64fcaa:	8b 58 0c             	mov    ebx,DWORD PTR [eax+0xc]
  64fcad:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  64fcb0:	8b 54 24 3c          	mov    edx,DWORD PTR [esp+0x3c]
  64fcb4:	8b 4a 44             	mov    ecx,DWORD PTR [edx+0x44]
  64fcb7:	53                   	push   ebx
  64fcb8:	57                   	push   edi
  64fcb9:	e8 c2 06 fe ff       	call   0x630380
  64fcbe:	85 c0                	test   eax,eax
  64fcc0:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  64fcc4:	0f 84 ba 00 00 00    	je     0x64fd84
  64fcca:	80 b8 8f 00 00 00 00 	cmp    BYTE PTR [eax+0x8f],0x0
  64fcd1:	0f 84 82 00 00 00    	je     0x64fd59
  64fcd7:	80 7c 24 40 00       	cmp    BYTE PTR [esp+0x40],0x0
  64fcdc:	74 14                	je     0x64fcf2
  64fcde:	0f b7 46 4a          	movzx  eax,WORD PTR [esi+0x4a]
  64fce2:	50                   	push   eax
  64fce3:	e8 c8 4b fd ff       	call   0x6248b0
  64fce8:	0f b7 4e 48          	movzx  ecx,WORD PTR [esi+0x48]
  64fcec:	0f b7 e8             	movzx  ebp,ax
  64fcef:	51                   	push   ecx
  64fcf0:	eb 12                	jmp    0x64fd04
  64fcf2:	0f b7 56 48          	movzx  edx,WORD PTR [esi+0x48]
  64fcf6:	52                   	push   edx
  64fcf7:	e8 b4 4b fd ff       	call   0x6248b0
  64fcfc:	0f b7 e8             	movzx  ebp,ax
  64fcff:	0f b7 46 4a          	movzx  eax,WORD PTR [esi+0x4a]
  64fd03:	50                   	push   eax
  64fd04:	e8 a7 4b fd ff       	call   0x6248b0
  64fd09:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  64fd0c:	83 c4 08             	add    esp,0x8
  64fd0f:	83 7c 24 10 01       	cmp    DWORD PTR [esp+0x10],0x1
  64fd14:	0f b7 c0             	movzx  eax,ax
  64fd17:	0f 94 c1             	sete   cl
  64fd1a:	51                   	push   ecx
  64fd1b:	8b 4c 24 40          	mov    ecx,DWORD PTR [esp+0x40]
  64fd1f:	50                   	push   eax
  64fd20:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  64fd23:	55                   	push   ebp
  64fd24:	52                   	push   edx
  64fd25:	50                   	push   eax
  64fd26:	8b 41 40             	mov    eax,DWORD PTR [ecx+0x40]
  64fd29:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  64fd2c:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  64fd2f:	52                   	push   edx
  64fd30:	50                   	push   eax
  64fd31:	53                   	push   ebx
  64fd32:	57                   	push   edi
  64fd33:	e8 88 22 14 00       	call   0x791fc0
  64fd38:	83 c4 24             	add    esp,0x24
  64fd3b:	85 c0                	test   eax,eax
  64fd3d:	76 0b                	jbe    0x64fd4a
  64fd3f:	83 f8 03             	cmp    eax,0x3
  64fd42:	77 06                	ja     0x64fd4a
  64fd44:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  64fd48:	eb 0b                	jmp    0x64fd55
  64fd4a:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  64fd4e:	c6 81 8f 00 00 00 00 	mov    BYTE PTR [ecx+0x8f],0x0
  64fd55:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  64fd59:	80 7c 24 40 00       	cmp    BYTE PTR [esp+0x40],0x0
  64fd5e:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  64fd62:	74 1d                	je     0x64fd81
  64fd64:	8b d5                	mov    edx,ebp
  64fd66:	c1 e2 08             	shl    edx,0x8
  64fd69:	09 50 10             	or     DWORD PTR [eax+0x10],edx
  64fd6c:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  64fd70:	e8 6b 65 0f 00       	call   0x7462e0
  64fd75:	8b c5                	mov    eax,ebp
  64fd77:	5d                   	pop    ebp
  64fd78:	5b                   	pop    ebx
  64fd79:	5f                   	pop    edi
  64fd7a:	5e                   	pop    esi
  64fd7b:	83 c4 28             	add    esp,0x28
  64fd7e:	c2 08 00             	ret    0x8
  64fd81:	09 68 10             	or     DWORD PTR [eax+0x10],ebp
  64fd84:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  64fd88:	e8 53 65 0f 00       	call   0x7462e0
  64fd8d:	8b c5                	mov    eax,ebp
  64fd8f:	5d                   	pop    ebp
  64fd90:	5b                   	pop    ebx
  64fd91:	5f                   	pop    edi
  64fd92:	5e                   	pop    esi
  64fd93:	83 c4 28             	add    esp,0x28
  64fd96:	c2 08 00             	ret    0x8
  64fd99:	5f                   	pop    edi
  64fd9a:	b8 02 00 00 00       	mov    eax,0x2
  64fd9f:	5e                   	pop    esi
  64fda0:	83 c4 28             	add    esp,0x28
  64fda3:	c2 08 00             	ret    0x8
