# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Ghidra function-body envelope [0x00c0d950, 0x00c0da43); inferred boundaries.
# Machine instructions govern the paired decompiler interpretation.

TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c0d950 <.text+0x80c950>:
  c0d950:	55                   	push   ebp
  c0d951:	8b ec                	mov    ebp,esp
  c0d953:	83 e4 f0             	and    esp,0xfffffff0
  c0d956:	83 ec 18             	sub    esp,0x18
  c0d959:	56                   	push   esi
  c0d95a:	8b f1                	mov    esi,ecx
  c0d95c:	80 be 10 02 00 00 00 	cmp    BYTE PTR [esi+0x210],0x0
  c0d963:	57                   	push   edi
  c0d964:	0f 85 d3 00 00 00    	jne    0xc0da3d
  c0d96a:	83 be c0 2e 00 00 00 	cmp    DWORD PTR [esi+0x2ec0],0x0
  c0d971:	8d be c0 2e 00 00    	lea    edi,[esi+0x2ec0]
  c0d977:	c6 86 10 02 00 00 01 	mov    BYTE PTR [esi+0x210],0x1
  c0d97e:	74 0d                	je     0xc0d98d
  c0d980:	80 be 41 02 00 00 00 	cmp    BYTE PTR [esi+0x241],0x0
  c0d987:	0f 84 99 00 00 00    	je     0xc0da26
  c0d98d:	8b 86 18 02 00 00    	mov    eax,DWORD PTR [esi+0x218]
  c0d993:	d9 05 b4 b5 f9 00    	fld    DWORD PTR ds:0xf9b5b4
  c0d999:	6a 00                	push   0x0
  c0d99b:	6a 01                	push   0x1
  c0d99d:	50                   	push   eax
  c0d99e:	6a 01                	push   0x1
  c0d9a0:	83 ec 08             	sub    esp,0x8
  c0d9a3:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  c0d9a7:	8b cf                	mov    ecx,edi
  c0d9a9:	d9 86 1c 02 00 00    	fld    DWORD PTR [esi+0x21c]
  c0d9af:	d9 1c 24             	fstp   DWORD PTR [esp]
  c0d9b2:	6a ff                	push   0xffffffff
  c0d9b4:	d9 86 20 02 00 00    	fld    DWORD PTR [esi+0x220]
  c0d9ba:	6a 05                	push   0x5
  c0d9bc:	68 00 02 00 00       	push   0x200
  c0d9c1:	68 00 02 00 00       	push   0x200
  c0d9c6:	83 ec 10             	sub    esp,0x10
  c0d9c9:	8b c4                	mov    eax,esp
  c0d9cb:	d9 18                	fstp   DWORD PTR [eax]
  c0d9cd:	d9 86 24 02 00 00    	fld    DWORD PTR [esi+0x224]
  c0d9d3:	d9 58 04             	fstp   DWORD PTR [eax+0x4]
  c0d9d6:	d9 86 28 02 00 00    	fld    DWORD PTR [esi+0x228]
  c0d9dc:	d9 58 08             	fstp   DWORD PTR [eax+0x8]
  c0d9df:	d9 86 2c 02 00 00    	fld    DWORD PTR [esi+0x22c]
  c0d9e5:	d9 58 0c             	fstp   DWORD PTR [eax+0xc]
  c0d9e8:	e8 c3 37 f5 ff       	call   0xb611b0
  c0d9ed:	0f 57 c0             	xorps  xmm0,xmm0
  c0d9f0:	6a 01                	push   0x1
  c0d9f2:	6a 00                	push   0x0
  c0d9f4:	6a 01                	push   0x1
  c0d9f6:	6a 00                	push   0x0
  c0d9f8:	8d 4c 24 20          	lea    ecx,[esp+0x20]
  c0d9fc:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  c0da02:	f3 0f 11 44 24 28    	movss  DWORD PTR [esp+0x28],xmm0
  c0da08:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  c0da0e:	f3 0f 11 44 24 20    	movss  DWORD PTR [esp+0x20],xmm0
  c0da14:	0f 28 44 24 20       	movaps xmm0,XMMWORD PTR [esp+0x20]
  c0da19:	51                   	push   ecx
  c0da1a:	8b cf                	mov    ecx,edi
  c0da1c:	0f 29 44 24 24       	movaps XMMWORD PTR [esp+0x24],xmm0
  c0da21:	e8 7a 2b f5 ff       	call   0xb605a0
  c0da26:	6a 00                	push   0x0
  c0da28:	8b ce                	mov    ecx,esi
  c0da2a:	c6 86 50 03 00 00 00 	mov    BYTE PTR [esi+0x350],0x0
  c0da31:	e8 8a fb ff ff       	call   0xc0d5c0
  c0da36:	8b ce                	mov    ecx,esi
  c0da38:	e8 13 f3 ff ff       	call   0xc0cd50
  c0da3d:	5f                   	pop    edi
  c0da3e:	5e                   	pop    esi
  c0da3f:	8b e5                	mov    esp,ebp
  c0da41:	5d                   	pop    ebp
  c0da42:	c3                   	ret
