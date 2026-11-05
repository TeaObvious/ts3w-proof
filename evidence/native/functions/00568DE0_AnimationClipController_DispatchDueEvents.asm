# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00568de0, 0x00568fd3); analyst name AnimationClipController_DispatchDueEvents.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00568de0 <.text+0x167de0>:
  568de0:	83 ec 18             	sub    esp,0x18
  568de3:	56                   	push   esi
  568de4:	8b f1                	mov    esi,ecx
  568de6:	8b 8e d0 05 00 00    	mov    ecx,DWORD PTR [esi+0x5d0]
  568dec:	57                   	push   edi
  568ded:	33 ff                	xor    edi,edi
  568def:	3b cf                	cmp    ecx,edi
  568df1:	0f 84 d4 01 00 00    	je     0x568fcb
  568df7:	53                   	push   ebx
  568df8:	55                   	push   ebp
  568df9:	e8 62 1d 01 00       	call   0x57ab60
  568dfe:	8d 44 24 10          	lea    eax,[esp+0x10]
  568e02:	50                   	push   eax
  568e03:	8b ce                	mov    ecx,esi
  568e05:	89 7c 24 14          	mov    DWORD PTR [esp+0x14],edi
  568e09:	89 7c 24 18          	mov    DWORD PTR [esp+0x18],edi
  568e0d:	89 7c 24 1c          	mov    DWORD PTR [esp+0x1c],edi
  568e11:	89 7c 24 20          	mov    DWORD PTR [esp+0x20],edi
  568e15:	89 7c 24 24          	mov    DWORD PTR [esp+0x24],edi
  568e19:	c6 44 24 28 00       	mov    BYTE PTR [esp+0x28],0x0
  568e1e:	c6 44 24 29 00       	mov    BYTE PTR [esp+0x29],0x0
  568e23:	c6 44 24 2a 00       	mov    BYTE PTR [esp+0x2a],0x0
  568e28:	e8 13 ff ff ff       	call   0x568d40
  568e2d:	8b ae d0 05 00 00    	mov    ebp,DWORD PTR [esi+0x5d0]
  568e33:	83 c5 54             	add    ebp,0x54
  568e36:	8b cd                	mov    ecx,ebp
  568e38:	e8 93 73 01 00       	call   0x5801d0
  568e3d:	80 be fd 05 00 00 00 	cmp    BYTE PTR [esi+0x5fd],0x0
  568e44:	8b d8                	mov    ebx,eax
  568e46:	0f 85 9e 00 00 00    	jne    0x568eea
  568e4c:	85 db                	test   ebx,ebx
  568e4e:	0f 86 4b 01 00 00    	jbe    0x568f9f
  568e54:	57                   	push   edi
  568e55:	8b cd                	mov    ecx,ebp
  568e57:	e8 d4 73 01 00       	call   0x580230
  568e5c:	3b be f4 05 00 00    	cmp    edi,DWORD PTR [esi+0x5f4]
  568e62:	7e 76                	jle    0x568eda
  568e64:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  568e6a:	0f 2f 40 10          	comiss xmm0,DWORD PTR [eax+0x10]
  568e6e:	0f 82 2b 01 00 00    	jb     0x568f9f
  568e74:	80 7c 24 30 00       	cmp    BYTE PTR [esp+0x30],0x0
  568e79:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  568e7d:	74 0b                	je     0x568e8a
  568e7f:	8b 48 1c             	mov    ecx,DWORD PTR [eax+0x1c]
  568e82:	83 e1 04             	and    ecx,0x4
  568e85:	80 f9 04             	cmp    cl,0x4
  568e88:	75 27                	jne    0x568eb1
  568e8a:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  568e8d:	83 e2 10             	and    edx,0x10
  568e90:	80 fa 10             	cmp    dl,0x10
  568e93:	75 10                	jne    0x568ea5
  568e95:	a1 00 e8 1c 01       	mov    eax,ds:0x11ce800
  568e9a:	8b 48 28             	mov    ecx,DWORD PTR [eax+0x28]
  568e9d:	c1 e9 02             	shr    ecx,0x2
  568ea0:	f6 c1 01             	test   cl,0x1
  568ea3:	74 0c                	je     0x568eb1
  568ea5:	8d 54 24 10          	lea    edx,[esp+0x10]
  568ea9:	52                   	push   edx
  568eaa:	8b ce                	mov    ecx,esi
  568eac:	e8 9f fc ff ff       	call   0x568b50
  568eb1:	8b 86 d0 05 00 00    	mov    eax,DWORD PTR [esi+0x5d0]
  568eb7:	85 c0                	test   eax,eax
  568eb9:	89 be f4 05 00 00    	mov    DWORD PTR [esi+0x5f4],edi
  568ebf:	74 13                	je     0x568ed4
  568ec1:	8d 48 54             	lea    ecx,[eax+0x54]
  568ec4:	e8 17 73 01 00       	call   0x5801e0
  568ec9:	3b 86 f4 05 00 00    	cmp    eax,DWORD PTR [esi+0x5f4]
  568ecf:	0f 9e c0             	setle  al
  568ed2:	eb 02                	jmp    0x568ed6
  568ed4:	b0 01                	mov    al,0x1
  568ed6:	88 44 24 24          	mov    BYTE PTR [esp+0x24],al
  568eda:	83 c7 01             	add    edi,0x1
  568edd:	3b fb                	cmp    edi,ebx
  568edf:	0f 82 6f ff ff ff    	jb     0x568e54
  568ee5:	e9 b5 00 00 00       	jmp    0x568f9f
  568eea:	f3 0f 10 86 e8 05 00 00 	movss  xmm0,DWORD PTR [esi+0x5e8]
  568ef2:	f3 0f 5c 44 24 2c    	subss  xmm0,DWORD PTR [esp+0x2c]
  568ef8:	8d 7b ff             	lea    edi,[ebx-0x1]
  568efb:	85 ff                	test   edi,edi
  568efd:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  568f03:	0f 8c 96 00 00 00    	jl     0x568f9f
  568f09:	8a 5c 24 30          	mov    bl,BYTE PTR [esp+0x30]
  568f0d:	8d 49 00             	lea    ecx,[ecx+0x0]
  568f10:	57                   	push   edi
  568f11:	8b cd                	mov    ecx,ebp
  568f13:	e8 18 73 01 00       	call   0x580230
  568f18:	8b 8e f4 05 00 00    	mov    ecx,DWORD PTR [esi+0x5f4]
  568f1e:	83 f9 ff             	cmp    ecx,0xffffffff
  568f21:	f3 0f 10 40 10       	movss  xmm0,DWORD PTR [eax+0x10]
  568f26:	74 04                	je     0x568f2c
  568f28:	3b f9                	cmp    edi,ecx
  568f2a:	7d 6a                	jge    0x568f96
  568f2c:	0f 2f 44 24 2c       	comiss xmm0,DWORD PTR [esp+0x2c]
  568f31:	72 6c                	jb     0x568f9f
  568f33:	84 db                	test   bl,bl
  568f35:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  568f39:	74 0b                	je     0x568f46
  568f3b:	8b 48 1c             	mov    ecx,DWORD PTR [eax+0x1c]
  568f3e:	83 e1 04             	and    ecx,0x4
  568f41:	80 f9 04             	cmp    cl,0x4
  568f44:	75 27                	jne    0x568f6d
  568f46:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  568f49:	83 e2 10             	and    edx,0x10
  568f4c:	80 fa 10             	cmp    dl,0x10
  568f4f:	75 10                	jne    0x568f61
  568f51:	a1 00 e8 1c 01       	mov    eax,ds:0x11ce800
  568f56:	8b 48 28             	mov    ecx,DWORD PTR [eax+0x28]
  568f59:	c1 e9 02             	shr    ecx,0x2
  568f5c:	f6 c1 01             	test   cl,0x1
  568f5f:	74 0c                	je     0x568f6d
  568f61:	8d 54 24 10          	lea    edx,[esp+0x10]
  568f65:	52                   	push   edx
  568f66:	8b ce                	mov    ecx,esi
  568f68:	e8 e3 fb ff ff       	call   0x568b50
  568f6d:	8b 86 d0 05 00 00    	mov    eax,DWORD PTR [esi+0x5d0]
  568f73:	85 c0                	test   eax,eax
  568f75:	89 be f4 05 00 00    	mov    DWORD PTR [esi+0x5f4],edi
  568f7b:	74 13                	je     0x568f90
  568f7d:	8d 48 54             	lea    ecx,[eax+0x54]
  568f80:	e8 5b 72 01 00       	call   0x5801e0
  568f85:	3b 86 f4 05 00 00    	cmp    eax,DWORD PTR [esi+0x5f4]
  568f8b:	0f 9e c0             	setle  al
  568f8e:	eb 02                	jmp    0x568f92
  568f90:	b0 01                	mov    al,0x1
  568f92:	88 44 24 24          	mov    BYTE PTR [esp+0x24],al
  568f96:	83 ef 01             	sub    edi,0x1
  568f99:	0f 89 71 ff ff ff    	jns    0x568f10
  568f9f:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  568fa3:	85 c9                	test   ecx,ecx
  568fa5:	5d                   	pop    ebp
  568fa6:	5b                   	pop    ebx
  568fa7:	74 22                	je     0x568fcb
  568fa9:	8d 41 04             	lea    eax,[ecx+0x4]
  568fac:	8b d0                	mov    edx,eax
  568fae:	83 ce ff             	or     esi,0xffffffff
  568fb1:	f0 0f c1 32          	lock xadd DWORD PTR [edx],esi
  568fb5:	4e                   	dec    esi
  568fb6:	75 13                	jne    0x568fcb
  568fb8:	ba 01 00 00 00       	mov    edx,0x1
  568fbd:	87 10                	xchg   DWORD PTR [eax],edx
  568fbf:	85 c9                	test   ecx,ecx
  568fc1:	74 08                	je     0x568fcb
  568fc3:	8b 01                	mov    eax,DWORD PTR [ecx]
  568fc5:	8b 10                	mov    edx,DWORD PTR [eax]
  568fc7:	6a 01                	push   0x1
  568fc9:	ff d2                	call   edx
  568fcb:	5f                   	pop    edi
  568fcc:	5e                   	pop    esi
  568fcd:	83 c4 18             	add    esp,0x18
  568fd0:	c2 08 00             	ret    0x8
