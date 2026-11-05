# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007b9be0 (SptMaps_ExportBorrowedStringViews)
Complete body envelope: 0x007b9be0..0x007ba112 (exclusive end)
Body ranges: [[007b9be0, 007b9e78] [007b9e80, 007ba111]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007b9be0 <.text+0x3b8be0>:
  7b9be0:	53                   	push   ebx
  7b9be1:	55                   	push   ebp
  7b9be2:	56                   	push   esi
  7b9be3:	57                   	push   edi
  7b9be4:	8b f9                	mov    edi,ecx
  7b9be6:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9bec:	85 c9                	test   ecx,ecx
  7b9bee:	74 0d                	je     0x7b9bfd
  7b9bf0:	8b 01                	mov    eax,DWORD PTR [ecx]
  7b9bf2:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7b9bf5:	6a 10                	push   0x10
  7b9bf7:	6a 20                	push   0x20
  7b9bf9:	ff d2                	call   edx
  7b9bfb:	eb 0f                	jmp    0x7b9c0c
  7b9bfd:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b9c03:	6a 00                	push   0x0
  7b9c05:	6a 20                	push   0x20
  7b9c07:	e8 14 d3 d2 ff       	call   0x4e6f20
  7b9c0c:	85 c0                	test   eax,eax
  7b9c0e:	74 14                	je     0x7b9c24
  7b9c10:	8d 48 04             	lea    ecx,[eax+0x4]
  7b9c13:	c7 00 07 00 00 00    	mov    DWORD PTR [eax],0x7
  7b9c19:	83 05 28 96 1d 01 20 	add    DWORD PTR ds:0x11d9628,0x20
  7b9c20:	8b c1                	mov    eax,ecx
  7b9c22:	eb 02                	jmp    0x7b9c26
  7b9c24:	33 c0                	xor    eax,eax
  7b9c26:	8b 74 24 14          	mov    esi,DWORD PTR [esp+0x14]
  7b9c2a:	89 06                	mov    DWORD PTR [esi],eax
  7b9c2c:	8b 8f dc 00 00 00    	mov    ecx,DWORD PTR [edi+0xdc]
  7b9c32:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b9c34:	89 10                	mov    DWORD PTR [eax],edx
  7b9c36:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9c3c:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
  7b9c3f:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7b9c41:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  7b9c44:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9c4a:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  7b9c4d:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7b9c4f:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  7b9c52:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9c58:	8b 50 30             	mov    edx,DWORD PTR [eax+0x30]
  7b9c5b:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7b9c5d:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  7b9c60:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9c66:	8b 50 40             	mov    edx,DWORD PTR [eax+0x40]
  7b9c69:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7b9c6b:	89 51 10             	mov    DWORD PTR [ecx+0x10],edx
  7b9c6e:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9c74:	8b 50 50             	mov    edx,DWORD PTR [eax+0x50]
  7b9c77:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7b9c79:	89 51 14             	mov    DWORD PTR [ecx+0x14],edx
  7b9c7c:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9c82:	8b 50 60             	mov    edx,DWORD PTR [eax+0x60]
  7b9c85:	8b 0e                	mov    ecx,DWORD PTR [esi]
  7b9c87:	89 51 18             	mov    DWORD PTR [ecx+0x18],edx
  7b9c8a:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9c90:	8b 48 74             	mov    ecx,DWORD PTR [eax+0x74]
  7b9c93:	2b 48 70             	sub    ecx,DWORD PTR [eax+0x70]
  7b9c96:	83 c0 70             	add    eax,0x70
  7b9c99:	b8 93 24 49 92       	mov    eax,0x92492493
  7b9c9e:	f7 e9                	imul   ecx
  7b9ca0:	03 d1                	add    edx,ecx
  7b9ca2:	c1 fa 06             	sar    edx,0x6
  7b9ca5:	8b da                	mov    ebx,edx
  7b9ca7:	c1 eb 1f             	shr    ebx,0x1f
  7b9caa:	03 da                	add    ebx,edx
  7b9cac:	89 5e 04             	mov    DWORD PTR [esi+0x4],ebx
  7b9caf:	0f 84 3e 01 00 00    	je     0x7b9df3
  7b9cb5:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9cbb:	85 c9                	test   ecx,ecx
  7b9cbd:	8d 2c 9d 04 00 00 00 	lea    ebp,[ebx*4+0x4]
  7b9cc4:	74 0c                	je     0x7b9cd2
  7b9cc6:	8b 01                	mov    eax,DWORD PTR [ecx]
  7b9cc8:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7b9ccb:	6a 10                	push   0x10
  7b9ccd:	55                   	push   ebp
  7b9cce:	ff d2                	call   edx
  7b9cd0:	eb 0e                	jmp    0x7b9ce0
  7b9cd2:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b9cd8:	6a 00                	push   0x0
  7b9cda:	55                   	push   ebp
  7b9cdb:	e8 40 d2 d2 ff       	call   0x4e6f20
  7b9ce0:	85 c0                	test   eax,eax
  7b9ce2:	74 0f                	je     0x7b9cf3
  7b9ce4:	8d 48 04             	lea    ecx,[eax+0x4]
  7b9ce7:	89 18                	mov    DWORD PTR [eax],ebx
  7b9ce9:	01 2d 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,ebp
  7b9cef:	8b c1                	mov    eax,ecx
  7b9cf1:	eb 02                	jmp    0x7b9cf5
  7b9cf3:	33 c0                	xor    eax,eax
  7b9cf5:	33 db                	xor    ebx,ebx
  7b9cf7:	39 5e 04             	cmp    DWORD PTR [esi+0x4],ebx
  7b9cfa:	89 46 08             	mov    DWORD PTR [esi+0x8],eax
  7b9cfd:	0f 8e f0 00 00 00    	jle    0x7b9df3
  7b9d03:	8d 6b 30             	lea    ebp,[ebx+0x30]
  7b9d06:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9d0c:	85 c9                	test   ecx,ecx
  7b9d0e:	74 0d                	je     0x7b9d1d
  7b9d10:	8b 01                	mov    eax,DWORD PTR [ecx]
  7b9d12:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7b9d15:	6a 10                	push   0x10
  7b9d17:	6a 20                	push   0x20
  7b9d19:	ff d2                	call   edx
  7b9d1b:	eb 0f                	jmp    0x7b9d2c
  7b9d1d:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b9d23:	6a 00                	push   0x0
  7b9d25:	6a 20                	push   0x20
  7b9d27:	e8 f4 d1 d2 ff       	call   0x4e6f20
  7b9d2c:	85 c0                	test   eax,eax
  7b9d2e:	74 14                	je     0x7b9d44
  7b9d30:	8d 48 04             	lea    ecx,[eax+0x4]
  7b9d33:	c7 00 07 00 00 00    	mov    DWORD PTR [eax],0x7
  7b9d39:	83 05 28 96 1d 01 20 	add    DWORD PTR ds:0x11d9628,0x20
  7b9d40:	8b c1                	mov    eax,ecx
  7b9d42:	eb 02                	jmp    0x7b9d46
  7b9d44:	33 c0                	xor    eax,eax
  7b9d46:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7b9d49:	89 04 99             	mov    DWORD PTR [ecx+ebx*4],eax
  7b9d4c:	8b 97 dc 00 00 00    	mov    edx,DWORD PTR [edi+0xdc]
  7b9d52:	8b 42 70             	mov    eax,DWORD PTR [edx+0x70]
  7b9d55:	8b 44 28 d0          	mov    eax,DWORD PTR [eax+ebp*1-0x30]
  7b9d59:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7b9d5c:	8b 14 99             	mov    edx,DWORD PTR [ecx+ebx*4]
  7b9d5f:	89 02                	mov    DWORD PTR [edx],eax
  7b9d61:	8b 8f dc 00 00 00    	mov    ecx,DWORD PTR [edi+0xdc]
  7b9d67:	8b 51 70             	mov    edx,DWORD PTR [ecx+0x70]
  7b9d6a:	8b 54 2a e0          	mov    edx,DWORD PTR [edx+ebp*1-0x20]
  7b9d6e:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  7b9d71:	8b 0c 98             	mov    ecx,DWORD PTR [eax+ebx*4]
  7b9d74:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  7b9d77:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9d7d:	8b 48 70             	mov    ecx,DWORD PTR [eax+0x70]
  7b9d80:	8b 4c 29 f0          	mov    ecx,DWORD PTR [ecx+ebp*1-0x10]
  7b9d84:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7b9d87:	8b 04 9a             	mov    eax,DWORD PTR [edx+ebx*4]
  7b9d8a:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  7b9d8d:	8b 97 dc 00 00 00    	mov    edx,DWORD PTR [edi+0xdc]
  7b9d93:	8b 42 70             	mov    eax,DWORD PTR [edx+0x70]
  7b9d96:	8b 04 28             	mov    eax,DWORD PTR [eax+ebp*1]
  7b9d99:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7b9d9c:	8b 14 99             	mov    edx,DWORD PTR [ecx+ebx*4]
  7b9d9f:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
  7b9da2:	8b 8f dc 00 00 00    	mov    ecx,DWORD PTR [edi+0xdc]
  7b9da8:	8b 51 70             	mov    edx,DWORD PTR [ecx+0x70]
  7b9dab:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  7b9dae:	8b 0c 98             	mov    ecx,DWORD PTR [eax+ebx*4]
  7b9db1:	8b 54 2a 10          	mov    edx,DWORD PTR [edx+ebp*1+0x10]
  7b9db5:	89 51 10             	mov    DWORD PTR [ecx+0x10],edx
  7b9db8:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9dbe:	8b 48 70             	mov    ecx,DWORD PTR [eax+0x70]
  7b9dc1:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  7b9dc4:	8b 04 9a             	mov    eax,DWORD PTR [edx+ebx*4]
  7b9dc7:	8b 4c 29 20          	mov    ecx,DWORD PTR [ecx+ebp*1+0x20]
  7b9dcb:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  7b9dce:	8b 97 dc 00 00 00    	mov    edx,DWORD PTR [edi+0xdc]
  7b9dd4:	8b 42 70             	mov    eax,DWORD PTR [edx+0x70]
  7b9dd7:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  7b9dda:	8b 14 99             	mov    edx,DWORD PTR [ecx+ebx*4]
  7b9ddd:	8b 44 28 30          	mov    eax,DWORD PTR [eax+ebp*1+0x30]
  7b9de1:	83 c3 01             	add    ebx,0x1
  7b9de4:	89 42 18             	mov    DWORD PTR [edx+0x18],eax
  7b9de7:	83 c5 70             	add    ebp,0x70
  7b9dea:	3b 5e 04             	cmp    ebx,DWORD PTR [esi+0x4]
  7b9ded:	0f 8c 13 ff ff ff    	jl     0x7b9d06
  7b9df3:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9df9:	8b 88 84 00 00 00    	mov    ecx,DWORD PTR [eax+0x84]
  7b9dff:	2b 88 80 00 00 00    	sub    ecx,DWORD PTR [eax+0x80]
  7b9e05:	05 80 00 00 00       	add    eax,0x80
  7b9e0a:	b8 93 24 49 92       	mov    eax,0x92492493
  7b9e0f:	f7 e9                	imul   ecx
  7b9e11:	03 d1                	add    edx,ecx
  7b9e13:	c1 fa 06             	sar    edx,0x6
  7b9e16:	8b da                	mov    ebx,edx
  7b9e18:	c1 eb 1f             	shr    ebx,0x1f
  7b9e1b:	03 da                	add    ebx,edx
  7b9e1d:	89 5e 0c             	mov    DWORD PTR [esi+0xc],ebx
  7b9e20:	0f 84 5c 01 00 00    	je     0x7b9f82
  7b9e26:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9e2c:	85 c9                	test   ecx,ecx
  7b9e2e:	8d 2c 9d 04 00 00 00 	lea    ebp,[ebx*4+0x4]
  7b9e35:	74 0c                	je     0x7b9e43
  7b9e37:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b9e39:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  7b9e3c:	6a 10                	push   0x10
  7b9e3e:	55                   	push   ebp
  7b9e3f:	ff d0                	call   eax
  7b9e41:	eb 0e                	jmp    0x7b9e51
  7b9e43:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b9e49:	6a 00                	push   0x0
  7b9e4b:	55                   	push   ebp
  7b9e4c:	e8 cf d0 d2 ff       	call   0x4e6f20
  7b9e51:	85 c0                	test   eax,eax
  7b9e53:	74 0f                	je     0x7b9e64
  7b9e55:	8d 48 04             	lea    ecx,[eax+0x4]
  7b9e58:	89 18                	mov    DWORD PTR [eax],ebx
  7b9e5a:	01 2d 28 96 1d 01    	add    DWORD PTR ds:0x11d9628,ebp
  7b9e60:	8b c1                	mov    eax,ecx
  7b9e62:	eb 02                	jmp    0x7b9e66
  7b9e64:	33 c0                	xor    eax,eax
  7b9e66:	33 db                	xor    ebx,ebx
  7b9e68:	39 5e 0c             	cmp    DWORD PTR [esi+0xc],ebx
  7b9e6b:	89 46 10             	mov    DWORD PTR [esi+0x10],eax
  7b9e6e:	0f 8e 0e 01 00 00    	jle    0x7b9f82
  7b9e74:	8d 6b 30             	lea    ebp,[ebx+0x30]
  7b9e77:	eb 07                	jmp    0x7b9e80


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007b9e80 <.text+0x3b8e80>:
  7b9e80:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9e86:	85 c9                	test   ecx,ecx
  7b9e88:	74 0d                	je     0x7b9e97
  7b9e8a:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b9e8c:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  7b9e8f:	6a 10                	push   0x10
  7b9e91:	6a 20                	push   0x20
  7b9e93:	ff d0                	call   eax
  7b9e95:	eb 0f                	jmp    0x7b9ea6
  7b9e97:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b9e9d:	6a 00                	push   0x0
  7b9e9f:	6a 20                	push   0x20
  7b9ea1:	e8 7a d0 d2 ff       	call   0x4e6f20
  7b9ea6:	85 c0                	test   eax,eax
  7b9ea8:	74 14                	je     0x7b9ebe
  7b9eaa:	8d 48 04             	lea    ecx,[eax+0x4]
  7b9ead:	c7 00 07 00 00 00    	mov    DWORD PTR [eax],0x7
  7b9eb3:	83 05 28 96 1d 01 20 	add    DWORD PTR ds:0x11d9628,0x20
  7b9eba:	8b c1                	mov    eax,ecx
  7b9ebc:	eb 02                	jmp    0x7b9ec0
  7b9ebe:	33 c0                	xor    eax,eax
  7b9ec0:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7b9ec3:	89 04 99             	mov    DWORD PTR [ecx+ebx*4],eax
  7b9ec6:	8b 97 dc 00 00 00    	mov    edx,DWORD PTR [edi+0xdc]
  7b9ecc:	8b 82 80 00 00 00    	mov    eax,DWORD PTR [edx+0x80]
  7b9ed2:	8b 44 28 d0          	mov    eax,DWORD PTR [eax+ebp*1-0x30]
  7b9ed6:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7b9ed9:	8b 14 99             	mov    edx,DWORD PTR [ecx+ebx*4]
  7b9edc:	89 02                	mov    DWORD PTR [edx],eax
  7b9ede:	8b 8f dc 00 00 00    	mov    ecx,DWORD PTR [edi+0xdc]
  7b9ee4:	8b 91 80 00 00 00    	mov    edx,DWORD PTR [ecx+0x80]
  7b9eea:	8b 54 2a e0          	mov    edx,DWORD PTR [edx+ebp*1-0x20]
  7b9eee:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7b9ef1:	8b 0c 98             	mov    ecx,DWORD PTR [eax+ebx*4]
  7b9ef4:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  7b9ef7:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9efd:	8b 88 80 00 00 00    	mov    ecx,DWORD PTR [eax+0x80]
  7b9f03:	8b 4c 29 f0          	mov    ecx,DWORD PTR [ecx+ebp*1-0x10]
  7b9f07:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  7b9f0a:	8b 04 9a             	mov    eax,DWORD PTR [edx+ebx*4]
  7b9f0d:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  7b9f10:	8b 97 dc 00 00 00    	mov    edx,DWORD PTR [edi+0xdc]
  7b9f16:	8b 82 80 00 00 00    	mov    eax,DWORD PTR [edx+0x80]
  7b9f1c:	8b 04 28             	mov    eax,DWORD PTR [eax+ebp*1]
  7b9f1f:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7b9f22:	8b 14 99             	mov    edx,DWORD PTR [ecx+ebx*4]
  7b9f25:	89 42 0c             	mov    DWORD PTR [edx+0xc],eax
  7b9f28:	8b 8f dc 00 00 00    	mov    ecx,DWORD PTR [edi+0xdc]
  7b9f2e:	8b 91 80 00 00 00    	mov    edx,DWORD PTR [ecx+0x80]
  7b9f34:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  7b9f37:	8b 0c 98             	mov    ecx,DWORD PTR [eax+ebx*4]
  7b9f3a:	8b 54 2a 10          	mov    edx,DWORD PTR [edx+ebp*1+0x10]
  7b9f3e:	89 51 10             	mov    DWORD PTR [ecx+0x10],edx
  7b9f41:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9f47:	8b 88 80 00 00 00    	mov    ecx,DWORD PTR [eax+0x80]
  7b9f4d:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  7b9f50:	8b 04 9a             	mov    eax,DWORD PTR [edx+ebx*4]
  7b9f53:	8b 4c 29 20          	mov    ecx,DWORD PTR [ecx+ebp*1+0x20]
  7b9f57:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  7b9f5a:	8b 97 dc 00 00 00    	mov    edx,DWORD PTR [edi+0xdc]
  7b9f60:	8b 82 80 00 00 00    	mov    eax,DWORD PTR [edx+0x80]
  7b9f66:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  7b9f69:	8b 14 99             	mov    edx,DWORD PTR [ecx+ebx*4]
  7b9f6c:	8b 44 28 30          	mov    eax,DWORD PTR [eax+ebp*1+0x30]
  7b9f70:	83 c3 01             	add    ebx,0x1
  7b9f73:	89 42 18             	mov    DWORD PTR [edx+0x18],eax
  7b9f76:	83 c5 70             	add    ebp,0x70
  7b9f79:	3b 5e 0c             	cmp    ebx,DWORD PTR [esi+0xc]
  7b9f7c:	0f 8c fe fe ff ff    	jl     0x7b9e80
  7b9f82:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7b9f88:	85 c9                	test   ecx,ecx
  7b9f8a:	74 0d                	je     0x7b9f99
  7b9f8c:	8b 11                	mov    edx,DWORD PTR [ecx]
  7b9f8e:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  7b9f91:	6a 10                	push   0x10
  7b9f93:	6a 20                	push   0x20
  7b9f95:	ff d0                	call   eax
  7b9f97:	eb 0f                	jmp    0x7b9fa8
  7b9f99:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7b9f9f:	6a 00                	push   0x0
  7b9fa1:	6a 20                	push   0x20
  7b9fa3:	e8 78 cf d2 ff       	call   0x4e6f20
  7b9fa8:	85 c0                	test   eax,eax
  7b9faa:	74 14                	je     0x7b9fc0
  7b9fac:	8d 48 04             	lea    ecx,[eax+0x4]
  7b9faf:	c7 00 07 00 00 00    	mov    DWORD PTR [eax],0x7
  7b9fb5:	83 05 28 96 1d 01 20 	add    DWORD PTR ds:0x11d9628,0x20
  7b9fbc:	8b c1                	mov    eax,ecx
  7b9fbe:	eb 02                	jmp    0x7b9fc2
  7b9fc0:	33 c0                	xor    eax,eax
  7b9fc2:	89 46 14             	mov    DWORD PTR [esi+0x14],eax
  7b9fc5:	8b 8f dc 00 00 00    	mov    ecx,DWORD PTR [edi+0xdc]
  7b9fcb:	8b 91 90 00 00 00    	mov    edx,DWORD PTR [ecx+0x90]
  7b9fd1:	89 10                	mov    DWORD PTR [eax],edx
  7b9fd3:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9fd9:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [eax+0xa0]
  7b9fdf:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7b9fe2:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  7b9fe5:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9feb:	8b 90 b0 00 00 00    	mov    edx,DWORD PTR [eax+0xb0]
  7b9ff1:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7b9ff4:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  7b9ff7:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7b9ffd:	8b 90 c0 00 00 00    	mov    edx,DWORD PTR [eax+0xc0]
  7ba003:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7ba006:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  7ba009:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba00f:	8b 90 d0 00 00 00    	mov    edx,DWORD PTR [eax+0xd0]
  7ba015:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7ba018:	89 51 10             	mov    DWORD PTR [ecx+0x10],edx
  7ba01b:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba021:	8b 90 e0 00 00 00    	mov    edx,DWORD PTR [eax+0xe0]
  7ba027:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7ba02a:	89 51 14             	mov    DWORD PTR [ecx+0x14],edx
  7ba02d:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba033:	8b 4e 14             	mov    ecx,DWORD PTR [esi+0x14]
  7ba036:	8b 90 f0 00 00 00    	mov    edx,DWORD PTR [eax+0xf0]
  7ba03c:	89 51 18             	mov    DWORD PTR [ecx+0x18],edx
  7ba03f:	8b 0d 24 96 1d 01    	mov    ecx,DWORD PTR ds:0x11d9624
  7ba045:	85 c9                	test   ecx,ecx
  7ba047:	74 0d                	je     0x7ba056
  7ba049:	8b 01                	mov    eax,DWORD PTR [ecx]
  7ba04b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  7ba04e:	6a 10                	push   0x10
  7ba050:	6a 20                	push   0x20
  7ba052:	ff d2                	call   edx
  7ba054:	eb 0f                	jmp    0x7ba065
  7ba056:	8b 0d 64 c8 1c 01    	mov    ecx,DWORD PTR ds:0x11cc864
  7ba05c:	6a 00                	push   0x0
  7ba05e:	6a 20                	push   0x20
  7ba060:	e8 bb ce d2 ff       	call   0x4e6f20
  7ba065:	85 c0                	test   eax,eax
  7ba067:	74 14                	je     0x7ba07d
  7ba069:	8d 48 04             	lea    ecx,[eax+0x4]
  7ba06c:	c7 00 07 00 00 00    	mov    DWORD PTR [eax],0x7
  7ba072:	83 05 28 96 1d 01 20 	add    DWORD PTR ds:0x11d9628,0x20
  7ba079:	8b c1                	mov    eax,ecx
  7ba07b:	eb 02                	jmp    0x7ba07f
  7ba07d:	33 c0                	xor    eax,eax
  7ba07f:	89 46 18             	mov    DWORD PTR [esi+0x18],eax
  7ba082:	8b 8f dc 00 00 00    	mov    ecx,DWORD PTR [edi+0xdc]
  7ba088:	8b 91 00 01 00 00    	mov    edx,DWORD PTR [ecx+0x100]
  7ba08e:	89 10                	mov    DWORD PTR [eax],edx
  7ba090:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba096:	8b 90 10 01 00 00    	mov    edx,DWORD PTR [eax+0x110]
  7ba09c:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  7ba09f:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  7ba0a2:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba0a8:	8b 90 20 01 00 00    	mov    edx,DWORD PTR [eax+0x120]
  7ba0ae:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  7ba0b1:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  7ba0b4:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba0ba:	8b 90 30 01 00 00    	mov    edx,DWORD PTR [eax+0x130]
  7ba0c0:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  7ba0c3:	89 51 0c             	mov    DWORD PTR [ecx+0xc],edx
  7ba0c6:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba0cc:	8b 90 40 01 00 00    	mov    edx,DWORD PTR [eax+0x140]
  7ba0d2:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  7ba0d5:	89 51 10             	mov    DWORD PTR [ecx+0x10],edx
  7ba0d8:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba0de:	8b 90 50 01 00 00    	mov    edx,DWORD PTR [eax+0x150]
  7ba0e4:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  7ba0e7:	89 51 14             	mov    DWORD PTR [ecx+0x14],edx
  7ba0ea:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba0f0:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  7ba0f3:	8b 90 60 01 00 00    	mov    edx,DWORD PTR [eax+0x160]
  7ba0f9:	89 51 18             	mov    DWORD PTR [ecx+0x18],edx
  7ba0fc:	8b 87 dc 00 00 00    	mov    eax,DWORD PTR [edi+0xdc]
  7ba102:	8b 88 70 01 00 00    	mov    ecx,DWORD PTR [eax+0x170]
  7ba108:	5f                   	pop    edi
  7ba109:	89 4e 1c             	mov    DWORD PTR [esi+0x1c],ecx
  7ba10c:	5e                   	pop    esi
  7ba10d:	5d                   	pop    ebp
  7ba10e:	5b                   	pop    ebx
  7ba10f:	c2 04 00             	ret    0x4
