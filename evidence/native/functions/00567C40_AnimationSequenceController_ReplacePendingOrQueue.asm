# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00567c40, 0x00567da9); analyst name AnimationSequenceController_ReplacePendingOrQueue.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00567c40 <.text+0x166c40>:
  567c40:	83 ec 14             	sub    esp,0x14
  567c43:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  567c47:	53                   	push   ebx
  567c48:	55                   	push   ebp
  567c49:	56                   	push   esi
  567c4a:	57                   	push   edi
  567c4b:	33 ff                	xor    edi,edi
  567c4d:	85 c0                	test   eax,eax
  567c4f:	8b f1                	mov    esi,ecx
  567c51:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  567c55:	74 0a                	je     0x567c61
  567c57:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  567c5b:	8b f8                	mov    edi,eax
  567c5d:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  567c61:	80 7c 24 34 00       	cmp    BYTE PTR [esp+0x34],0x0
  567c66:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  567c6c:	8b 5c 24 38          	mov    ebx,DWORD PTR [esp+0x38]
  567c70:	8b 46 6c             	mov    eax,DWORD PTR [esi+0x6c]
  567c73:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  567c79:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  567c7f:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  567c85:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  567c89:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  567c8d:	74 05                	je     0x567c94
  567c8f:	83 4c 24 18 01       	or     DWORD PTR [esp+0x18],0x1
  567c94:	80 7c 24 40 00       	cmp    BYTE PTR [esp+0x40],0x0
  567c99:	74 05                	je     0x567ca0
  567c9b:	83 4c 24 18 08       	or     DWORD PTR [esp+0x18],0x8
  567ca0:	8b 6c 24 3c          	mov    ebp,DWORD PTR [esp+0x3c]
  567ca4:	83 fd 01             	cmp    ebp,0x1
  567ca7:	75 16                	jne    0x567cbf
  567ca9:	85 db                	test   ebx,ebx
  567cab:	74 12                	je     0x567cbf
  567cad:	83 4c 24 18 06       	or     DWORD PTR [esp+0x18],0x6
  567cb2:	8d 4e 28             	lea    ecx,[esi+0x28]
  567cb5:	53                   	push   ebx
  567cb6:	51                   	push   ecx
  567cb7:	e8 a4 f8 00 00       	call   0x577560
  567cbc:	83 c4 08             	add    esp,0x8
  567cbf:	6a 01                	push   0x1
  567cc1:	8b ce                	mov    ecx,esi
  567cc3:	e8 68 f6 ff ff       	call   0x567330
  567cc8:	83 fd 01             	cmp    ebp,0x1
  567ccb:	74 50                	je     0x567d1d
  567ccd:	83 7e 3c 00          	cmp    DWORD PTR [esi+0x3c],0x0
  567cd1:	75 4a                	jne    0x567d1d
  567cd3:	83 7e 50 00          	cmp    DWORD PTR [esi+0x50],0x0
  567cd7:	75 44                	jne    0x567d1d
  567cd9:	8d 46 30             	lea    eax,[esi+0x30]
  567cdc:	39 00                	cmp    DWORD PTR [eax],eax
  567cde:	75 3d                	jne    0x567d1d
  567ce0:	8d 54 24 10          	lea    edx,[esp+0x10]
  567ce4:	52                   	push   edx
  567ce5:	8b ce                	mov    ecx,esi
  567ce7:	e8 44 f2 ff ff       	call   0x566f30
  567cec:	53                   	push   ebx
  567ced:	e8 fe f3 00 00       	call   0x5770f0
  567cf2:	83 c4 04             	add    esp,0x4
  567cf5:	85 ff                	test   edi,edi
  567cf7:	74 0f                	je     0x567d08
  567cf9:	8b 07                	mov    eax,DWORD PTR [edi]
  567cfb:	d9 ee                	fldz
  567cfd:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  567d00:	51                   	push   ecx
  567d01:	8b cf                	mov    ecx,edi
  567d03:	d9 1c 24             	fstp   DWORD PTR [esp]
  567d06:	ff d2                	call   edx
  567d08:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  567d0c:	e8 0f e0 ff ff       	call   0x565d20
  567d11:	5f                   	pop    edi
  567d12:	5e                   	pop    esi
  567d13:	5d                   	pop    ebp
  567d14:	b0 01                	mov    al,0x1
  567d16:	5b                   	pop    ebx
  567d17:	83 c4 14             	add    esp,0x14
  567d1a:	c2 1c 00             	ret    0x1c
  567d1d:	8b 46 38             	mov    eax,DWORD PTR [esi+0x38]
  567d20:	8b 6e 30             	mov    ebp,DWORD PTR [esi+0x30]
  567d23:	68 e7 00 00 00       	push   0xe7
  567d28:	68 88 99 f9 00       	push   0xf99988
  567d2d:	6a 00                	push   0x0
  567d2f:	6a 00                	push   0x0
  567d31:	50                   	push   eax
  567d32:	6a 1c                	push   0x1c
  567d34:	e8 c7 c7 f7 ff       	call   0x4e4500
  567d39:	8d 48 08             	lea    ecx,[eax+0x8]
  567d3c:	83 c4 18             	add    esp,0x18
  567d3f:	85 c9                	test   ecx,ecx
  567d41:	74 2a                	je     0x567d6d
  567d43:	85 ff                	test   edi,edi
  567d45:	89 39                	mov    DWORD PTR [ecx],edi
  567d47:	74 04                	je     0x567d4d
  567d49:	83 47 04 01          	add    DWORD PTR [edi+0x4],0x1
  567d4d:	f3 0f 10 44 24 2c    	movss  xmm0,DWORD PTR [esp+0x2c]
  567d53:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  567d57:	f3 0f 11 41 0c       	movss  DWORD PTR [ecx+0xc],xmm0
  567d5c:	f3 0f 10 44 24 30    	movss  xmm0,DWORD PTR [esp+0x30]
  567d62:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  567d65:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  567d68:	f3 0f 11 41 10       	movss  DWORD PTR [ecx+0x10],xmm0
  567d6d:	85 ff                	test   edi,edi
  567d6f:	89 28                	mov    DWORD PTR [eax],ebp
  567d71:	8b 4d 04             	mov    ecx,DWORD PTR [ebp+0x4]
  567d74:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  567d77:	8b 55 04             	mov    edx,DWORD PTR [ebp+0x4]
  567d7a:	89 02                	mov    DWORD PTR [edx],eax
  567d7c:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax
  567d7f:	74 1c                	je     0x567d9d
  567d81:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  567d84:	83 c0 ff             	add    eax,0xffffffff
  567d87:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  567d8a:	75 11                	jne    0x567d9d
  567d8c:	c7 47 04 01 00 00 00 	mov    DWORD PTR [edi+0x4],0x1
  567d93:	8b 07                	mov    eax,DWORD PTR [edi]
  567d95:	8b 10                	mov    edx,DWORD PTR [eax]
  567d97:	6a 01                	push   0x1
  567d99:	8b cf                	mov    ecx,edi
  567d9b:	ff d2                	call   edx
  567d9d:	5f                   	pop    edi
  567d9e:	5e                   	pop    esi
  567d9f:	5d                   	pop    ebp
  567da0:	32 c0                	xor    al,al
  567da2:	5b                   	pop    ebx
  567da3:	83 c4 14             	add    esp,0x14
  567da6:	c2 1c 00             	ret    0x1c
