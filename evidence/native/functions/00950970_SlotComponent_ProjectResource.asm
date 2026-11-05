# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00950970 <.text+0x54f970>:
  950970:	53                   	push   ebx
  950971:	55                   	push   ebp
  950972:	56                   	push   esi
  950973:	33 db                	xor    ebx,ebx
  950975:	38 5c 24 14          	cmp    BYTE PTR [esp+0x14],bl
  950979:	57                   	push   edi
  95097a:	8b f1                	mov    esi,ecx
  95097c:	74 1e                	je     0x95099c
  95097e:	33 c0                	xor    eax,eax
  950980:	33 c9                	xor    ecx,ecx
  950982:	89 46 30             	mov    DWORD PTR [esi+0x30],eax
  950985:	89 4e 34             	mov    DWORD PTR [esi+0x34],ecx
  950988:	33 d2                	xor    edx,edx
  95098a:	33 ff                	xor    edi,edi
  95098c:	89 56 38             	mov    DWORD PTR [esi+0x38],edx
  95098f:	8b ce                	mov    ecx,esi
  950991:	89 7e 3c             	mov    DWORD PTR [esi+0x3c],edi
  950994:	e8 77 fa ff ff       	call   0x950410
  950999:	89 5e 40             	mov    DWORD PTR [esi+0x40],ebx
  95099c:	8b 6e 44             	mov    ebp,DWORD PTR [esi+0x44]
  95099f:	8b 7c 24 14          	mov    edi,DWORD PTR [esp+0x14]
  9509a3:	3b fd                	cmp    edi,ebp
  9509a5:	74 1d                	je     0x9509c4
  9509a7:	3b fb                	cmp    edi,ebx
  9509a9:	74 08                	je     0x9509b3
  9509ab:	8b 07                	mov    eax,DWORD PTR [edi]
  9509ad:	8b 10                	mov    edx,DWORD PTR [eax]
  9509af:	8b cf                	mov    ecx,edi
  9509b1:	ff d2                	call   edx
  9509b3:	3b eb                	cmp    ebp,ebx
  9509b5:	89 7e 44             	mov    DWORD PTR [esi+0x44],edi
  9509b8:	74 0a                	je     0x9509c4
  9509ba:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  9509bd:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9509c0:	8b cd                	mov    ecx,ebp
  9509c2:	ff d2                	call   edx
  9509c4:	8b 6f 2c             	mov    ebp,DWORD PTR [edi+0x2c]
  9509c7:	3b eb                	cmp    ebp,ebx
  9509c9:	89 6e 08             	mov    DWORD PTR [esi+0x8],ebp
  9509cc:	0f 86 b5 00 00 00    	jbe    0x950a87
  9509d2:	33 c9                	xor    ecx,ecx
  9509d4:	8b c5                	mov    eax,ebp
  9509d6:	ba 18 00 00 00       	mov    edx,0x18
  9509db:	f7 e2                	mul    edx
  9509dd:	0f 90 c1             	seto   cl
  9509e0:	53                   	push   ebx
  9509e1:	53                   	push   ebx
  9509e2:	53                   	push   ebx
  9509e3:	53                   	push   ebx
  9509e4:	68 c4 52 04 01       	push   0x10452c4
  9509e9:	f7 d9                	neg    ecx
  9509eb:	0b c8                	or     ecx,eax
  9509ed:	33 c0                	xor    eax,eax
  9509ef:	83 c1 04             	add    ecx,0x4
  9509f2:	0f 92 c0             	setb   al
  9509f5:	f7 d8                	neg    eax
  9509f7:	0b c1                	or     eax,ecx
  9509f9:	50                   	push   eax
  9509fa:	e8 01 3b b9 ff       	call   0x4e4500
  9509ff:	83 c4 18             	add    esp,0x18
  950a02:	3b c3                	cmp    eax,ebx
  950a04:	74 1d                	je     0x950a23
  950a06:	68 40 fd 94 00       	push   0x94fd40
  950a0b:	55                   	push   ebp
  950a0c:	89 28                	mov    DWORD PTR [eax],ebp
  950a0e:	83 c0 04             	add    eax,0x4
  950a11:	6a 18                	push   0x18
  950a13:	50                   	push   eax
  950a14:	89 44 24 28          	mov    DWORD PTR [esp+0x28],eax
  950a18:	e8 83 5c af ff       	call   0x4466a0
  950a1d:	8b 44 24 18          	mov    eax,DWORD PTR [esp+0x18]
  950a21:	eb 02                	jmp    0x950a25
  950a23:	33 c0                	xor    eax,eax
  950a25:	39 5e 08             	cmp    DWORD PTR [esi+0x8],ebx
  950a28:	89 46 0c             	mov    DWORD PTR [esi+0xc],eax
  950a2b:	8b 57 40             	mov    edx,DWORD PTR [edi+0x40]
  950a2e:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  950a32:	76 53                	jbe    0x950a87
  950a34:	33 c0                	xor    eax,eax
  950a36:	8d 0c 95 00 00 00 00 	lea    ecx,[edx*4+0x0]
  950a3d:	c1 e2 06             	shl    edx,0x6
  950a40:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  950a44:	8b 57 60             	mov    edx,DWORD PTR [edi+0x60]
  950a47:	03 54 24 18          	add    edx,DWORD PTR [esp+0x18]
  950a4b:	8b 6e 0c             	mov    ebp,DWORD PTR [esi+0xc]
  950a4e:	83 44 24 18 40       	add    DWORD PTR [esp+0x18],0x40
  950a53:	89 54 28 0c          	mov    DWORD PTR [eax+ebp*1+0xc],edx
  950a57:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
  950a5a:	8b 14 11             	mov    edx,DWORD PTR [ecx+edx*1]
  950a5d:	8b 6e 0c             	mov    ebp,DWORD PTR [esi+0xc]
  950a60:	89 54 28 04          	mov    DWORD PTR [eax+ebp*1+0x4],edx
  950a64:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
  950a67:	8b 14 11             	mov    edx,DWORD PTR [ecx+edx*1]
  950a6a:	8b 6e 0c             	mov    ebp,DWORD PTR [esi+0xc]
  950a6d:	89 54 28 10          	mov    DWORD PTR [eax+ebp*1+0x10],edx
  950a71:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  950a75:	83 c2 01             	add    edx,0x1
  950a78:	83 c1 04             	add    ecx,0x4
  950a7b:	83 c0 18             	add    eax,0x18
  950a7e:	3b 56 08             	cmp    edx,DWORD PTR [esi+0x8]
  950a81:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  950a85:	72 bd                	jb     0x950a44
  950a87:	8b 6f 30             	mov    ebp,DWORD PTR [edi+0x30]
  950a8a:	3b eb                	cmp    ebp,ebx
  950a8c:	89 6e 10             	mov    DWORD PTR [esi+0x10],ebp
  950a8f:	0f 86 ef 00 00 00    	jbe    0x950b84
  950a95:	33 c9                	xor    ecx,ecx
  950a97:	8b c5                	mov    eax,ebp
  950a99:	ba 20 00 00 00       	mov    edx,0x20
  950a9e:	f7 e2                	mul    edx
  950aa0:	0f 90 c1             	seto   cl
  950aa3:	53                   	push   ebx
  950aa4:	53                   	push   ebx
  950aa5:	53                   	push   ebx
  950aa6:	53                   	push   ebx
  950aa7:	68 9c 52 04 01       	push   0x104529c
  950aac:	f7 d9                	neg    ecx
  950aae:	0b c8                	or     ecx,eax
  950ab0:	33 c0                	xor    eax,eax
  950ab2:	83 c1 04             	add    ecx,0x4
  950ab5:	0f 92 c0             	setb   al
  950ab8:	f7 d8                	neg    eax
  950aba:	0b c1                	or     eax,ecx
  950abc:	50                   	push   eax
  950abd:	e8 3e 3a b9 ff       	call   0x4e4500
  950ac2:	83 c4 18             	add    esp,0x18
  950ac5:	3b c3                	cmp    eax,ebx
  950ac7:	74 39                	je     0x950b02
  950ac9:	8d 4d ff             	lea    ecx,[ebp-0x1]
  950acc:	3b cb                	cmp    ecx,ebx
  950ace:	8d 50 04             	lea    edx,[eax+0x4]
  950ad1:	89 28                	mov    DWORD PTR [eax],ebp
  950ad3:	8b c2                	mov    eax,edx
  950ad5:	7c 27                	jl     0x950afe
  950ad7:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  950ada:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  950add:	89 58 0c             	mov    DWORD PTR [eax+0xc],ebx
  950ae0:	89 58 10             	mov    DWORD PTR [eax+0x10],ebx
  950ae3:	89 58 14             	mov    DWORD PTR [eax+0x14],ebx
  950ae6:	c7 00 e4 50 04 01    	mov    DWORD PTR [eax],0x10450e4
  950aec:	c7 40 18 01 00 00 00 	mov    DWORD PTR [eax+0x18],0x1
  950af3:	89 58 1c             	mov    DWORD PTR [eax+0x1c],ebx
  950af6:	83 c0 20             	add    eax,0x20
  950af9:	83 e9 01             	sub    ecx,0x1
  950afc:	79 d9                	jns    0x950ad7
  950afe:	8b c2                	mov    eax,edx
  950b00:	eb 02                	jmp    0x950b04
  950b02:	33 c0                	xor    eax,eax
  950b04:	39 5e 10             	cmp    DWORD PTR [esi+0x10],ebx
  950b07:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  950b0a:	8b 57 44             	mov    edx,DWORD PTR [edi+0x44]
  950b0d:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  950b11:	76 71                	jbe    0x950b84
  950b13:	33 c0                	xor    eax,eax
  950b15:	8d 0c 95 00 00 00 00 	lea    ecx,[edx*4+0x0]
  950b1c:	c1 e2 06             	shl    edx,0x6
  950b1f:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  950b23:	8b 57 60             	mov    edx,DWORD PTR [edi+0x60]
  950b26:	03 54 24 14          	add    edx,DWORD PTR [esp+0x14]
  950b2a:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
  950b2d:	89 54 28 0c          	mov    DWORD PTR [eax+ebp*1+0xc],edx
  950b31:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
  950b34:	8b 14 11             	mov    edx,DWORD PTR [ecx+edx*1]
  950b37:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
  950b3a:	89 54 28 04          	mov    DWORD PTR [eax+ebp*1+0x4],edx
  950b3e:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
  950b41:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
  950b44:	8b 14 11             	mov    edx,DWORD PTR [ecx+edx*1]
  950b47:	89 54 28 10          	mov    DWORD PTR [eax+ebp*1+0x10],edx
  950b4b:	83 7f 28 04          	cmp    DWORD PTR [edi+0x28],0x4
  950b4f:	72 0c                	jb     0x950b5d
  950b51:	8b 57 5c             	mov    edx,DWORD PTR [edi+0x5c]
  950b54:	8b 6c 24 18          	mov    ebp,DWORD PTR [esp+0x18]
  950b58:	8b 14 aa             	mov    edx,DWORD PTR [edx+ebp*4]
  950b5b:	eb 05                	jmp    0x950b62
  950b5d:	ba 38 00 0c 00       	mov    edx,0xc0038
  950b62:	8b 6e 14             	mov    ebp,DWORD PTR [esi+0x14]
  950b65:	83 44 24 14 40       	add    DWORD PTR [esp+0x14],0x40
  950b6a:	89 54 28 18          	mov    DWORD PTR [eax+ebp*1+0x18],edx
  950b6e:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  950b72:	83 c2 01             	add    edx,0x1
  950b75:	83 c1 04             	add    ecx,0x4
  950b78:	83 c0 20             	add    eax,0x20
  950b7b:	3b 56 10             	cmp    edx,DWORD PTR [esi+0x10]
  950b7e:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  950b82:	72 9f                	jb     0x950b23
  950b84:	8b 6f 34             	mov    ebp,DWORD PTR [edi+0x34]
  950b87:	3b eb                	cmp    ebp,ebx
  950b89:	89 6e 18             	mov    DWORD PTR [esi+0x18],ebp
  950b8c:	0f 86 c7 00 00 00    	jbe    0x950c59
  950b92:	33 c9                	xor    ecx,ecx
  950b94:	8b c5                	mov    eax,ebp
  950b96:	ba 18 00 00 00       	mov    edx,0x18
  950b9b:	f7 e2                	mul    edx
  950b9d:	0f 90 c1             	seto   cl
  950ba0:	53                   	push   ebx
  950ba1:	53                   	push   ebx
  950ba2:	53                   	push   ebx
  950ba3:	53                   	push   ebx
  950ba4:	68 7c 52 04 01       	push   0x104527c
  950ba9:	f7 d9                	neg    ecx
  950bab:	0b c8                	or     ecx,eax
  950bad:	33 c0                	xor    eax,eax
  950baf:	83 c1 04             	add    ecx,0x4
  950bb2:	0f 92 c0             	setb   al
  950bb5:	f7 d8                	neg    eax
  950bb7:	0b c1                	or     eax,ecx
  950bb9:	50                   	push   eax
  950bba:	e8 41 39 b9 ff       	call   0x4e4500
  950bbf:	83 c4 18             	add    esp,0x18
  950bc2:	3b c3                	cmp    eax,ebx
  950bc4:	74 2f                	je     0x950bf5
  950bc6:	8d 4d ff             	lea    ecx,[ebp-0x1]
  950bc9:	3b cb                	cmp    ecx,ebx
  950bcb:	8d 50 04             	lea    edx,[eax+0x4]
  950bce:	89 28                	mov    DWORD PTR [eax],ebp
  950bd0:	8b c2                	mov    eax,edx
  950bd2:	7c 1d                	jl     0x950bf1
  950bd4:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  950bd7:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  950bda:	89 58 0c             	mov    DWORD PTR [eax+0xc],ebx
  950bdd:	89 58 10             	mov    DWORD PTR [eax+0x10],ebx
  950be0:	89 58 14             	mov    DWORD PTR [eax+0x14],ebx
  950be3:	c7 00 08 51 04 01    	mov    DWORD PTR [eax],0x1045108
  950be9:	83 c0 18             	add    eax,0x18
  950bec:	83 e9 01             	sub    ecx,0x1
  950bef:	79 e3                	jns    0x950bd4
  950bf1:	8b c2                	mov    eax,edx
  950bf3:	eb 02                	jmp    0x950bf7
  950bf5:	33 c0                	xor    eax,eax
  950bf7:	39 5e 18             	cmp    DWORD PTR [esi+0x18],ebx
  950bfa:	89 46 1c             	mov    DWORD PTR [esi+0x1c],eax
  950bfd:	8b 57 48             	mov    edx,DWORD PTR [edi+0x48]
  950c00:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  950c04:	76 53                	jbe    0x950c59
  950c06:	33 c0                	xor    eax,eax
  950c08:	8d 0c 95 00 00 00 00 	lea    ecx,[edx*4+0x0]
  950c0f:	c1 e2 06             	shl    edx,0x6
  950c12:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  950c16:	8b 57 60             	mov    edx,DWORD PTR [edi+0x60]
  950c19:	03 54 24 18          	add    edx,DWORD PTR [esp+0x18]
  950c1d:	8b 6e 1c             	mov    ebp,DWORD PTR [esi+0x1c]
  950c20:	83 44 24 18 40       	add    DWORD PTR [esp+0x18],0x40
  950c25:	89 54 28 0c          	mov    DWORD PTR [eax+ebp*1+0xc],edx
  950c29:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
  950c2c:	8b 14 11             	mov    edx,DWORD PTR [ecx+edx*1]
  950c2f:	8b 6e 1c             	mov    ebp,DWORD PTR [esi+0x1c]
  950c32:	89 54 28 04          	mov    DWORD PTR [eax+ebp*1+0x4],edx
  950c36:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
  950c39:	8b 14 11             	mov    edx,DWORD PTR [ecx+edx*1]
  950c3c:	8b 6e 1c             	mov    ebp,DWORD PTR [esi+0x1c]
  950c3f:	89 54 28 10          	mov    DWORD PTR [eax+ebp*1+0x10],edx
  950c43:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  950c47:	83 c2 01             	add    edx,0x1
  950c4a:	83 c1 04             	add    ecx,0x4
  950c4d:	83 c0 18             	add    eax,0x18
  950c50:	3b 56 18             	cmp    edx,DWORD PTR [esi+0x18]
  950c53:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  950c57:	72 bd                	jb     0x950c16
  950c59:	8b 6f 38             	mov    ebp,DWORD PTR [edi+0x38]
  950c5c:	3b eb                	cmp    ebp,ebx
  950c5e:	89 6e 20             	mov    DWORD PTR [esi+0x20],ebp
  950c61:	0f 86 ce 00 00 00    	jbe    0x950d35
  950c67:	33 c9                	xor    ecx,ecx
  950c69:	8b c5                	mov    eax,ebp
  950c6b:	ba 18 00 00 00       	mov    edx,0x18
  950c70:	f7 e2                	mul    edx
  950c72:	0f 90 c1             	seto   cl
  950c75:	53                   	push   ebx
  950c76:	53                   	push   ebx
  950c77:	53                   	push   ebx
  950c78:	53                   	push   ebx
  950c79:	68 58 52 04 01       	push   0x1045258
  950c7e:	f7 d9                	neg    ecx
  950c80:	0b c8                	or     ecx,eax
  950c82:	33 c0                	xor    eax,eax
  950c84:	83 c1 04             	add    ecx,0x4
  950c87:	0f 92 c0             	setb   al
  950c8a:	f7 d8                	neg    eax
  950c8c:	0b c1                	or     eax,ecx
  950c8e:	50                   	push   eax
  950c8f:	e8 6c 38 b9 ff       	call   0x4e4500
  950c94:	83 c4 18             	add    esp,0x18
  950c97:	3b c3                	cmp    eax,ebx
  950c99:	74 36                	je     0x950cd1
  950c9b:	8d 4d ff             	lea    ecx,[ebp-0x1]
  950c9e:	3b cb                	cmp    ecx,ebx
  950ca0:	8d 50 04             	lea    edx,[eax+0x4]
  950ca3:	89 28                	mov    DWORD PTR [eax],ebp
  950ca5:	8b c2                	mov    eax,edx
  950ca7:	7c 24                	jl     0x950ccd
  950ca9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  950cb0:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  950cb3:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  950cb6:	89 58 0c             	mov    DWORD PTR [eax+0xc],ebx
  950cb9:	89 58 10             	mov    DWORD PTR [eax+0x10],ebx
  950cbc:	89 58 14             	mov    DWORD PTR [eax+0x14],ebx
  950cbf:	c7 00 2c 51 04 01    	mov    DWORD PTR [eax],0x104512c
  950cc5:	83 c0 18             	add    eax,0x18
  950cc8:	83 e9 01             	sub    ecx,0x1
  950ccb:	79 e3                	jns    0x950cb0
  950ccd:	8b c2                	mov    eax,edx
  950ccf:	eb 02                	jmp    0x950cd3
  950cd1:	33 c0                	xor    eax,eax
  950cd3:	39 5e 20             	cmp    DWORD PTR [esi+0x20],ebx
  950cd6:	89 46 24             	mov    DWORD PTR [esi+0x24],eax
  950cd9:	8b 57 4c             	mov    edx,DWORD PTR [edi+0x4c]
  950cdc:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  950ce0:	76 53                	jbe    0x950d35
  950ce2:	33 c0                	xor    eax,eax
  950ce4:	8d 0c 95 00 00 00 00 	lea    ecx,[edx*4+0x0]
  950ceb:	c1 e2 06             	shl    edx,0x6
  950cee:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
  950cf2:	8b 57 60             	mov    edx,DWORD PTR [edi+0x60]
  950cf5:	03 54 24 18          	add    edx,DWORD PTR [esp+0x18]
  950cf9:	8b 6e 24             	mov    ebp,DWORD PTR [esi+0x24]
  950cfc:	83 44 24 18 40       	add    DWORD PTR [esp+0x18],0x40
  950d01:	89 54 28 0c          	mov    DWORD PTR [eax+ebp*1+0xc],edx
  950d05:	8b 57 54             	mov    edx,DWORD PTR [edi+0x54]
  950d08:	8b 14 11             	mov    edx,DWORD PTR [ecx+edx*1]
  950d0b:	8b 6e 24             	mov    ebp,DWORD PTR [esi+0x24]
  950d0e:	89 54 28 04          	mov    DWORD PTR [eax+ebp*1+0x4],edx
  950d12:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
  950d15:	8b 14 11             	mov    edx,DWORD PTR [ecx+edx*1]
  950d18:	8b 6e 24             	mov    ebp,DWORD PTR [esi+0x24]
  950d1b:	89 54 28 10          	mov    DWORD PTR [eax+ebp*1+0x10],edx
  950d1f:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  950d23:	83 c2 01             	add    edx,0x1
  950d26:	83 c1 04             	add    ecx,0x4
  950d29:	83 c0 18             	add    eax,0x18
  950d2c:	3b 56 20             	cmp    edx,DWORD PTR [esi+0x20]
  950d2f:	89 54 24 14          	mov    DWORD PTR [esp+0x14],edx
  950d33:	72 bd                	jb     0x950cf2
  950d35:	8b 6f 3c             	mov    ebp,DWORD PTR [edi+0x3c]
  950d38:	3b eb                	cmp    ebp,ebx
  950d3a:	89 6e 28             	mov    DWORD PTR [esi+0x28],ebp
  950d3d:	0f 86 da 00 00 00    	jbe    0x950e1d
  950d43:	33 c9                	xor    ecx,ecx
  950d45:	8b c5                	mov    eax,ebp
  950d47:	ba 20 00 00 00       	mov    edx,0x20
  950d4c:	f7 e2                	mul    edx
  950d4e:	0f 90 c1             	seto   cl
  950d51:	53                   	push   ebx
  950d52:	53                   	push   ebx
  950d53:	53                   	push   ebx
  950d54:	53                   	push   ebx
  950d55:	68 38 52 04 01       	push   0x1045238
  950d5a:	f7 d9                	neg    ecx
  950d5c:	0b c8                	or     ecx,eax
  950d5e:	33 c0                	xor    eax,eax
  950d60:	83 c1 04             	add    ecx,0x4
  950d63:	0f 92 c0             	setb   al
  950d66:	f7 d8                	neg    eax
  950d68:	0b c1                	or     eax,ecx
  950d6a:	50                   	push   eax
  950d6b:	e8 90 37 b9 ff       	call   0x4e4500
  950d70:	83 c4 18             	add    esp,0x18
  950d73:	3b c3                	cmp    eax,ebx
  950d75:	74 2f                	je     0x950da6
  950d77:	8d 4d ff             	lea    ecx,[ebp-0x1]
  950d7a:	3b cb                	cmp    ecx,ebx
  950d7c:	8d 50 04             	lea    edx,[eax+0x4]
  950d7f:	89 28                	mov    DWORD PTR [eax],ebp
  950d81:	8b c2                	mov    eax,edx
  950d83:	7c 1d                	jl     0x950da2
  950d85:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
  950d88:	89 58 08             	mov    DWORD PTR [eax+0x8],ebx
  950d8b:	89 58 0c             	mov    DWORD PTR [eax+0xc],ebx
  950d8e:	89 58 10             	mov    DWORD PTR [eax+0x10],ebx
  950d91:	89 58 14             	mov    DWORD PTR [eax+0x14],ebx
  950d94:	c7 00 50 51 04 01    	mov    DWORD PTR [eax],0x1045150
  950d9a:	83 c0 20             	add    eax,0x20
  950d9d:	83 e9 01             	sub    ecx,0x1
  950da0:	79 e3                	jns    0x950d85
  950da2:	8b c2                	mov    eax,edx
  950da4:	eb 02                	jmp    0x950da8
  950da6:	33 c0                	xor    eax,eax
  950da8:	33 c9                	xor    ecx,ecx
  950daa:	39 5e 28             	cmp    DWORD PTR [esi+0x28],ebx
  950dad:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  950db0:	8b 6f 50             	mov    ebp,DWORD PTR [edi+0x50]
  950db3:	76 68                	jbe    0x950e1d
  950db5:	33 c0                	xor    eax,eax
  950db7:	8d 14 ad 00 00 00 00 	lea    edx,[ebp*4+0x0]
  950dbe:	c1 e5 06             	shl    ebp,0x6
  950dc1:	89 6c 24 18          	mov    DWORD PTR [esp+0x18],ebp
  950dc5:	8b 5f 60             	mov    ebx,DWORD PTR [edi+0x60]
  950dc8:	03 5c 24 18          	add    ebx,DWORD PTR [esp+0x18]
  950dcc:	8b 6e 2c             	mov    ebp,DWORD PTR [esi+0x2c]
  950dcf:	89 5c 28 0c          	mov    DWORD PTR [eax+ebp*1+0xc],ebx
  950dd3:	8b 5f 54             	mov    ebx,DWORD PTR [edi+0x54]
  950dd6:	8b 1c 1a             	mov    ebx,DWORD PTR [edx+ebx*1]
  950dd9:	8b 6e 2c             	mov    ebp,DWORD PTR [esi+0x2c]
  950ddc:	83 44 24 18 40       	add    DWORD PTR [esp+0x18],0x40
  950de1:	89 5c 28 04          	mov    DWORD PTR [eax+ebp*1+0x4],ebx
  950de5:	8b 5f 58             	mov    ebx,DWORD PTR [edi+0x58]
  950de8:	8b 1c 1a             	mov    ebx,DWORD PTR [edx+ebx*1]
  950deb:	8b 6e 2c             	mov    ebp,DWORD PTR [esi+0x2c]
  950dee:	89 5c 28 10          	mov    DWORD PTR [eax+ebp*1+0x10],ebx
  950df2:	8b 5f 64             	mov    ebx,DWORD PTR [edi+0x64]
  950df5:	d9 04 cb             	fld    DWORD PTR [ebx+ecx*8]
  950df8:	8b 6e 2c             	mov    ebp,DWORD PTR [esi+0x2c]
  950dfb:	d9 5c 28 18          	fstp   DWORD PTR [eax+ebp*1+0x18]
  950dff:	8b 5f 64             	mov    ebx,DWORD PTR [edi+0x64]
  950e02:	d9 44 cb 04          	fld    DWORD PTR [ebx+ecx*8+0x4]
  950e06:	8b 6e 2c             	mov    ebp,DWORD PTR [esi+0x2c]
  950e09:	d9 5c 28 1c          	fstp   DWORD PTR [eax+ebp*1+0x1c]
  950e0d:	83 c1 01             	add    ecx,0x1
  950e10:	83 c2 04             	add    edx,0x4
  950e13:	83 c0 20             	add    eax,0x20
  950e16:	3b 4e 28             	cmp    ecx,DWORD PTR [esi+0x28]
  950e19:	72 aa                	jb     0x950dc5
  950e1b:	33 db                	xor    ebx,ebx
  950e1d:	8b 47 68             	mov    eax,DWORD PTR [edi+0x68]
  950e20:	3b c3                	cmp    eax,ebx
  950e22:	0f 86 8d 00 00 00    	jbe    0x950eb5
  950e28:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  950e2c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  950e30:	8b 47 6c             	mov    eax,DWORD PTR [edi+0x6c]
  950e33:	8b 0c 18             	mov    ecx,DWORD PTR [eax+ebx*1]
  950e36:	8b 57 44             	mov    edx,DWORD PTR [edi+0x44]
  950e39:	03 c3                	add    eax,ebx
  950e3b:	3b ca                	cmp    ecx,edx
  950e3d:	73 0e                	jae    0x950e4d
  950e3f:	2b 4f 40             	sub    ecx,DWORD PTR [edi+0x40]
  950e42:	8b 56 0c             	mov    edx,DWORD PTR [esi+0xc]
  950e45:	8d 0c 49             	lea    ecx,[ecx+ecx*2]
  950e48:	8d 0c ca             	lea    ecx,[edx+ecx*8]
  950e4b:	eb 49                	jmp    0x950e96
  950e4d:	8b 5f 48             	mov    ebx,DWORD PTR [edi+0x48]
  950e50:	3b cb                	cmp    ecx,ebx
  950e52:	73 0a                	jae    0x950e5e
  950e54:	2b ca                	sub    ecx,edx
  950e56:	c1 e1 05             	shl    ecx,0x5
  950e59:	03 4e 14             	add    ecx,DWORD PTR [esi+0x14]
  950e5c:	eb 38                	jmp    0x950e96
  950e5e:	8b 6f 4c             	mov    ebp,DWORD PTR [edi+0x4c]
  950e61:	3b cd                	cmp    ecx,ebp
  950e63:	73 11                	jae    0x950e76
  950e65:	83 c0 04             	add    eax,0x4
  950e68:	2b cb                	sub    ecx,ebx
  950e6a:	50                   	push   eax
  950e6b:	8d 04 49             	lea    eax,[ecx+ecx*2]
  950e6e:	8b 4e 1c             	mov    ecx,DWORD PTR [esi+0x1c]
  950e71:	8d 0c c1             	lea    ecx,[ecx+eax*8]
  950e74:	eb 24                	jmp    0x950e9a
  950e76:	8b 57 50             	mov    edx,DWORD PTR [edi+0x50]
  950e79:	3b ca                	cmp    ecx,edx
  950e7b:	73 11                	jae    0x950e8e
  950e7d:	83 c0 04             	add    eax,0x4
  950e80:	2b cd                	sub    ecx,ebp
  950e82:	50                   	push   eax
  950e83:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  950e86:	8d 14 49             	lea    edx,[ecx+ecx*2]
  950e89:	8d 0c d0             	lea    ecx,[eax+edx*8]
  950e8c:	eb 0c                	jmp    0x950e9a
  950e8e:	2b ca                	sub    ecx,edx
  950e90:	c1 e1 05             	shl    ecx,0x5
  950e93:	03 4e 2c             	add    ecx,DWORD PTR [esi+0x2c]
  950e96:	83 c0 04             	add    eax,0x4
  950e99:	50                   	push   eax
  950e9a:	e8 31 d6 08 00       	call   0x9de4d0
  950e9f:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
  950ea3:	83 c3 1c             	add    ebx,0x1c
  950ea6:	83 6c 24 14 01       	sub    DWORD PTR [esp+0x14],0x1
  950eab:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  950eaf:	0f 85 7b ff ff ff    	jne    0x950e30
  950eb5:	5f                   	pop    edi
  950eb6:	5e                   	pop    esi
  950eb7:	5d                   	pop    ebp
  950eb8:	5b                   	pop    ebx
  950eb9:	c2 08 00             	ret    0x8
