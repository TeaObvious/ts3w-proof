# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775b40 (ScriptCore.StreamHost::StreamHost_CopyStream)
Paired actual Ghidra pseudocode: 00775B40_ScriptCore_StreamHost_StreamHost_CopyStream.c
Envelope [0x00775b40,0x00775c59); 281 bytes; exact owned range: [0x00775b40,0x00775c59)
Owned: 281 original bytes / 107 existing Listing instructions; no envelope gaps.
Stored prototypes remain inferred projections; physical instructions and original managed declarations govern ABI claims.

LINEAR DISASSEMBLY
00775b40 <original>:
  775b40:	b8 00 10 00 00                                  	mov    eax,0x1000
  775b45:	e8 f6 9c 80 00                                  	call   0xf7f840
  775b4a:	55                                              	push   ebp
  775b4b:	56                                              	push   esi
  775b4c:	8b b4 24 0c 10 00 00                            	mov    esi,DWORD PTR [esp+0x100c]
  775b53:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  775b59:	75 08                                           	jne    0x775b63
  775b5b:	8b 2d 3c 78 1d 01                               	mov    ebp,DWORD PTR ds:0x11d783c
  775b61:	eb 35                                           	jmp    0x775b98
  775b63:	8b c6                                           	mov    eax,esi
  775b65:	25 00 00 00 ff                                  	and    eax,0xff000000
  775b6a:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  775b6f:	74 04                                           	je     0x775b75
  775b71:	33 ed                                           	xor    ebp,ebp
  775b73:	eb 23                                           	jmp    0x775b98
  775b75:	e8 16 38 ff ff                                  	call   0x769390
  775b7a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  775b7c:	8b c8                                           	mov    ecx,eax
  775b7e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  775b84:	56                                              	push   esi
  775b85:	ff d0                                           	call   eax
  775b87:	85 c0                                           	test   eax,eax
  775b89:	74 0b                                           	je     0x775b96
  775b8b:	a3 3c 78 1d 01                                  	mov    ds:0x11d783c,eax
  775b90:	89 35 38 78 1d 01                               	mov    DWORD PTR ds:0x11d7838,esi
  775b96:	8b e8                                           	mov    ebp,eax
  775b98:	85 ed                                           	test   ebp,ebp
  775b9a:	75 0c                                           	jne    0x775ba8
  775b9c:	5e                                              	pop    esi
  775b9d:	8d 45 fe                                        	lea    eax,[ebp-0x2]
  775ba0:	5d                                              	pop    ebp
  775ba1:	81 c4 00 10 00 00                               	add    esp,0x1000
  775ba7:	c3                                              	ret
  775ba8:	8b 84 24 10 10 00 00                            	mov    eax,DWORD PTR [esp+0x1010]
  775baf:	3b 05 38 78 1d 01                               	cmp    eax,DWORD PTR ds:0x11d7838
  775bb5:	53                                              	push   ebx
  775bb6:	75 08                                           	jne    0x775bc0
  775bb8:	8b 1d 3c 78 1d 01                               	mov    ebx,DWORD PTR ds:0x11d783c
  775bbe:	eb 0b                                           	jmp    0x775bcb
  775bc0:	50                                              	push   eax
  775bc1:	e8 ba f2 ff ff                                  	call   0x774e80
  775bc6:	83 c4 04                                        	add    esp,0x4
  775bc9:	8b d8                                           	mov    ebx,eax
  775bcb:	85 db                                           	test   ebx,ebx
  775bcd:	75 0d                                           	jne    0x775bdc
  775bcf:	8d 43 fe                                        	lea    eax,[ebx-0x2]
  775bd2:	5b                                              	pop    ebx
  775bd3:	5e                                              	pop    esi
  775bd4:	5d                                              	pop    ebp
  775bd5:	81 c4 00 10 00 00                               	add    esp,0x1000
  775bdb:	c3                                              	ret
  775bdc:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  775bde:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  775be1:	57                                              	push   edi
  775be2:	8b cb                                           	mov    ecx,ebx
  775be4:	ff d0                                           	call   eax
  775be6:	8b f8                                           	mov    edi,eax
  775be8:	83 ff ff                                        	cmp    edi,0xffffffff
  775beb:	74 5c                                           	je     0x775c49
  775bed:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  775bef:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  775bf2:	6a 00                                           	push   0x0
  775bf4:	6a 00                                           	push   0x0
  775bf6:	8b cb                                           	mov    ecx,ebx
  775bf8:	ff d0                                           	call   eax
  775bfa:	84 c0                                           	test   al,al
  775bfc:	74 4b                                           	je     0x775c49
  775bfe:	85 ff                                           	test   edi,edi
  775c00:	76 3a                                           	jbe    0x775c3c
  775c02:	81 ff 00 10 00 00                               	cmp    edi,0x1000
  775c08:	be 00 10 00 00                                  	mov    esi,0x1000
  775c0d:	77 02                                           	ja     0x775c11
  775c0f:	8b f7                                           	mov    esi,edi
  775c11:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  775c13:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
  775c16:	56                                              	push   esi
  775c17:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  775c1b:	50                                              	push   eax
  775c1c:	8b cb                                           	mov    ecx,ebx
  775c1e:	ff d2                                           	call   edx
  775c20:	3b f0                                           	cmp    esi,eax
  775c22:	75 25                                           	jne    0x775c49
  775c24:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  775c27:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  775c2a:	56                                              	push   esi
  775c2b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  775c2f:	51                                              	push   ecx
  775c30:	8b cd                                           	mov    ecx,ebp
  775c32:	ff d2                                           	call   edx
  775c34:	84 c0                                           	test   al,al
  775c36:	74 11                                           	je     0x775c49
  775c38:	2b fe                                           	sub    edi,esi
  775c3a:	75 c6                                           	jne    0x775c02
  775c3c:	5f                                              	pop    edi
  775c3d:	5b                                              	pop    ebx
  775c3e:	5e                                              	pop    esi
  775c3f:	33 c0                                           	xor    eax,eax
  775c41:	5d                                              	pop    ebp
  775c42:	81 c4 00 10 00 00                               	add    esp,0x1000
  775c48:	c3                                              	ret
  775c49:	5f                                              	pop    edi
  775c4a:	5b                                              	pop    ebx
  775c4b:	5e                                              	pop    esi
  775c4c:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
  775c51:	5d                                              	pop    ebp
  775c52:	81 c4 00 10 00 00                               	add    esp,0x1000
  775c58:	c3                                              	ret
