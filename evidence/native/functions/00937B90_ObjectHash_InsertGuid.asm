# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937b90, 0x00937bfe); analyst name ObjectHash_InsertGuid.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937b90 <.text+0x536b90>:
  937b90:	53                   	push   ebx
  937b91:	55                   	push   ebp
  937b92:	56                   	push   esi
  937b93:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  937b97:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  937b9a:	57                   	push   edi
  937b9b:	33 d2                	xor    edx,edx
  937b9d:	bf 09 04 00 00       	mov    edi,0x409
  937ba2:	f7 f7                	div    edi
  937ba4:	8b 04 91             	mov    eax,DWORD PTR [ecx+edx*4]
  937ba7:	8d 3c 91             	lea    edi,[ecx+edx*4]
  937baa:	8b d0                	mov    edx,eax
  937bac:	85 d2                	test   edx,edx
  937bae:	74 17                	je     0x937bc7
  937bb0:	8b 5e 08             	mov    ebx,DWORD PTR [esi+0x8]
  937bb3:	8b 6e 0c             	mov    ebp,DWORD PTR [esi+0xc]
  937bb6:	3b 5a 08             	cmp    ebx,DWORD PTR [edx+0x8]
  937bb9:	75 05                	jne    0x937bc0
  937bbb:	3b 6a 0c             	cmp    ebp,DWORD PTR [edx+0xc]
  937bbe:	74 2a                	je     0x937bea
  937bc0:	8b 52 10             	mov    edx,DWORD PTR [edx+0x10]
  937bc3:	85 d2                	test   edx,edx
  937bc5:	75 ef                	jne    0x937bb6
  937bc7:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  937bca:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  937bce:	89 37                	mov    DWORD PTR [edi],esi
  937bd0:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  937bd3:	5f                   	pop    edi
  937bd4:	89 30                	mov    DWORD PTR [eax],esi
  937bd6:	5e                   	pop    esi
  937bd7:	ba 01 00 00 00       	mov    edx,0x1
  937bdc:	01 91 28 10 00 00    	add    DWORD PTR [ecx+0x1028],edx
  937be2:	5d                   	pop    ebp
  937be3:	88 50 08             	mov    BYTE PTR [eax+0x8],dl
  937be6:	5b                   	pop    ebx
  937be7:	c2 0c 00             	ret    0xc
  937bea:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  937bee:	89 78 04             	mov    DWORD PTR [eax+0x4],edi
  937bf1:	5f                   	pop    edi
  937bf2:	5e                   	pop    esi
  937bf3:	5d                   	pop    ebp
  937bf4:	89 10                	mov    DWORD PTR [eax],edx
  937bf6:	c6 40 08 00          	mov    BYTE PTR [eax+0x8],0x0
  937bfa:	5b                   	pop    ebx
  937bfb:	c2 0c 00             	ret    0xc
