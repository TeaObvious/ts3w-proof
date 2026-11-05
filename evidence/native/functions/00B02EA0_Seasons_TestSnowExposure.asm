# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00b02ea0, 0x00b0306f).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Function: Seasons_TestSnowExposure (analyst-assigned)
Entry: 0x00b02ea0
Ghidra body envelope: 0x00b02ea0..0x00b0306e inclusive


PC 1.67 TS3W.exe: pei-i386; original machine bytes and objdump Intel instructions


Disassembly of section .text:

00b02ea0 <.text+0x701ea0>:
  b02ea0:	55                   	push   ebp
  b02ea1:	8b ec                	mov    ebp,esp
  b02ea3:	83 e4 f0             	and    esp,0xfffffff0
  b02ea6:	83 ec 24             	sub    esp,0x24
  b02ea9:	53                   	push   ebx
  b02eaa:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  b02ead:	56                   	push   esi
  b02eae:	57                   	push   edi
  b02eaf:	8b 3d c4 db 1e 01    	mov    edi,DWORD PTR ds:0x11edbc4
  b02eb5:	85 ff                	test   edi,edi
  b02eb7:	74 2a                	je     0xb02ee3
  b02eb9:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  b02ebc:	0f 29 44 24 10       	movaps XMMWORD PTR [esp+0x10],xmm0
  b02ec1:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  b02ec5:	83 ec 08             	sub    esp,0x8
  b02ec8:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b02ecc:	0f 29 44 24 28       	movaps XMMWORD PTR [esp+0x28],xmm0
  b02ed1:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  b02ed5:	8b cf                	mov    ecx,edi
  b02ed7:	d9 1c 24             	fstp   DWORD PTR [esp]
  b02eda:	e8 f1 58 16 00       	call   0xc687d0
  b02edf:	8b f0                	mov    esi,eax
  b02ee1:	eb 02                	jmp    0xb02ee5
  b02ee3:	33 f6                	xor    esi,esi
  b02ee5:	85 f6                	test   esi,esi
  b02ee7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  b02eea:	c6 00 00             	mov    BYTE PTR [eax],0x0
  b02eed:	0f 84 92 00 00 00    	je     0xb02f85
  b02ef3:	8b be 98 02 00 00    	mov    edi,DWORD PTR [esi+0x298]
  b02ef9:	85 ff                	test   edi,edi
  b02efb:	0f 84 65 01 00 00    	je     0xb03066
  b02f01:	f3 0f 10 05 18 b2 fa 	movss  xmm0,DWORD PTR ds:0xfab218
  b02f08:	00
  b02f09:	8d 4c 24 10          	lea    ecx,[esp+0x10]
  b02f0d:	51                   	push   ecx
  b02f0e:	53                   	push   ebx
  b02f0f:	56                   	push   esi
  b02f10:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  b02f16:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  b02f1c:	c7 44 24 24 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  b02f23:	00
  b02f24:	e8 f7 99 fd ff       	call   0xadc920
  b02f29:	83 c4 0c             	add    esp,0xc
  b02f2c:	6a 00                	push   0x0
  b02f2e:	6a 00                	push   0x0
  b02f30:	8d 54 24 18          	lea    edx,[esp+0x18]
  b02f34:	52                   	push   edx
  b02f35:	8b cf                	mov    ecx,edi
  b02f37:	e8 84 53 04 00       	call   0xb482c0
  b02f3c:	0f b7 c0             	movzx  eax,ax
  b02f3f:	6a 01                	push   0x1
  b02f41:	50                   	push   eax
  b02f42:	8b cf                	mov    ecx,edi
  b02f44:	e8 97 94 04 00       	call   0xb4c3e0
  b02f49:	84 c0                	test   al,al
  b02f4b:	74 71                	je     0xb02fbe
  b02f4d:	0c ff                	or     al,0xff
  b02f4f:	88 44 24 0c          	mov    BYTE PTR [esp+0xc],al
  b02f53:	88 44 24 0d          	mov    BYTE PTR [esp+0xd],al
  b02f57:	88 44 24 0f          	mov    BYTE PTR [esp+0xf],al
  b02f5b:	8d 44 24 0c          	lea    eax,[esp+0xc]
  b02f5f:	50                   	push   eax
  b02f60:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  b02f64:	51                   	push   ecx
  b02f65:	c6 44 24 16 00       	mov    BYTE PTR [esp+0x16],0x0
  b02f6a:	e8 41 4e ff ff       	call   0xaf7db0
  b02f6f:	83 c4 08             	add    esp,0x8
  b02f72:	8d 54 24 0c          	lea    edx,[esp+0xc]
  b02f76:	52                   	push   edx
  b02f77:	8b ce                	mov    ecx,esi
  b02f79:	e8 52 96 fb ff       	call   0xabc5d0
  b02f7e:	5f                   	pop    edi
  b02f7f:	5e                   	pop    esi
  b02f80:	5b                   	pop    ebx
  b02f81:	8b e5                	mov    esp,ebp
  b02f83:	5d                   	pop    ebp
  b02f84:	c3                   	ret
  b02f85:	8b 4f 5c             	mov    ecx,DWORD PTR [edi+0x5c]
  b02f88:	85 c9                	test   ecx,ecx
  b02f8a:	74 3b                	je     0xb02fc7
  b02f8c:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  b02f8f:	6a 00                	push   0x0
  b02f91:	0f 29 44 24 24       	movaps XMMWORD PTR [esp+0x24],xmm0
  b02f96:	d9 44 24 2c          	fld    DWORD PTR [esp+0x2c]
  b02f9a:	6a 00                	push   0x0
  b02f9c:	83 ec 08             	sub    esp,0x8
  b02f9f:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b02fa3:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  b02fa8:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  b02fac:	d9 1c 24             	fstp   DWORD PTR [esp]
  b02faf:	e8 0c 36 08 00       	call   0xb865c0
  b02fb4:	84 c0                	test   al,al
  b02fb6:	74 0f                	je     0xb02fc7
  b02fb8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  b02fbb:	c6 00 01             	mov    BYTE PTR [eax],0x1
  b02fbe:	32 c0                	xor    al,al
  b02fc0:	5f                   	pop    edi
  b02fc1:	5e                   	pop    esi
  b02fc2:	5b                   	pop    ebx
  b02fc3:	8b e5                	mov    esp,ebp
  b02fc5:	5d                   	pop    ebp
  b02fc6:	c3                   	ret
  b02fc7:	8b cf                	mov    ecx,edi
  b02fc9:	e8 c2 e0 15 00       	call   0xc61090
  b02fce:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  b02fd2:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  b02fd5:	6a 00                	push   0x0
  b02fd7:	6a 00                	push   0x0
  b02fd9:	6a 00                	push   0x0
  b02fdb:	6a 00                	push   0x0
  b02fdd:	6a 00                	push   0x0
  b02fdf:	6a 01                	push   0x1
  b02fe1:	0f 29 44 24 38       	movaps XMMWORD PTR [esp+0x38],xmm0
  b02fe6:	d9 44 24 40          	fld    DWORD PTR [esp+0x40]
  b02fea:	6a 00                	push   0x0
  b02fec:	83 ec 08             	sub    esp,0x8
  b02fef:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b02ff3:	0f 29 44 24 34       	movaps XMMWORD PTR [esp+0x34],xmm0
  b02ff8:	d9 44 24 34          	fld    DWORD PTR [esp+0x34]
  b02ffc:	8b cf                	mov    ecx,edi
  b02ffe:	d9 1c 24             	fstp   DWORD PTR [esp]
  b03001:	e8 8a 70 16 00       	call   0xc6a090
  b03006:	d8 25 f8 98 f9 00    	fsub   DWORD PTR ds:0xf998f8
  b0300c:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  b03010:	df f1                	fcomip st,st(1)
  b03012:	dd d8                	fstp   st(0)
  b03014:	72 0f                	jb     0xb03025
  b03016:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
  b03019:	c6 01 00             	mov    BYTE PTR [ecx],0x0
  b0301c:	32 c0                	xor    al,al
  b0301e:	5f                   	pop    edi
  b0301f:	5e                   	pop    esi
  b03020:	5b                   	pop    ebx
  b03021:	8b e5                	mov    esp,ebp
  b03023:	5d                   	pop    ebp
  b03024:	c3                   	ret
  b03025:	0f 28 03             	movaps xmm0,XMMWORD PTR [ebx]
  b03028:	0f 29 44 24 20       	movaps XMMWORD PTR [esp+0x20],xmm0
  b0302d:	d9 44 24 28          	fld    DWORD PTR [esp+0x28]
  b03031:	6a 01                	push   0x1
  b03033:	83 ec 08             	sub    esp,0x8
  b03036:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  b0303a:	0f 29 44 24 1c       	movaps XMMWORD PTR [esp+0x1c],xmm0
  b0303f:	d9 44 24 1c          	fld    DWORD PTR [esp+0x1c]
  b03043:	8b cf                	mov    ecx,edi
  b03045:	d9 1c 24             	fstp   DWORD PTR [esp]
  b03048:	e8 33 d8 15 00       	call   0xc60880
  b0304d:	85 c0                	test   eax,eax
  b0304f:	74 0f                	je     0xb03060
  b03051:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  b03054:	c6 02 00             	mov    BYTE PTR [edx],0x0
  b03057:	32 c0                	xor    al,al
  b03059:	5f                   	pop    edi
  b0305a:	5e                   	pop    esi
  b0305b:	5b                   	pop    ebx
  b0305c:	8b e5                	mov    esp,ebp
  b0305e:	5d                   	pop    ebp
  b0305f:	c3                   	ret
  b03060:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  b03063:	c6 00 01             	mov    BYTE PTR [eax],0x1
  b03066:	5f                   	pop    edi
  b03067:	5e                   	pop    esi
  b03068:	b0 01                	mov    al,0x1
  b0306a:	5b                   	pop    ebx
  b0306b:	8b e5                	mov    esp,ebp
  b0306d:	5d                   	pop    ebp
  b0306e:	c3                   	ret
