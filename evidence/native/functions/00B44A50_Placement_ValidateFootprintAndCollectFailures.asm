# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b44a50 <.text+0x743a50>:
  b44a50:	55                   	push   ebp
  b44a51:	8b ec                	mov    ebp,esp
  b44a53:	83 e4 f0             	and    esp,0xfffffff0
  b44a56:	83 ec 54             	sub    esp,0x54
  b44a59:	53                   	push   ebx
  b44a5a:	56                   	push   esi
  b44a5b:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  b44a5e:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
  b44a65:	57                   	push   edi
  b44a66:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  b44a69:	b3 01                	mov    bl,0x1
  b44a6b:	75 3f                	jne    0xb44aac
  b44a6d:	57                   	push   edi
  b44a6e:	56                   	push   esi
  b44a6f:	e8 0c 8a ff ff       	call   0xb3d480
  b44a74:	83 c4 08             	add    esp,0x8
  b44a77:	84 c0                	test   al,al
  b44a79:	75 31                	jne    0xb44aac
  b44a7b:	38 05 c1 db 1e 01    	cmp    BYTE PTR ds:0x11edbc1,al
  b44a81:	74 1f                	je     0xb44aa2
  b44a83:	d9 05 20 d7 06 01    	fld    DWORD PTR ds:0x106d720
  b44a89:	51                   	push   ecx
  b44a8a:	d9 1c 24             	fstp   DWORD PTR [esp]
  b44a8d:	68 00 66 ff ff       	push   0xffff6600
  b44a92:	8d 86 a0 00 00 00    	lea    eax,[esi+0xa0]
  b44a98:	50                   	push   eax
  b44a99:	56                   	push   esi
  b44a9a:	e8 c1 69 ff ff       	call   0xb3b460
  b44a9f:	83 c4 10             	add    esp,0x10
  b44aa2:	85 ff                	test   edi,edi
  b44aa4:	0f 84 e9 01 00 00    	je     0xb44c93
  b44aaa:	32 db                	xor    bl,bl
  b44aac:	57                   	push   edi
  b44aad:	56                   	push   esi
  b44aae:	e8 cd f9 ff ff       	call   0xb44480
  b44ab3:	83 c4 08             	add    esp,0x8
  b44ab6:	84 c0                	test   al,al
  b44ab8:	75 31                	jne    0xb44aeb
  b44aba:	38 05 c1 db 1e 01    	cmp    BYTE PTR ds:0x11edbc1,al
  b44ac0:	74 1f                	je     0xb44ae1
  b44ac2:	d9 05 14 d7 06 01    	fld    DWORD PTR ds:0x106d714
  b44ac8:	51                   	push   ecx
  b44ac9:	d9 1c 24             	fstp   DWORD PTR [esp]
  b44acc:	68 00 00 ff ff       	push   0xffff0000
  b44ad1:	8d 8e a0 00 00 00    	lea    ecx,[esi+0xa0]
  b44ad7:	51                   	push   ecx
  b44ad8:	56                   	push   esi
  b44ad9:	e8 82 69 ff ff       	call   0xb3b460
  b44ade:	83 c4 10             	add    esp,0x10
  b44ae1:	85 ff                	test   edi,edi
  b44ae3:	0f 84 aa 01 00 00    	je     0xb44c93
  b44ae9:	32 db                	xor    bl,bl
  b44aeb:	83 be 98 00 00 00 00 	cmp    DWORD PTR [esi+0x98],0x0
  b44af2:	0f 85 d0 01 00 00    	jne    0xb44cc8
  b44af8:	57                   	push   edi
  b44af9:	56                   	push   esi
  b44afa:	e8 b1 7a ff ff       	call   0xb3c5b0
  b44aff:	83 c4 08             	add    esp,0x8
  b44b02:	84 c0                	test   al,al
  b44b04:	75 31                	jne    0xb44b37
  b44b06:	38 05 c1 db 1e 01    	cmp    BYTE PTR ds:0x11edbc1,al
  b44b0c:	74 1f                	je     0xb44b2d
  b44b0e:	d9 05 24 d7 06 01    	fld    DWORD PTR ds:0x106d724
  b44b14:	51                   	push   ecx
  b44b15:	d9 1c 24             	fstp   DWORD PTR [esp]
  b44b18:	68 00 66 ff ff       	push   0xffff6600
  b44b1d:	8d 96 a0 00 00 00    	lea    edx,[esi+0xa0]
  b44b23:	52                   	push   edx
  b44b24:	56                   	push   esi
  b44b25:	e8 36 69 ff ff       	call   0xb3b460
  b44b2a:	83 c4 10             	add    esp,0x10
  b44b2d:	85 ff                	test   edi,edi
  b44b2f:	0f 84 5e 01 00 00    	je     0xb44c93
  b44b35:	32 db                	xor    bl,bl
  b44b37:	57                   	push   edi
  b44b38:	56                   	push   esi
  b44b39:	e8 02 8d ff ff       	call   0xb3d840
  b44b3e:	83 c4 08             	add    esp,0x8
  b44b41:	84 c0                	test   al,al
  b44b43:	75 60                	jne    0xb44ba5
  b44b45:	38 05 c1 db 1e 01    	cmp    BYTE PTR ds:0x11edbc1,al
  b44b4b:	74 1f                	je     0xb44b6c
  b44b4d:	d9 05 1c d7 06 01    	fld    DWORD PTR ds:0x106d71c
  b44b53:	51                   	push   ecx
  b44b54:	d9 1c 24             	fstp   DWORD PTR [esp]
  b44b57:	68 00 00 ff ff       	push   0xffff0000
  b44b5c:	8d 86 a0 00 00 00    	lea    eax,[esi+0xa0]
  b44b62:	50                   	push   eax
  b44b63:	56                   	push   esi
  b44b64:	e8 f7 68 ff ff       	call   0xb3b460
  b44b69:	83 c4 10             	add    esp,0x10
  b44b6c:	85 ff                	test   edi,edi
  b44b6e:	0f 84 1f 01 00 00    	je     0xb44c93
  b44b74:	8b 56 04             	mov    edx,DWORD PTR [esi+0x4]
  b44b77:	6a 00                	push   0x0
  b44b79:	6a 00                	push   0x0
  b44b7b:	8d 4e 08             	lea    ecx,[esi+0x8]
  b44b7e:	51                   	push   ecx
  b44b7f:	52                   	push   edx
  b44b80:	68 e8 00 00 00       	push   0xe8
  b44b85:	8d 4c 24 34          	lea    ecx,[esp+0x34]
  b44b89:	e8 92 1b f9 ff       	call   0xad6720
  b44b8e:	8d 44 24 20          	lea    eax,[esp+0x20]
  b44b92:	50                   	push   eax
  b44b93:	8b cf                	mov    ecx,edi
  b44b95:	e8 d6 39 f9 ff       	call   0xad8570
  b44b9a:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  b44b9e:	32 db                	xor    bl,bl
  b44ba0:	e8 2b 25 f9 ff       	call   0xad70d0
  b44ba5:	57                   	push   edi
  b44ba6:	56                   	push   esi
  b44ba7:	e8 14 ad ff ff       	call   0xb3f8c0
  b44bac:	83 c4 08             	add    esp,0x8
  b44baf:	84 c0                	test   al,al
  b44bb1:	75 31                	jne    0xb44be4
  b44bb3:	38 05 c1 db 1e 01    	cmp    BYTE PTR ds:0x11edbc1,al
  b44bb9:	74 1f                	je     0xb44bda
  b44bbb:	d9 05 18 d7 06 01    	fld    DWORD PTR ds:0x106d718
  b44bc1:	51                   	push   ecx
  b44bc2:	d9 1c 24             	fstp   DWORD PTR [esp]
  b44bc5:	68 66 00 cc ff       	push   0xffcc0066
  b44bca:	8d 8e a0 00 00 00    	lea    ecx,[esi+0xa0]
  b44bd0:	51                   	push   ecx
  b44bd1:	56                   	push   esi
  b44bd2:	e8 89 68 ff ff       	call   0xb3b460
  b44bd7:	83 c4 10             	add    esp,0x10
  b44bda:	85 ff                	test   edi,edi
  b44bdc:	0f 84 b1 00 00 00    	je     0xb44c93
  b44be2:	32 db                	xor    bl,bl
  b44be4:	57                   	push   edi
  b44be5:	56                   	push   esi
  b44be6:	e8 65 78 ff ff       	call   0xb3c450
  b44beb:	83 c4 08             	add    esp,0x8
  b44bee:	84 c0                	test   al,al
  b44bf0:	75 0a                	jne    0xb44bfc
  b44bf2:	85 ff                	test   edi,edi
  b44bf4:	0f 84 99 00 00 00    	je     0xb44c93
  b44bfa:	32 db                	xor    bl,bl
  b44bfc:	8b 56 1c             	mov    edx,DWORD PTR [esi+0x1c]
  b44bff:	8b 82 98 00 00 00    	mov    eax,DWORD PTR [edx+0x98]
  b44c05:	c1 e8 0a             	shr    eax,0xa
  b44c08:	a8 01                	test   al,0x1
  b44c0a:	0f 85 8c 00 00 00    	jne    0xb44c9c
  b44c10:	57                   	push   edi
  b44c11:	56                   	push   esi
  b44c12:	e8 09 79 ff ff       	call   0xb3c520
  b44c17:	83 c4 08             	add    esp,0x8
  b44c1a:	84 c0                	test   al,al
  b44c1c:	75 7e                	jne    0xb44c9c
  b44c1e:	f3 0f 10 46 08       	movss  xmm0,DWORD PTR [esi+0x8]
  b44c23:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  b44c26:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  b44c29:	8d 54 24 14          	lea    edx,[esp+0x14]
  b44c2d:	8d 5e 08             	lea    ebx,[esi+0x8]
  b44c30:	52                   	push   edx
  b44c31:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  b44c37:	f3 0f 10 46 0c       	movss  xmm0,DWORD PTR [esi+0xc]
  b44c3c:	83 e9 01             	sub    ecx,0x1
  b44c3f:	50                   	push   eax
  b44c40:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  b44c46:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  b44c4a:	e8 f1 05 fc ff       	call   0xb05240
  b44c4f:	83 c4 08             	add    esp,0x8
  b44c52:	85 ff                	test   edi,edi
  b44c54:	74 3d                	je     0xb44c93
  b44c56:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  b44c59:	33 d2                	xor    edx,edx
  b44c5b:	84 c0                	test   al,al
  b44c5d:	6a 00                	push   0x0
  b44c5f:	0f 95 c2             	setne  dl
  b44c62:	6a 00                	push   0x0
  b44c64:	53                   	push   ebx
  b44c65:	51                   	push   ecx
  b44c66:	8d 4c 24 30          	lea    ecx,[esp+0x30]
  b44c6a:	83 c2 35             	add    edx,0x35
  b44c6d:	52                   	push   edx
  b44c6e:	e8 ad 1a f9 ff       	call   0xad6720
  b44c73:	8d 44 24 20          	lea    eax,[esp+0x20]
  b44c77:	50                   	push   eax
  b44c78:	8b cf                	mov    ecx,edi
  b44c7a:	e8 f1 38 f9 ff       	call   0xad8570
  b44c7f:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  b44c83:	32 db                	xor    bl,bl
  b44c85:	e8 46 24 f9 ff       	call   0xad70d0
  b44c8a:	8a c3                	mov    al,bl
  b44c8c:	5f                   	pop    edi
  b44c8d:	5e                   	pop    esi
  b44c8e:	5b                   	pop    ebx
  b44c8f:	8b e5                	mov    esp,ebp
  b44c91:	5d                   	pop    ebp
  b44c92:	c3                   	ret
  b44c93:	32 c0                	xor    al,al
  b44c95:	5f                   	pop    edi
  b44c96:	5e                   	pop    esi
  b44c97:	5b                   	pop    ebx
  b44c98:	8b e5                	mov    esp,ebp
  b44c9a:	5d                   	pop    ebp
  b44c9b:	c3                   	ret
  b44c9c:	84 db                	test   bl,bl
  b44c9e:	74 28                	je     0xb44cc8
  b44ca0:	80 3d c1 db 1e 01 00 	cmp    BYTE PTR ds:0x11edbc1,0x0
  b44ca7:	74 1f                	je     0xb44cc8
  b44ca9:	d9 05 08 d7 06 01    	fld    DWORD PTR ds:0x106d708
  b44caf:	51                   	push   ecx
  b44cb0:	d9 1c 24             	fstp   DWORD PTR [esp]
  b44cb3:	68 00 ff 00 ff       	push   0xff00ff00
  b44cb8:	8d 8e a0 00 00 00    	lea    ecx,[esi+0xa0]
  b44cbe:	51                   	push   ecx
  b44cbf:	56                   	push   esi
  b44cc0:	e8 9b 67 ff ff       	call   0xb3b460
  b44cc5:	83 c4 10             	add    esp,0x10
  b44cc8:	5f                   	pop    edi
  b44cc9:	5e                   	pop    esi
  b44cca:	8a c3                	mov    al,bl
  b44ccc:	5b                   	pop    ebx
  b44ccd:	8b e5                	mov    esp,ebp
  b44ccf:	5d                   	pop    ebp
  b44cd0:	c3                   	ret
