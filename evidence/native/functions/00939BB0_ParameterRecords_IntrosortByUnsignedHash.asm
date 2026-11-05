# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939bb0,0x00939c5e); analyst name ParameterRecords_IntrosortByUnsignedHash.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939bb0 <.text+0x538bb0>:
  939bb0:	53                   	push   ebx
  939bb1:	8b 5c 24 0c          	mov    ebx,DWORD PTR [esp+0xc]
  939bb5:	55                   	push   ebp
  939bb6:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  939bba:	56                   	push   esi
  939bbb:	57                   	push   edi
  939bbc:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  939bc0:	8b c3                	mov    eax,ebx
  939bc2:	2b c7                	sub    eax,edi
  939bc4:	83 e0 f0             	and    eax,0xfffffff0
  939bc7:	3d c0 01 00 00       	cmp    eax,0x1c0
  939bcc:	7e 77                	jle    0x939c45
  939bce:	8b ff                	mov    edi,edi
  939bd0:	85 ed                	test   ebp,ebp
  939bd2:	7e 73                	jle    0x939c47
  939bd4:	8b 0f                	mov    ecx,DWORD PTR [edi]
  939bd6:	8b 6b f0             	mov    ebp,DWORD PTR [ebx-0x10]
  939bd9:	8b c3                	mov    eax,ebx
  939bdb:	2b c7                	sub    eax,edi
  939bdd:	c1 f8 04             	sar    eax,0x4
  939be0:	99                   	cdq
  939be1:	2b c2                	sub    eax,edx
  939be3:	d1 f8                	sar    eax,1
  939be5:	c1 e0 04             	shl    eax,0x4
  939be8:	8b 14 38             	mov    edx,DWORD PTR [eax+edi*1]
  939beb:	03 c7                	add    eax,edi
  939bed:	3b ca                	cmp    ecx,edx
  939bef:	8d 73 f0             	lea    esi,[ebx-0x10]
  939bf2:	73 0a                	jae    0x939bfe
  939bf4:	3b d5                	cmp    edx,ebp
  939bf6:	72 14                	jb     0x939c0c
  939bf8:	3b cd                	cmp    ecx,ebp
  939bfa:	73 06                	jae    0x939c02
  939bfc:	eb 0c                	jmp    0x939c0a
  939bfe:	3b cd                	cmp    ecx,ebp
  939c00:	73 04                	jae    0x939c06
  939c02:	8b c7                	mov    eax,edi
  939c04:	eb 06                	jmp    0x939c0c
  939c06:	3b d5                	cmp    edx,ebp
  939c08:	73 02                	jae    0x939c0c
  939c0a:	8b c6                	mov    eax,esi
  939c0c:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  939c10:	51                   	push   ecx
  939c11:	50                   	push   eax
  939c12:	53                   	push   ebx
  939c13:	57                   	push   edi
  939c14:	e8 67 fe ff ff       	call   0x939a80
  939c19:	8b 6c 24 2c          	mov    ebp,DWORD PTR [esp+0x2c]
  939c1d:	8b 54 24 30          	mov    edx,DWORD PTR [esp+0x30]
  939c21:	52                   	push   edx
  939c22:	83 ed 01             	sub    ebp,0x1
  939c25:	55                   	push   ebp
  939c26:	8b f0                	mov    esi,eax
  939c28:	53                   	push   ebx
  939c29:	56                   	push   esi
  939c2a:	89 6c 24 3c          	mov    DWORD PTR [esp+0x3c],ebp
  939c2e:	e8 7d ff ff ff       	call   0x939bb0
  939c33:	8b de                	mov    ebx,esi
  939c35:	2b f7                	sub    esi,edi
  939c37:	83 e6 f0             	and    esi,0xfffffff0
  939c3a:	83 c4 20             	add    esp,0x20
  939c3d:	81 fe c0 01 00 00    	cmp    esi,0x1c0
  939c43:	7f 8b                	jg     0x939bd0
  939c45:	85 ed                	test   ebp,ebp
  939c47:	75 10                	jne    0x939c59
  939c49:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  939c4d:	50                   	push   eax
  939c4e:	53                   	push   ebx
  939c4f:	53                   	push   ebx
  939c50:	57                   	push   edi
  939c51:	e8 ba fe ff ff       	call   0x939b10
  939c56:	83 c4 10             	add    esp,0x10
  939c59:	5f                   	pop    edi
  939c5a:	5e                   	pop    esi
  939c5b:	5d                   	pop    ebp
  939c5c:	5b                   	pop    ebx
  939c5d:	c3                   	ret
