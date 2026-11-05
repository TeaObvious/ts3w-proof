# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00865af0 (Audio_HandleManagerEvent)
Full Ghidra function-body envelope: 0x00865af0..0x008660dc (exclusive end)
Ghidra body ranges: [[00865af0, 008660db]]
Original bytes verified against the reference executable; interior body gaps remain in the linear envelope.

Disassembly of section .text:

00865af0 <.text+0x464af0>:
  865af0:	55                                              	push   ebp
  865af1:	8b ec                                           	mov    ebp,esp
  865af3:	83 e4 f0                                        	and    esp,0xfffffff0
  865af6:	83 ec 54                                        	sub    esp,0x54
  865af9:	53                                              	push   ebx
  865afa:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
  865afd:	56                                              	push   esi
  865afe:	57                                              	push   edi
  865aff:	8b 7d 08                                        	mov    edi,DWORD PTR [ebp+0x8]
  865b02:	81 ff 29 4e 8e 03                               	cmp    edi,0x38e4e29
  865b08:	8b f1                                           	mov    esi,ecx
  865b0a:	0f 87 a0 04 00 00                               	ja     0x865fb0
  865b10:	0f 84 60 04 00 00                               	je     0x865f76
  865b16:	81 ff 06 10 ee 01                               	cmp    edi,0x1ee1006
  865b1c:	0f 87 f8 03 00 00                               	ja     0x865f1a
  865b22:	0f 84 12 04 00 00                               	je     0x865f3a
  865b28:	8b c7                                           	mov    eax,edi
  865b2a:	2d c1 0e ff 00                                  	sub    eax,0xff0ec1
  865b2f:	0f 84 a2 01 00 00                               	je     0x865cd7
  865b35:	83 e8 70                                        	sub    eax,0x70
  865b38:	0f 85 8c 05 00 00                               	jne    0x8660ca
  865b3e:	8b 46 fc                                        	mov    eax,DWORD PTR [esi-0x4]
  865b41:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
  865b44:	83 c6 fc                                        	add    esi,0xfffffffc
  865b47:	68 73 53 47 03                                  	push   0x3475373
  865b4c:	8b ce                                           	mov    ecx,esi
  865b4e:	ff d2                                           	call   edx
  865b50:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865b52:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  865b55:	8b fb                                           	mov    edi,ebx
  865b57:	8b 4f 08                                        	mov    ecx,DWORD PTR [edi+0x8]
  865b5a:	51                                              	push   ecx
  865b5b:	68 85 53 47 03                                  	push   0x3475385
  865b60:	8b ce                                           	mov    ecx,esi
  865b62:	ff d2                                           	call   edx
  865b64:	d9 47 10                                        	fld    DWORD PTR [edi+0x10]
  865b67:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865b69:	d9 54 24 10                                     	fst    DWORD PTR [esp+0x10]
  865b6d:	d9 47 18                                        	fld    DWORD PTR [edi+0x18]
  865b70:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  865b73:	d9 5c 24 20                                     	fstp   DWORD PTR [esp+0x20]
  865b77:	51                                              	push   ecx
  865b78:	d9 47 20                                        	fld    DWORD PTR [edi+0x20]
  865b7b:	8b ce                                           	mov    ecx,esi
  865b7d:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  865b81:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  865b84:	68 91 53 47 03                                  	push   0x3475391
  865b89:	ff d2                                           	call   edx
  865b8b:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  865b8f:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865b91:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  865b94:	51                                              	push   ecx
  865b95:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  865b98:	68 95 53 47 03                                  	push   0x3475395
  865b9d:	8b ce                                           	mov    ecx,esi
  865b9f:	ff d2                                           	call   edx
  865ba1:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  865ba5:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865ba7:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  865baa:	51                                              	push   ecx
  865bab:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  865bae:	68 98 53 47 03                                  	push   0x3475398
  865bb3:	8b ce                                           	mov    ecx,esi
  865bb5:	ff d2                                           	call   edx
  865bb7:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  865bbd:	33 db                                           	xor    ebx,ebx
  865bbf:	3b cb                                           	cmp    ecx,ebx
  865bc1:	0f 84 fc 00 00 00                               	je     0x865cc3
  865bc7:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  865bcb:	83 ec 08                                        	sub    esp,0x8
  865bce:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  865bd2:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  865bd6:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  865bd9:	e8 f2 2b 40 00                                  	call   0xc687d0
  865bde:	8b f8                                           	mov    edi,eax
  865be0:	3b fb                                           	cmp    edi,ebx
  865be2:	0f 84 db 00 00 00                               	je     0x865cc3
  865be8:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  865bec:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  865bf0:	8b 9f 98 02 00 00                               	mov    ebx,DWORD PTR [edi+0x298]
  865bf6:	85 db                                           	test   ebx,ebx
  865bf8:	0f 84 82 00 00 00                               	je     0x865c80
  865bfe:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  865c06:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  865c0c:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  865c10:	50                                              	push   eax
  865c11:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  865c17:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  865c1d:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  865c23:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  865c29:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
  865c2f:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  865c33:	51                                              	push   ecx
  865c34:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  865c3a:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  865c40:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  865c46:	0f 28 44 24 18                                  	movaps xmm0,XMMWORD PTR [esp+0x18]
  865c4b:	57                                              	push   edi
  865c4c:	c7 44 24 48 00 00 00 00                         	mov    DWORD PTR [esp+0x48],0x0
  865c54:	0f 29 44 24 4c                                  	movaps XMMWORD PTR [esp+0x4c],xmm0
  865c59:	e8 c2 6c 27 00                                  	call   0xadc920
  865c5e:	83 c4 0c                                        	add    esp,0xc
  865c61:	6a 01                                           	push   0x1
  865c63:	6a 00                                           	push   0x0
  865c65:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  865c69:	52                                              	push   edx
  865c6a:	8b cb                                           	mov    ecx,ebx
  865c6c:	e8 4f 26 2e 00                                  	call   0xb482c0
  865c71:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  865c75:	0f bf c0                                        	movsx  eax,ax
  865c78:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  865c7c:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
  865c80:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865c82:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  865c85:	57                                              	push   edi
  865c86:	68 e6 b4 81 20                                  	push   0x2081b4e6
  865c8b:	8b ce                                           	mov    ecx,esi
  865c8d:	ff d0                                           	call   eax
  865c8f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865c91:	f3 0f 2a 44 24 24                               	cvtsi2ss xmm0,DWORD PTR [esp+0x24]
  865c97:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  865c9a:	51                                              	push   ecx
  865c9b:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  865ca0:	68 67 d9 be 5d                                  	push   0x5dbed967
  865ca5:	8b ce                                           	mov    ecx,esi
  865ca7:	ff d0                                           	call   eax
  865ca9:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865cab:	f3 0f 2a 44 24 28                               	cvtsi2ss xmm0,DWORD PTR [esp+0x28]
  865cb1:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  865cb4:	51                                              	push   ecx
  865cb5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  865cba:	68 d1 78 ff 39                                  	push   0x39ff78d1
  865cbf:	8b ce                                           	mov    ecx,esi
  865cc1:	ff d0                                           	call   eax
  865cc3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865cc5:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
  865cc8:	8b ce                                           	mov    ecx,esi
  865cca:	ff d0                                           	call   eax
  865ccc:	b0 01                                           	mov    al,0x1
  865cce:	5f                                              	pop    edi
  865ccf:	5e                                              	pop    esi
  865cd0:	5b                                              	pop    ebx
  865cd1:	8b e5                                           	mov    esp,ebp
  865cd3:	5d                                              	pop    ebp
  865cd4:	c2 08 00                                        	ret    0x8
  865cd7:	8b 56 fc                                        	mov    edx,DWORD PTR [esi-0x4]
  865cda:	8b 42 44                                        	mov    eax,DWORD PTR [edx+0x44]
  865cdd:	83 c6 fc                                        	add    esi,0xfffffffc
  865ce0:	68 65 53 47 03                                  	push   0x3475365
  865ce5:	8b ce                                           	mov    ecx,esi
  865ce7:	ff d0                                           	call   eax
  865ce9:	8b fb                                           	mov    edi,ebx
  865ceb:	f6 87 88 00 00 00 01                            	test   BYTE PTR [edi+0x88],0x1
  865cf2:	74 14                                           	je     0x865d08
  865cf4:	8b 47 08                                        	mov    eax,DWORD PTR [edi+0x8]
  865cf7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865cf9:	8b 52 54                                        	mov    edx,DWORD PTR [edx+0x54]
  865cfc:	6a 00                                           	push   0x0
  865cfe:	50                                              	push   eax
  865cff:	68 7e 53 47 03                                  	push   0x347537e
  865d04:	8b ce                                           	mov    ecx,esi
  865d06:	ff d2                                           	call   edx
  865d08:	8b 87 88 00 00 00                               	mov    eax,DWORD PTR [edi+0x88]
  865d0e:	d1 e8                                           	shr    eax,1
  865d10:	a8 01                                           	test   al,0x1
  865d12:	74 16                                           	je     0x865d2a
  865d14:	8b 47 14                                        	mov    eax,DWORD PTR [edi+0x14]
  865d17:	8b 4f 10                                        	mov    ecx,DWORD PTR [edi+0x10]
  865d1a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865d1c:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  865d1f:	50                                              	push   eax
  865d20:	51                                              	push   ecx
  865d21:	68 81 53 47 03                                  	push   0x3475381
  865d26:	8b ce                                           	mov    ecx,esi
  865d28:	ff d2                                           	call   edx
  865d2a:	8b 4f 18                                        	mov    ecx,DWORD PTR [edi+0x18]
  865d2d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865d2f:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
  865d32:	51                                              	push   ecx
  865d33:	68 85 53 47 03                                  	push   0x3475385
  865d38:	8b ce                                           	mov    ecx,esi
  865d3a:	ff d2                                           	call   edx
  865d3c:	8b 87 88 00 00 00                               	mov    eax,DWORD PTR [edi+0x88]
  865d42:	c1 e8 04                                        	shr    eax,0x4
  865d45:	a8 01                                           	test   al,0x1
  865d47:	74 12                                           	je     0x865d5b
  865d49:	8b 47 28                                        	mov    eax,DWORD PTR [edi+0x28]
  865d4c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865d4e:	8b 52 4c                                        	mov    edx,DWORD PTR [edx+0x4c]
  865d51:	50                                              	push   eax
  865d52:	68 8c 53 47 03                                  	push   0x347538c
  865d57:	8b ce                                           	mov    ecx,esi
  865d59:	ff d2                                           	call   edx
  865d5b:	8b 87 88 00 00 00                               	mov    eax,DWORD PTR [edi+0x88]
  865d61:	c1 e8 08                                        	shr    eax,0x8
  865d64:	a8 01                                           	test   al,0x1
  865d66:	74 12                                           	je     0x865d7a
  865d68:	8b 47 48                                        	mov    eax,DWORD PTR [edi+0x48]
  865d6b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865d6d:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  865d70:	50                                              	push   eax
  865d71:	68 9c 53 47 03                                  	push   0x347539c
  865d76:	8b ce                                           	mov    ecx,esi
  865d78:	ff d2                                           	call   edx
  865d7a:	8b 87 88 00 00 00                               	mov    eax,DWORD PTR [edi+0x88]
  865d80:	8b c8                                           	mov    ecx,eax
  865d82:	c1 e9 05                                        	shr    ecx,0x5
  865d85:	f6 c1 01                                        	test   cl,0x1
  865d88:	0f 84 78 01 00 00                               	je     0x865f06
  865d8e:	8b d0                                           	mov    edx,eax
  865d90:	c1 ea 06                                        	shr    edx,0x6
  865d93:	f6 c2 01                                        	test   dl,0x1
  865d96:	0f 84 6a 01 00 00                               	je     0x865f06
  865d9c:	c1 e8 07                                        	shr    eax,0x7
  865d9f:	a8 01                                           	test   al,0x1
  865da1:	0f 84 5f 01 00 00                               	je     0x865f06
  865da7:	d9 47 30                                        	fld    DWORD PTR [edi+0x30]
  865daa:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865dac:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  865daf:	d9 54 24 28                                     	fst    DWORD PTR [esp+0x28]
  865db3:	d9 47 38                                        	fld    DWORD PTR [edi+0x38]
  865db6:	51                                              	push   ecx
  865db7:	d9 5c 24 28                                     	fstp   DWORD PTR [esp+0x28]
  865dbb:	8b ce                                           	mov    ecx,esi
  865dbd:	d9 47 40                                        	fld    DWORD PTR [edi+0x40]
  865dc0:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  865dc4:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  865dc7:	68 91 53 47 03                                  	push   0x3475391
  865dcc:	ff d2                                           	call   edx
  865dce:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  865dd2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865dd4:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  865dd7:	51                                              	push   ecx
  865dd8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  865ddb:	68 95 53 47 03                                  	push   0x3475395
  865de0:	8b ce                                           	mov    ecx,esi
  865de2:	ff d2                                           	call   edx
  865de4:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  865de8:	8b 06                                           	mov    eax,DWORD PTR [esi]
  865dea:	8b 50 48                                        	mov    edx,DWORD PTR [eax+0x48]
  865ded:	51                                              	push   ecx
  865dee:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  865df1:	68 98 53 47 03                                  	push   0x3475398
  865df6:	8b ce                                           	mov    ecx,esi
  865df8:	ff d2                                           	call   edx
  865dfa:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  865e00:	33 db                                           	xor    ebx,ebx
  865e02:	3b cb                                           	cmp    ecx,ebx
  865e04:	0f 84 fc 00 00 00                               	je     0x865f06
  865e0a:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  865e0e:	83 ec 08                                        	sub    esp,0x8
  865e11:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  865e15:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  865e19:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  865e1c:	e8 af 29 40 00                                  	call   0xc687d0
  865e21:	8b f8                                           	mov    edi,eax
  865e23:	3b fb                                           	cmp    edi,ebx
  865e25:	0f 84 db 00 00 00                               	je     0x865f06
  865e2b:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  865e2f:	89 5c 24 10                                     	mov    DWORD PTR [esp+0x10],ebx
  865e33:	8b 9f 98 02 00 00                               	mov    ebx,DWORD PTR [edi+0x298]
  865e39:	85 db                                           	test   ebx,ebx
  865e3b:	0f 84 82 00 00 00                               	je     0x865ec3
  865e41:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  865e49:	f3 0f 10 4c 24 0c                               	movss  xmm1,DWORD PTR [esp+0xc]
  865e4f:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  865e53:	50                                              	push   eax
  865e54:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  865e5a:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  865e60:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
  865e66:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  865e6c:	f3 0f 10 4c 24 28                               	movss  xmm1,DWORD PTR [esp+0x28]
  865e72:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  865e76:	51                                              	push   ecx
  865e77:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  865e7d:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  865e83:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  865e89:	0f 28 44 24 18                                  	movaps xmm0,XMMWORD PTR [esp+0x18]
  865e8e:	57                                              	push   edi
  865e8f:	c7 44 24 48 00 00 00 00                         	mov    DWORD PTR [esp+0x48],0x0
  865e97:	0f 29 44 24 5c                                  	movaps XMMWORD PTR [esp+0x5c],xmm0
  865e9c:	e8 7f 6a 27 00                                  	call   0xadc920
  865ea1:	83 c4 0c                                        	add    esp,0xc
  865ea4:	6a 01                                           	push   0x1
  865ea6:	6a 00                                           	push   0x0
  865ea8:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  865eac:	52                                              	push   edx
  865ead:	8b cb                                           	mov    ecx,ebx
  865eaf:	e8 0c 24 2e 00                                  	call   0xb482c0
  865eb4:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  865eb8:	0f bf c0                                        	movsx  eax,ax
  865ebb:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  865ebf:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  865ec3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865ec5:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  865ec8:	57                                              	push   edi
  865ec9:	68 e6 b4 81 20                                  	push   0x2081b4e6
  865ece:	8b ce                                           	mov    ecx,esi
  865ed0:	ff d0                                           	call   eax
  865ed2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865ed4:	f3 0f 2a 44 24 20                               	cvtsi2ss xmm0,DWORD PTR [esp+0x20]
  865eda:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  865edd:	51                                              	push   ecx
  865ede:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  865ee3:	68 67 d9 be 5d                                  	push   0x5dbed967
  865ee8:	8b ce                                           	mov    ecx,esi
  865eea:	ff d0                                           	call   eax
  865eec:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865eee:	f3 0f 2a 44 24 10                               	cvtsi2ss xmm0,DWORD PTR [esp+0x10]
  865ef4:	8b 42 48                                        	mov    eax,DWORD PTR [edx+0x48]
  865ef7:	51                                              	push   ecx
  865ef8:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
  865efd:	68 d1 78 ff 39                                  	push   0x39ff78d1
  865f02:	8b ce                                           	mov    ecx,esi
  865f04:	ff d0                                           	call   eax
  865f06:	8b 16                                           	mov    edx,DWORD PTR [esi]
  865f08:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
  865f0b:	8b ce                                           	mov    ecx,esi
  865f0d:	ff d0                                           	call   eax
  865f0f:	b0 01                                           	mov    al,0x1
  865f11:	5f                                              	pop    edi
  865f12:	5e                                              	pop    esi
  865f13:	5b                                              	pop    ebx
  865f14:	8b e5                                           	mov    esp,ebp
  865f16:	5d                                              	pop    ebp
  865f17:	c2 08 00                                        	ret    0x8
  865f1a:	81 ff 07 10 ee 01                               	cmp    edi,0x1ee1007
  865f20:	0f 82 a4 01 00 00                               	jb     0x8660ca
  865f26:	81 ff 08 10 ee 01                               	cmp    edi,0x1ee1008
  865f2c:	76 2a                                           	jbe    0x865f58
  865f2e:	81 ff 10 10 ee 01                               	cmp    edi,0x1ee1010
  865f34:	0f 85 90 01 00 00                               	jne    0x8660ca
  865f3a:	80 be 04 7d 02 00 00                            	cmp    BYTE PTR [esi+0x27d04],0x0
  865f41:	74 0a                                           	je     0x865f4d
  865f43:	6a 01                                           	push   0x1
  865f45:	8d 4e fc                                        	lea    ecx,[esi-0x4]
  865f48:	e8 13 f6 ff ff                                  	call   0x865560
  865f4d:	b0 01                                           	mov    al,0x1
  865f4f:	5f                                              	pop    edi
  865f50:	5e                                              	pop    esi
  865f51:	5b                                              	pop    ebx
  865f52:	8b e5                                           	mov    esp,ebp
  865f54:	5d                                              	pop    ebp
  865f55:	c2 08 00                                        	ret    0x8
  865f58:	80 be 04 7d 02 00 00                            	cmp    BYTE PTR [esi+0x27d04],0x0
  865f5f:	74 0a                                           	je     0x865f6b
  865f61:	6a 00                                           	push   0x0
  865f63:	8d 4e fc                                        	lea    ecx,[esi-0x4]
  865f66:	e8 f5 f5 ff ff                                  	call   0x865560
  865f6b:	b0 01                                           	mov    al,0x1
  865f6d:	5f                                              	pop    edi
  865f6e:	5e                                              	pop    esi
  865f6f:	5b                                              	pop    ebx
  865f70:	8b e5                                           	mov    esp,ebp
  865f72:	5d                                              	pop    ebp
  865f73:	c2 08 00                                        	ret    0x8
  865f76:	81 bb 58 01 00 00 2c 01 00 00                   	cmp    DWORD PTR [ebx+0x158],0x12c
  865f80:	8b 86 ec 7b 02 00                               	mov    eax,DWORD PTR [esi+0x27bec]
  865f86:	0f 94 c1                                        	sete   cl
  865f89:	85 c0                                           	test   eax,eax
  865f8b:	88 8e 05 7d 02 00                               	mov    BYTE PTR [esi+0x27d05],cl
  865f91:	0f 84 33 01 00 00                               	je     0x8660ca
  865f97:	53                                              	push   ebx
  865f98:	57                                              	push   edi
  865f99:	8b ce                                           	mov    ecx,esi
  865f9b:	c6 80 61 0a 00 00 01                            	mov    BYTE PTR [eax+0xa61],0x1
  865fa2:	e8 f9 b1 04 00                                  	call   0x8b11a0
  865fa7:	5f                                              	pop    edi
  865fa8:	5e                                              	pop    esi
  865fa9:	5b                                              	pop    ebx
  865faa:	8b e5                                           	mov    esp,ebp
  865fac:	5d                                              	pop    ebp
  865fad:	c2 08 00                                        	ret    0x8
  865fb0:	81 ff 65 7d 70 f0                               	cmp    edi,0xf0707d65
  865fb6:	0f 87 e5 00 00 00                               	ja     0x8660a1
  865fbc:	0f 84 bd 00 00 00                               	je     0x86607f
  865fc2:	81 ff dc 27 a1 03                               	cmp    edi,0x3a127dc
  865fc8:	74 2a                                           	je     0x865ff4
  865fca:	81 ff 06 c4 87 04                               	cmp    edi,0x487c406
  865fd0:	0f 85 f4 00 00 00                               	jne    0x8660ca
  865fd6:	8b 53 08                                        	mov    edx,DWORD PTR [ebx+0x8]
  865fd9:	52                                              	push   edx
  865fda:	8d 4e fc                                        	lea    ecx,[esi-0x4]
  865fdd:	e8 ee e7 ff ff                                  	call   0x8647d0
  865fe2:	53                                              	push   ebx
  865fe3:	57                                              	push   edi
  865fe4:	8b ce                                           	mov    ecx,esi
  865fe6:	e8 b5 b1 04 00                                  	call   0x8b11a0
  865feb:	5f                                              	pop    edi
  865fec:	5e                                              	pop    esi
  865fed:	5b                                              	pop    ebx
  865fee:	8b e5                                           	mov    esp,ebp
  865ff0:	5d                                              	pop    ebp
  865ff1:	c2 08 00                                        	ret    0x8
  865ff4:	8b c3                                           	mov    eax,ebx
  865ff6:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  865ff9:	8b 58 10                                        	mov    ebx,DWORD PTR [eax+0x10]
  865ffc:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
  865fff:	33 c0                                           	xor    eax,eax
  866001:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  866005:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  866009:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  86600d:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  866011:	50                                              	push   eax
  866012:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  866016:	8d be cc 7b 02 00                               	lea    edi,[esi+0x27bcc]
  86601c:	51                                              	push   ecx
  86601d:	8b cf                                           	mov    ecx,edi
  86601f:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  866023:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
  866027:	e8 94 c5 cc ff                                  	call   0x5325c0
  86602c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  86602e:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  866031:	8b 4f 04                                        	mov    ecx,DWORD PTR [edi+0x4]
  866034:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  866037:	74 23                                           	je     0x86605c
  866039:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  86603c:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  866040:	52                                              	push   edx
  866041:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  866045:	53                                              	push   ebx
  866046:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  86604a:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  86604d:	52                                              	push   edx
  86604e:	50                                              	push   eax
  86604f:	51                                              	push   ecx
  866050:	8d 4e fc                                        	lea    ecx,[esi-0x4]
  866053:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  866057:	e8 54 ed ff ff                                  	call   0x864db0
  86605c:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  866060:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  866064:	50                                              	push   eax
  866065:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  866069:	51                                              	push   ecx
  86606a:	53                                              	push   ebx
  86606b:	52                                              	push   edx
  86606c:	8d 4e fc                                        	lea    ecx,[esi-0x4]
  86606f:	e8 7c f9 ff ff                                  	call   0x8659f0
  866074:	32 c0                                           	xor    al,al
  866076:	5f                                              	pop    edi
  866077:	5e                                              	pop    esi
  866078:	5b                                              	pop    ebx
  866079:	8b e5                                           	mov    esp,ebp
  86607b:	5d                                              	pop    ebp
  86607c:	c2 08 00                                        	ret    0x8
  86607f:	8b cb                                           	mov    ecx,ebx
  866081:	e8 fa 54 d3 ff                                  	call   0x59b580
  866086:	50                                              	push   eax
  866087:	8d 4e fc                                        	lea    ecx,[esi-0x4]
  86608a:	e8 f1 e6 ff ff                                  	call   0x864780
  86608f:	53                                              	push   ebx
  866090:	57                                              	push   edi
  866091:	8b ce                                           	mov    ecx,esi
  866093:	e8 08 b1 04 00                                  	call   0x8b11a0
  866098:	5f                                              	pop    edi
  866099:	5e                                              	pop    esi
  86609a:	5b                                              	pop    ebx
  86609b:	8b e5                                           	mov    esp,ebp
  86609d:	5d                                              	pop    ebp
  86609e:	c2 08 00                                        	ret    0x8
  8660a1:	81 ff fe a1 6a fc                               	cmp    edi,0xfc6aa1fe
  8660a7:	75 21                                           	jne    0x8660ca
  8660a9:	85 db                                           	test   ebx,ebx
  8660ab:	74 15                                           	je     0x8660c2
  8660ad:	ff 15 70 61 f9 00                               	call   DWORD PTR ds:0xf96170
  8660b3:	39 43 08                                        	cmp    DWORD PTR [ebx+0x8],eax
  8660b6:	74 0a                                           	je     0x8660c2
  8660b8:	6a ff                                           	push   0xffffffff
  8660ba:	e8 01 e0 c4 ff                                  	call   0x4b40c0
  8660bf:	83 c4 04                                        	add    esp,0x4
  8660c2:	8d 4e fc                                        	lea    ecx,[esi-0x4]
  8660c5:	e8 36 ed ff ff                                  	call   0x864e00
  8660ca:	53                                              	push   ebx
  8660cb:	57                                              	push   edi
  8660cc:	8b ce                                           	mov    ecx,esi
  8660ce:	e8 cd b0 04 00                                  	call   0x8b11a0
  8660d3:	5f                                              	pop    edi
  8660d4:	5e                                              	pop    esi
  8660d5:	5b                                              	pop    ebx
  8660d6:	8b e5                                           	mov    esp,ebp
  8660d8:	5d                                              	pop    ebp
  8660d9:	c2 08 00                                        	ret    0x8
