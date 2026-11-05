# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056eae0, 0x0056eb9f); analyst name AnimationWrapperListener_ForwardStarted.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056eae0 <.text+0x16dae0>:
  56eae0:	83 ec 18             	sub    esp,0x18
  56eae3:	56                   	push   esi
  56eae4:	8d 71 d8             	lea    esi,[ecx-0x28]
  56eae7:	85 f6                	test   esi,esi
  56eae9:	74 04                	je     0x56eaef
  56eaeb:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  56eaef:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  56eaf3:	8b 10                	mov    edx,DWORD PTR [eax]
  56eaf5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
  56eaf9:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  56eafc:	85 d2                	test   edx,edx
  56eafe:	53                   	push   ebx
  56eaff:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  56eb03:	74 0c                	je     0x56eb11
  56eb05:	83 c2 04             	add    edx,0x4
  56eb08:	bb 01 00 00 00       	mov    ebx,0x1
  56eb0d:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  56eb11:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  56eb14:	8b 49 f4             	mov    ecx,DWORD PTR [ecx-0xc]
  56eb17:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  56eb1b:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  56eb1e:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  56eb22:	0f b6 50 14          	movzx  edx,BYTE PTR [eax+0x14]
  56eb26:	88 54 24 1c          	mov    BYTE PTR [esp+0x1c],dl
  56eb2a:	0f b6 50 15          	movzx  edx,BYTE PTR [eax+0x15]
  56eb2e:	8a 40 16             	mov    al,BYTE PTR [eax+0x16]
  56eb31:	88 54 24 1d          	mov    BYTE PTR [esp+0x1d],dl
  56eb35:	8d 54 24 08          	lea    edx,[esp+0x8]
  56eb39:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
  56eb3d:	52                   	push   edx
  56eb3e:	8b ce                	mov    ecx,esi
  56eb40:	88 44 24 22          	mov    BYTE PTR [esp+0x22],al
  56eb44:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
  56eb48:	e8 13 9f ff ff       	call   0x568a60
  56eb4d:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  56eb51:	85 c9                	test   ecx,ecx
  56eb53:	74 22                	je     0x56eb77
  56eb55:	8d 41 04             	lea    eax,[ecx+0x4]
  56eb58:	8b d0                	mov    edx,eax
  56eb5a:	83 cb ff             	or     ebx,0xffffffff
  56eb5d:	f0 0f c1 1a          	lock xadd DWORD PTR [edx],ebx
  56eb61:	4b                   	dec    ebx
  56eb62:	75 13                	jne    0x56eb77
  56eb64:	ba 01 00 00 00       	mov    edx,0x1
  56eb69:	87 10                	xchg   DWORD PTR [eax],edx
  56eb6b:	85 c9                	test   ecx,ecx
  56eb6d:	74 08                	je     0x56eb77
  56eb6f:	8b 01                	mov    eax,DWORD PTR [ecx]
  56eb71:	8b 10                	mov    edx,DWORD PTR [eax]
  56eb73:	6a 01                	push   0x1
  56eb75:	ff d2                	call   edx
  56eb77:	85 f6                	test   esi,esi
  56eb79:	5b                   	pop    ebx
  56eb7a:	74 1c                	je     0x56eb98
  56eb7c:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  56eb7f:	83 c0 ff             	add    eax,0xffffffff
  56eb82:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  56eb85:	75 11                	jne    0x56eb98
  56eb87:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  56eb8e:	8b 06                	mov    eax,DWORD PTR [esi]
  56eb90:	8b 10                	mov    edx,DWORD PTR [eax]
  56eb92:	6a 01                	push   0x1
  56eb94:	8b ce                	mov    ecx,esi
  56eb96:	ff d2                	call   edx
  56eb98:	5e                   	pop    esi
  56eb99:	83 c4 18             	add    esp,0x18
  56eb9c:	c2 08 00             	ret    0x8
