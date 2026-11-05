# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00759bb0, 0x0075afda); analyst name RadialRangeDestination_ShouldRejectCandidateEarly.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00759bb0 <.text+0x358bb0>:
  759bb0:	55                   	push   ebp
  759bb1:	8b ec                	mov    ebp,esp
  759bb3:	83 e4 f0             	and    esp,0xfffffff0
  759bb6:	81 ec f4 00 00 00    	sub    esp,0xf4
  759bbc:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  759bbf:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  759bc7:	53                   	push   ebx
  759bc8:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  759bcb:	56                   	push   esi
  759bcc:	57                   	push   edi
  759bcd:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  759bd0:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  759bd4:	8b 43 24             	mov    eax,DWORD PTR [ebx+0x24]
  759bd7:	8b 15 c4 db 1e 01    	mov    edx,DWORD PTR ds:0x11edbc4
  759bdd:	89 8c 24 80 00 00 00 	mov    DWORD PTR [esp+0x80],ecx
  759be4:	8b 4f 24             	mov    ecx,DWORD PTR [edi+0x24]
  759be7:	3b c1                	cmp    eax,ecx
  759be9:	89 54 24 58          	mov    DWORD PTR [esp+0x58],edx
  759bed:	7e 64                	jle    0x759c53
  759bef:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  759bf2:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  759bf7:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  759bfb:	83 ec 08             	sub    esp,0x8
  759bfe:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759c02:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  759c07:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  759c0b:	8b ca                	mov    ecx,edx
  759c0d:	d9 1c 24             	fstp   DWORD PTR [esp]
  759c10:	e8 bb eb 50 00       	call   0xc687d0
  759c15:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  759c18:	6a 00                	push   0x0
  759c1a:	6a 00                	push   0x0
  759c1c:	68 00 00 00 10       	push   0x10000000
  759c21:	8b f0                	mov    esi,eax
  759c23:	e8 b8 28 0c 00       	call   0x81c4e0
  759c28:	84 c0                	test   al,al
  759c2a:	74 1c                	je     0x759c48
  759c2c:	83 7b 24 00          	cmp    DWORD PTR [ebx+0x24],0x0
  759c30:	0f 84 80 00 00 00    	je     0x759cb6
  759c36:	6a 01                	push   0x1
  759c38:	6a 00                	push   0x0
  759c3a:	57                   	push   edi
  759c3b:	56                   	push   esi
  759c3c:	e8 8f 5d 3a 00       	call   0xaff9d0
  759c41:	83 c4 10             	add    esp,0x10
  759c44:	84 c0                	test   al,al
  759c46:	75 6e                	jne    0x759cb6
  759c48:	b0 01                	mov    al,0x1
  759c4a:	5f                   	pop    edi
  759c4b:	5e                   	pop    esi
  759c4c:	5b                   	pop    ebx
  759c4d:	8b e5                	mov    esp,ebp
  759c4f:	5d                   	pop    ebp
  759c50:	c2 20 00             	ret    0x20
  759c53:	75 61                	jne    0x759cb6
  759c55:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  759c58:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  759c5d:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  759c61:	83 ec 08             	sub    esp,0x8
  759c64:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759c68:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  759c6d:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  759c71:	8b ca                	mov    ecx,edx
  759c73:	d9 1c 24             	fstp   DWORD PTR [esp]
  759c76:	e8 55 eb 50 00       	call   0xc687d0
  759c7b:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  759c7e:	6a 00                	push   0x0
  759c80:	6a 00                	push   0x0
  759c82:	68 00 00 00 10       	push   0x10000000
  759c87:	8b f0                	mov    esi,eax
  759c89:	e8 52 28 0c 00       	call   0x81c4e0
  759c8e:	84 c0                	test   al,al
  759c90:	75 24                	jne    0x759cb6
  759c92:	6a 01                	push   0x1
  759c94:	6a 00                	push   0x0
  759c96:	57                   	push   edi
  759c97:	56                   	push   esi
  759c98:	e8 33 5d 3a 00       	call   0xaff9d0
  759c9d:	83 c4 10             	add    esp,0x10
  759ca0:	84 c0                	test   al,al
  759ca2:	74 12                	je     0x759cb6
  759ca4:	6a 01                	push   0x1
  759ca6:	6a 00                	push   0x0
  759ca8:	53                   	push   ebx
  759ca9:	56                   	push   esi
  759caa:	e8 21 5d 3a 00       	call   0xaff9d0
  759caf:	83 c4 10             	add    esp,0x10
  759cb2:	84 c0                	test   al,al
  759cb4:	74 92                	je     0x759c48
  759cb6:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  759cb9:	6a 00                	push   0x0
  759cbb:	6a 10                	push   0x10
  759cbd:	6a 00                	push   0x0
  759cbf:	e8 1c 28 0c 00       	call   0x81c4e0
  759cc4:	84 c0                	test   al,al
  759cc6:	0f 84 2b 01 00 00    	je     0x759df7
  759ccc:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  759ccf:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  759cd3:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  759cd8:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  759cdc:	83 ec 08             	sub    esp,0x8
  759cdf:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759ce3:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  759ce8:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  759cec:	d9 1c 24             	fstp   DWORD PTR [esp]
  759cef:	e8 dc ea 50 00       	call   0xc687d0
  759cf4:	8b 4f 24             	mov    ecx,DWORD PTR [edi+0x24]
  759cf7:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  759cfa:	51                   	push   ecx
  759cfb:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  759d00:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  759d04:	83 ec 08             	sub    esp,0x8
  759d07:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759d0b:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  759d10:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  759d14:	8b f0                	mov    esi,eax
  759d16:	d9 1c 24             	fstp   DWORD PTR [esp]
  759d19:	56                   	push   esi
  759d1a:	e8 b1 b4 3a 00       	call   0xb051d0
  759d1f:	83 c4 10             	add    esp,0x10
  759d22:	84 c0                	test   al,al
  759d24:	0f 84 cd 00 00 00    	je     0x759df7
  759d2a:	8b c3                	mov    eax,ebx
  759d2c:	8b 50 24             	mov    edx,DWORD PTR [eax+0x24]
  759d2f:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  759d32:	52                   	push   edx
  759d33:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  759d38:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  759d3c:	83 ec 08             	sub    esp,0x8
  759d3f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759d43:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  759d48:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  759d4c:	d9 1c 24             	fstp   DWORD PTR [esp]
  759d4f:	56                   	push   esi
  759d50:	e8 7b b4 3a 00       	call   0xb051d0
  759d55:	83 c4 10             	add    esp,0x10
  759d58:	84 c0                	test   al,al
  759d5a:	0f 84 97 00 00 00    	je     0x759df7
  759d60:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  759d63:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  759d6b:	8b be 98 02 00 00    	mov    edi,DWORD PTR [esi+0x298]
  759d71:	8d 44 24 70          	lea    eax,[esp+0x70]
  759d75:	50                   	push   eax
  759d76:	51                   	push   ecx
  759d77:	56                   	push   esi
  759d78:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  759d7e:	f3 0f 11 84 24 80 00 00 00 	movss  DWORD PTR [esp+0x80],xmm0
  759d87:	c7 84 24 84 00 00 00 00 00 00 00 	mov    DWORD PTR [esp+0x84],0x0
  759d92:	e8 29 2b 38 00       	call   0xadc8c0
  759d97:	83 c4 0c             	add    esp,0xc
  759d9a:	6a 01                	push   0x1
  759d9c:	6a 03                	push   0x3
  759d9e:	8d 54 24 78          	lea    edx,[esp+0x78]
  759da2:	52                   	push   edx
  759da3:	8b cf                	mov    ecx,edi
  759da5:	e8 16 e5 3e 00       	call   0xb482c0
  759daa:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  759dad:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  759db5:	0f b7 d8             	movzx  ebx,ax
  759db8:	8d 44 24 60          	lea    eax,[esp+0x60]
  759dbc:	50                   	push   eax
  759dbd:	51                   	push   ecx
  759dbe:	56                   	push   esi
  759dbf:	f3 0f 11 44 24 6c    	movss  DWORD PTR [esp+0x6c],xmm0
  759dc5:	f3 0f 11 44 24 70    	movss  DWORD PTR [esp+0x70],xmm0
  759dcb:	c7 44 24 74 00 00 00 00 	mov    DWORD PTR [esp+0x74],0x0
  759dd3:	e8 e8 2a 38 00       	call   0xadc8c0
  759dd8:	83 c4 0c             	add    esp,0xc
  759ddb:	6a 01                	push   0x1
  759ddd:	6a 03                	push   0x3
  759ddf:	8d 54 24 68          	lea    edx,[esp+0x68]
  759de3:	52                   	push   edx
  759de4:	8b cf                	mov    ecx,edi
  759de6:	e8 d5 e4 3e 00       	call   0xb482c0
  759deb:	0f b7 c0             	movzx  eax,ax
  759dee:	66 3b d8             	cmp    bx,ax
  759df1:	0f 84 51 fe ff ff    	je     0x759c48
  759df7:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
  759dfa:	6a 00                	push   0x0
  759dfc:	6a 02                	push   0x2
  759dfe:	6a 00                	push   0x0
  759e00:	8b cb                	mov    ecx,ebx
  759e02:	e8 d9 26 0c 00       	call   0x81c4e0
  759e07:	84 c0                	test   al,al
  759e09:	0f 85 a9 00 00 00    	jne    0x759eb8
  759e0f:	6a 00                	push   0x0
  759e11:	6a 10                	push   0x10
  759e13:	6a 00                	push   0x0
  759e15:	8b cb                	mov    ecx,ebx
  759e17:	e8 c4 26 0c 00       	call   0x81c4e0
  759e1c:	84 c0                	test   al,al
  759e1e:	0f 85 94 00 00 00    	jne    0x759eb8
  759e24:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
  759e27:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  759e2a:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  759e2e:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  759e33:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  759e37:	83 ec 08             	sub    esp,0x8
  759e3a:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759e3e:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  759e43:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  759e47:	d9 1c 24             	fstp   DWORD PTR [esp]
  759e4a:	e8 81 e9 50 00       	call   0xc687d0
  759e4f:	0f 28 07             	movaps xmm0,XMMWORD PTR [edi]
  759e52:	8b f0                	mov    esi,eax
  759e54:	8b 47 24             	mov    eax,DWORD PTR [edi+0x24]
  759e57:	50                   	push   eax
  759e58:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  759e5d:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  759e61:	83 ec 08             	sub    esp,0x8
  759e64:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759e68:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  759e6d:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  759e71:	d9 1c 24             	fstp   DWORD PTR [esp]
  759e74:	56                   	push   esi
  759e75:	e8 56 b3 3a 00       	call   0xb051d0
  759e7a:	83 c4 10             	add    esp,0x10
  759e7d:	84 c0                	test   al,al
  759e7f:	74 37                	je     0x759eb8
  759e81:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  759e84:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  759e87:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  759e8a:	51                   	push   ecx
  759e8b:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  759e90:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  759e94:	83 ec 08             	sub    esp,0x8
  759e97:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759e9b:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  759ea0:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  759ea4:	d9 1c 24             	fstp   DWORD PTR [esp]
  759ea7:	56                   	push   esi
  759ea8:	e8 23 b3 3a 00       	call   0xb051d0
  759ead:	83 c4 10             	add    esp,0x10
  759eb0:	84 c0                	test   al,al
  759eb2:	0f 84 90 fd ff ff    	je     0x759c48
  759eb8:	6a 00                	push   0x0
  759eba:	6a 00                	push   0x0
  759ebc:	68 00 00 00 04       	push   0x4000000
  759ec1:	8b cb                	mov    ecx,ebx
  759ec3:	e8 18 26 0c 00       	call   0x81c4e0
  759ec8:	84 c0                	test   al,al
  759eca:	0f 84 65 01 00 00    	je     0x75a035
  759ed0:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  759ed3:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  759ed6:	8b 7c 24 58          	mov    edi,DWORD PTR [esp+0x58]
  759eda:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  759edf:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  759ee3:	83 ec 08             	sub    esp,0x8
  759ee6:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759eea:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  759eef:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  759ef3:	8b cf                	mov    ecx,edi
  759ef5:	d9 1c 24             	fstp   DWORD PTR [esp]
  759ef8:	e8 d3 e8 50 00       	call   0xc687d0
  759efd:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  759f00:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  759f03:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  759f08:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  759f0c:	83 ec 08             	sub    esp,0x8
  759f0f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759f13:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  759f18:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  759f1c:	8b cf                	mov    ecx,edi
  759f1e:	d9 1c 24             	fstp   DWORD PTR [esp]
  759f21:	8b f0                	mov    esi,eax
  759f23:	e8 a8 e8 50 00       	call   0xc687d0
  759f28:	8b 5b 24             	mov    ebx,DWORD PTR [ebx+0x24]
  759f2b:	83 fb 01             	cmp    ebx,0x1
  759f2e:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  759f32:	75 1f                	jne    0x759f53
  759f34:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  759f37:	8b 78 24             	mov    edi,DWORD PTR [eax+0x24]
  759f3a:	85 ff                	test   edi,edi
  759f3c:	75 15                	jne    0x759f53
  759f3e:	85 f6                	test   esi,esi
  759f40:	74 11                	je     0x759f53
  759f42:	8b ce                	mov    ecx,esi
  759f44:	e8 77 ac ec ff       	call   0x624bc0
  759f49:	84 c0                	test   al,al
  759f4b:	74 06                	je     0x759f53
  759f4d:	39 7c 24 18          	cmp    DWORD PTR [esp+0x18],edi
  759f51:	74 4f                	je     0x759fa2
  759f53:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  759f56:	8b 79 24             	mov    edi,DWORD PTR [ecx+0x24]
  759f59:	83 ff 01             	cmp    edi,0x1
  759f5c:	75 1b                	jne    0x759f79
  759f5e:	85 db                	test   ebx,ebx
  759f60:	75 38                	jne    0x759f9a
  759f62:	39 5c 24 18          	cmp    DWORD PTR [esp+0x18],ebx
  759f66:	74 11                	je     0x759f79
  759f68:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  759f6c:	e8 4f ac ec ff       	call   0x624bc0
  759f71:	84 c0                	test   al,al
  759f73:	74 04                	je     0x759f79
  759f75:	85 f6                	test   esi,esi
  759f77:	74 29                	je     0x759fa2
  759f79:	85 db                	test   ebx,ebx
  759f7b:	75 1d                	jne    0x759f9a
  759f7d:	85 ff                	test   edi,edi
  759f7f:	75 19                	jne    0x759f9a
  759f81:	85 f6                	test   esi,esi
  759f83:	74 15                	je     0x759f9a
  759f85:	8b ce                	mov    ecx,esi
  759f87:	e8 34 ac ec ff       	call   0x624bc0
  759f8c:	84 c0                	test   al,al
  759f8e:	74 0a                	je     0x759f9a
  759f90:	39 7c 24 18          	cmp    DWORD PTR [esp+0x18],edi
  759f94:	0f 84 ae fc ff ff    	je     0x759c48
  759f9a:	3b fb                	cmp    edi,ebx
  759f9c:	0f 85 a6 fc ff ff    	jne    0x759c48
  759fa2:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  759fa5:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  759fa8:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  759fab:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  759fb0:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  759fb5:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  759fb8:	57                   	push   edi
  759fb9:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  759fbe:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  759fc2:	83 ec 08             	sub    esp,0x8
  759fc5:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759fc9:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  759fce:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  759fd2:	d9 1c 24             	fstp   DWORD PTR [esp]
  759fd5:	56                   	push   esi
  759fd6:	e8 f5 b1 3a 00       	call   0xb051d0
  759fdb:	d9 84 24 88 00 00 00 	fld    DWORD PTR [esp+0x88]
  759fe2:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
  759fe5:	83 c4 10             	add    esp,0x10
  759fe8:	51                   	push   ecx
  759fe9:	83 ec 08             	sub    esp,0x8
  759fec:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  759ff0:	88 44 24 1f          	mov    BYTE PTR [esp+0x1f],al
  759ff4:	d9 44 24 6c          	fld    DWORD PTR [esp+0x6c]
  759ff8:	d9 1c 24             	fstp   DWORD PTR [esp]
  759ffb:	56                   	push   esi
  759ffc:	e8 cf b1 3a 00       	call   0xb051d0
  75a001:	8a 4c 24 23          	mov    cl,BYTE PTR [esp+0x23]
  75a005:	83 c4 10             	add    esp,0x10
  75a008:	3a c1                	cmp    al,cl
  75a00a:	74 29                	je     0x75a035
  75a00c:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  75a00f:	6a 00                	push   0x0
  75a011:	6a 10                	push   0x10
  75a013:	6a 00                	push   0x0
  75a015:	8b ce                	mov    ecx,esi
  75a017:	e8 c4 24 0c 00       	call   0x81c4e0
  75a01c:	84 c0                	test   al,al
  75a01e:	75 15                	jne    0x75a035
  75a020:	6a 00                	push   0x0
  75a022:	6a 02                	push   0x2
  75a024:	6a 00                	push   0x0
  75a026:	8b ce                	mov    ecx,esi
  75a028:	e8 b3 24 0c 00       	call   0x81c4e0
  75a02d:	84 c0                	test   al,al
  75a02f:	0f 84 13 fc ff ff    	je     0x759c48
  75a035:	8b 7d 14             	mov    edi,DWORD PTR [ebp+0x14]
  75a038:	6a 00                	push   0x0
  75a03a:	6a 00                	push   0x0
  75a03c:	68 00 00 00 20       	push   0x20000000
  75a041:	8b cf                	mov    ecx,edi
  75a043:	e8 98 24 0c 00       	call   0x81c4e0
  75a048:	84 c0                	test   al,al
  75a04a:	0f 84 e4 00 00 00    	je     0x75a134
  75a050:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  75a053:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  75a056:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  75a059:	3b 41 24             	cmp    eax,DWORD PTR [ecx+0x24]
  75a05c:	74 0f                	je     0x75a06d
  75a05e:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  75a061:	f3 0f 10 05 7c 48 04 01 	movss  xmm0,DWORD PTR ds:0x104487c
  75a069:	f3 0f 11 02          	movss  DWORD PTR [edx],xmm0
  75a06d:	8b d9                	mov    ebx,ecx
  75a06f:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  75a072:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  75a076:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  75a07b:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  75a07f:	83 ec 08             	sub    esp,0x8
  75a082:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a086:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  75a08b:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  75a08f:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a092:	e8 39 e7 50 00       	call   0xc687d0
  75a097:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  75a09a:	8b f0                	mov    esi,eax
  75a09c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  75a09f:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  75a0a4:	0f 29 44 24 60       	movaps XMMWORD PTR [esp+0x60],xmm0
  75a0a9:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  75a0ac:	8b 40 24             	mov    eax,DWORD PTR [eax+0x24]
  75a0af:	50                   	push   eax
  75a0b0:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  75a0b5:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  75a0b9:	83 ec 08             	sub    esp,0x8
  75a0bc:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a0c0:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  75a0c5:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  75a0c9:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a0cc:	56                   	push   esi
  75a0cd:	e8 fe b0 3a 00       	call   0xb051d0
  75a0d2:	d9 84 24 88 00 00 00 	fld    DWORD PTR [esp+0x88]
  75a0d9:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
  75a0dc:	83 c4 10             	add    esp,0x10
  75a0df:	51                   	push   ecx
  75a0e0:	83 ec 08             	sub    esp,0x8
  75a0e3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a0e7:	88 44 24 1f          	mov    BYTE PTR [esp+0x1f],al
  75a0eb:	d9 44 24 6c          	fld    DWORD PTR [esp+0x6c]
  75a0ef:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a0f2:	56                   	push   esi
  75a0f3:	e8 d8 b0 3a 00       	call   0xb051d0
  75a0f8:	8a 4c 24 23          	mov    cl,BYTE PTR [esp+0x23]
  75a0fc:	83 c4 10             	add    esp,0x10
  75a0ff:	3a c1                	cmp    al,cl
  75a101:	74 31                	je     0x75a134
  75a103:	6a 00                	push   0x0
  75a105:	6a 10                	push   0x10
  75a107:	6a 00                	push   0x0
  75a109:	8b cf                	mov    ecx,edi
  75a10b:	e8 d0 23 0c 00       	call   0x81c4e0
  75a110:	84 c0                	test   al,al
  75a112:	75 20                	jne    0x75a134
  75a114:	6a 00                	push   0x0
  75a116:	6a 02                	push   0x2
  75a118:	6a 00                	push   0x0
  75a11a:	8b cf                	mov    ecx,edi
  75a11c:	e8 bf 23 0c 00       	call   0x81c4e0
  75a121:	84 c0                	test   al,al
  75a123:	75 0f                	jne    0x75a134
  75a125:	8b 55 24             	mov    edx,DWORD PTR [ebp+0x24]
  75a128:	f3 0f 10 05 7c 48 04 01 	movss  xmm0,DWORD PTR ds:0x104487c
  75a130:	f3 0f 11 02          	movss  DWORD PTR [edx],xmm0
  75a134:	8b 44 24 58          	mov    eax,DWORD PTR [esp+0x58]
  75a138:	8b 70 5c             	mov    esi,DWORD PTR [eax+0x5c]
  75a13b:	85 f6                	test   esi,esi
  75a13d:	74 73                	je     0x75a1b2
  75a13f:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  75a142:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  75a145:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  75a148:	6a 00                	push   0x0
  75a14a:	6a 00                	push   0x0
  75a14c:	6a 00                	push   0x0
  75a14e:	6a 00                	push   0x0
  75a150:	0f 29 84 24 80 00 00 00 	movaps XMMWORD PTR [esp+0x80],xmm0
  75a158:	0f 29 44 24 70       	movaps XMMWORD PTR [esp+0x70],xmm0
  75a15d:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  75a160:	6a 01                	push   0x1
  75a162:	0f 29 44 24 54       	movaps XMMWORD PTR [esp+0x54],xmm0
  75a167:	d9 44 24 5c          	fld    DWORD PTR [esp+0x5c]
  75a16b:	83 ec 08             	sub    esp,0x8
  75a16e:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a172:	0f 29 44 24 3c       	movaps XMMWORD PTR [esp+0x3c],xmm0
  75a177:	d9 44 24 3c          	fld    DWORD PTR [esp+0x3c]
  75a17b:	8b ce                	mov    ecx,esi
  75a17d:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a180:	e8 db dd 41 00       	call   0xb77f60
  75a185:	d9 44 24 78          	fld    DWORD PTR [esp+0x78]
  75a189:	6a 00                	push   0x0
  75a18b:	6a 00                	push   0x0
  75a18d:	6a 00                	push   0x0
  75a18f:	6a 00                	push   0x0
  75a191:	6a 01                	push   0x1
  75a193:	83 ec 08             	sub    esp,0x8
  75a196:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a19a:	8b ce                	mov    ecx,esi
  75a19c:	d9 44 24 7c          	fld    DWORD PTR [esp+0x7c]
  75a1a0:	8a d8                	mov    bl,al
  75a1a2:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a1a5:	e8 b6 dd 41 00       	call   0xb77f60
  75a1aa:	3a c3                	cmp    al,bl
  75a1ac:	0f 85 96 fa ff ff    	jne    0x759c48
  75a1b2:	e8 39 eb 0c 00       	call   0x828cf0
  75a1b7:	89 84 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],eax
  75a1be:	e8 ad d3 1d 00       	call   0x937570
  75a1c3:	6a 01                	push   0x1
  75a1c5:	6a 00                	push   0x0
  75a1c7:	6a 10                	push   0x10
  75a1c9:	8b cf                	mov    ecx,edi
  75a1cb:	89 84 24 a8 00 00 00 	mov    DWORD PTR [esp+0xa8],eax
  75a1d2:	e8 09 23 0c 00       	call   0x81c4e0
  75a1d7:	6a 01                	push   0x1
  75a1d9:	6a 00                	push   0x0
  75a1db:	6a 01                	push   0x1
  75a1dd:	8b cf                	mov    ecx,edi
  75a1df:	88 44 24 22          	mov    BYTE PTR [esp+0x22],al
  75a1e3:	e8 f8 22 0c 00       	call   0x81c4e0
  75a1e8:	6a 01                	push   0x1
  75a1ea:	6a 00                	push   0x0
  75a1ec:	8a d8                	mov    bl,al
  75a1ee:	68 00 01 00 00       	push   0x100
  75a1f3:	8b cf                	mov    ecx,edi
  75a1f5:	88 5c 24 2b          	mov    BYTE PTR [esp+0x2b],bl
  75a1f9:	e8 e2 22 0c 00       	call   0x81c4e0
  75a1fe:	6a 01                	push   0x1
  75a200:	6a 00                	push   0x0
  75a202:	6a 04                	push   0x4
  75a204:	8b cf                	mov    ecx,edi
  75a206:	88 44 24 2a          	mov    BYTE PTR [esp+0x2a],al
  75a20a:	e8 d1 22 0c 00       	call   0x81c4e0
  75a20f:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  75a212:	81 e6 00 cf 00 00    	and    esi,0xcf00
  75a218:	56                   	push   esi
  75a219:	88 44 24 43          	mov    BYTE PTR [esp+0x43],al
  75a21d:	e8 9e 3b e0 ff       	call   0x55ddc0
  75a222:	83 c4 04             	add    esp,0x4
  75a225:	84 db                	test   bl,bl
  75a227:	88 44 24 13          	mov    BYTE PTR [esp+0x13],al
  75a22b:	c6 44 24 17 00       	mov    BYTE PTR [esp+0x17],0x0
  75a230:	0f 85 a5 01 00 00    	jne    0x75a3db
  75a236:	38 5c 24 16          	cmp    BYTE PTR [esp+0x16],bl
  75a23a:	0f 85 9b 01 00 00    	jne    0x75a3db
  75a240:	38 5c 24 1e          	cmp    BYTE PTR [esp+0x1e],bl
  75a244:	0f 85 91 01 00 00    	jne    0x75a3db
  75a24a:	38 5c 24 3f          	cmp    BYTE PTR [esp+0x3f],bl
  75a24e:	0f 85 87 01 00 00    	jne    0x75a3db
  75a254:	84 c0                	test   al,al
  75a256:	88 5c 24 14          	mov    BYTE PTR [esp+0x14],bl
  75a25a:	0f 84 cc 03 00 00    	je     0x75a62c
  75a260:	8b 3d c4 db 1e 01    	mov    edi,DWORD PTR ds:0x11edbc4
  75a266:	85 ff                	test   edi,edi
  75a268:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  75a26b:	89 7c 24 5c          	mov    DWORD PTR [esp+0x5c],edi
  75a26f:	0f 84 d3 f9 ff ff    	je     0x759c48
  75a275:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  75a278:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  75a27b:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  75a280:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  75a284:	83 ec 08             	sub    esp,0x8
  75a287:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a28b:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  75a290:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  75a294:	8b cf                	mov    ecx,edi
  75a296:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a299:	e8 32 e5 50 00       	call   0xc687d0
  75a29e:	85 c0                	test   eax,eax
  75a2a0:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  75a2a4:	74 1f                	je     0x75a2c5
  75a2a6:	b9 01 00 00 00       	mov    ecx,0x1
  75a2ab:	39 88 08 04 00 00    	cmp    DWORD PTR [eax+0x408],ecx
  75a2b1:	75 12                	jne    0x75a2c5
  75a2b3:	83 b8 0c 04 00 00 50 	cmp    DWORD PTR [eax+0x40c],0x50
  75a2ba:	75 09                	jne    0x75a2c5
  75a2bc:	39 4b 24             	cmp    DWORD PTR [ebx+0x24],ecx
  75a2bf:	88 4c 24 15          	mov    BYTE PTR [esp+0x15],cl
  75a2c3:	74 05                	je     0x75a2ca
  75a2c5:	c6 44 24 15 00       	mov    BYTE PTR [esp+0x15],0x0
  75a2ca:	8b 4b 24             	mov    ecx,DWORD PTR [ebx+0x24]
  75a2cd:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  75a2d0:	6a 01                	push   0x1
  75a2d2:	6a 00                	push   0x0
  75a2d4:	6a 00                	push   0x0
  75a2d6:	6a 00                	push   0x0
  75a2d8:	6a 00                	push   0x0
  75a2da:	6a 01                	push   0x1
  75a2dc:	51                   	push   ecx
  75a2dd:	0f 29 44 24 5c       	movaps XMMWORD PTR [esp+0x5c],xmm0
  75a2e2:	d9 44 24 64          	fld    DWORD PTR [esp+0x64]
  75a2e6:	83 ec 08             	sub    esp,0x8
  75a2e9:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a2ed:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  75a2f2:	d9 44 24 44          	fld    DWORD PTR [esp+0x44]
  75a2f6:	8b cf                	mov    ecx,edi
  75a2f8:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a2fb:	e8 90 fd 50 00       	call   0xc6a090
  75a300:	8b cf                	mov    ecx,edi
  75a302:	d9 5c 24 50          	fstp   DWORD PTR [esp+0x50]
  75a306:	e8 85 6d 50 00       	call   0xc61090
  75a30b:	d9 54 24 54          	fst    DWORD PTR [esp+0x54]
  75a30f:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  75a313:	d9 c9                	fxch   st(1)
  75a315:	df f1                	fcomip st,st(1)
  75a317:	dd d8                	fstp   st(0)
  75a319:	73 0c                	jae    0x75a327
  75a31b:	80 7c 24 15 00       	cmp    BYTE PTR [esp+0x15],0x0
  75a320:	c6 44 24 17 00       	mov    BYTE PTR [esp+0x17],0x0
  75a325:	74 05                	je     0x75a32c
  75a327:	c6 44 24 17 01       	mov    BYTE PTR [esp+0x17],0x1
  75a32c:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  75a331:	0f 84 3f 02 00 00    	je     0x75a576
  75a337:	8b 8c 24 98 00 00 00 	mov    ecx,DWORD PTR [esp+0x98]
  75a33e:	e8 bd f2 0c 00       	call   0x829600
  75a343:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  75a346:	0f 28 13             	movaps xmm2,XMMWORD PTR [ebx]
  75a349:	f3 0f 10 0d f8 98 f9 00 	movss  xmm1,DWORD PTR ds:0xf998f8
  75a351:	8b 78 14             	mov    edi,DWORD PTR [eax+0x14]
  75a354:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75a358:	0f 28 c2             	movaps xmm0,xmm2
  75a35b:	0f c6 c2 55          	shufps xmm0,xmm2,0x55
  75a35f:	0f 5c c1             	subps  xmm0,xmm1
  75a362:	f3 0f 10 4c 24 54    	movss  xmm1,DWORD PTR [esp+0x54]
  75a368:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  75a36c:	f3 0f 11 44 24 40    	movss  DWORD PTR [esp+0x40],xmm0
  75a372:	f3 0f 10 44 24 40    	movss  xmm0,DWORD PTR [esp+0x40]
  75a378:	f3 0f 11 4c 24 20    	movss  DWORD PTR [esp+0x20],xmm1
  75a37e:	0f 2f 44 24 20       	comiss xmm0,DWORD PTR [esp+0x20]
  75a383:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  75a388:	77 05                	ja     0x75a38f
  75a38a:	c6 44 24 14 00       	mov    BYTE PTR [esp+0x14],0x0
  75a38f:	83 7c 24 18 00       	cmp    DWORD PTR [esp+0x18],0x0
  75a394:	75 70                	jne    0x75a406
  75a396:	8b 54 24 5c          	mov    edx,DWORD PTR [esp+0x5c]
  75a39a:	83 ec 08             	sub    esp,0x8
  75a39d:	0f 29 54 24 48       	movaps XMMWORD PTR [esp+0x48],xmm2
  75a3a2:	d9 44 24 50          	fld    DWORD PTR [esp+0x50]
  75a3a6:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a3aa:	0f 29 54 24 28       	movaps XMMWORD PTR [esp+0x28],xmm2
  75a3af:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  75a3b3:	8b cf                	mov    ecx,edi
  75a3b5:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a3b8:	52                   	push   edx
  75a3b9:	e8 52 3a f1 ff       	call   0x66de10
  75a3be:	84 c0                	test   al,al
  75a3c0:	74 23                	je     0x75a3e5
  75a3c2:	80 7c 24 1e 00       	cmp    BYTE PTR [esp+0x1e],0x0
  75a3c7:	74 3d                	je     0x75a406
  75a3c9:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  75a3ce:	75 36                	jne    0x75a406
  75a3d0:	b0 01                	mov    al,0x1
  75a3d2:	5f                   	pop    edi
  75a3d3:	5e                   	pop    esi
  75a3d4:	5b                   	pop    ebx
  75a3d5:	8b e5                	mov    esp,ebp
  75a3d7:	5d                   	pop    ebp
  75a3d8:	c2 20 00             	ret    0x20
  75a3db:	c6 44 24 14 01       	mov    BYTE PTR [esp+0x14],0x1
  75a3e0:	e9 7b fe ff ff       	jmp    0x75a260
  75a3e5:	80 7c 24 16 00       	cmp    BYTE PTR [esp+0x16],0x0
  75a3ea:	0f 85 58 f8 ff ff    	jne    0x759c48
  75a3f0:	80 7c 24 1f 00       	cmp    BYTE PTR [esp+0x1f],0x0
  75a3f5:	0f 85 4d f8 ff ff    	jne    0x759c48
  75a3fb:	80 7c 24 3f 00       	cmp    BYTE PTR [esp+0x3f],0x0
  75a400:	0f 85 42 f8 ff ff    	jne    0x759c48
  75a406:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  75a409:	8b 44 24 5c          	mov    eax,DWORD PTR [esp+0x5c]
  75a40d:	83 ec 0c             	sub    esp,0xc
  75a410:	0f 29 44 24 4c       	movaps XMMWORD PTR [esp+0x4c],xmm0
  75a415:	d9 44 24 54          	fld    DWORD PTR [esp+0x54]
  75a419:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  75a41d:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  75a422:	d9 44 24 30          	fld    DWORD PTR [esp+0x30]
  75a426:	0f 29 44 24 7c       	movaps XMMWORD PTR [esp+0x7c],xmm0
  75a42b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a42f:	8b cf                	mov    ecx,edi
  75a431:	d9 44 24 7c          	fld    DWORD PTR [esp+0x7c]
  75a435:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a438:	50                   	push   eax
  75a439:	e8 f2 37 f1 ff       	call   0x66dc30
  75a43e:	80 7c 24 1e 00       	cmp    BYTE PTR [esp+0x1e],0x0
  75a443:	75 15                	jne    0x75a45a
  75a445:	6a 00                	push   0x0
  75a447:	56                   	push   esi
  75a448:	50                   	push   eax
  75a449:	6a 00                	push   0x0
  75a44b:	8b cf                	mov    ecx,edi
  75a44d:	e8 ce 3c f1 ff       	call   0x66e120
  75a452:	84 c0                	test   al,al
  75a454:	0f 84 ee f7 ff ff    	je     0x759c48
  75a45a:	80 7c 24 16 00       	cmp    BYTE PTR [esp+0x16],0x0
  75a45f:	0f 57 c9             	xorps  xmm1,xmm1
  75a462:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  75a468:	74 21                	je     0x75a48b
  75a46a:	56                   	push   esi
  75a46b:	e8 d0 a4 ec ff       	call   0x624940
  75a470:	83 c4 04             	add    esp,0x4
  75a473:	84 c0                	test   al,al
  75a475:	74 0a                	je     0x75a481
  75a477:	f3 0f 10 0d 3c 45 18 01 	movss  xmm1,DWORD PTR ds:0x118453c
  75a47f:	eb 29                	jmp    0x75a4aa
  75a481:	f3 0f 10 0d 38 45 18 01 	movss  xmm1,DWORD PTR ds:0x1184538
  75a489:	eb 1f                	jmp    0x75a4aa
  75a48b:	80 7c 24 1f 00       	cmp    BYTE PTR [esp+0x1f],0x0
  75a490:	74 1e                	je     0x75a4b0
  75a492:	f6 45 08 70          	test   BYTE PTR [ebp+0x8],0x70
  75a496:	74 0a                	je     0x75a4a2
  75a498:	f3 0f 10 0d bc 56 00 01 	movss  xmm1,DWORD PTR ds:0x10056bc
  75a4a0:	eb 08                	jmp    0x75a4aa
  75a4a2:	f3 0f 10 0d b8 56 00 01 	movss  xmm1,DWORD PTR ds:0x10056b8
  75a4aa:	f3 0f 11 4c 24 18    	movss  DWORD PTR [esp+0x18],xmm1
  75a4b0:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  75a4b5:	74 14                	je     0x75a4cb
  75a4b7:	80 7c 24 1e 00       	cmp    BYTE PTR [esp+0x1e],0x0
  75a4bc:	74 18                	je     0x75a4d6
  75a4be:	80 7c 24 14 00       	cmp    BYTE PTR [esp+0x14],0x0
  75a4c3:	0f 84 7f f7 ff ff    	je     0x759c48
  75a4c9:	eb 0b                	jmp    0x75a4d6
  75a4cb:	80 7c 24 3f 00       	cmp    BYTE PTR [esp+0x3f],0x0
  75a4d0:	0f 85 72 f7 ff ff    	jne    0x759c48
  75a4d6:	f3 0f 10 44 24 54    	movss  xmm0,DWORD PTR [esp+0x54]
  75a4dc:	f3 0f 5c c1          	subss  xmm0,xmm1
  75a4e0:	0f 2f 44 24 50       	comiss xmm0,DWORD PTR [esp+0x50]
  75a4e5:	73 0c                	jae    0x75a4f3
  75a4e7:	80 7c 24 15 00       	cmp    BYTE PTR [esp+0x15],0x0
  75a4ec:	c6 44 24 15 00       	mov    BYTE PTR [esp+0x15],0x0
  75a4f1:	74 05                	je     0x75a4f8
  75a4f3:	c6 44 24 15 01       	mov    BYTE PTR [esp+0x15],0x1
  75a4f8:	32 db                	xor    bl,bl
  75a4fa:	38 5c 24 17          	cmp    BYTE PTR [esp+0x17],bl
  75a4fe:	75 4c                	jne    0x75a54c
  75a500:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  75a503:	0f 28 01             	movaps xmm0,XMMWORD PTR [ecx]
  75a506:	8b 4c 24 5c          	mov    ecx,DWORD PTR [esp+0x5c]
  75a50a:	6a 00                	push   0x0
  75a50c:	0f 29 44 24 44       	movaps XMMWORD PTR [esp+0x44],xmm0
  75a511:	d9 44 24 4c          	fld    DWORD PTR [esp+0x4c]
  75a515:	83 ec 08             	sub    esp,0x8
  75a518:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a51c:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  75a521:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  75a525:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a528:	e8 53 63 50 00       	call   0xc60880
  75a52d:	85 c0                	test   eax,eax
  75a52f:	74 1b                	je     0x75a54c
  75a531:	f3 0f 10 80 18 02 00 00 	movss  xmm0,DWORD PTR [eax+0x218]
  75a539:	f3 0f 5c 44 24 18    	subss  xmm0,DWORD PTR [esp+0x18]
  75a53f:	0f 2f 44 24 50       	comiss xmm0,DWORD PTR [esp+0x50]
  75a544:	76 04                	jbe    0x75a54a
  75a546:	b3 01                	mov    bl,0x1
  75a548:	eb 02                	jmp    0x75a54c
  75a54a:	32 db                	xor    bl,bl
  75a54c:	80 7c 24 15 00       	cmp    BYTE PTR [esp+0x15],0x0
  75a551:	75 23                	jne    0x75a576
  75a553:	84 db                	test   bl,bl
  75a555:	75 1f                	jne    0x75a576
  75a557:	38 5c 24 16          	cmp    BYTE PTR [esp+0x16],bl
  75a55b:	0f 85 e7 f6 ff ff    	jne    0x759c48
  75a561:	38 5c 24 1f          	cmp    BYTE PTR [esp+0x1f],bl
  75a565:	0f 84 c1 00 00 00    	je     0x75a62c
  75a56b:	b0 01                	mov    al,0x1
  75a56d:	5f                   	pop    edi
  75a56e:	5e                   	pop    esi
  75a56f:	5b                   	pop    ebx
  75a570:	8b e5                	mov    esp,ebp
  75a572:	5d                   	pop    ebp
  75a573:	c2 20 00             	ret    0x20
  75a576:	80 7c 24 1f 00       	cmp    BYTE PTR [esp+0x1f],0x0
  75a57b:	75 0b                	jne    0x75a588
  75a57d:	80 7c 24 16 00       	cmp    BYTE PTR [esp+0x16],0x0
  75a582:	0f 84 a4 00 00 00    	je     0x75a62c
  75a588:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
  75a58b:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  75a58e:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  75a592:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  75a597:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  75a59b:	83 ec 08             	sub    esp,0x8
  75a59e:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a5a2:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  75a5a7:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  75a5ab:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a5ae:	e8 1d e2 50 00       	call   0xc687d0
  75a5b3:	85 c0                	test   eax,eax
  75a5b5:	75 75                	jne    0x75a62c
  75a5b7:	8b bc 24 98 00 00 00 	mov    edi,DWORD PTR [esp+0x98]
  75a5be:	8b cf                	mov    ecx,edi
  75a5c0:	e8 fb ef 0c 00       	call   0x8295c0
  75a5c5:	85 c0                	test   eax,eax
  75a5c7:	74 63                	je     0x75a62c
  75a5c9:	8b 46 24             	mov    eax,DWORD PTR [esi+0x24]
  75a5cc:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  75a5cf:	0f 28 06             	movaps xmm0,XMMWORD PTR [esi]
  75a5d2:	89 44 24 78          	mov    DWORD PTR [esp+0x78],eax
  75a5d6:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
  75a5d9:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  75a5dc:	52                   	push   edx
  75a5dd:	8b 50 20             	mov    edx,DWORD PTR [eax+0x20]
  75a5e0:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
  75a5e3:	51                   	push   ecx
  75a5e4:	52                   	push   edx
  75a5e5:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  75a5ea:	0f 29 44 24 4c       	movaps XMMWORD PTR [esp+0x4c],xmm0
  75a5ef:	f3 0f 10 44 24 4c    	movss  xmm0,DWORD PTR [esp+0x4c]
  75a5f5:	50                   	push   eax
  75a5f6:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  75a5fd:	f3 0f 11 84 24 80 00 00 00 	movss  DWORD PTR [esp+0x80],xmm0
  75a606:	f3 0f 10 44 24 38    	movss  xmm0,DWORD PTR [esp+0x38]
  75a60c:	51                   	push   ecx
  75a60d:	8b cf                	mov    ecx,edi
  75a60f:	f3 0f 11 84 24 88 00 00 00 	movss  DWORD PTR [esp+0x88],xmm0
  75a618:	e8 a3 ef 0c 00       	call   0x8295c0
  75a61d:	8b c8                	mov    ecx,eax
  75a61f:	e8 dc d7 ec ff       	call   0x627e00
  75a624:	84 c0                	test   al,al
  75a626:	0f 85 1c f6 ff ff    	jne    0x759c48
  75a62c:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  75a62f:	33 db                	xor    ebx,ebx
  75a631:	53                   	push   ebx
  75a632:	53                   	push   ebx
  75a633:	68 00 00 80 00       	push   0x800000
  75a638:	8b ce                	mov    ecx,esi
  75a63a:	e8 a1 1e 0c 00       	call   0x81c4e0
  75a63f:	84 c0                	test   al,al
  75a641:	0f 84 df 03 00 00    	je     0x75aa26
  75a647:	38 5c 24 16          	cmp    BYTE PTR [esp+0x16],bl
  75a64b:	89 9c 24 e0 00 00 00 	mov    DWORD PTR [esp+0xe0],ebx
  75a652:	c6 84 24 e4 00 00 00 01 	mov    BYTE PTR [esp+0xe4],0x1
  75a65a:	89 b4 24 e8 00 00 00 	mov    DWORD PTR [esp+0xe8],esi
  75a661:	88 9c 24 e5 00 00 00 	mov    BYTE PTR [esp+0xe5],bl
  75a668:	74 0d                	je     0x75a677
  75a66a:	38 5c 24 13          	cmp    BYTE PTR [esp+0x13],bl
  75a66e:	75 07                	jne    0x75a677
  75a670:	c7 45 08 00 0e 00 00 	mov    DWORD PTR [ebp+0x8],0xe00
  75a677:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
  75a67a:	d9 05 7c 48 04 01    	fld    DWORD PTR ds:0x104487c
  75a680:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75a683:	8b 51 20             	mov    edx,DWORD PTR [ecx+0x20]
  75a686:	8b 49 24             	mov    ecx,DWORD PTR [ecx+0x24]
  75a689:	50                   	push   eax
  75a68a:	53                   	push   ebx
  75a68b:	89 94 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],edx
  75a692:	8d 94 24 8c 00 00 00 	lea    edx,[esp+0x8c]
  75a699:	52                   	push   edx
  75a69a:	51                   	push   ecx
  75a69b:	89 84 24 d0 00 00 00 	mov    DWORD PTR [esp+0xd0],eax
  75a6a2:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a6a5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  75a6a8:	89 8c 24 dc 00 00 00 	mov    DWORD PTR [esp+0xdc],ecx
  75a6af:	8b 8c 24 a8 00 00 00 	mov    ecx,DWORD PTR [esp+0xa8]
  75a6b6:	50                   	push   eax
  75a6b7:	89 9c 24 98 00 00 00 	mov    DWORD PTR [esp+0x98],ebx
  75a6be:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
  75a6c5:	89 9c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ebx
  75a6cc:	c7 84 24 a4 00 00 00 7c e3 fe 00 	mov    DWORD PTR [esp+0xa4],0xfee37c
  75a6d7:	e8 04 41 0d 00       	call   0x82e7e0
  75a6dc:	84 c0                	test   al,al
  75a6de:	0f 84 e5 02 00 00    	je     0x75a9c9
  75a6e4:	8b 8c 24 84 00 00 00 	mov    ecx,DWORD PTR [esp+0x84]
  75a6eb:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
  75a6f2:	3b c8                	cmp    ecx,eax
  75a6f4:	89 4c 24 50          	mov    DWORD PTR [esp+0x50],ecx
  75a6f8:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
  75a6fc:	0f 84 c7 02 00 00    	je     0x75a9c9
  75a702:	8b 4c 24 50          	mov    ecx,DWORD PTR [esp+0x50]
  75a706:	8b 01                	mov    eax,DWORD PTR [ecx]
  75a708:	85 c0                	test   eax,eax
  75a70a:	89 44 24 18          	mov    DWORD PTR [esp+0x18],eax
  75a70e:	0f 84 9b 02 00 00    	je     0x75a9af
  75a714:	8b f0                	mov    esi,eax
  75a716:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  75a71a:	8b 56 fc             	mov    edx,DWORD PTR [esi-0x4]
  75a71d:	8b 82 84 00 00 00    	mov    eax,DWORD PTR [edx+0x84]
  75a723:	83 c6 fc             	add    esi,0xfffffffc
  75a726:	8b ce                	mov    ecx,esi
  75a728:	ff d0                	call   eax
  75a72a:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75a72d:	8b f8                	mov    edi,eax
  75a72f:	3b 79 20             	cmp    edi,DWORD PTR [ecx+0x20]
  75a732:	8b da                	mov    ebx,edx
  75a734:	75 0b                	jne    0x75a741
  75a736:	8b d1                	mov    edx,ecx
  75a738:	3b 5a 24             	cmp    ebx,DWORD PTR [edx+0x24]
  75a73b:	0f 84 50 02 00 00    	je     0x75a991
  75a741:	8b 84 24 80 00 00 00 	mov    eax,DWORD PTR [esp+0x80]
  75a748:	3b 78 50             	cmp    edi,DWORD PTR [eax+0x50]
  75a74b:	75 09                	jne    0x75a756
  75a74d:	3b 58 54             	cmp    ebx,DWORD PTR [eax+0x54]
  75a750:	0f 84 3b 02 00 00    	je     0x75a991
  75a756:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  75a759:	53                   	push   ebx
  75a75a:	57                   	push   edi
  75a75b:	e8 60 1e 0c 00       	call   0x81c5c0
  75a760:	84 c0                	test   al,al
  75a762:	0f 85 29 02 00 00    	jne    0x75a991
  75a768:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  75a76c:	8b 01                	mov    eax,DWORD PTR [ecx]
  75a76e:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  75a771:	ff d2                	call   edx
  75a773:	83 c0 ff             	add    eax,0xffffffff
  75a776:	83 f8 16             	cmp    eax,0x16
  75a779:	0f 87 12 02 00 00    	ja     0x75a991
  75a77f:	0f b6 80 ec af 75 00 	movzx  eax,BYTE PTR [eax+0x75afec]
  75a786:	ff 24 85 dc af 75 00 	jmp    DWORD PTR [eax*4+0x75afdc]
  75a78d:	8b cf                	mov    ecx,edi
  75a78f:	0b cb                	or     ecx,ebx
  75a791:	0f 84 fa 01 00 00    	je     0x75a991
  75a797:	8b 8c 24 9c 00 00 00 	mov    ecx,DWORD PTR [esp+0x9c]
  75a79e:	53                   	push   ebx
  75a79f:	57                   	push   edi
  75a7a0:	e8 db d7 1d 00       	call   0x937f80
  75a7a5:	50                   	push   eax
  75a7a6:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  75a7aa:	e8 a1 3a e0 ff       	call   0x55e250
  75a7af:	83 7c 24 5c 00       	cmp    DWORD PTR [esp+0x5c],0x0
  75a7b4:	0f 84 46 01 00 00    	je     0x75a900
  75a7ba:	8b 16                	mov    edx,DWORD PTR [esi]
  75a7bc:	8b 82 c0 00 00 00    	mov    eax,DWORD PTR [edx+0xc0]
  75a7c2:	8b ce                	mov    ecx,esi
  75a7c4:	ff d0                	call   eax
  75a7c6:	84 c0                	test   al,al
  75a7c8:	8b 16                	mov    edx,DWORD PTR [esi]
  75a7ca:	8b ce                	mov    ecx,esi
  75a7cc:	0f 84 d5 00 00 00    	je     0x75a8a7
  75a7d2:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  75a7d5:	6a 00                	push   0x0
  75a7d7:	8d 84 24 c4 00 00 00 	lea    eax,[esp+0xc4]
  75a7de:	50                   	push   eax
  75a7df:	ff d2                	call   edx
  75a7e1:	50                   	push   eax
  75a7e2:	e8 39 6a ec ff       	call   0x621220
  75a7e7:	83 c4 04             	add    esp,0x4
  75a7ea:	84 c0                	test   al,al
  75a7ec:	0f 85 0e 01 00 00    	jne    0x75a900
  75a7f2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  75a7f5:	0f 28 00             	movaps xmm0,XMMWORD PTR [eax]
  75a7f8:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  75a7fc:	0f 29 44 24 40       	movaps XMMWORD PTR [esp+0x40],xmm0
  75a801:	d9 44 24 48          	fld    DWORD PTR [esp+0x48]
  75a805:	83 ec 08             	sub    esp,0x8
  75a808:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75a80c:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  75a811:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  75a815:	d9 1c 24             	fstp   DWORD PTR [esp]
  75a818:	e8 b3 df 50 00       	call   0xc687d0
  75a81d:	85 c0                	test   eax,eax
  75a81f:	0f 84 db 00 00 00    	je     0x75a900
  75a825:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
  75a828:	8d 4c 24 70          	lea    ecx,[esp+0x70]
  75a82c:	51                   	push   ecx
  75a82d:	52                   	push   edx
  75a82e:	8b c8                	mov    ecx,eax
  75a830:	e8 6b c9 35 00       	call   0xab71a0
  75a835:	d9 05 60 d7 fe 00    	fld    DWORD PTR ds:0xfed760
  75a83b:	0f 28 44 24 70       	movaps xmm0,XMMWORD PTR [esp+0x70]
  75a840:	83 ec 0c             	sub    esp,0xc
  75a843:	8b c4                	mov    eax,esp
  75a845:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  75a849:	0f 29 84 24 bc 00 00 00 	movaps XMMWORD PTR [esp+0xbc],xmm0
  75a851:	0f 29 84 24 ac 00 00 00 	movaps XMMWORD PTR [esp+0xac],xmm0
  75a859:	f3 0f 10 84 24 bc 00 00 00 	movss  xmm0,DWORD PTR [esp+0xbc]
  75a862:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  75a866:	f3 0f 10 84 24 b4 00 00 00 	movss  xmm0,DWORD PTR [esp+0xb4]
  75a86f:	f3 0f 11 40 04       	movss  DWORD PTR [eax+0x4],xmm0
  75a874:	8b 06                	mov    eax,DWORD PTR [esi]
  75a876:	8b 90 d4 00 00 00    	mov    edx,DWORD PTR [eax+0xd4]
  75a87c:	6a 00                	push   0x0
  75a87e:	8b ce                	mov    ecx,esi
  75a880:	ff d2                	call   edx
  75a882:	84 c0                	test   al,al
  75a884:	0f 85 a7 02 00 00    	jne    0x75ab31
  75a88a:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  75a88d:	f3 0f 10 05 b4 35 fb 00 	movss  xmm0,DWORD PTR ds:0xfb35b4
  75a895:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  75a899:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  75a89d:	e8 3e ba fe ff       	call   0x7462e0
  75a8a2:	e9 ea 00 00 00       	jmp    0x75a991
  75a8a7:	8b 42 5c             	mov    eax,DWORD PTR [edx+0x5c]
  75a8aa:	ff d0                	call   eax
  75a8ac:	84 c0                	test   al,al
  75a8ae:	74 41                	je     0x75a8f1
  75a8b0:	8b 16                	mov    edx,DWORD PTR [esi]
  75a8b2:	8b 52 08             	mov    edx,DWORD PTR [edx+0x8]
  75a8b5:	6a 00                	push   0x0
  75a8b7:	8d 84 24 c4 00 00 00 	lea    eax,[esp+0xc4]
  75a8be:	50                   	push   eax
  75a8bf:	8b ce                	mov    ecx,esi
  75a8c1:	ff d2                	call   edx
  75a8c3:	50                   	push   eax
  75a8c4:	e8 57 69 ec ff       	call   0x621220
  75a8c9:	83 c4 04             	add    esp,0x4
  75a8cc:	84 c0                	test   al,al
  75a8ce:	0f 84 6e 02 00 00    	je     0x75ab42
  75a8d4:	8b 45 24             	mov    eax,DWORD PTR [ebp+0x24]
  75a8d7:	f3 0f 10 05 b4 35 fb 00 	movss  xmm0,DWORD PTR ds:0xfb35b4
  75a8df:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  75a8e3:	f3 0f 11 00          	movss  DWORD PTR [eax],xmm0
  75a8e7:	e8 f4 b9 fe ff       	call   0x7462e0
  75a8ec:	e9 a0 00 00 00       	jmp    0x75a991
  75a8f1:	8b 4d 24             	mov    ecx,DWORD PTR [ebp+0x24]
  75a8f4:	f3 0f 10 05 b4 35 fb 00 	movss  xmm0,DWORD PTR ds:0xfb35b4
  75a8fc:	f3 0f 11 01          	movss  DWORD PTR [ecx],xmm0
  75a900:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  75a904:	e8 d7 b9 fe ff       	call   0x7462e0
  75a909:	e9 83 00 00 00       	jmp    0x75a991
  75a90e:	8b d7                	mov    edx,edi
  75a910:	0b d3                	or     edx,ebx
  75a912:	74 3c                	je     0x75a950
  75a914:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  75a917:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  75a91a:	0b 48 24             	or     ecx,DWORD PTR [eax+0x24]
  75a91d:	75 31                	jne    0x75a950
  75a91f:	8b 8c 24 9c 00 00 00 	mov    ecx,DWORD PTR [esp+0x9c]
  75a926:	53                   	push   ebx
  75a927:	57                   	push   edi
  75a928:	e8 53 d6 1d 00       	call   0x937f80
  75a92d:	50                   	push   eax
  75a92e:	8d 4c 24 58          	lea    ecx,[esp+0x58]
  75a932:	e8 19 39 e0 ff       	call   0x55e250
  75a937:	83 7c 24 54 00       	cmp    DWORD PTR [esp+0x54],0x0
  75a93c:	74 09                	je     0x75a947
  75a93e:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  75a941:	89 78 20             	mov    DWORD PTR [eax+0x20],edi
  75a944:	89 58 24             	mov    DWORD PTR [eax+0x24],ebx
  75a947:	8d 4c 24 54          	lea    ecx,[esp+0x54]
  75a94b:	e8 90 b9 fe ff       	call   0x7462e0
  75a950:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  75a955:	0f 84 f0 01 00 00    	je     0x75ab4b
  75a95b:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  75a960:	0f 85 e5 01 00 00    	jne    0x75ab4b
  75a966:	8b 16                	mov    edx,DWORD PTR [esi]
  75a968:	8b 42 5c             	mov    eax,DWORD PTR [edx+0x5c]
  75a96b:	8b ce                	mov    ecx,esi
  75a96d:	ff d0                	call   eax
  75a96f:	84 c0                	test   al,al
  75a971:	0f 84 d4 01 00 00    	je     0x75ab4b
  75a977:	8b 4e 18             	mov    ecx,DWORD PTR [esi+0x18]
  75a97a:	23 4e 1c             	and    ecx,DWORD PTR [esi+0x1c]
  75a97d:	83 f9 ff             	cmp    ecx,0xffffffff
  75a980:	0f 84 c5 01 00 00    	je     0x75ab4b
  75a986:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  75a989:	33 c9                	xor    ecx,ecx
  75a98b:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  75a98e:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  75a991:	8b 4c 24 18          	mov    ecx,DWORD PTR [esp+0x18]
  75a995:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  75a998:	83 c0 ff             	add    eax,0xffffffff
  75a99b:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  75a99e:	75 0f                	jne    0x75a9af
  75a9a0:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  75a9a7:	8b 11                	mov    edx,DWORD PTR [ecx]
  75a9a9:	8b 02                	mov    eax,DWORD PTR [edx]
  75a9ab:	6a 01                	push   0x1
  75a9ad:	ff d0                	call   eax
  75a9af:	8b 44 24 50          	mov    eax,DWORD PTR [esp+0x50]
  75a9b3:	83 c0 04             	add    eax,0x4
  75a9b6:	3b 44 24 60          	cmp    eax,DWORD PTR [esp+0x60]
  75a9ba:	89 44 24 50          	mov    DWORD PTR [esp+0x50],eax
  75a9be:	0f 85 3e fd ff ff    	jne    0x75a702
  75a9c4:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  75a9c7:	33 db                	xor    ebx,ebx
  75a9c9:	8b 94 24 88 00 00 00 	mov    edx,DWORD PTR [esp+0x88]
  75a9d0:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
  75a9d7:	52                   	push   edx
  75a9d8:	50                   	push   eax
  75a9d9:	8d 8c 24 8c 00 00 00 	lea    ecx,[esp+0x8c]
  75a9e0:	e8 8b 5b 54 00       	call   0xca0570
  75a9e5:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
  75a9ec:	3b c3                	cmp    eax,ebx
  75a9ee:	74 09                	je     0x75a9f9
  75a9f0:	50                   	push   eax
  75a9f1:	e8 ea 9a d8 ff       	call   0x4e44e0
  75a9f6:	83 c4 04             	add    esp,0x4
  75a9f9:	8b 8c 24 e0 00 00 00 	mov    ecx,DWORD PTR [esp+0xe0]
  75aa00:	3b cb                	cmp    ecx,ebx
  75aa02:	74 22                	je     0x75aa26
  75aa04:	8d 41 04             	lea    eax,[ecx+0x4]
  75aa07:	8b d0                	mov    edx,eax
  75aa09:	83 cf ff             	or     edi,0xffffffff
  75aa0c:	f0 0f c1 3a          	lock xadd DWORD PTR [edx],edi
  75aa10:	4f                   	dec    edi
  75aa11:	75 13                	jne    0x75aa26
  75aa13:	ba 01 00 00 00       	mov    edx,0x1
  75aa18:	87 10                	xchg   DWORD PTR [eax],edx
  75aa1a:	3b cb                	cmp    ecx,ebx
  75aa1c:	74 08                	je     0x75aa26
  75aa1e:	8b 01                	mov    eax,DWORD PTR [ecx]
  75aa20:	8b 10                	mov    edx,DWORD PTR [eax]
  75aa22:	6a 01                	push   0x1
  75aa24:	ff d2                	call   edx
  75aa26:	53                   	push   ebx
  75aa27:	53                   	push   ebx
  75aa28:	68 00 00 01 00       	push   0x10000
  75aa2d:	8b ce                	mov    ecx,esi
  75aa2f:	e8 ac 1a 0c 00       	call   0x81c4e0
  75aa34:	84 c0                	test   al,al
  75aa36:	0f 84 e7 01 00 00    	je     0x75ac23
  75aa3c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  75aa3f:	50                   	push   eax
  75aa40:	8d 8c 24 c4 00 00 00 	lea    ecx,[esp+0xc4]
  75aa47:	e8 b4 5f ef ff       	call   0x650a00
  75aa4c:	d9 05 e8 98 f9 00    	fld    DWORD PTR ds:0xf998e8
  75aa52:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  75aa55:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  75aa58:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
  75aa5b:	51                   	push   ecx
  75aa5c:	d9 1c 24             	fstp   DWORD PTR [esp]
  75aa5f:	52                   	push   edx
  75aa60:	89 8c 24 ec 00 00 00 	mov    DWORD PTR [esp+0xec],ecx
  75aa67:	6a 01                	push   0x1
  75aa69:	8d 8c 24 90 00 00 00 	lea    ecx,[esp+0x90]
  75aa70:	51                   	push   ecx
  75aa71:	8b 8c 24 a8 00 00 00 	mov    ecx,DWORD PTR [esp+0xa8]
  75aa78:	8d 94 24 d0 00 00 00 	lea    edx,[esp+0xd0]
  75aa7f:	52                   	push   edx
  75aa80:	50                   	push   eax
  75aa81:	89 9c 24 9c 00 00 00 	mov    DWORD PTR [esp+0x9c],ebx
  75aa88:	89 9c 24 a0 00 00 00 	mov    DWORD PTR [esp+0xa0],ebx
  75aa8f:	89 9c 24 a4 00 00 00 	mov    DWORD PTR [esp+0xa4],ebx
  75aa96:	c7 84 24 a8 00 00 00 7c e3 fe 00 	mov    DWORD PTR [esp+0xa8],0xfee37c
  75aaa1:	e8 3a 40 0d 00       	call   0x82eae0
  75aaa6:	84 c0                	test   al,al
  75aaa8:	0f 84 45 01 00 00    	je     0x75abf3
  75aaae:	8b bc 24 84 00 00 00 	mov    edi,DWORD PTR [esp+0x84]
  75aab5:	8b 84 24 88 00 00 00 	mov    eax,DWORD PTR [esp+0x88]
  75aabc:	3b f8                	cmp    edi,eax
  75aabe:	89 7c 24 54          	mov    DWORD PTR [esp+0x54],edi
  75aac2:	89 44 24 60          	mov    DWORD PTR [esp+0x60],eax
  75aac6:	0f 84 27 01 00 00    	je     0x75abf3
  75aacc:	8d 64 24 00          	lea    esp,[esp+0x0]
  75aad0:	8b 37                	mov    esi,DWORD PTR [edi]
  75aad2:	3b f3                	cmp    esi,ebx
  75aad4:	89 74 24 50          	mov    DWORD PTR [esp+0x50],esi
  75aad8:	0f 84 01 01 00 00    	je     0x75abdf
  75aade:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  75aae2:	8b 06                	mov    eax,DWORD PTR [esi]
  75aae4:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  75aae7:	8b ce                	mov    ecx,esi
  75aae9:	ff d2                	call   edx
  75aaeb:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75aaee:	3b 41 20             	cmp    eax,DWORD PTR [ecx+0x20]
  75aaf1:	75 09                	jne    0x75aafc
  75aaf3:	3b 51 24             	cmp    edx,DWORD PTR [ecx+0x24]
  75aaf6:	0f 84 c5 00 00 00    	je     0x75abc1
  75aafc:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
  75aaff:	52                   	push   edx
  75ab00:	50                   	push   eax
  75ab01:	e8 ba 1a 0c 00       	call   0x81c5c0
  75ab06:	84 c0                	test   al,al
  75ab08:	0f 85 b3 00 00 00    	jne    0x75abc1
  75ab0e:	8b 16                	mov    edx,DWORD PTR [esi]
  75ab10:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  75ab13:	8b ce                	mov    ecx,esi
  75ab15:	ff d0                	call   eax
  75ab17:	83 c0 fe             	add    eax,0xfffffffe
  75ab1a:	83 f8 15             	cmp    eax,0x15
  75ab1d:	0f 87 9e 00 00 00    	ja     0x75abc1
  75ab23:	0f b6 88 0c b0 75 00 	movzx  ecx,BYTE PTR [eax+0x75b00c]
  75ab2a:	ff 24 8d 04 b0 75 00 	jmp    DWORD PTR [ecx*4+0x75b004]
  75ab31:	8b 45 20             	mov    eax,DWORD PTR [ebp+0x20]
  75ab34:	8b 48 20             	mov    ecx,DWORD PTR [eax+0x20]
  75ab37:	0b 48 24             	or     ecx,DWORD PTR [eax+0x24]
  75ab3a:	75 06                	jne    0x75ab42
  75ab3c:	89 78 20             	mov    DWORD PTR [eax+0x20],edi
  75ab3f:	89 58 24             	mov    DWORD PTR [eax+0x24],ebx
  75ab42:	8d 4c 24 5c          	lea    ecx,[esp+0x5c]
  75ab46:	e8 95 b7 fe ff       	call   0x7462e0
  75ab4b:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  75ab4f:	e8 cc b1 e0 ff       	call   0x565d20
  75ab54:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  75ab5b:	e8 80 82 ef ff       	call   0x652de0
  75ab60:	8d 8c 24 c0 00 00 00 	lea    ecx,[esp+0xc0]
  75ab67:	e8 c4 90 ee ff       	call   0x643c30
  75ab6c:	b0 01                	mov    al,0x1
  75ab6e:	5f                   	pop    edi
  75ab6f:	5e                   	pop    esi
  75ab70:	5b                   	pop    ebx
  75ab71:	8b e5                	mov    esp,ebp
  75ab73:	5d                   	pop    ebp
  75ab74:	c2 20 00             	ret    0x20
  75ab77:	80 7c 24 13 00       	cmp    BYTE PTR [esp+0x13],0x0
  75ab7c:	8d 7e fc             	lea    edi,[esi-0x4]
  75ab7f:	0f 84 a7 01 00 00    	je     0x75ad2c
  75ab85:	80 7c 24 17 00       	cmp    BYTE PTR [esp+0x17],0x0
  75ab8a:	0f 85 9c 01 00 00    	jne    0x75ad2c
  75ab90:	8b 17                	mov    edx,DWORD PTR [edi]
  75ab92:	8b 42 5c             	mov    eax,DWORD PTR [edx+0x5c]
  75ab95:	8b cf                	mov    ecx,edi
  75ab97:	ff d0                	call   eax
  75ab99:	84 c0                	test   al,al
  75ab9b:	0f 84 8b 01 00 00    	je     0x75ad2c
  75aba1:	8b 4f 18             	mov    ecx,DWORD PTR [edi+0x18]
  75aba4:	23 4f 1c             	and    ecx,DWORD PTR [edi+0x1c]
  75aba7:	83 f9 ff             	cmp    ecx,0xffffffff
  75abaa:	0f 84 7c 01 00 00    	je     0x75ad2c
  75abb0:	8b 4d 20             	mov    ecx,DWORD PTR [ebp+0x20]
  75abb3:	8b 7c 24 54          	mov    edi,DWORD PTR [esp+0x54]
  75abb7:	33 c0                	xor    eax,eax
  75abb9:	89 41 20             	mov    DWORD PTR [ecx+0x20],eax
  75abbc:	89 41 24             	mov    DWORD PTR [ecx+0x24],eax
  75abbf:	33 db                	xor    ebx,ebx
  75abc1:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  75abc4:	83 c0 ff             	add    eax,0xffffffff
  75abc7:	3b c3                	cmp    eax,ebx
  75abc9:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  75abcc:	75 11                	jne    0x75abdf
  75abce:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  75abd5:	8b 16                	mov    edx,DWORD PTR [esi]
  75abd7:	8b 02                	mov    eax,DWORD PTR [edx]
  75abd9:	6a 01                	push   0x1
  75abdb:	8b ce                	mov    ecx,esi
  75abdd:	ff d0                	call   eax
  75abdf:	83 c7 04             	add    edi,0x4
  75abe2:	3b 7c 24 60          	cmp    edi,DWORD PTR [esp+0x60]
  75abe6:	89 7c 24 54          	mov    DWORD PTR [esp+0x54],edi
  75abea:	0f 85 e0 fe ff ff    	jne    0x75aad0
  75abf0:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  75abf3:	8b 8c 24 88 00 00 00 	mov    ecx,DWORD PTR [esp+0x88]
  75abfa:	8b 94 24 84 00 00 00 	mov    edx,DWORD PTR [esp+0x84]
  75ac01:	51                   	push   ecx
  75ac02:	52                   	push   edx
  75ac03:	8d 8c 24 8c 00 00 00 	lea    ecx,[esp+0x8c]
  75ac0a:	e8 61 59 54 00       	call   0xca0570
  75ac0f:	8b 84 24 84 00 00 00 	mov    eax,DWORD PTR [esp+0x84]
  75ac16:	3b c3                	cmp    eax,ebx
  75ac18:	74 09                	je     0x75ac23
  75ac1a:	50                   	push   eax
  75ac1b:	e8 c0 98 d8 ff       	call   0x4e44e0
  75ac20:	83 c4 04             	add    esp,0x4
  75ac23:	53                   	push   ebx
  75ac24:	53                   	push   ebx
  75ac25:	68 00 00 00 02       	push   0x2000000
  75ac2a:	8b ce                	mov    ecx,esi
  75ac2c:	e8 af 18 0c 00       	call   0x81c4e0
  75ac31:	84 c0                	test   al,al
  75ac33:	0f 84 13 01 00 00    	je     0x75ad4c
  75ac39:	8b 45 1c             	mov    eax,DWORD PTR [ebp+0x1c]
  75ac3c:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
  75ac3f:	8b 4d 18             	mov    ecx,DWORD PTR [ebp+0x18]
  75ac42:	53                   	push   ebx
  75ac43:	50                   	push   eax
  75ac44:	57                   	push   edi
  75ac45:	e8 46 21 ff ff       	call   0x74cd90
  75ac4a:	84 c0                	test   al,al
  75ac4c:	0f 84 fa 00 00 00    	je     0x75ad4c
  75ac52:	8b ce                	mov    ecx,esi
  75ac54:	89 5c 24 60          	mov    DWORD PTR [esp+0x60],ebx
  75ac58:	89 5c 24 64          	mov    DWORD PTR [esp+0x64],ebx
  75ac5c:	e8 bf 18 0c 00       	call   0x81c520
  75ac61:	8b 8c 24 80 00 00 00 	mov    ecx,DWORD PTR [esp+0x80]
  75ac68:	f3 0f 10 49 70       	movss  xmm1,DWORD PTR [ecx+0x70]
  75ac6d:	0f 57 c0             	xorps  xmm0,xmm0
  75ac70:	8d 54 24 60          	lea    edx,[esp+0x60]
  75ac74:	52                   	push   edx
  75ac75:	50                   	push   eax
  75ac76:	8b 41 54             	mov    eax,DWORD PTR [ecx+0x54]
  75ac79:	8b 49 50             	mov    ecx,DWORD PTR [ecx+0x50]
  75ac7c:	53                   	push   ebx
  75ac7d:	50                   	push   eax
  75ac7e:	f3 0f 11 44 24 5c    	movss  DWORD PTR [esp+0x5c],xmm0
  75ac84:	f3 0f 11 44 24 58    	movss  DWORD PTR [esp+0x58],xmm0
  75ac8a:	f3 0f 11 4c 24 54    	movss  DWORD PTR [esp+0x54],xmm1
  75ac90:	0f 28 0f             	movaps xmm1,XMMWORD PTR [edi]
  75ac93:	f3 0f 11 44 24 50    	movss  DWORD PTR [esp+0x50],xmm0
  75ac99:	0f 28 44 24 50       	movaps xmm0,XMMWORD PTR [esp+0x50]
  75ac9e:	51                   	push   ecx
  75ac9f:	8d 94 24 b4 00 00 00 	lea    edx,[esp+0xb4]
  75aca6:	0f 58 c1             	addps  xmm0,xmm1
  75aca9:	52                   	push   edx
  75acaa:	0f 29 84 24 b8 00 00 00 	movaps XMMWORD PTR [esp+0xb8],xmm0
  75acb2:	e8 b9 f4 02 00       	call   0x78a170
  75acb7:	83 c4 18             	add    esp,0x18
  75acba:	84 c0                	test   al,al
  75acbc:	0f 85 8a 00 00 00    	jne    0x75ad4c
  75acc2:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  75acc6:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  75acca:	8b d0                	mov    edx,eax
  75accc:	0b d1                	or     edx,ecx
  75acce:	0f 84 74 ef ff ff    	je     0x759c48
  75acd4:	8b 75 20             	mov    esi,DWORD PTR [ebp+0x20]
  75acd7:	8b 56 20             	mov    edx,DWORD PTR [esi+0x20]
  75acda:	0b 56 24             	or     edx,DWORD PTR [esi+0x24]
  75acdd:	0f 85 65 ef ff ff    	jne    0x759c48
  75ace3:	51                   	push   ecx
  75ace4:	8b 8c 24 a0 00 00 00 	mov    ecx,DWORD PTR [esp+0xa0]
  75aceb:	50                   	push   eax
  75acec:	e8 8f d2 1d 00       	call   0x937f80
  75acf1:	50                   	push   eax
  75acf2:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  75acf9:	e8 52 35 e0 ff       	call   0x55e250
  75acfe:	39 9c 24 80 00 00 00 	cmp    DWORD PTR [esp+0x80],ebx
  75ad05:	74 0e                	je     0x75ad15
  75ad07:	8b 44 24 60          	mov    eax,DWORD PTR [esp+0x60]
  75ad0b:	8b 4c 24 64          	mov    ecx,DWORD PTR [esp+0x64]
  75ad0f:	89 46 20             	mov    DWORD PTR [esi+0x20],eax
  75ad12:	89 4e 24             	mov    DWORD PTR [esi+0x24],ecx
  75ad15:	8d 8c 24 80 00 00 00 	lea    ecx,[esp+0x80]
  75ad1c:	e8 bf b5 fe ff       	call   0x7462e0
  75ad21:	b0 01                	mov    al,0x1
  75ad23:	5f                   	pop    edi
  75ad24:	5e                   	pop    esi
  75ad25:	5b                   	pop    ebx
  75ad26:	8b e5                	mov    esp,ebp
  75ad28:	5d                   	pop    ebp
  75ad29:	c2 20 00             	ret    0x20
  75ad2c:	8d 4c 24 50          	lea    ecx,[esp+0x50]
  75ad30:	e8 eb af e0 ff       	call   0x565d20
  75ad35:	8d 8c 24 84 00 00 00 	lea    ecx,[esp+0x84]
  75ad3c:	e8 9f 80 ef ff       	call   0x652de0
  75ad41:	b0 01                	mov    al,0x1
  75ad43:	5f                   	pop    edi
  75ad44:	5e                   	pop    esi
  75ad45:	5b                   	pop    ebx
  75ad46:	8b e5                	mov    esp,ebp
  75ad48:	5d                   	pop    ebp
  75ad49:	c2 20 00             	ret    0x20
  75ad4c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  75ad4f:	0f 28 02             	movaps xmm0,XMMWORD PTR [edx]
  75ad52:	8b 4c 24 58          	mov    ecx,DWORD PTR [esp+0x58]
  75ad56:	0f 29 84 24 a0 00 00 00 	movaps XMMWORD PTR [esp+0xa0],xmm0
  75ad5e:	d9 84 24 a8 00 00 00 	fld    DWORD PTR [esp+0xa8]
  75ad65:	83 ec 08             	sub    esp,0x8
  75ad68:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  75ad6c:	0f 29 84 24 b8 00 00 00 	movaps XMMWORD PTR [esp+0xb8],xmm0
  75ad74:	d9 84 24 b8 00 00 00 	fld    DWORD PTR [esp+0xb8]
  75ad7b:	d9 1c 24             	fstp   DWORD PTR [esp]
  75ad7e:	e8 4d da 50 00       	call   0xc687d0
  75ad83:	8b f0                	mov    esi,eax
  75ad85:	3b f3                	cmp    esi,ebx
  75ad87:	0f 84 11 02 00 00    	je     0x75af9e
  75ad8d:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  75ad90:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  75ad98:	8d 44 24 70          	lea    eax,[esp+0x70]
  75ad9c:	50                   	push   eax
  75ad9d:	51                   	push   ecx
  75ad9e:	56                   	push   esi
  75ad9f:	89 5c 24 4c          	mov    DWORD PTR [esp+0x4c],ebx
  75ada3:	89 5c 24 50          	mov    DWORD PTR [esp+0x50],ebx
  75ada7:	89 5c 24 54          	mov    DWORD PTR [esp+0x54],ebx
  75adab:	c7 44 24 58 78 56 00 01 	mov    DWORD PTR [esp+0x58],0x1005678
  75adb3:	f3 0f 11 44 24 7c    	movss  DWORD PTR [esp+0x7c],xmm0
  75adb9:	f3 0f 11 84 24 80 00 00 00 	movss  DWORD PTR [esp+0x80],xmm0
  75adc2:	89 9c 24 84 00 00 00 	mov    DWORD PTR [esp+0x84],ebx
  75adc9:	e8 f2 1a 38 00       	call   0xadc8c0
  75adce:	f3 0f 10 05 ec e6 06 01 	movss  xmm0,DWORD PTR ds:0x106e6ec
  75add6:	f3 0f 10 4c 24 7c    	movss  xmm1,DWORD PTR [esp+0x7c]
  75addc:	83 c4 0c             	add    esp,0xc
  75addf:	f3 0f 5c c8          	subss  xmm1,xmm0
  75ade3:	8d 54 24 60          	lea    edx,[esp+0x60]
  75ade7:	f3 0f 11 4c 24 60    	movss  DWORD PTR [esp+0x60],xmm1
  75aded:	f3 0f 10 4c 24 74    	movss  xmm1,DWORD PTR [esp+0x74]
  75adf3:	52                   	push   edx
  75adf4:	f3 0f 5c c8          	subss  xmm1,xmm0
  75adf8:	53                   	push   ebx
  75adf9:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  75adfd:	89 5c 24 28          	mov    DWORD PTR [esp+0x28],ebx
  75ae01:	89 5c 24 2c          	mov    DWORD PTR [esp+0x2c],ebx
  75ae05:	89 5c 24 30          	mov    DWORD PTR [esp+0x30],ebx
  75ae09:	c7 44 24 34 40 56 00 01 	mov    DWORD PTR [esp+0x34],0x1005640
  75ae11:	f3 0f 11 4c 24 6c    	movss  DWORD PTR [esp+0x6c],xmm1
  75ae17:	e8 f4 ad ca ff       	call   0x405c10
  75ae1c:	f3 0f 10 05 ec e6 06 01 	movss  xmm0,DWORD PTR ds:0x106e6ec
  75ae24:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  75ae28:	3b 44 24 28          	cmp    eax,DWORD PTR [esp+0x28]
  75ae2c:	f3 0f 10 4c 24 70    	movss  xmm1,DWORD PTR [esp+0x70]
  75ae32:	f3 0f 10 54 24 74    	movss  xmm2,DWORD PTR [esp+0x74]
  75ae38:	f3 0f 5c c8          	subss  xmm1,xmm0
  75ae3c:	f3 0f 58 d0          	addss  xmm2,xmm0
  75ae40:	f3 0f 11 4c 24 60    	movss  DWORD PTR [esp+0x60],xmm1
  75ae46:	f3 0f 11 54 24 64    	movss  DWORD PTR [esp+0x64],xmm2
  75ae4c:	73 18                	jae    0x75ae66
  75ae4e:	8b c8                	mov    ecx,eax
  75ae50:	83 c0 08             	add    eax,0x8
  75ae53:	3b cb                	cmp    ecx,ebx
  75ae55:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  75ae59:	74 26                	je     0x75ae81
  75ae5b:	f3 0f 11 09          	movss  DWORD PTR [ecx],xmm1
  75ae5f:	f3 0f 11 51 04       	movss  DWORD PTR [ecx+0x4],xmm2
  75ae64:	eb 17                	jmp    0x75ae7d
  75ae66:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  75ae6a:	51                   	push   ecx
  75ae6b:	50                   	push   eax
  75ae6c:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  75ae70:	e8 9b ad ca ff       	call   0x405c10
  75ae75:	f3 0f 10 05 ec e6 06 01 	movss  xmm0,DWORD PTR ds:0x106e6ec
  75ae7d:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  75ae81:	3b 44 24 28          	cmp    eax,DWORD PTR [esp+0x28]
  75ae85:	f3 0f 10 4c 24 70    	movss  xmm1,DWORD PTR [esp+0x70]
  75ae8b:	f3 0f 10 54 24 74    	movss  xmm2,DWORD PTR [esp+0x74]
  75ae91:	f3 0f 58 c8          	addss  xmm1,xmm0
  75ae95:	f3 0f 58 d0          	addss  xmm2,xmm0
  75ae99:	f3 0f 11 4c 24 60    	movss  DWORD PTR [esp+0x60],xmm1
  75ae9f:	f3 0f 11 54 24 64    	movss  DWORD PTR [esp+0x64],xmm2
  75aea5:	73 18                	jae    0x75aebf
  75aea7:	8b c8                	mov    ecx,eax
  75aea9:	83 c0 08             	add    eax,0x8
  75aeac:	3b cb                	cmp    ecx,ebx
  75aeae:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  75aeb2:	74 26                	je     0x75aeda
  75aeb4:	f3 0f 11 09          	movss  DWORD PTR [ecx],xmm1
  75aeb8:	f3 0f 11 51 04       	movss  DWORD PTR [ecx+0x4],xmm2
  75aebd:	eb 17                	jmp    0x75aed6
  75aebf:	8d 54 24 60          	lea    edx,[esp+0x60]
  75aec3:	52                   	push   edx
  75aec4:	50                   	push   eax
  75aec5:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  75aec9:	e8 42 ad ca ff       	call   0x405c10
  75aece:	f3 0f 10 05 ec e6 06 01 	movss  xmm0,DWORD PTR ds:0x106e6ec
  75aed6:	8b 44 24 24          	mov    eax,DWORD PTR [esp+0x24]
  75aeda:	3b 44 24 28          	cmp    eax,DWORD PTR [esp+0x28]
  75aede:	f3 0f 10 4c 24 70    	movss  xmm1,DWORD PTR [esp+0x70]
  75aee4:	f3 0f 10 54 24 74    	movss  xmm2,DWORD PTR [esp+0x74]
  75aeea:	f3 0f 58 c8          	addss  xmm1,xmm0
  75aeee:	f3 0f 5c d0          	subss  xmm2,xmm0
  75aef2:	0f 28 c2             	movaps xmm0,xmm2
  75aef5:	f3 0f 11 4c 24 60    	movss  DWORD PTR [esp+0x60],xmm1
  75aefb:	f3 0f 11 44 24 64    	movss  DWORD PTR [esp+0x64],xmm0
  75af01:	73 18                	jae    0x75af1b
  75af03:	8b c8                	mov    ecx,eax
  75af05:	83 c0 08             	add    eax,0x8
  75af08:	3b cb                	cmp    ecx,ebx
  75af0a:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  75af0e:	74 1a                	je     0x75af2a
  75af10:	f3 0f 11 09          	movss  DWORD PTR [ecx],xmm1
  75af14:	f3 0f 11 41 04       	movss  DWORD PTR [ecx+0x4],xmm0
  75af19:	eb 0f                	jmp    0x75af2a
  75af1b:	8d 4c 24 60          	lea    ecx,[esp+0x60]
  75af1f:	51                   	push   ecx
  75af20:	50                   	push   eax
  75af21:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  75af25:	e8 e6 ac ca ff       	call   0x405c10
  75af2a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
  75af2d:	8b 48 24             	mov    ecx,DWORD PTR [eax+0x24]
  75af30:	53                   	push   ebx
  75af31:	53                   	push   ebx
  75af32:	8d 54 24 48          	lea    edx,[esp+0x48]
  75af36:	52                   	push   edx
  75af37:	51                   	push   ecx
  75af38:	8d 54 24 30          	lea    edx,[esp+0x30]
  75af3c:	52                   	push   edx
  75af3d:	8b ce                	mov    ecx,esi
  75af3f:	e8 ac d0 36 00       	call   0xac7ff0
  75af44:	8b 44 24 44          	mov    eax,DWORD PTR [esp+0x44]
  75af48:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  75af4c:	3b f0                	cmp    esi,eax
  75af4e:	8b f8                	mov    edi,eax
  75af50:	74 2a                	je     0x75af7c
  75af52:	8b 06                	mov    eax,DWORD PTR [esi]
  75af54:	3b c3                	cmp    eax,ebx
  75af56:	74 19                	je     0x75af71
  75af58:	50                   	push   eax
  75af59:	e8 52 4e 3a 00       	call   0xaffdb0
  75af5e:	83 c4 04             	add    esp,0x4
  75af61:	3b c3                	cmp    eax,ebx
  75af63:	74 0c                	je     0x75af71
  75af65:	f7 80 d0 00 00 00 00 00 05 00 	test   DWORD PTR [eax+0xd0],0x50000
  75af6f:	75 38                	jne    0x75afa9
  75af71:	83 c6 04             	add    esi,0x4
  75af74:	3b f7                	cmp    esi,edi
  75af76:	75 da                	jne    0x75af52
  75af78:	8b 74 24 40          	mov    esi,DWORD PTR [esp+0x40]
  75af7c:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  75af80:	3b c3                	cmp    eax,ebx
  75af82:	74 0d                	je     0x75af91
  75af84:	50                   	push   eax
  75af85:	e8 56 95 d8 ff       	call   0x4e44e0
  75af8a:	8b 74 24 44          	mov    esi,DWORD PTR [esp+0x44]
  75af8e:	83 c4 04             	add    esp,0x4
  75af91:	3b f3                	cmp    esi,ebx
  75af93:	74 09                	je     0x75af9e
  75af95:	56                   	push   esi
  75af96:	e8 45 95 d8 ff       	call   0x4e44e0
  75af9b:	83 c4 04             	add    esp,0x4
  75af9e:	32 c0                	xor    al,al
  75afa0:	5f                   	pop    edi
  75afa1:	5e                   	pop    esi
  75afa2:	5b                   	pop    ebx
  75afa3:	8b e5                	mov    esp,ebp
  75afa5:	5d                   	pop    ebp
  75afa6:	c2 20 00             	ret    0x20
  75afa9:	8b 44 24 20          	mov    eax,DWORD PTR [esp+0x20]
  75afad:	3b c3                	cmp    eax,ebx
  75afaf:	74 09                	je     0x75afba
  75afb1:	50                   	push   eax
  75afb2:	e8 29 95 d8 ff       	call   0x4e44e0
  75afb7:	83 c4 04             	add    esp,0x4
  75afba:	8b 44 24 40          	mov    eax,DWORD PTR [esp+0x40]
  75afbe:	3b c3                	cmp    eax,ebx
  75afc0:	0f 84 82 ec ff ff    	je     0x759c48
  75afc6:	50                   	push   eax
  75afc7:	e8 14 95 d8 ff       	call   0x4e44e0
  75afcc:	83 c4 04             	add    esp,0x4
  75afcf:	5f                   	pop    edi
  75afd0:	5e                   	pop    esi
  75afd1:	b0 01                	mov    al,0x1
  75afd3:	5b                   	pop    ebx
  75afd4:	8b e5                	mov    esp,ebp
  75afd6:	5d                   	pop    ebp
  75afd7:	c2 20 00             	ret    0x20
