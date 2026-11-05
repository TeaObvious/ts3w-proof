# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00b02d50,0x00b02e92); analyst name WorldPosition_TestOutside.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b02d50 <.text+0x701d50>:
  b02d50:	55                   	push   ebp
  b02d51:	8b ec                	mov    ebp,esp
  b02d53:	83 e4 f0             	and    esp,0xfffffff0
  b02d56:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  b02d5c:	83 ec 28             	sub    esp,0x28
  b02d5f:	85 c9                	test   ecx,ecx
  b02d61:	56                   	push   esi
  b02d62:	57                   	push   edi
  b02d63:	0f 84 13 01 00 00    	je     0xb02e7c
  b02d69:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  b02d6c:	d9 47 08             	fld    DWORD PTR [edi+0x8]
  b02d6f:	83 ec 08             	sub    esp,0x8
  b02d72:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b02d76:	d9 07                	fld    DWORD PTR [edi]
  b02d78:	d9 1c 24             	fstp   DWORD PTR [esp]
  b02d7b:	e8 50 5a 16 00       	call   0xc687d0
  b02d80:	8b f0                	mov    esi,eax
  b02d82:	85 f6                	test   esi,esi
  b02d84:	0f 84 f2 00 00 00    	je     0xb02e7c
  b02d8a:	f3 0f 10 05 18 b2 fa 00 	movss  xmm0,DWORD PTR ds:0xfab218
  b02d92:	f3 0f 10 4f 08       	movss  xmm1,DWORD PTR [edi+0x8]
  b02d97:	8d 44 24 14          	lea    eax,[esp+0x14]
  b02d9b:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  b02da1:	f3 0f 10 4f 04       	movss  xmm1,DWORD PTR [edi+0x4]
  b02da6:	50                   	push   eax
  b02da7:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  b02dad:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  b02db3:	f3 0f 10 07          	movss  xmm0,DWORD PTR [edi]
  b02db7:	8d 4c 24 24          	lea    ecx,[esp+0x24]
  b02dbb:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  b02dc1:	f3 0f 11 4c 24 28    	movss  DWORD PTR [esp+0x28],xmm1
  b02dc7:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  b02dcd:	0f 28 44 24 24       	movaps xmm0,XMMWORD PTR [esp+0x24]
  b02dd2:	51                   	push   ecx
  b02dd3:	56                   	push   esi
  b02dd4:	c7 44 24 28 00 00 00 00 	mov    DWORD PTR [esp+0x28],0x0
  b02ddc:	0f 29 44 24 2c       	movaps XMMWORD PTR [esp+0x2c],xmm0
  b02de1:	e8 3a 9b fd ff       	call   0xadc920
  b02de6:	8b 8e ac 02 00 00    	mov    ecx,DWORD PTR [esi+0x2ac]
  b02dec:	83 c4 0c             	add    esp,0xc
  b02def:	80 7d 0c 00          	cmp    BYTE PTR [ebp+0xc],0x0
  b02df3:	74 1c                	je     0xb02e11
  b02df5:	6a 01                	push   0x1
  b02df7:	6a 00                	push   0x0
  b02df9:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  b02dfd:	52                   	push   edx
  b02dfe:	8b ce                	mov    ecx,esi
  b02e00:	e8 cb 72 fb ff       	call   0xaba0d0
  b02e05:	84 c0                	test   al,al
  b02e07:	74 1e                	je     0xb02e27
  b02e09:	32 c0                	xor    al,al
  b02e0b:	5f                   	pop    edi
  b02e0c:	5e                   	pop    esi
  b02e0d:	8b e5                	mov    esp,ebp
  b02e0f:	5d                   	pop    ebp
  b02e10:	c3                   	ret
  b02e11:	85 c9                	test   ecx,ecx
  b02e13:	74 12                	je     0xb02e27
  b02e15:	6a 00                	push   0x0
  b02e17:	6a 00                	push   0x0
  b02e19:	8d 44 24 1c          	lea    eax,[esp+0x1c]
  b02e1d:	50                   	push   eax
  b02e1e:	e8 8d 1d 09 00       	call   0xb94bb0
  b02e23:	84 c0                	test   al,al
  b02e25:	75 e2                	jne    0xb02e09
  b02e27:	8b be 98 02 00 00    	mov    edi,DWORD PTR [esi+0x298]
  b02e2d:	8b b6 80 01 00 00    	mov    esi,DWORD PTR [esi+0x180]
  b02e33:	39 74 24 1c          	cmp    DWORD PTR [esp+0x1c],esi
  b02e37:	7f 43                	jg     0xb02e7c
  b02e39:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  b02e40:	6a 00                	push   0x0
  b02e42:	6a 00                	push   0x0
  b02e44:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  b02e48:	51                   	push   ecx
  b02e49:	8b cf                	mov    ecx,edi
  b02e4b:	e8 70 54 04 00       	call   0xb482c0
  b02e50:	0f b7 c0             	movzx  eax,ax
  b02e53:	66 85 c0             	test   ax,ax
  b02e56:	8b cf                	mov    ecx,edi
  b02e58:	75 2a                	jne    0xb02e84
  b02e5a:	6a 00                	push   0x0
  b02e5c:	6a 01                	push   0x1
  b02e5e:	8d 54 24 1c          	lea    edx,[esp+0x1c]
  b02e62:	52                   	push   edx
  b02e63:	e8 58 54 04 00       	call   0xb482c0
  b02e68:	66 85 c0             	test   ax,ax
  b02e6b:	74 0f                	je     0xb02e7c
  b02e6d:	8b 44 24 1c          	mov    eax,DWORD PTR [esp+0x1c]
  b02e71:	83 c0 01             	add    eax,0x1
  b02e74:	3b c6                	cmp    eax,esi
  b02e76:	89 44 24 1c          	mov    DWORD PTR [esp+0x1c],eax
  b02e7a:	7e c4                	jle    0xb02e40
  b02e7c:	b0 01                	mov    al,0x1
  b02e7e:	5f                   	pop    edi
  b02e7f:	5e                   	pop    esi
  b02e80:	8b e5                	mov    esp,ebp
  b02e82:	5d                   	pop    ebp
  b02e83:	c3                   	ret
  b02e84:	6a 01                	push   0x1
  b02e86:	50                   	push   eax
  b02e87:	e8 54 95 04 00       	call   0xb4c3e0
  b02e8c:	5f                   	pop    edi
  b02e8d:	5e                   	pop    esi
  b02e8e:	8b e5                	mov    esp,ebp
  b02e90:	5d                   	pop    ebp
  b02e91:	c3                   	ret
