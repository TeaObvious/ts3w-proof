# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079ffb0, 0x007a0029); analyst name ShaderSet_BuildOptionPresenceMask.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079ffb0 <.text+0x39efb0>:
  79ffb0:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  79ffb4:	8b 51 1c             	mov    edx,DWORD PTR [ecx+0x1c]
  79ffb7:	53                   	push   ebx
  79ffb8:	55                   	push   ebp
  79ffb9:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
  79ffbd:	56                   	push   esi
  79ffbe:	57                   	push   edi
  79ffbf:	8d 7c 85 00          	lea    edi,[ebp+eax*4+0x0]
  79ffc3:	33 c0                	xor    eax,eax
  79ffc5:	3b 51 20             	cmp    edx,DWORD PTR [ecx+0x20]
  79ffc8:	75 06                	jne    0x79ffd0
  79ffca:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  79ffce:	eb 0a                	jmp    0x79ffda
  79ffd0:	8b 32                	mov    esi,DWORD PTR [edx]
  79ffd2:	8d 54 b2 08          	lea    edx,[edx+esi*4+0x8]
  79ffd6:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  79ffda:	8b 51 1c             	mov    edx,DWORD PTR [ecx+0x1c]
  79ffdd:	3b 51 20             	cmp    edx,DWORD PTR [ecx+0x20]
  79ffe0:	75 04                	jne    0x79ffe6
  79ffe2:	33 db                	xor    ebx,ebx
  79ffe4:	eb 08                	jmp    0x79ffee
  79ffe6:	8b ca                	mov    ecx,edx
  79ffe8:	8b 11                	mov    edx,DWORD PTR [ecx]
  79ffea:	8b 5c 91 04          	mov    ebx,DWORD PTR [ecx+edx*4+0x4]
  79ffee:	33 c9                	xor    ecx,ecx
  79fff0:	3b d8                	cmp    ebx,eax
  79fff2:	76 2e                	jbe    0x7a0022
  79fff4:	3b ef                	cmp    ebp,edi
  79fff6:	8b d5                	mov    edx,ebp
  79fff8:	74 21                	je     0x7a001b
  79fffa:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  79fffe:	8b 34 8e             	mov    esi,DWORD PTR [esi+ecx*4]
  7a0001:	39 32                	cmp    DWORD PTR [edx],esi
  7a0003:	74 09                	je     0x7a000e
  7a0005:	83 c2 04             	add    edx,0x4
  7a0008:	3b d7                	cmp    edx,edi
  7a000a:	75 f5                	jne    0x7a0001
  7a000c:	eb 0d                	jmp    0x7a001b
  7a000e:	3b fa                	cmp    edi,edx
  7a0010:	74 09                	je     0x7a001b
  7a0012:	ba 01 00 00 00       	mov    edx,0x1
  7a0017:	d3 e2                	shl    edx,cl
  7a0019:	0b c2                	or     eax,edx
  7a001b:	83 c1 01             	add    ecx,0x1
  7a001e:	3b cb                	cmp    ecx,ebx
  7a0020:	72 d2                	jb     0x79fff4
  7a0022:	5f                   	pop    edi
  7a0023:	5e                   	pop    esi
  7a0024:	5d                   	pop    ebp
  7a0025:	5b                   	pop    ebx
  7a0026:	c2 08 00             	ret    0x8
