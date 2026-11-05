# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00c0cee0, 0x00c0d028); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c0cee0 <.text+0x80bee0>:
  c0cee0:	55                   	push   ebp
  c0cee1:	8b ec                	mov    ebp,esp
  c0cee3:	83 e4 f0             	and    esp,0xfffffff0
  c0cee6:	83 ec 14             	sub    esp,0x14
  c0cee9:	d9 05 b4 b5 f9 00    	fld    DWORD PTR ds:0xf9b5b4
  c0ceef:	53                   	push   ebx
  c0cef0:	56                   	push   esi
  c0cef1:	57                   	push   edi
  c0cef2:	6a 00                	push   0x0
  c0cef4:	8b f1                	mov    esi,ecx
  c0cef6:	8b 86 18 02 00 00    	mov    eax,DWORD PTR [esi+0x218]
  c0cefc:	6a 01                	push   0x1
  c0cefe:	50                   	push   eax
  c0ceff:	6a 01                	push   0x1
  c0cf01:	83 ec 08             	sub    esp,0x8
  c0cf04:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c0cf08:	8d 8e c0 2e 00 00    	lea    ecx,[esi+0x2ec0]
  c0cf0e:	d9 86 1c 02 00 00    	fld    DWORD PTR [esi+0x21c]
  c0cf14:	89 4c 24 24          	mov    DWORD PTR [esp+0x24],ecx
  c0cf18:	d9 1c 24             	fstp   DWORD PTR [esp]
  c0cf1b:	6a ff                	push   0xffffffff
  c0cf1d:	d9 86 20 02 00 00    	fld    DWORD PTR [esi+0x220]
  c0cf23:	6a 05                	push   0x5
  c0cf25:	68 00 02 00 00       	push   0x200
  c0cf2a:	68 00 02 00 00       	push   0x200
  c0cf2f:	83 ec 10             	sub    esp,0x10
  c0cf32:	8b c4                	mov    eax,esp
  c0cf34:	d9 18                	fstp   DWORD PTR [eax]
  c0cf36:	d9 86 24 02 00 00    	fld    DWORD PTR [esi+0x224]
  c0cf3c:	d9 58 04             	fstp   DWORD PTR [eax+0x4]
  c0cf3f:	d9 86 28 02 00 00    	fld    DWORD PTR [esi+0x228]
  c0cf45:	d9 58 08             	fstp   DWORD PTR [eax+0x8]
  c0cf48:	d9 86 2c 02 00 00    	fld    DWORD PTR [esi+0x22c]
  c0cf4e:	d9 58 0c             	fstp   DWORD PTR [eax+0xc]
  c0cf51:	e8 5a 42 f5 ff       	call   0xb611b0
  c0cf56:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
  c0cf59:	d9 86 20 02 00 00    	fld    DWORD PTR [esi+0x220]
  c0cf5f:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
  c0cf62:	53                   	push   ebx
  c0cf63:	51                   	push   ecx
  c0cf64:	d9 1c 24             	fstp   DWORD PTR [esp]
  c0cf67:	57                   	push   edi
  c0cf68:	e8 23 14 8d ff       	call   0x4de390
  c0cf6d:	d9 86 24 02 00 00    	fld    DWORD PTR [esi+0x224]
  c0cf73:	83 c4 0c             	add    esp,0xc
  c0cf76:	53                   	push   ebx
  c0cf77:	51                   	push   ecx
  c0cf78:	d9 1c 24             	fstp   DWORD PTR [esp]
  c0cf7b:	57                   	push   edi
  c0cf7c:	e8 0f 14 8d ff       	call   0x4de390
  c0cf81:	d9 86 28 02 00 00    	fld    DWORD PTR [esi+0x228]
  c0cf87:	83 c4 0c             	add    esp,0xc
  c0cf8a:	53                   	push   ebx
  c0cf8b:	51                   	push   ecx
  c0cf8c:	d9 1c 24             	fstp   DWORD PTR [esp]
  c0cf8f:	57                   	push   edi
  c0cf90:	e8 fb 13 8d ff       	call   0x4de390
  c0cf95:	d9 86 2c 02 00 00    	fld    DWORD PTR [esi+0x22c]
  c0cf9b:	83 c4 0c             	add    esp,0xc
  c0cf9e:	53                   	push   ebx
  c0cf9f:	51                   	push   ecx
  c0cfa0:	d9 1c 24             	fstp   DWORD PTR [esp]
  c0cfa3:	57                   	push   edi
  c0cfa4:	e8 e7 13 8d ff       	call   0x4de390
  c0cfa9:	8b 8e 44 02 00 00    	mov    ecx,DWORD PTR [esi+0x244]
  c0cfaf:	53                   	push   ebx
  c0cfb0:	51                   	push   ecx
  c0cfb1:	57                   	push   edi
  c0cfb2:	e8 a9 10 8d ff       	call   0x4de060
  c0cfb7:	8b 96 48 02 00 00    	mov    edx,DWORD PTR [esi+0x248]
  c0cfbd:	53                   	push   ebx
  c0cfbe:	52                   	push   edx
  c0cfbf:	57                   	push   edi
  c0cfc0:	e8 9b 10 8d ff       	call   0x4de060
  c0cfc5:	8b 86 4c 02 00 00    	mov    eax,DWORD PTR [esi+0x24c]
  c0cfcb:	53                   	push   ebx
  c0cfcc:	50                   	push   eax
  c0cfcd:	57                   	push   edi
  c0cfce:	e8 8d 10 8d ff       	call   0x4de060
  c0cfd3:	0f b6 8e 50 02 00 00 	movzx  ecx,BYTE PTR [esi+0x250]
  c0cfda:	51                   	push   ecx
  c0cfdb:	57                   	push   edi
  c0cfdc:	e8 1f 0e 8d ff       	call   0x4dde00
  c0cfe1:	0f 57 c0             	xorps  xmm0,xmm0
  c0cfe4:	83 c4 38             	add    esp,0x38
  c0cfe7:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  c0cfeb:	53                   	push   ebx
  c0cfec:	57                   	push   edi
  c0cfed:	6a 00                	push   0x0
  c0cfef:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  c0cff5:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  c0cffb:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  c0d001:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  c0d007:	0f 28 44 24 1c       	movaps xmm0,XMMWORD PTR [esp+0x1c]
  c0d00c:	6a 00                	push   0x0
  c0d00e:	8d 54 24 20          	lea    edx,[esp+0x20]
  c0d012:	52                   	push   edx
  c0d013:	0f 29 44 24 24       	movaps XMMWORD PTR [esp+0x24],xmm0
  c0d018:	e8 83 35 f5 ff       	call   0xb605a0
  c0d01d:	5f                   	pop    edi
  c0d01e:	5e                   	pop    esi
  c0d01f:	b0 01                	mov    al,0x1
  c0d021:	5b                   	pop    ebx
  c0d022:	8b e5                	mov    esp,ebp
  c0d024:	5d                   	pop    ebp
  c0d025:	c2 08 00             	ret    0x8
