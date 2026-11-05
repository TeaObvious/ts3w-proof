# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x006b0cd0,0x006b0d95); analyst name ObjectLights_ReplaceRgb.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

006b0cd0 <.text+0x2afcd0>:
  6b0cd0:	55                   	push   ebp
  6b0cd1:	8b ec                	mov    ebp,esp
  6b0cd3:	83 e4 f0             	and    esp,0xfffffff0
  6b0cd6:	83 ec 24             	sub    esp,0x24
  6b0cd9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  6b0cdc:	53                   	push   ebx
  6b0cdd:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  6b0ce0:	56                   	push   esi
  6b0ce1:	8d 71 04             	lea    esi,[ecx+0x4]
  6b0ce4:	57                   	push   edi
  6b0ce5:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  6b0ce9:	51                   	push   ecx
  6b0cea:	8d 54 24 24          	lea    edx,[esp+0x24]
  6b0cee:	52                   	push   edx
  6b0cef:	8b ce                	mov    ecx,esi
  6b0cf1:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  6b0cf5:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  6b0cf9:	e8 12 bb 3e 00       	call   0xa9c810
  6b0cfe:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  6b0d01:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  6b0d04:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  6b0d08:	3b 04 8a             	cmp    eax,DWORD PTR [edx+ecx*4]
  6b0d0b:	74 7d                	je     0x6b0d8a
  6b0d0d:	83 c0 10             	add    eax,0x10
  6b0d10:	74 78                	je     0x6b0d8a
  6b0d12:	8b 70 10             	mov    esi,DWORD PTR [eax+0x10]
  6b0d15:	8b 78 14             	mov    edi,DWORD PTR [eax+0x14]
  6b0d18:	3b f7                	cmp    esi,edi
  6b0d1a:	74 4e                	je     0x6b0d6a
  6b0d1c:	f3 0f 10 4d 18       	movss  xmm1,DWORD PTR [ebp+0x18]
  6b0d21:	f3 0f 10 45 10       	movss  xmm0,DWORD PTR [ebp+0x10]
  6b0d26:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  6b0d2c:	f3 0f 10 4d 14       	movss  xmm1,DWORD PTR [ebp+0x14]
  6b0d31:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  6b0d37:	f3 0f 11 4c 24 24    	movss  DWORD PTR [esp+0x24],xmm1
  6b0d3d:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  6b0d43:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  6b0d48:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  6b0d4d:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  6b0d52:	8b 0e                	mov    ecx,DWORD PTR [esi]
  6b0d54:	8d 44 24 10          	lea    eax,[esp+0x10]
  6b0d58:	50                   	push   eax
  6b0d59:	0f 29 44 24 14       	movaps XMMWORD PTR [esp+0x14],xmm0
  6b0d5e:	e8 ed b7 00 00       	call   0x6bc550
  6b0d63:	83 c6 04             	add    esi,0x4
  6b0d66:	3b f7                	cmp    esi,edi
  6b0d68:	75 e3                	jne    0x6b0d4d
  6b0d6a:	e8 d1 88 03 00       	call   0x6e9640
  6b0d6f:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  6b0d72:	51                   	push   ecx
  6b0d73:	8b 88 d4 00 00 00    	mov    ecx,DWORD PTR [eax+0xd4]
  6b0d79:	53                   	push   ebx
  6b0d7a:	e8 d1 40 01 00       	call   0x6c4e50
  6b0d7f:	b0 01                	mov    al,0x1
  6b0d81:	5f                   	pop    edi
  6b0d82:	5e                   	pop    esi
  6b0d83:	5b                   	pop    ebx
  6b0d84:	8b e5                	mov    esp,ebp
  6b0d86:	5d                   	pop    ebp
  6b0d87:	c2 14 00             	ret    0x14
  6b0d8a:	5f                   	pop    edi
  6b0d8b:	5e                   	pop    esi
  6b0d8c:	32 c0                	xor    al,al
  6b0d8e:	5b                   	pop    ebx
  6b0d8f:	8b e5                	mov    esp,ebp
  6b0d91:	5d                   	pop    ebp
  6b0d92:	c2 14 00             	ret    0x14
