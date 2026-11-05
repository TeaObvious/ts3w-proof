# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00799ce0, 0x00799dd4); analyst name ShaderBytecode_ReadAndMaybeCreate.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00799ce0 <.text+0x398ce0>:
  799ce0:	53                   	push   ebx
  799ce1:	56                   	push   esi
  799ce2:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  799ce6:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  799ce9:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  799cec:	8b d9                	mov    ebx,ecx
  799cee:	50                   	push   eax
  799cef:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  799cf3:	51                   	push   ecx
  799cf4:	52                   	push   edx
  799cf5:	e8 86 3c d4 ff       	call   0x4dd980
  799cfa:	83 c4 0c             	add    esp,0xc
  799cfd:	8b ce                	mov    ecx,esi
  799cff:	50                   	push   eax
  799d00:	e8 eb dc 03 00       	call   0x7d79f0
  799d05:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  799d09:	0f 84 be 00 00 00    	je     0x799dcd
  799d0f:	8b 03                	mov    eax,DWORD PTR [ebx]
  799d11:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  799d14:	8b cb                	mov    ecx,ebx
  799d16:	ff d2                	call   edx
  799d18:	f6 d8                	neg    al
  799d1a:	1b c0                	sbb    eax,eax
  799d1c:	83 e0 fa             	and    eax,0xfffffffa
  799d1f:	05 56 53 48 44       	add    eax,0x44485356
  799d24:	39 44 24 0c          	cmp    DWORD PTR [esp+0xc],eax
  799d28:	0f 85 9f 00 00 00    	jne    0x799dcd
  799d2e:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  799d31:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  799d34:	57                   	push   edi
  799d35:	50                   	push   eax
  799d36:	8d 7b 0c             	lea    edi,[ebx+0xc]
  799d39:	57                   	push   edi
  799d3a:	51                   	push   ecx
  799d3b:	e8 40 3c d4 ff       	call   0x4dd980
  799d40:	83 c4 0c             	add    esp,0xc
  799d43:	8b ce                	mov    ecx,esi
  799d45:	50                   	push   eax
  799d46:	e8 a5 dc 03 00       	call   0x7d79f0
  799d4b:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  799d4f:	74 4e                	je     0x799d9f
  799d51:	8b 17                	mov    edx,DWORD PTR [edi]
  799d53:	6a 01                	push   0x1
  799d55:	52                   	push   edx
  799d56:	8b ce                	mov    ecx,esi
  799d58:	e8 a3 dc 03 00       	call   0x7d7a00
  799d5d:	84 c0                	test   al,al
  799d5f:	74 3e                	je     0x799d9f
  799d61:	8b 07                	mov    eax,DWORD PTR [edi]
  799d63:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  799d69:	6a 00                	push   0x0
  799d6b:	50                   	push   eax
  799d6c:	e8 af d1 d4 ff       	call   0x4e6f20
  799d71:	85 c0                	test   eax,eax
  799d73:	89 43 08             	mov    DWORD PTR [ebx+0x8],eax
  799d76:	74 27                	je     0x799d9f
  799d78:	8b 0f                	mov    ecx,DWORD PTR [edi]
  799d7a:	51                   	push   ecx
  799d7b:	50                   	push   eax
  799d7c:	8b ce                	mov    ecx,esi
  799d7e:	e8 3d 35 e2 ff       	call   0x5bd2c0
  799d83:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  799d87:	75 24                	jne    0x799dad
  799d89:	8b 53 08             	mov    edx,DWORD PTR [ebx+0x8]
  799d8c:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  799d92:	52                   	push   edx
  799d93:	e8 d8 c0 d4 ff       	call   0x4e5e70
  799d98:	c7 43 08 00 00 00 00 	mov    DWORD PTR [ebx+0x8],0x0
  799d9f:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  799da5:	5f                   	pop    edi
  799da6:	5e                   	pop    esi
  799da7:	32 c0                	xor    al,al
  799da9:	5b                   	pop    ebx
  799daa:	c2 08 00             	ret    0x8
  799dad:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  799db2:	74 08                	je     0x799dbc
  799db4:	5f                   	pop    edi
  799db5:	5e                   	pop    esi
  799db6:	b0 01                	mov    al,0x1
  799db8:	5b                   	pop    ebx
  799db9:	c2 08 00             	ret    0x8
  799dbc:	8b 03                	mov    eax,DWORD PTR [ebx]
  799dbe:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  799dc1:	6a 00                	push   0x0
  799dc3:	8b cb                	mov    ecx,ebx
  799dc5:	ff d2                	call   edx
  799dc7:	5f                   	pop    edi
  799dc8:	5e                   	pop    esi
  799dc9:	5b                   	pop    ebx
  799dca:	c2 08 00             	ret    0x8
  799dcd:	5e                   	pop    esi
  799dce:	32 c0                	xor    al,al
  799dd0:	5b                   	pop    ebx
  799dd1:	c2 08 00             	ret    0x8
