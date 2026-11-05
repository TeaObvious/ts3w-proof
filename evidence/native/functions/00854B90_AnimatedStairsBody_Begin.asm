# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00854b90,0x00854d4b); analyst name AnimatedStairsBody_Begin.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00854b90 <.text+0x453b90>:
  854b90:	55                   	push   ebp
  854b91:	8b ec                	mov    ebp,esp
  854b93:	83 e4 f0             	and    esp,0xfffffff0
  854b96:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  854b99:	83 ec 44             	sub    esp,0x44
  854b9c:	53                   	push   ebx
  854b9d:	56                   	push   esi
  854b9e:	57                   	push   edi
  854b9f:	8b f1                	mov    esi,ecx
  854ba1:	50                   	push   eax
  854ba2:	8d 8e a0 00 00 00    	lea    ecx,[esi+0xa0]
  854ba8:	e8 63 ea ff ff       	call   0x853610
  854bad:	8b 8e b0 00 00 00    	mov    ecx,DWORD PTR [esi+0xb0]
  854bb3:	8b 96 1c 01 00 00    	mov    edx,DWORD PTR [esi+0x11c]
  854bb9:	8b 86 18 01 00 00    	mov    eax,DWORD PTR [esi+0x118]
  854bbf:	8b 3d 40 a1 1d 01    	mov    edi,DWORD PTR ds:0x11da140
  854bc5:	8d 5e 1c             	lea    ebx,[esi+0x1c]
  854bc8:	53                   	push   ebx
  854bc9:	51                   	push   ecx
  854bca:	8b 8e 14 01 00 00    	mov    ecx,DWORD PTR [esi+0x114]
  854bd0:	52                   	push   edx
  854bd1:	8b 96 10 01 00 00    	mov    edx,DWORD PTR [esi+0x110]
  854bd7:	50                   	push   eax
  854bd8:	51                   	push   ecx
  854bd9:	52                   	push   edx
  854bda:	8b cf                	mov    ecx,edi
  854bdc:	e8 2f f5 fe ff       	call   0x844110
  854be1:	84 c0                	test   al,al
  854be3:	75 4c                	jne    0x854c31
  854be5:	8b 86 b0 00 00 00    	mov    eax,DWORD PTR [esi+0xb0]
  854beb:	83 f8 02             	cmp    eax,0x2
  854bee:	74 09                	je     0x854bf9
  854bf0:	83 f8 03             	cmp    eax,0x3
  854bf3:	0f 85 47 01 00 00    	jne    0x854d40
  854bf9:	8b 86 1c 01 00 00    	mov    eax,DWORD PTR [esi+0x11c]
  854bff:	8b 8e 18 01 00 00    	mov    ecx,DWORD PTR [esi+0x118]
  854c05:	8b 96 14 01 00 00    	mov    edx,DWORD PTR [esi+0x114]
  854c0b:	53                   	push   ebx
  854c0c:	6a 00                	push   0x0
  854c0e:	50                   	push   eax
  854c0f:	8b 86 10 01 00 00    	mov    eax,DWORD PTR [esi+0x110]
  854c15:	51                   	push   ecx
  854c16:	52                   	push   edx
  854c17:	50                   	push   eax
  854c18:	8b cf                	mov    ecx,edi
  854c1a:	c7 86 b0 00 00 00 00 00 00 00 	mov    DWORD PTR [esi+0xb0],0x0
  854c24:	e8 e7 f4 fe ff       	call   0x844110
  854c29:	84 c0                	test   al,al
  854c2b:	0f 84 0f 01 00 00    	je     0x854d40
  854c31:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  854c34:	8b 11                	mov    edx,DWORD PTR [ecx]
  854c36:	8b 52 1c             	mov    edx,DWORD PTR [edx+0x1c]
  854c39:	8d 44 24 40          	lea    eax,[esp+0x40]
  854c3d:	50                   	push   eax
  854c3e:	ff d2                	call   edx
  854c40:	0f 28 86 f0 00 00 00 	movaps xmm0,XMMWORD PTR [esi+0xf0]
  854c47:	0f 28 8e d0 00 00 00 	movaps xmm1,XMMWORD PTR [esi+0xd0]
  854c4e:	8d be d0 00 00 00    	lea    edi,[esi+0xd0]
  854c54:	0f 5c c1             	subps  xmm0,xmm1
  854c57:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  854c5c:	0f 57 c0             	xorps  xmm0,xmm0
  854c5f:	8d 44 24 30          	lea    eax,[esp+0x30]
  854c63:	50                   	push   eax
  854c64:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  854c68:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  854c6e:	0f 28 44 24 14       	movaps xmm0,XMMWORD PTR [esp+0x14]
  854c73:	51                   	push   ecx
  854c74:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  854c79:	e8 92 ae 00 00       	call   0x85fb10
  854c7e:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  854c81:	8b 11                	mov    edx,DWORD PTR [ecx]
  854c83:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  854c86:	83 c4 08             	add    esp,0x8
  854c89:	8d 44 24 30          	lea    eax,[esp+0x30]
  854c8d:	50                   	push   eax
  854c8e:	57                   	push   edi
  854c8f:	ff d2                	call   edx
  854c91:	bb 01 00 00 00       	mov    ebx,0x1
  854c96:	01 5e 08             	add    DWORD PTR [esi+0x8],ebx
  854c99:	8b 86 c4 00 00 00    	mov    eax,DWORD PTR [esi+0xc4]
  854c9f:	3b c3                	cmp    eax,ebx
  854ca1:	8d 7e 04             	lea    edi,[esi+0x4]
  854ca4:	89 86 50 01 00 00    	mov    DWORD PTR [esi+0x150],eax
  854caa:	7f 0a                	jg     0x854cb6
  854cac:	83 7e 64 00          	cmp    DWORD PTR [esi+0x64],0x0
  854cb0:	74 04                	je     0x854cb6
  854cb2:	6a 02                	push   0x2
  854cb4:	eb 36                	jmp    0x854cec
  854cb6:	83 f8 02             	cmp    eax,0x2
  854cb9:	75 10                	jne    0x854ccb
  854cbb:	83 7e 68 00          	cmp    DWORD PTR [esi+0x68],0x0
  854cbf:	74 0a                	je     0x854ccb
  854cc1:	89 9e 50 01 00 00    	mov    DWORD PTR [esi+0x150],ebx
  854cc7:	6a 03                	push   0x3
  854cc9:	eb 21                	jmp    0x854cec
  854ccb:	80 be 84 00 00 00 00 	cmp    BYTE PTR [esi+0x84],0x0
  854cd2:	74 05                	je     0x854cd9
  854cd4:	83 c0 fe             	add    eax,0xfffffffe
  854cd7:	eb 0c                	jmp    0x854ce5
  854cd9:	80 be 83 00 00 00 00 	cmp    BYTE PTR [esi+0x83],0x0
  854ce0:	74 09                	je     0x854ceb
  854ce2:	83 c0 ff             	add    eax,0xffffffff
  854ce5:	89 86 50 01 00 00    	mov    DWORD PTR [esi+0x150],eax
  854ceb:	53                   	push   ebx
  854cec:	8b ce                	mov    ecx,esi
  854cee:	e8 ed f5 ff ff       	call   0x8542e0
  854cf3:	8b b6 4c 01 00 00    	mov    esi,DWORD PTR [esi+0x14c]
  854cf9:	85 f6                	test   esi,esi
  854cfb:	74 21                	je     0x854d1e
  854cfd:	8b 06                	mov    eax,DWORD PTR [esi]
  854cff:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  854d02:	68 d2 5e c9 f4       	push   0xf4c95ed2
  854d07:	8b ce                	mov    ecx,esi
  854d09:	ff d2                	call   edx
  854d0b:	85 c0                	test   eax,eax
  854d0d:	74 0f                	je     0x854d1e
  854d0f:	8b 10                	mov    edx,DWORD PTR [eax]
  854d11:	d9 e8                	fld1
  854d13:	51                   	push   ecx
  854d14:	d9 1c 24             	fstp   DWORD PTR [esp]
  854d17:	8b c8                	mov    ecx,eax
  854d19:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  854d1c:	ff d0                	call   eax
  854d1e:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  854d21:	83 c0 ff             	add    eax,0xffffffff
  854d24:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  854d27:	75 0c                	jne    0x854d35
  854d29:	89 5f 04             	mov    DWORD PTR [edi+0x4],ebx
  854d2c:	8b 17                	mov    edx,DWORD PTR [edi]
  854d2e:	8b 02                	mov    eax,DWORD PTR [edx]
  854d30:	53                   	push   ebx
  854d31:	8b cf                	mov    ecx,edi
  854d33:	ff d0                	call   eax
  854d35:	8a c3                	mov    al,bl
  854d37:	5f                   	pop    edi
  854d38:	5e                   	pop    esi
  854d39:	5b                   	pop    ebx
  854d3a:	8b e5                	mov    esp,ebp
  854d3c:	5d                   	pop    ebp
  854d3d:	c2 04 00             	ret    0x4
  854d40:	5f                   	pop    edi
  854d41:	5e                   	pop    esi
  854d42:	32 c0                	xor    al,al
  854d44:	5b                   	pop    ebx
  854d45:	8b e5                	mov    esp,ebp
  854d47:	5d                   	pop    ebp
  854d48:	c2 04 00             	ret    0x4
