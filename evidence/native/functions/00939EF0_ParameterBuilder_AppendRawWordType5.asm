# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939ef0,0x00939f8a); analyst name ParameterBuilder_AppendRawWordType5.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939ef0 <.text+0x538ef0>:
  939ef0:	83 ec 10             	sub    esp,0x10
  939ef3:	8b 41 1c             	mov    eax,DWORD PTR [ecx+0x1c]
  939ef6:	2b 41 18             	sub    eax,DWORD PTR [ecx+0x18]
  939ef9:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  939efc:	53                   	push   ebx
  939efd:	56                   	push   esi
  939efe:	8d 71 18             	lea    esi,[ecx+0x18]
  939f01:	c1 f8 02             	sar    eax,0x2
  939f04:	03 c0                	add    eax,eax
  939f06:	57                   	push   edi
  939f07:	8b 7c 24 20          	mov    edi,DWORD PTR [esp+0x20]
  939f0b:	03 c0                	add    eax,eax
  939f0d:	3b 51 08             	cmp    edx,DWORD PTR [ecx+0x8]
  939f10:	bb 04 00 00 00       	mov    ebx,0x4
  939f15:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
  939f19:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  939f1d:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  939f21:	c7 44 24 10 05 00 00 	mov    DWORD PTR [esp+0x10],0x5
  939f28:	00 
  939f29:	73 1d                	jae    0x939f48
  939f2b:	85 d2                	test   edx,edx
  939f2d:	55                   	push   ebp
  939f2e:	8d 6a 10             	lea    ebp,[edx+0x10]
  939f31:	89 69 04             	mov    DWORD PTR [ecx+0x4],ebp
  939f34:	5d                   	pop    ebp
  939f35:	74 1c                	je     0x939f53
  939f37:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  939f3b:	89 3a                	mov    DWORD PTR [edx],edi
  939f3d:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  939f40:	89 42 08             	mov    DWORD PTR [edx+0x8],eax
  939f43:	89 5a 0c             	mov    DWORD PTR [edx+0xc],ebx
  939f46:	eb 0b                	jmp    0x939f53
  939f48:	8d 44 24 0c          	lea    eax,[esp+0xc]
  939f4c:	50                   	push   eax
  939f4d:	52                   	push   edx
  939f4e:	e8 cd f1 ba ff       	call   0x4e9120
  939f53:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  939f56:	3b 46 08             	cmp    eax,DWORD PTR [esi+0x8]
  939f59:	73 19                	jae    0x939f74
  939f5b:	85 c0                	test   eax,eax
  939f5d:	8d 48 04             	lea    ecx,[eax+0x4]
  939f60:	89 4e 04             	mov    DWORD PTR [esi+0x4],ecx
  939f63:	74 1c                	je     0x939f81
  939f65:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  939f69:	5f                   	pop    edi
  939f6a:	5e                   	pop    esi
  939f6b:	89 10                	mov    DWORD PTR [eax],edx
  939f6d:	5b                   	pop    ebx
  939f6e:	83 c4 10             	add    esp,0x10
  939f71:	c2 08 00             	ret    0x8
  939f74:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  939f78:	51                   	push   ecx
  939f79:	50                   	push   eax
  939f7a:	8b ce                	mov    ecx,esi
  939f7c:	e8 2f d6 b7 ff       	call   0x4b75b0
  939f81:	5f                   	pop    edi
  939f82:	5e                   	pop    esi
  939f83:	5b                   	pop    ebx
  939f84:	83 c4 10             	add    esp,0x10
  939f87:	c2 08 00             	ret    0x8
