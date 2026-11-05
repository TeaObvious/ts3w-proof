# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00c65d30, 0x00c66238).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: WorldManager_ReadTerrainSizeInfo.
Paired annotated Ghidra pseudocode: 00C65D30_WorldManager_ReadTerrainSizeInfo.c
Instruction-verified function envelope [0x00c65d30,0x00c66238); inferred boundaries.
Includes any internal alignment gaps; original instructions govern decompiler interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c65d30 <.text+0x864d30>:
  c65d30:	83 ec 40             	sub    esp,0x40
  c65d33:	53                   	push   ebx
  c65d34:	55                   	push   ebp
  c65d35:	56                   	push   esi
  c65d36:	8b 74 24 50          	mov    esi,DWORD PTR [esp+0x50]
  c65d3a:	57                   	push   edi
  c65d3b:	33 ff                	xor    edi,edi
  c65d3d:	8b d9                	mov    ebx,ecx
  c65d3f:	68 1b 4c 62 90       	push   0x90624c1b
  c65d44:	8b ce                	mov    ecx,esi
  c65d46:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  c65d4a:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  c65d4e:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  c65d52:	c6 44 24 17 00       	mov    BYTE PTR [esp+0x17],0x0
  c65d57:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  c65d5b:	89 7c 24 28          	mov    DWORD PTR [esp+0x28],edi
  c65d5f:	89 7c 24 2c          	mov    DWORD PTR [esp+0x2c],edi
  c65d63:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  c65d67:	e8 a4 36 b7 ff       	call   0x7d9410
  c65d6c:	84 c0                	test   al,al
  c65d6e:	0f 84 d8 02 00 00    	je     0xc6604c
  c65d74:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c65d77:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c65d7a:	50                   	push   eax
  c65d7b:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  c65d7f:	51                   	push   ecx
  c65d80:	52                   	push   edx
  c65d81:	e8 5a 7b 87 ff       	call   0x4dd8e0
  c65d86:	83 c4 0c             	add    esp,0xc
  c65d89:	8b ce                	mov    ecx,esi
  c65d8b:	50                   	push   eax
  c65d8c:	e8 5f 1c b7 ff       	call   0x7d79f0
  c65d91:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  c65d95:	83 c0 fe             	add    eax,0xfffffffe
  c65d98:	66 3d 0a 00          	cmp    ax,0xa
  c65d9c:	77 1d                	ja     0xc65dbb
  c65d9e:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c65da1:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c65da4:	51                   	push   ecx
  c65da5:	8d 54 24 58          	lea    edx,[esp+0x58]
  c65da9:	52                   	push   edx
  c65daa:	50                   	push   eax
  c65dab:	e8 d0 7b 87 ff       	call   0x4dd980
  c65db0:	83 c4 0c             	add    esp,0xc
  c65db3:	8b ce                	mov    ecx,esi
  c65db5:	50                   	push   eax
  c65db6:	e8 35 1c b7 ff       	call   0x7d79f0
  c65dbb:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c65dbe:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c65dc1:	51                   	push   ecx
  c65dc2:	8d 93 b4 00 00 00    	lea    edx,[ebx+0xb4]
  c65dc8:	52                   	push   edx
  c65dc9:	50                   	push   eax
  c65dca:	e8 b1 7b 87 ff       	call   0x4dd980
  c65dcf:	83 c4 0c             	add    esp,0xc
  c65dd2:	8b ce                	mov    ecx,esi
  c65dd4:	50                   	push   eax
  c65dd5:	e8 16 1c b7 ff       	call   0x7d79f0
  c65dda:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c65ddd:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c65de0:	51                   	push   ecx
  c65de1:	8d 93 b8 00 00 00    	lea    edx,[ebx+0xb8]
  c65de7:	52                   	push   edx
  c65de8:	50                   	push   eax
  c65de9:	e8 92 7b 87 ff       	call   0x4dd980
  c65dee:	83 c4 0c             	add    esp,0xc
  c65df1:	8b ce                	mov    ecx,esi
  c65df3:	50                   	push   eax
  c65df4:	e8 f7 1b b7 ff       	call   0x7d79f0
  c65df9:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c65dfc:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c65dff:	51                   	push   ecx
  c65e00:	8d 93 cc 00 00 00    	lea    edx,[ebx+0xcc]
  c65e06:	52                   	push   edx
  c65e07:	50                   	push   eax
  c65e08:	e8 73 7b 87 ff       	call   0x4dd980
  c65e0d:	83 c4 0c             	add    esp,0xc
  c65e10:	8b ce                	mov    ecx,esi
  c65e12:	50                   	push   eax
  c65e13:	e8 d8 1b b7 ff       	call   0x7d79f0
  c65e18:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c65e1b:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c65e1e:	51                   	push   ecx
  c65e1f:	8d 93 d0 00 00 00    	lea    edx,[ebx+0xd0]
  c65e25:	52                   	push   edx
  c65e26:	50                   	push   eax
  c65e27:	e8 54 7b 87 ff       	call   0x4dd980
  c65e2c:	83 c4 0c             	add    esp,0xc
  c65e2f:	8b ce                	mov    ecx,esi
  c65e31:	50                   	push   eax
  c65e32:	e8 b9 1b b7 ff       	call   0x7d79f0
  c65e37:	66 83 7c 24 18 07    	cmp    WORD PTR [esp+0x18],0x7
  c65e3d:	0f 83 0e 01 00 00    	jae    0xc65f51
  c65e43:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c65e46:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c65e49:	51                   	push   ecx
  c65e4a:	8d 54 24 3c          	lea    edx,[esp+0x3c]
  c65e4e:	52                   	push   edx
  c65e4f:	50                   	push   eax
  c65e50:	89 7c 24 44          	mov    DWORD PTR [esp+0x44],edi
  c65e54:	e8 27 7b 87 ff       	call   0x4dd980
  c65e59:	83 c4 0c             	add    esp,0xc
  c65e5c:	8b ce                	mov    ecx,esi
  c65e5e:	50                   	push   eax
  c65e5f:	e8 8c 1b b7 ff       	call   0x7d79f0
  c65e64:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c65e67:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c65e6a:	51                   	push   ecx
  c65e6b:	8d 54 24 18          	lea    edx,[esp+0x18]
  c65e6f:	52                   	push   edx
  c65e70:	50                   	push   eax
  c65e71:	e8 0a 7b 87 ff       	call   0x4dd980
  c65e76:	83 c4 0c             	add    esp,0xc
  c65e79:	8b ce                	mov    ecx,esi
  c65e7b:	50                   	push   eax
  c65e7c:	e8 6f 1b b7 ff       	call   0x7d79f0
  c65e81:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  c65e85:	66 3d 05 00          	cmp    ax,0x5
  c65e89:	0f 85 07 02 00 00    	jne    0xc66096
  c65e8f:	83 44 24 14 01       	add    DWORD PTR [esp+0x14],0x1
  c65e94:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  c65e98:	3b c7                	cmp    eax,edi
  c65e9a:	0f 86 b1 00 00 00    	jbe    0xc65f51
  c65ea0:	33 ed                	xor    ebp,ebp
  c65ea2:	3b c7                	cmp    eax,edi
  c65ea4:	0f 86 99 00 00 00    	jbe    0xc65f43
  c65eaa:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  c65eb0:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  c65eb4:	0f 84 89 00 00 00    	je     0xc65f43
  c65eba:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c65ebd:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c65ec0:	50                   	push   eax
  c65ec1:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  c65ec5:	51                   	push   ecx
  c65ec6:	52                   	push   edx
  c65ec7:	e8 b4 7a 87 ff       	call   0x4dd980
  c65ecc:	83 c4 0c             	add    esp,0xc
  c65ecf:	8b ce                	mov    ecx,esi
  c65ed1:	50                   	push   eax
  c65ed2:	e8 19 1b b7 ff       	call   0x7d79f0
  c65ed7:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c65eda:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c65edd:	50                   	push   eax
  c65ede:	8d 4c 24 40          	lea    ecx,[esp+0x40]
  c65ee2:	51                   	push   ecx
  c65ee3:	52                   	push   edx
  c65ee4:	e8 97 7a 87 ff       	call   0x4dd980
  c65ee9:	83 c4 0c             	add    esp,0xc
  c65eec:	8b ce                	mov    ecx,esi
  c65eee:	50                   	push   eax
  c65eef:	e8 fc 1a b7 ff       	call   0x7d79f0
  c65ef4:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  c65ef8:	8b 4c 24 3c          	mov    ecx,DWORD PTR [esp+0x3c]
  c65efc:	57                   	push   edi
  c65efd:	50                   	push   eax
  c65efe:	57                   	push   edi
  c65eff:	51                   	push   ecx
  c65f00:	8b cb                	mov    ecx,ebx
  c65f02:	e8 f9 e0 ff ff       	call   0xc64000
  c65f07:	3b c7                	cmp    eax,edi
  c65f09:	74 2b                	je     0xc65f36
  c65f0b:	8b 10                	mov    edx,DWORD PTR [eax]
  c65f0d:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  c65f11:	8b c8                	mov    ecx,eax
  c65f13:	8b 02                	mov    eax,DWORD PTR [edx]
  c65f15:	ff d0                	call   eax
  c65f17:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  c65f1b:	51                   	push   ecx
  c65f1c:	8d 8b 9c 00 00 00    	lea    ecx,[ebx+0x9c]
  c65f22:	e8 29 15 ec ff       	call   0xb27450
  c65f27:	8b 4c 24 34          	mov    ecx,DWORD PTR [esp+0x34]
  c65f2b:	3b cf                	cmp    ecx,edi
  c65f2d:	74 07                	je     0xc65f36
  c65f2f:	8b 11                	mov    edx,DWORD PTR [ecx]
  c65f31:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c65f34:	ff d0                	call   eax
  c65f36:	83 c5 01             	add    ebp,0x1
  c65f39:	3b 6c 24 14          	cmp    ebp,DWORD PTR [esp+0x14]
  c65f3d:	0f 82 6d ff ff ff    	jb     0xc65eb0
  c65f43:	8b 8b 9c 00 00 00    	mov    ecx,DWORD PTR [ebx+0x9c]
  c65f49:	8b 11                	mov    edx,DWORD PTR [ecx]
  c65f4b:	89 93 ac 00 00 00    	mov    DWORD PTR [ebx+0xac],edx
  c65f51:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c65f54:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c65f57:	50                   	push   eax
  c65f58:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  c65f5c:	51                   	push   ecx
  c65f5d:	52                   	push   edx
  c65f5e:	e8 1d 7a 87 ff       	call   0x4dd980
  c65f63:	83 c4 0c             	add    esp,0xc
  c65f66:	8b ce                	mov    ecx,esi
  c65f68:	50                   	push   eax
  c65f69:	e8 82 1a b7 ff       	call   0x7d79f0
  c65f6e:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  c65f72:	75 08                	jne    0xc65f7c
  c65f74:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  c65f78:	c6 46 14 01          	mov    BYTE PTR [esi+0x14],0x1
  c65f7c:	66 83 7c 24 18 05    	cmp    WORD PTR [esp+0x18],0x5
  c65f82:	0f 82 91 00 00 00    	jb     0xc66019
  c65f88:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c65f8b:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c65f8e:	50                   	push   eax
  c65f8f:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  c65f93:	51                   	push   ecx
  c65f94:	52                   	push   edx
  c65f95:	e8 e6 79 87 ff       	call   0x4dd980
  c65f9a:	83 c4 0c             	add    esp,0xc
  c65f9d:	8b ce                	mov    ecx,esi
  c65f9f:	50                   	push   eax
  c65fa0:	e8 4b 1a b7 ff       	call   0x7d79f0
  c65fa5:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c65fa8:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c65fab:	50                   	push   eax
  c65fac:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  c65fb0:	51                   	push   ecx
  c65fb1:	52                   	push   edx
  c65fb2:	e8 c9 79 87 ff       	call   0x4dd980
  c65fb7:	83 c4 0c             	add    esp,0xc
  c65fba:	8b ce                	mov    ecx,esi
  c65fbc:	50                   	push   eax
  c65fbd:	e8 2e 1a b7 ff       	call   0x7d79f0
  c65fc2:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c65fc5:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c65fc8:	50                   	push   eax
  c65fc9:	8d 4c 24 2c          	lea    ecx,[esp+0x2c]
  c65fcd:	51                   	push   ecx
  c65fce:	52                   	push   edx
  c65fcf:	e8 ac 79 87 ff       	call   0x4dd980
  c65fd4:	83 c4 0c             	add    esp,0xc
  c65fd7:	8b ce                	mov    ecx,esi
  c65fd9:	50                   	push   eax
  c65fda:	e8 11 1a b7 ff       	call   0x7d79f0
  c65fdf:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c65fe2:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c65fe5:	50                   	push   eax
  c65fe6:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  c65fea:	51                   	push   ecx
  c65feb:	52                   	push   edx
  c65fec:	e8 8f 79 87 ff       	call   0x4dd980
  c65ff1:	83 c4 0c             	add    esp,0xc
  c65ff4:	8b ce                	mov    ecx,esi
  c65ff6:	50                   	push   eax
  c65ff7:	e8 f4 19 b7 ff       	call   0x7d79f0
  c65ffc:	39 7c 24 20          	cmp    DWORD PTR [esp+0x20],edi
  c66000:	74 17                	je     0xc66019
  c66002:	39 7c 24 24          	cmp    DWORD PTR [esp+0x24],edi
  c66006:	74 11                	je     0xc66019
  c66008:	39 7c 24 28          	cmp    DWORD PTR [esp+0x28],edi
  c6600c:	74 0b                	je     0xc66019
  c6600e:	39 7c 24 2c          	cmp    DWORD PTR [esp+0x2c],edi
  c66012:	74 05                	je     0xc66019
  c66014:	c6 44 24 13 01       	mov    BYTE PTR [esp+0x13],0x1
  c66019:	66 83 7c 24 18 0c    	cmp    WORD PTR [esp+0x18],0xc
  c6601f:	72 24                	jb     0xc66045
  c66021:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c66024:	8d 44 24 54          	lea    eax,[esp+0x54]
  c66028:	50                   	push   eax
  c66029:	51                   	push   ecx
  c6602a:	e8 61 78 87 ff       	call   0x4dd890
  c6602f:	83 c4 08             	add    esp,0x8
  c66032:	8b ce                	mov    ecx,esi
  c66034:	50                   	push   eax
  c66035:	e8 b6 19 b7 ff       	call   0x7d79f0
  c6603a:	0f b6 54 24 54       	movzx  edx,BYTE PTR [esp+0x54]
  c6603f:	89 93 64 01 00 00    	mov    DWORD PTR [ebx+0x164],edx
  c66045:	8b ce                	mov    ecx,esi
  c66047:	e8 24 1a b7 ff       	call   0x7d7a70
  c6604c:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  c66050:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  c66054:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  c66058:	89 08                	mov    DWORD PTR [eax],ecx
  c6605a:	66 8b 4c 24 18       	mov    cx,WORD PTR [esp+0x18]
  c6605f:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  c66062:	8a 54 24 13          	mov    dl,BYTE PTR [esp+0x13]
  c66066:	66 89 48 08          	mov    WORD PTR [eax+0x8],cx
  c6606a:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  c6606e:	88 50 0a             	mov    BYTE PTR [eax+0xa],dl
  c66071:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  c66075:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  c66078:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  c6607c:	89 50 10             	mov    DWORD PTR [eax+0x10],edx
  c6607f:	8b 54 24 2c          	mov    edx,DWORD PTR [esp+0x2c]
  c66083:	5f                   	pop    edi
  c66084:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  c66087:	89 50 18             	mov    DWORD PTR [eax+0x18],edx
  c6608a:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  c6608d:	5e                   	pop    esi
  c6608e:	5d                   	pop    ebp
  c6608f:	5b                   	pop    ebx
  c66090:	83 c4 40             	add    esp,0x40
  c66093:	c2 08 00             	ret    0x8
  c66096:	66 3d 04 00          	cmp    ax,0x4
  c6609a:	0f 83 f4 fd ff ff    	jae    0xc65e94
  c660a0:	57                   	push   edi
  c660a1:	e8 5a 9d b6 ff       	call   0x7cfe00
  c660a6:	57                   	push   edi
  c660a7:	57                   	push   edi
  c660a8:	57                   	push   edi
  c660a9:	57                   	push   edi
  c660aa:	68 94 a1 07 01       	push   0x107a194
  c660af:	57                   	push   edi
  c660b0:	6a 08                	push   0x8
  c660b2:	68 b8 00 00 00       	push   0xb8
  c660b7:	89 44 24 64          	mov    DWORD PTR [esp+0x64],eax
  c660bb:	89 54 24 68          	mov    DWORD PTR [esp+0x68],edx
  c660bf:	e8 5c e4 87 ff       	call   0x4e4520
  c660c4:	83 c4 24             	add    esp,0x24
  c660c7:	3b c7                	cmp    eax,edi
  c660c9:	74 38                	je     0xc66103
  c660cb:	53                   	push   ebx
  c660cc:	8b c8                	mov    ecx,eax
  c660ce:	e8 dd 18 e4 ff       	call   0xaa79b0
  c660d3:	8b e8                	mov    ebp,eax
  c660d5:	3b ef                	cmp    ebp,edi
  c660d7:	74 2a                	je     0xc66103
  c660d9:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  c660dc:	8b 52 60             	mov    edx,DWORD PTR [edx+0x60]
  c660df:	8d 44 24 40          	lea    eax,[esp+0x40]
  c660e3:	50                   	push   eax
  c660e4:	8b cd                	mov    ecx,ebp
  c660e6:	ff d2                	call   edx
  c660e8:	55                   	push   ebp
  c660e9:	e8 22 dd ff ff       	call   0xc63e10
  c660ee:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  c660f2:	83 c4 04             	add    esp,0x4
  c660f5:	3b c7                	cmp    eax,edi
  c660f7:	0f 86 d3 00 00 00    	jbe    0xc661d0
  c660fd:	89 7c 24 34          	mov    DWORD PTR [esp+0x34],edi
  c66101:	eb 0f                	jmp    0xc66112
  c66103:	5f                   	pop    edi
  c66104:	5e                   	pop    esi
  c66105:	5d                   	pop    ebp
  c66106:	32 c0                	xor    al,al
  c66108:	5b                   	pop    ebx
  c66109:	83 c4 40             	add    esp,0x40
  c6610c:	c2 08 00             	ret    0x8
  c6610f:	90                   	nop
  c66110:	33 ff                	xor    edi,edi
  c66112:	57                   	push   edi
  c66113:	57                   	push   edi
  c66114:	57                   	push   edi
  c66115:	57                   	push   edi
  c66116:	68 54 a3 07 01       	push   0x107a354
  c6611b:	57                   	push   edi
  c6611c:	6a 10                	push   0x10
  c6611e:	68 c0 04 00 00       	push   0x4c0
  c66123:	e8 f8 e3 87 ff       	call   0x4e4520
  c66128:	83 c4 20             	add    esp,0x20
  c6612b:	3b c7                	cmp    eax,edi
  c6612d:	74 0a                	je     0xc66139
  c6612f:	53                   	push   ebx
  c66130:	8b c8                	mov    ecx,eax
  c66132:	e8 29 aa e5 ff       	call   0xac0b60
  c66137:	8b f8                	mov    edi,eax
  c66139:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c6613c:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c6613f:	50                   	push   eax
  c66140:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  c66144:	51                   	push   ecx
  c66145:	52                   	push   edx
  c66146:	e8 35 78 87 ff       	call   0x4dd980
  c6614b:	83 c4 0c             	add    esp,0xc
  c6614e:	8b ce                	mov    ecx,esi
  c66150:	50                   	push   eax
  c66151:	e8 9a 18 b7 ff       	call   0x7d79f0
  c66156:	8b 44 24 54          	mov    eax,DWORD PTR [esp+0x54]
  c6615a:	8b 17                	mov    edx,DWORD PTR [edi]
  c6615c:	8b 52 60             	mov    edx,DWORD PTR [edx+0x60]
  c6615f:	89 44 24 48          	mov    DWORD PTR [esp+0x48],eax
  c66163:	8d 44 24 48          	lea    eax,[esp+0x48]
  c66167:	50                   	push   eax
  c66168:	8b cf                	mov    ecx,edi
  c6616a:	c7 44 24 50 00 00 00 	mov    DWORD PTR [esp+0x50],0x0
  c66171:	00
  c66172:	ff d2                	call   edx
  c66174:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  c66177:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
  c6617a:	8b cd                	mov    ecx,ebp
  c6617c:	ff d2                	call   edx
  c6617e:	83 f8 02             	cmp    eax,0x2
  c66181:	75 0d                	jne    0xc66190
  c66183:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  c66186:	8b 50 44             	mov    edx,DWORD PTR [eax+0x44]
  c66189:	57                   	push   edi
  c6618a:	8b cd                	mov    ecx,ebp
  c6618c:	ff d2                	call   edx
  c6618e:	eb 2b                	jmp    0xc661bb
  c66190:	8b 07                	mov    eax,DWORD PTR [edi]
  c66192:	8b 10                	mov    edx,DWORD PTR [eax]
  c66194:	8b cf                	mov    ecx,edi
  c66196:	89 7c 24 30          	mov    DWORD PTR [esp+0x30],edi
  c6619a:	ff d2                	call   edx
  c6619c:	8d 44 24 30          	lea    eax,[esp+0x30]
  c661a0:	50                   	push   eax
  c661a1:	8d 8b 9c 00 00 00    	lea    ecx,[ebx+0x9c]
  c661a7:	e8 a4 12 ec ff       	call   0xb27450
  c661ac:	8b 4c 24 30          	mov    ecx,DWORD PTR [esp+0x30]
  c661b0:	85 c9                	test   ecx,ecx
  c661b2:	74 07                	je     0xc661bb
  c661b4:	8b 11                	mov    edx,DWORD PTR [ecx]
  c661b6:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  c661b9:	ff d0                	call   eax
  c661bb:	8b 44 24 34          	mov    eax,DWORD PTR [esp+0x34]
  c661bf:	83 c0 01             	add    eax,0x1
  c661c2:	3b 44 24 14          	cmp    eax,DWORD PTR [esp+0x14]
  c661c6:	89 44 24 34          	mov    DWORD PTR [esp+0x34],eax
  c661ca:	0f 82 40 ff ff ff    	jb     0xc66110
  c661d0:	89 ab ac 00 00 00    	mov    DWORD PTR [ebx+0xac],ebp
  c661d6:	8b 55 00             	mov    edx,DWORD PTR [ebp+0x0]
  c661d9:	8b 02                	mov    eax,DWORD PTR [edx]
  c661db:	8b cd                	mov    ecx,ebp
  c661dd:	89 6c 24 34          	mov    DWORD PTR [esp+0x34],ebp
  c661e1:	ff d0                	call   eax
  c661e3:	8b 83 a0 00 00 00    	mov    eax,DWORD PTR [ebx+0xa0]
  c661e9:	3b 83 a4 00 00 00    	cmp    eax,DWORD PTR [ebx+0xa4]
  c661ef:	8d 8b 9c 00 00 00    	lea    ecx,[ebx+0x9c]
  c661f5:	73 19                	jae    0xc66210
  c661f7:	33 ff                	xor    edi,edi
  c661f9:	3b c7                	cmp    eax,edi
  c661fb:	8d 50 04             	lea    edx,[eax+0x4]
  c661fe:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  c66201:	74 1e                	je     0xc66221
  c66203:	89 28                	mov    DWORD PTR [eax],ebp
  c66205:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  c66208:	8b 10                	mov    edx,DWORD PTR [eax]
  c6620a:	8b cd                	mov    ecx,ebp
  c6620c:	ff d2                	call   edx
  c6620e:	eb 11                	jmp    0xc66221
  c66210:	8d 54 24 34          	lea    edx,[esp+0x34]
  c66214:	52                   	push   edx
  c66215:	50                   	push   eax
  c66216:	e8 b5 f8 ff ff       	call   0xc65ad0
  c6621b:	8b 6c 24 34          	mov    ebp,DWORD PTR [esp+0x34]
  c6621f:	33 ff                	xor    edi,edi
  c66221:	3b ef                	cmp    ebp,edi
  c66223:	0f 84 28 fd ff ff    	je     0xc65f51
  c66229:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  c6622c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  c6622f:	8b cd                	mov    ecx,ebp
  c66231:	ff d2                	call   edx
  c66233:	e9 19 fd ff ff       	jmp    0xc65f51
