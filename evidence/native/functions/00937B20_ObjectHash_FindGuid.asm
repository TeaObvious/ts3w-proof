# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00937b20, 0x00937b88); analyst name ObjectHash_FindGuid.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00937b20 <.text+0x536b20>:
  937b20:	83 ec 08             	sub    esp,0x8
  937b23:	56                   	push   esi
  937b24:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  937b28:	8b 06                	mov    eax,DWORD PTR [esi]
  937b2a:	33 d2                	xor    edx,edx
  937b2c:	57                   	push   edi
  937b2d:	bf 09 04 00 00       	mov    edi,0x409
  937b32:	f7 f7                	div    edi
  937b34:	8b 04 91             	mov    eax,DWORD PTR [ecx+edx*4]
  937b37:	85 c0                	test   eax,eax
  937b39:	8d 14 91             	lea    edx,[ecx+edx*4]
  937b3c:	74 16                	je     0x937b54
  937b3e:	8b 3e                	mov    edi,DWORD PTR [esi]
  937b40:	8b 76 04             	mov    esi,DWORD PTR [esi+0x4]
  937b43:	3b 78 08             	cmp    edi,DWORD PTR [eax+0x8]
  937b46:	75 05                	jne    0x937b4d
  937b48:	3b 70 0c             	cmp    esi,DWORD PTR [eax+0xc]
  937b4b:	74 31                	je     0x937b7e
  937b4d:	8b 40 10             	mov    eax,DWORD PTR [eax+0x10]
  937b50:	85 c0                	test   eax,eax
  937b52:	75 ef                	jne    0x937b43
  937b54:	8d 81 24 10 00 00    	lea    eax,[ecx+0x1024]
  937b5a:	8b 08                	mov    ecx,DWORD PTR [eax]
  937b5c:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  937b60:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  937b64:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  937b68:	8d 4c 24 08          	lea    ecx,[esp+0x8]
  937b6c:	8b 11                	mov    edx,DWORD PTR [ecx]
  937b6e:	8b 49 04             	mov    ecx,DWORD PTR [ecx+0x4]
  937b71:	5f                   	pop    edi
  937b72:	89 10                	mov    DWORD PTR [eax],edx
  937b74:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  937b77:	5e                   	pop    esi
  937b78:	83 c4 08             	add    esp,0x8
  937b7b:	c2 08 00             	ret    0x8
  937b7e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  937b82:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
  937b86:	eb dc                	jmp    0x937b64
