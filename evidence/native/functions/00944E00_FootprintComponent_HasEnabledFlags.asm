# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00944e00, 0x00944ecc); analyst name FootprintComponent_HasEnabledFlags.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00944e00 <.text+0x543e00>:
  944e00:	53                   	push   ebx
  944e01:	55                   	push   ebp
  944e02:	8b d9                	mov    ebx,ecx
  944e04:	8b 4b 28             	mov    ecx,DWORD PTR [ebx+0x28]
  944e07:	85 c9                	test   ecx,ecx
  944e09:	56                   	push   esi
  944e0a:	57                   	push   edi
  944e0b:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  944e0f:	74 35                	je     0x944e46
  944e11:	e8 3a df fe ff       	call   0x932d50
  944e16:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  944e19:	2b 08                	sub    ecx,DWORD PTR [eax]
  944e1b:	b8 00 00 00 00       	mov    eax,0x0
  944e20:	c1 f9 06             	sar    ecx,0x6
  944e23:	74 21                	je     0x944e46
  944e25:	8b 53 58             	mov    edx,DWORD PTR [ebx+0x58]
  944e28:	8b 32                	mov    esi,DWORD PTR [edx]
  944e2a:	8b ee                	mov    ebp,esi
  944e2c:	23 ef                	and    ebp,edi
  944e2e:	3b ef                	cmp    ebp,edi
  944e30:	75 0a                	jne    0x944e3c
  944e32:	85 74 24 18          	test   DWORD PTR [esp+0x18],esi
  944e36:	0f 84 87 00 00 00    	je     0x944ec3
  944e3c:	83 c0 01             	add    eax,0x1
  944e3f:	83 c2 04             	add    edx,0x4
  944e42:	3b c1                	cmp    eax,ecx
  944e44:	72 e2                	jb     0x944e28
  944e46:	8b 4b 2c             	mov    ecx,DWORD PTR [ebx+0x2c]
  944e49:	85 c9                	test   ecx,ecx
  944e4b:	74 31                	je     0x944e7e
  944e4d:	e8 fe de fe ff       	call   0x932d50
  944e52:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  944e55:	2b 08                	sub    ecx,DWORD PTR [eax]
  944e57:	b8 00 00 00 00       	mov    eax,0x0
  944e5c:	c1 f9 06             	sar    ecx,0x6
  944e5f:	74 1d                	je     0x944e7e
  944e61:	8b 53 48             	mov    edx,DWORD PTR [ebx+0x48]
  944e64:	8b 32                	mov    esi,DWORD PTR [edx]
  944e66:	8b ee                	mov    ebp,esi
  944e68:	23 ef                	and    ebp,edi
  944e6a:	3b ef                	cmp    ebp,edi
  944e6c:	75 06                	jne    0x944e74
  944e6e:	85 74 24 18          	test   DWORD PTR [esp+0x18],esi
  944e72:	74 4f                	je     0x944ec3
  944e74:	83 c0 01             	add    eax,0x1
  944e77:	83 c2 04             	add    edx,0x4
  944e7a:	3b c1                	cmp    eax,ecx
  944e7c:	72 e6                	jb     0x944e64
  944e7e:	8b 4b 30             	mov    ecx,DWORD PTR [ebx+0x30]
  944e81:	85 c9                	test   ecx,ecx
  944e83:	74 35                	je     0x944eba
  944e85:	e8 d6 de fe ff       	call   0x932d60
  944e8a:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  944e8d:	2b 08                	sub    ecx,DWORD PTR [eax]
  944e8f:	b8 00 00 00 00       	mov    eax,0x0
  944e94:	c1 f9 06             	sar    ecx,0x6
  944e97:	74 21                	je     0x944eba
  944e99:	8b 53 68             	mov    edx,DWORD PTR [ebx+0x68]
  944e9c:	8d 64 24 00          	lea    esp,[esp+0x0]
  944ea0:	8b 32                	mov    esi,DWORD PTR [edx]
  944ea2:	8b de                	mov    ebx,esi
  944ea4:	23 df                	and    ebx,edi
  944ea6:	3b df                	cmp    ebx,edi
  944ea8:	75 06                	jne    0x944eb0
  944eaa:	85 74 24 18          	test   DWORD PTR [esp+0x18],esi
  944eae:	74 13                	je     0x944ec3
  944eb0:	83 c0 01             	add    eax,0x1
  944eb3:	83 c2 04             	add    edx,0x4
  944eb6:	3b c1                	cmp    eax,ecx
  944eb8:	72 e6                	jb     0x944ea0
  944eba:	5f                   	pop    edi
  944ebb:	5e                   	pop    esi
  944ebc:	5d                   	pop    ebp
  944ebd:	32 c0                	xor    al,al
  944ebf:	5b                   	pop    ebx
  944ec0:	c2 08 00             	ret    0x8
  944ec3:	5f                   	pop    edi
  944ec4:	5e                   	pop    esi
  944ec5:	5d                   	pop    ebp
  944ec6:	b0 01                	mov    al,0x1
  944ec8:	5b                   	pop    ebx
  944ec9:	c2 08 00             	ret    0x8
