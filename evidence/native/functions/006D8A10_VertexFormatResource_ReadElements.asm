# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006d8a10 <.text+0x2d7a10>:
  6d8a10:	83 ec 14             	sub    esp,0x14
  6d8a13:	89 0c 24             	mov    DWORD PTR [esp],ecx
  6d8a16:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  6d8a1a:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  6d8a1d:	85 c0                	test   eax,eax
  6d8a1f:	56                   	push   esi
  6d8a20:	57                   	push   edi
  6d8a21:	74 05                	je     0x6d8a28
  6d8a23:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  6d8a26:	eb 02                	jmp    0x6d8a2a
  6d8a28:	33 ff                	xor    edi,edi
  6d8a2a:	8b 01                	mov    eax,DWORD PTR [ecx]
  6d8a2c:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  6d8a2f:	ff d2                	call   edx
  6d8a31:	8b f0                	mov    esi,eax
  6d8a33:	83 fe 14             	cmp    esi,0x14
  6d8a36:	73 0a                	jae    0x6d8a42
  6d8a38:	5f                   	pop    edi
  6d8a39:	32 c0                	xor    al,al
  6d8a3b:	5e                   	pop    esi
  6d8a3c:	83 c4 14             	add    esp,0x14
  6d8a3f:	c2 0c 00             	ret    0xc
  6d8a42:	80 7c 24 28 00       	cmp    BYTE PTR [esp+0x28],0x0
  6d8a47:	74 0d                	je     0x6d8a56
  6d8a49:	c1 e8 02             	shr    eax,0x2
  6d8a4c:	50                   	push   eax
  6d8a4d:	57                   	push   edi
  6d8a4e:	e8 1d a6 0f 00       	call   0x7d3070
  6d8a53:	83 c4 08             	add    esp,0x8
  6d8a56:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  6d8a59:	3d 00 00 01 00       	cmp    eax,0x10000
  6d8a5e:	73 d8                	jae    0x6d8a38
  6d8a60:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  6d8a63:	83 f9 02             	cmp    ecx,0x2
  6d8a66:	73 10                	jae    0x6d8a78
  6d8a68:	8d 14 85 10 00 00 00 	lea    edx,[eax*4+0x10]
  6d8a6f:	3b f2                	cmp    esi,edx
  6d8a71:	72 c5                	jb     0x6d8a38
  6d8a73:	83 f9 02             	cmp    ecx,0x2
  6d8a76:	72 0b                	jb     0x6d8a83
  6d8a78:	8d 0c 85 14 00 00 00 	lea    ecx,[eax*4+0x14]
  6d8a7f:	3b f1                	cmp    esi,ecx
  6d8a81:	72 b5                	jb     0x6d8a38
  6d8a83:	8d 54 24 28          	lea    edx,[esp+0x28]
  6d8a87:	52                   	push   edx
  6d8a88:	50                   	push   eax
  6d8a89:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  6d8a8d:	c7 44 24 30 64 77 ff 	mov    DWORD PTR [esp+0x30],0xff7764
  6d8a94:	00 
  6d8a95:	e8 26 ff ff ff       	call   0x6d89c0
  6d8a9a:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  6d8a9d:	83 f8 02             	cmp    eax,0x2
  6d8aa0:	8d 57 14             	lea    edx,[edi+0x14]
  6d8aa3:	73 03                	jae    0x6d8aa8
  6d8aa5:	83 ea 04             	sub    edx,0x4
  6d8aa8:	83 f8 02             	cmp    eax,0x2
  6d8aab:	53                   	push   ebx
  6d8aac:	55                   	push   ebp
  6d8aad:	72 48                	jb     0x6d8af7
  6d8aaf:	f6 47 10 01          	test   BYTE PTR [edi+0x10],0x1
  6d8ab3:	74 42                	je     0x6d8af7
  6d8ab5:	33 ed                	xor    ebp,ebp
  6d8ab7:	39 6f 0c             	cmp    DWORD PTR [edi+0xc],ebp
  6d8aba:	76 7a                	jbe    0x6d8b36
  6d8abc:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  6d8ac0:	83 c0 04             	add    eax,0x4
  6d8ac3:	8d 72 08             	lea    esi,[edx+0x8]
  6d8ac6:	8b 56 f8             	mov    edx,DWORD PTR [esi-0x8]
  6d8ac9:	8b 0e                	mov    ecx,DWORD PTR [esi]
  6d8acb:	8b 5e fc             	mov    ebx,DWORD PTR [esi-0x4]
  6d8ace:	66 c7 40 fc 00 00    	mov    WORD PTR [eax-0x4],0x0
  6d8ad4:	66 89 50 fe          	mov    WORD PTR [eax-0x2],dx
  6d8ad8:	88 18                	mov    BYTE PTR [eax],bl
  6d8ada:	c6 40 01 00          	mov    BYTE PTR [eax+0x1],0x0
  6d8ade:	88 48 02             	mov    BYTE PTR [eax+0x2],cl
  6d8ae1:	c1 e9 10             	shr    ecx,0x10
  6d8ae4:	88 48 03             	mov    BYTE PTR [eax+0x3],cl
  6d8ae7:	83 c5 01             	add    ebp,0x1
  6d8aea:	83 c6 0c             	add    esi,0xc
  6d8aed:	83 c0 08             	add    eax,0x8
  6d8af0:	3b 6f 0c             	cmp    ebp,DWORD PTR [edi+0xc]
  6d8af3:	72 d1                	jb     0x6d8ac6
  6d8af5:	eb 3f                	jmp    0x6d8b36
  6d8af7:	33 f6                	xor    esi,esi
  6d8af9:	39 77 0c             	cmp    DWORD PTR [edi+0xc],esi
  6d8afc:	76 38                	jbe    0x6d8b36
  6d8afe:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  6d8b02:	83 c0 04             	add    eax,0x4
  6d8b05:	8b 0c b2             	mov    ecx,DWORD PTR [edx+esi*4]
  6d8b08:	8b d9                	mov    ebx,ecx
  6d8b0a:	c1 eb 18             	shr    ebx,0x18
  6d8b0d:	66 89 58 fe          	mov    WORD PTR [eax-0x2],bx
  6d8b11:	66 c7 40 fc 00 00    	mov    WORD PTR [eax-0x4],0x0
  6d8b17:	8b d9                	mov    ebx,ecx
  6d8b19:	c1 eb 10             	shr    ebx,0x10
  6d8b1c:	88 18                	mov    BYTE PTR [eax],bl
  6d8b1e:	c6 40 01 00          	mov    BYTE PTR [eax+0x1],0x0
  6d8b22:	88 48 02             	mov    BYTE PTR [eax+0x2],cl
  6d8b25:	c1 e9 08             	shr    ecx,0x8
  6d8b28:	88 48 03             	mov    BYTE PTR [eax+0x3],cl
  6d8b2b:	83 c6 01             	add    esi,0x1
  6d8b2e:	83 c0 08             	add    eax,0x8
  6d8b31:	3b 77 0c             	cmp    esi,DWORD PTR [edi+0xc]
  6d8b34:	72 cf                	jb     0x6d8b05
  6d8b36:	e8 b5 20 f4 ff       	call   0x61abf0
  6d8b3b:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  6d8b3f:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  6d8b42:	85 c9                	test   ecx,ecx
  6d8b44:	8d 75 28             	lea    esi,[ebp+0x28]
  6d8b47:	8b d8                	mov    ebx,eax
  6d8b49:	74 0d                	je     0x6d8b58
  6d8b4b:	c7 06 00 00 00 00    	mov    DWORD PTR [esi],0x0
  6d8b51:	8b 01                	mov    eax,DWORD PTR [ecx]
  6d8b53:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  6d8b56:	ff d2                	call   edx
  6d8b58:	8b 47 0c             	mov    eax,DWORD PTR [edi+0xc]
  6d8b5b:	56                   	push   esi
  6d8b5c:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  6d8b60:	50                   	push   eax
  6d8b61:	56                   	push   esi
  6d8b62:	8b cb                	mov    ecx,ebx
  6d8b64:	e8 27 25 f4 ff       	call   0x61b090
  6d8b69:	84 c0                	test   al,al
  6d8b6b:	75 19                	jne    0x6d8b86
  6d8b6d:	85 f6                	test   esi,esi
  6d8b6f:	74 09                	je     0x6d8b7a
  6d8b71:	56                   	push   esi
  6d8b72:	e8 69 b9 e0 ff       	call   0x4e44e0
  6d8b77:	83 c4 04             	add    esp,0x4
  6d8b7a:	5d                   	pop    ebp
  6d8b7b:	5b                   	pop    ebx
  6d8b7c:	5f                   	pop    edi
  6d8b7d:	32 c0                	xor    al,al
  6d8b7f:	5e                   	pop    esi
  6d8b80:	83 c4 14             	add    esp,0x14
  6d8b83:	c2 0c 00             	ret    0xc
  6d8b86:	6a 30                	push   0x30
  6d8b88:	8b cd                	mov    ecx,ebp
  6d8b8a:	e8 51 90 05 00       	call   0x731be0
  6d8b8f:	85 f6                	test   esi,esi
  6d8b91:	74 09                	je     0x6d8b9c
  6d8b93:	56                   	push   esi
  6d8b94:	e8 47 b9 e0 ff       	call   0x4e44e0
  6d8b99:	83 c4 04             	add    esp,0x4
  6d8b9c:	5d                   	pop    ebp
  6d8b9d:	5b                   	pop    ebx
  6d8b9e:	5f                   	pop    edi
  6d8b9f:	b0 01                	mov    al,0x1
  6d8ba1:	5e                   	pop    esi
  6d8ba2:	83 c4 14             	add    esp,0x14
  6d8ba5:	c2 0c 00             	ret    0xc
