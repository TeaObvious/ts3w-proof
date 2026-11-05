# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00567db0, 0x00567e5d); analyst name AnimationSequenceController_ReplaceCurrent.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00567db0 <.text+0x166db0>:
  567db0:	83 ec 14             	sub    esp,0x14
  567db3:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  567db7:	56                   	push   esi
  567db8:	33 f6                	xor    esi,esi
  567dba:	85 c0                	test   eax,eax
  567dbc:	57                   	push   edi
  567dbd:	8b f9                	mov    edi,ecx
  567dbf:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
  567dc3:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
  567dc7:	74 0a                	je     0x567dd3
  567dc9:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  567dcd:	8b f0                	mov    esi,eax
  567dcf:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
  567dd3:	80 7c 24 2c 00       	cmp    BYTE PTR [esp+0x2c],0x0
  567dd8:	f3 0f 10 44 24 24    	movss  xmm0,DWORD PTR [esp+0x24]
  567dde:	8b 47 6c             	mov    eax,DWORD PTR [edi+0x6c]
  567de1:	f3 0f 11 44 24 14    	movss  DWORD PTR [esp+0x14],xmm0
  567de7:	f3 0f 10 44 24 28    	movss  xmm0,DWORD PTR [esp+0x28]
  567ded:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  567df3:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  567df7:	74 05                	je     0x567dfe
  567df9:	83 4c 24 10 01       	or     DWORD PTR [esp+0x10],0x1
  567dfe:	80 7c 24 30 00       	cmp    BYTE PTR [esp+0x30],0x0
  567e03:	74 05                	je     0x567e0a
  567e05:	83 4c 24 10 08       	or     DWORD PTR [esp+0x10],0x8
  567e0a:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  567e0e:	51                   	push   ecx
  567e0f:	8b cf                	mov    ecx,edi
  567e11:	e8 1a f1 ff ff       	call   0x566f30
  567e16:	6a 01                	push   0x1
  567e18:	8b cf                	mov    ecx,edi
  567e1a:	e8 11 f5 ff ff       	call   0x567330
  567e1f:	8b 4f 50             	mov    ecx,DWORD PTR [edi+0x50]
  567e22:	85 c9                	test   ecx,ecx
  567e24:	74 0d                	je     0x567e33
  567e26:	8b 11                	mov    edx,DWORD PTR [ecx]
  567e28:	d9 ee                	fldz
  567e2a:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  567e2d:	51                   	push   ecx
  567e2e:	d9 1c 24             	fstp   DWORD PTR [esp]
  567e31:	ff d0                	call   eax
  567e33:	85 f6                	test   esi,esi
  567e35:	74 1c                	je     0x567e53
  567e37:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  567e3a:	83 c0 ff             	add    eax,0xffffffff
  567e3d:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  567e40:	75 11                	jne    0x567e53
  567e42:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  567e49:	8b 16                	mov    edx,DWORD PTR [esi]
  567e4b:	8b 02                	mov    eax,DWORD PTR [edx]
  567e4d:	6a 01                	push   0x1
  567e4f:	8b ce                	mov    ecx,esi
  567e51:	ff d0                	call   eax
  567e53:	5f                   	pop    edi
  567e54:	b0 01                	mov    al,0x1
  567e56:	5e                   	pop    esi
  567e57:	83 c4 14             	add    esp,0x14
  567e5a:	c2 14 00             	ret    0x14
