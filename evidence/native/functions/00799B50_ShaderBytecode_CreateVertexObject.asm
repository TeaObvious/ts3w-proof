# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00799b50, 0x00799ba6); analyst name ShaderBytecode_CreateVertexObject.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00799b50 <.text+0x398b50>:
  799b50:	53                   	push   ebx
  799b51:	55                   	push   ebp
  799b52:	8b 6c 24 0c          	mov    ebp,DWORD PTR [esp+0xc]
  799b56:	85 ed                	test   ebp,ebp
  799b58:	56                   	push   esi
  799b59:	57                   	push   edi
  799b5a:	8b f1                	mov    esi,ecx
  799b5c:	b3 01                	mov    bl,0x1
  799b5e:	75 03                	jne    0x799b63
  799b60:	8b 6e 08             	mov    ebp,DWORD PTR [esi+0x8]
  799b63:	e8 28 62 e7 ff       	call   0x60fd90
  799b68:	8b 08                	mov    ecx,DWORD PTR [eax]
  799b6a:	8b 91 6c 01 00 00    	mov    edx,DWORD PTR [ecx+0x16c]
  799b70:	8d 7e 10             	lea    edi,[esi+0x10]
  799b73:	57                   	push   edi
  799b74:	55                   	push   ebp
  799b75:	50                   	push   eax
  799b76:	ff d2                	call   edx
  799b78:	85 c0                	test   eax,eax
  799b7a:	75 04                	jne    0x799b80
  799b7c:	39 07                	cmp    DWORD PTR [edi],eax
  799b7e:	75 02                	jne    0x799b82
  799b80:	32 db                	xor    bl,bl
  799b82:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  799b85:	33 ff                	xor    edi,edi
  799b87:	3b c7                	cmp    eax,edi
  799b89:	74 12                	je     0x799b9d
  799b8b:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  799b91:	50                   	push   eax
  799b92:	e8 d9 c2 d4 ff       	call   0x4e5e70
  799b97:	89 7e 08             	mov    DWORD PTR [esi+0x8],edi
  799b9a:	89 7e 0c             	mov    DWORD PTR [esi+0xc],edi
  799b9d:	5f                   	pop    edi
  799b9e:	5e                   	pop    esi
  799b9f:	5d                   	pop    ebp
  799ba0:	8a c3                	mov    al,bl
  799ba2:	5b                   	pop    ebx
  799ba3:	c2 04 00             	ret    0x4
