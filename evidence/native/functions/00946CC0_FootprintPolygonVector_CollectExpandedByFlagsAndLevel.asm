# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00946cc0, 0x00946e22); analyst name FootprintPolygonVector_CollectExpandedByFlagsAndLevel.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00946cc0 <.text+0x545cc0>:
  946cc0:	83 ec 18             	sub    esp,0x18
  946cc3:	8b 4c 24 1c          	mov    ecx,DWORD PTR [esp+0x1c]
  946cc7:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  946cca:	2b 01                	sub    eax,DWORD PTR [ecx]
  946ccc:	53                   	push   ebx
  946ccd:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
  946cd1:	55                   	push   ebp
  946cd2:	56                   	push   esi
  946cd3:	8b 73 04             	mov    esi,DWORD PTR [ebx+0x4]
  946cd6:	2b 33                	sub    esi,DWORD PTR [ebx]
  946cd8:	33 d2                	xor    edx,edx
  946cda:	c1 fe 02             	sar    esi,0x2
  946cdd:	c1 f8 06             	sar    eax,0x6
  946ce0:	f7 f6                	div    esi
  946ce2:	33 ed                	xor    ebp,ebp
  946ce4:	33 d2                	xor    edx,edx
  946ce6:	3b f5                	cmp    esi,ebp
  946ce8:	89 74 24 1c          	mov    DWORD PTR [esp+0x1c],esi
  946cec:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  946cf0:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  946cf4:	0f 86 1f 01 00 00    	jbe    0x946e19
  946cfa:	57                   	push   edi
  946cfb:	8b 7c 24 34          	mov    edi,DWORD PTR [esp+0x34]
  946cff:	c1 e0 06             	shl    eax,0x6
  946d02:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  946d06:	89 6c 24 34          	mov    DWORD PTR [esp+0x34],ebp
  946d0a:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  946d0e:	eb 04                	jmp    0x946d14
  946d10:	8b 5c 24 30          	mov    ebx,DWORD PTR [esp+0x30]
  946d14:	8b 03                	mov    eax,DWORD PTR [ebx]
  946d16:	8d 0c 90             	lea    ecx,[eax+edx*4]
  946d19:	8b 09                	mov    ecx,DWORD PTR [ecx]
  946d1b:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  946d1e:	8b d9                	mov    ebx,ecx
  946d20:	23 d8                	and    ebx,eax
  946d22:	3b d8                	cmp    ebx,eax
  946d24:	0f 85 cf 00 00 00    	jne    0x946df9
  946d2a:	85 4f 10             	test   DWORD PTR [edi+0x10],ecx
  946d2d:	0f 85 c6 00 00 00    	jne    0x946df9
  946d33:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  946d37:	8b 01                	mov    eax,DWORD PTR [ecx]
  946d39:	8b 5c 24 34          	mov    ebx,DWORD PTR [esp+0x34]
  946d3d:	8a 4c 18 05          	mov    cl,BYTE PTR [eax+ebx*1+0x5]
  946d41:	3a 4f 14             	cmp    cl,BYTE PTR [edi+0x14]
  946d44:	0f 85 af 00 00 00    	jne    0x946df9
  946d4a:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  946d4e:	03 c5                	add    eax,ebp
  946d50:	3b e8                	cmp    ebp,eax
  946d52:	0f 83 a1 00 00 00    	jae    0x946df9
  946d58:	2b c5                	sub    eax,ebp
  946d5a:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  946d5e:	8b ff                	mov    edi,edi
  946d60:	8b 4c 24 2c          	mov    ecx,DWORD PTR [esp+0x2c]
  946d64:	8b 07                	mov    eax,DWORD PTR [edi]
  946d66:	8b 31                	mov    esi,DWORD PTR [ecx]
  946d68:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  946d6b:	03 f3                	add    esi,ebx
  946d6d:	3b 48 08             	cmp    ecx,DWORD PTR [eax+0x8]
  946d70:	8d 56 30             	lea    edx,[esi+0x30]
  946d73:	73 12                	jae    0x946d87
  946d75:	85 c9                	test   ecx,ecx
  946d77:	8d 69 10             	lea    ebp,[ecx+0x10]
  946d7a:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
  946d7d:	74 11                	je     0x946d90
  946d7f:	52                   	push   edx
  946d80:	e8 6b 1c ce ff       	call   0x6289f0
  946d85:	eb 09                	jmp    0x946d90
  946d87:	52                   	push   edx
  946d88:	51                   	push   ecx
  946d89:	8b c8                	mov    ecx,eax
  946d8b:	e8 b0 13 ec ff       	call   0x808140
  946d90:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  946d93:	85 c9                	test   ecx,ecx
  946d95:	74 1f                	je     0x946db6
  946d97:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  946d9a:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  946d9d:	73 10                	jae    0x946daf
  946d9f:	85 c0                	test   eax,eax
  946da1:	8d 50 04             	lea    edx,[eax+0x4]
  946da4:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  946da7:	74 0d                	je     0x946db6
  946da9:	8b 0e                	mov    ecx,DWORD PTR [esi]
  946dab:	89 08                	mov    DWORD PTR [eax],ecx
  946dad:	eb 07                	jmp    0x946db6
  946daf:	56                   	push   esi
  946db0:	50                   	push   eax
  946db1:	e8 6a b6 03 00       	call   0x982420
  946db6:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  946db9:	85 c9                	test   ecx,ecx
  946dbb:	74 22                	je     0x946ddf
  946dbd:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  946dc0:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  946dc3:	8d 56 1c             	lea    edx,[esi+0x1c]
  946dc6:	73 10                	jae    0x946dd8
  946dc8:	85 c0                	test   eax,eax
  946dca:	8d 70 04             	lea    esi,[eax+0x4]
  946dcd:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
  946dd0:	74 0d                	je     0x946ddf
  946dd2:	d9 02                	fld    DWORD PTR [edx]
  946dd4:	d9 18                	fstp   DWORD PTR [eax]
  946dd6:	eb 07                	jmp    0x946ddf
  946dd8:	52                   	push   edx
  946dd9:	50                   	push   eax
  946dda:	e8 a1 f1 ab ff       	call   0x405f80
  946ddf:	83 c3 40             	add    ebx,0x40
  946de2:	83 6c 24 10 01       	sub    DWORD PTR [esp+0x10],0x1
  946de7:	0f 85 73 ff ff ff    	jne    0x946d60
  946ded:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  946df1:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  946df5:	8b 6c 24 1c          	mov    ebp,DWORD PTR [esp+0x1c]
  946df9:	03 6c 24 18          	add    ebp,DWORD PTR [esp+0x18]
  946dfd:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  946e01:	01 44 24 34          	add    DWORD PTR [esp+0x34],eax
  946e05:	83 c2 01             	add    edx,0x1
  946e08:	3b d6                	cmp    edx,esi
  946e0a:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  946e0e:	89 6c 24 1c          	mov    DWORD PTR [esp+0x1c],ebp
  946e12:	0f 82 f8 fe ff ff    	jb     0x946d10
  946e18:	5f                   	pop    edi
  946e19:	5e                   	pop    esi
  946e1a:	5d                   	pop    ebp
  946e1b:	5b                   	pop    ebx
  946e1c:	83 c4 18             	add    esp,0x18
  946e1f:	c2 0c 00             	ret    0xc
