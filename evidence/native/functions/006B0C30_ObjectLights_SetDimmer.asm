# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x006b0c30,0x006b0cce); analyst name ObjectLights_SetDimmer.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

006b0c30 <.text+0x2afc30>:
  6b0c30:	83 ec 10             	sub    esp,0x10
  6b0c33:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  6b0c37:	55                   	push   ebp
  6b0c38:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  6b0c3c:	56                   	push   esi
  6b0c3d:	8d 71 04             	lea    esi,[ecx+0x4]
  6b0c40:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  6b0c44:	51                   	push   ecx
  6b0c45:	8d 54 24 14          	lea    edx,[esp+0x14]
  6b0c49:	52                   	push   edx
  6b0c4a:	8b ce                	mov    ecx,esi
  6b0c4c:	89 6c 24 10          	mov    DWORD PTR [esp+0x10],ebp
  6b0c50:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  6b0c54:	e8 b7 bb 3e 00       	call   0xa9c810
  6b0c59:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  6b0c5c:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  6b0c5f:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  6b0c63:	3b 04 8a             	cmp    eax,DWORD PTR [edx+ecx*4]
  6b0c66:	74 5c                	je     0x6b0cc4
  6b0c68:	83 c0 10             	add    eax,0x10
  6b0c6b:	74 57                	je     0x6b0cc4
  6b0c6d:	8b 70 10             	mov    esi,DWORD PTR [eax+0x10]
  6b0c70:	53                   	push   ebx
  6b0c71:	57                   	push   edi
  6b0c72:	8b 78 14             	mov    edi,DWORD PTR [eax+0x14]
  6b0c75:	32 db                	xor    bl,bl
  6b0c77:	3b f7                	cmp    esi,edi
  6b0c79:	74 3d                	je     0x6b0cb8
  6b0c7b:	eb 03                	jmp    0x6b0c80
  6b0c7d:	8d 49 00             	lea    ecx,[ecx+0x0]
  6b0c80:	8b 0e                	mov    ecx,DWORD PTR [esi]
  6b0c82:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  6b0c86:	6a 01                	push   0x1
  6b0c88:	51                   	push   ecx
  6b0c89:	d9 1c 24             	fstp   DWORD PTR [esp]
  6b0c8c:	e8 ef d1 00 00       	call   0x6bde80
  6b0c91:	84 c0                	test   al,al
  6b0c93:	74 02                	je     0x6b0c97
  6b0c95:	b3 01                	mov    bl,0x1
  6b0c97:	83 c6 04             	add    esi,0x4
  6b0c9a:	3b f7                	cmp    esi,edi
  6b0c9c:	75 e2                	jne    0x6b0c80
  6b0c9e:	84 db                	test   bl,bl
  6b0ca0:	74 16                	je     0x6b0cb8
  6b0ca2:	e8 99 89 03 00       	call   0x6e9640
  6b0ca7:	8b 4c 24 28          	mov    ecx,DWORD PTR [esp+0x28]
  6b0cab:	51                   	push   ecx
  6b0cac:	8b 88 d4 00 00 00    	mov    ecx,DWORD PTR [eax+0xd4]
  6b0cb2:	55                   	push   ebp
  6b0cb3:	e8 98 41 01 00       	call   0x6c4e50
  6b0cb8:	5f                   	pop    edi
  6b0cb9:	5b                   	pop    ebx
  6b0cba:	5e                   	pop    esi
  6b0cbb:	b0 01                	mov    al,0x1
  6b0cbd:	5d                   	pop    ebp
  6b0cbe:	83 c4 10             	add    esp,0x10
  6b0cc1:	c2 0c 00             	ret    0xc
  6b0cc4:	5e                   	pop    esi
  6b0cc5:	32 c0                	xor    al,al
  6b0cc7:	5d                   	pop    ebp
  6b0cc8:	83 c4 10             	add    esp,0x10
  6b0ccb:	c2 0c 00             	ret    0xc
