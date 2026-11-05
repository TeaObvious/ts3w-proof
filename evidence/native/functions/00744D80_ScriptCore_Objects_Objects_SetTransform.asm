# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00744d80, 0x00744e94); analyst name Objects_SetTransform.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00744d80 <.text+0x343d80>:
  744d80:	55                   	push   ebp
  744d81:	8b ec                	mov    ebp,esp
  744d83:	83 e4 f0             	and    esp,0xfffffff0
  744d86:	81 ec 94 00 00 00    	sub    esp,0x94
  744d8c:	53                   	push   ebx
  744d8d:	56                   	push   esi
  744d8e:	57                   	push   edi
  744d8f:	e8 dc 27 1f 00       	call   0x937570
  744d94:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  744d97:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  744d9a:	51                   	push   ecx
  744d9b:	52                   	push   edx
  744d9c:	8b c8                	mov    ecx,eax
  744d9e:	e8 dd 31 1f 00       	call   0x937f80
  744da3:	8b f0                	mov    esi,eax
  744da5:	85 f6                	test   esi,esi
  744da7:	0f 84 e0 00 00 00    	je     0x744e8d
  744dad:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  744db2:	50                   	push   eax
  744db3:	8b ce                	mov    ecx,esi
  744db5:	e8 a6 f4 1e 00       	call   0x934260
  744dba:	85 c0                	test   eax,eax
  744dbc:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  744dc0:	0f 84 c7 00 00 00    	je     0x744e8d
  744dc6:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  744dcd:	51                   	push   ecx
  744dce:	8d 4d 40             	lea    ecx,[ebp+0x40]
  744dd1:	e8 ba 72 02 00       	call   0x76c090
  744dd6:	8d 54 24 60          	lea    edx,[esp+0x60]
  744dda:	52                   	push   edx
  744ddb:	8d 4d 30             	lea    ecx,[ebp+0x30]
  744dde:	8b f8                	mov    edi,eax
  744de0:	e8 ab 72 02 00       	call   0x76c090
  744de5:	8b d8                	mov    ebx,eax
  744de7:	8d 84 24 80 00 00 00 	lea    eax,[esp+0x80]
  744dee:	50                   	push   eax
  744def:	8d 4d 20             	lea    ecx,[ebp+0x20]
  744df2:	e8 99 72 02 00       	call   0x76c090
  744df7:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  744dfb:	51                   	push   ecx
  744dfc:	8d 4d 10             	lea    ecx,[ebp+0x10]
  744dff:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  744e03:	e8 88 72 02 00       	call   0x76c090
  744e08:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  744e0b:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
  744e0f:	a1 08 df 1e 01       	mov    eax,ds:0x11edf08
  744e14:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  744e19:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  744e1c:	0f 29 44 24 30       	movaps XMMWORD PTR [esp+0x30],xmm0
  744e21:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  744e24:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  744e29:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  744e2c:	50                   	push   eax
  744e2d:	8b ce                	mov    ecx,esi
  744e2f:	0f 29 44 24 54       	movaps XMMWORD PTR [esp+0x54],xmm0
  744e34:	e8 27 f4 1e 00       	call   0x934260
  744e39:	85 c0                	test   eax,eax
  744e3b:	74 07                	je     0x744e44
  744e3d:	81 60 2c 7f ff ff ff 	and    DWORD PTR [eax+0x2c],0xffffff7f
  744e44:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  744e48:	51                   	push   ecx
  744e49:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  744e4d:	e8 0e 39 21 00       	call   0x958760
  744e52:	8b 15 84 d4 1d 01    	mov    edx,DWORD PTR ds:0x11dd484
  744e58:	52                   	push   edx
  744e59:	8b ce                	mov    ecx,esi
  744e5b:	e8 00 f4 1e 00       	call   0x934260
  744e60:	85 c0                	test   eax,eax
  744e62:	74 11                	je     0x744e75
  744e64:	8d 48 08             	lea    ecx,[eax+0x8]
  744e67:	8b 01                	mov    eax,DWORD PTR [ecx]
  744e69:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  744e6c:	ff d2                	call   edx
  744e6e:	5f                   	pop    edi
  744e6f:	5e                   	pop    esi
  744e70:	5b                   	pop    ebx
  744e71:	8b e5                	mov    esp,ebp
  744e73:	5d                   	pop    ebp
  744e74:	c3                   	ret
  744e75:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  744e7a:	50                   	push   eax
  744e7b:	8b ce                	mov    ecx,esi
  744e7d:	e8 de f3 1e 00       	call   0x934260
  744e82:	85 c0                	test   eax,eax
  744e84:	74 07                	je     0x744e8d
  744e86:	8b c8                	mov    ecx,eax
  744e88:	e8 43 10 21 00       	call   0x955ed0
  744e8d:	5f                   	pop    edi
  744e8e:	5e                   	pop    esi
  744e8f:	5b                   	pop    ebx
  744e90:	8b e5                	mov    esp,ebp
  744e92:	5d                   	pop    ebp
  744e93:	c3                   	ret
