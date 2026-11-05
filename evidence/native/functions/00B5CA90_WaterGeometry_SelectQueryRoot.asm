# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00b5ca90, 0x00b5cb95).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

; Analyst-assigned name: WaterGeometry_SelectQueryRoot
; Original machine bytes and instructions, verified Ghidra function envelope 0x00b5ca90..0x00b5cb94.
; Alignment gaps inside non-contiguous Ghidra bodies are included in this envelope.

PC 1.67 TS3W.exe:     file format pei-i386


Disassembly of section .text:

00b5ca90 <.text+0x75ba90>:
  b5ca90:	55                   	push   ebp
  b5ca91:	8b ec                	mov    ebp,esp
  b5ca93:	83 e4 f0             	and    esp,0xfffffff0
  b5ca96:	83 ec 14             	sub    esp,0x14
  b5ca99:	53                   	push   ebx
  b5ca9a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  b5ca9d:	f3 0f 10 03          	movss  xmm0,DWORD PTR [ebx]
  b5caa1:	56                   	push   esi
  b5caa2:	8b f1                	mov    esi,ecx
  b5caa4:	f3 0f 10 8e a4 00 00 	movss  xmm1,DWORD PTR [esi+0xa4]
  b5caab:	00
  b5caac:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b5cab0:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b5cab4:	0f 5c c1             	subps  xmm0,xmm1
  b5cab7:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  b5cabe:	00
  b5cabf:	f3 0f 5e 4e 10       	divss  xmm1,DWORD PTR [esi+0x10]
  b5cac4:	57                   	push   edi
  b5cac5:	83 ec 08             	sub    esp,0x8
  b5cac8:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b5cacc:	0f 59 c1             	mulps  xmm0,xmm1
  b5cacf:	0f 29 44 24 18       	movaps XMMWORD PTR [esp+0x18],xmm0
  b5cad4:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  b5cad8:	dd 1c 24             	fstp   QWORD PTR [esp]
  b5cadb:	e8 f0 2c 42 00       	call   0xf7f7d0
  b5cae0:	e8 3b 2b 42 00       	call   0xf7f620
  b5cae5:	f3 0f 10 8e a8 00 00 	movss  xmm1,DWORD PTR [esi+0xa8]
  b5caec:	00
  b5caed:	f3 0f 10 43 04       	movss  xmm0,DWORD PTR [ebx+0x4]
  b5caf2:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b5caf6:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  b5cafa:	0f 5c c1             	subps  xmm0,xmm1
  b5cafd:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  b5cb04:	00
  b5cb05:	f3 0f 5e 4e 14       	divss  xmm1,DWORD PTR [esi+0x14]
  b5cb0a:	f3 0f 10 c9          	movss  xmm1,xmm1
  b5cb0e:	0f c6 c9 00          	shufps xmm1,xmm1,0x0
  b5cb12:	0f 59 c1             	mulps  xmm0,xmm1
  b5cb15:	0f 29 44 24 18       	movaps XMMWORD PTR [esp+0x18],xmm0
  b5cb1a:	d9 44 24 18          	fld    DWORD PTR [esp+0x18]
  b5cb1e:	8b f8                	mov    edi,eax
  b5cb20:	dd 1c 24             	fstp   QWORD PTR [esp]
  b5cb23:	e8 a8 2c 42 00       	call   0xf7f7d0
  b5cb28:	83 c4 08             	add    esp,0x8
  b5cb2b:	e8 f0 2a 42 00       	call   0xf7f620
  b5cb30:	85 ff                	test   edi,edi
  b5cb32:	7d 0c                	jge    0xb5cb40
  b5cb34:	83 c8 ff             	or     eax,0xffffffff
  b5cb37:	5f                   	pop    edi
  b5cb38:	5e                   	pop    esi
  b5cb39:	5b                   	pop    ebx
  b5cb3a:	8b e5                	mov    esp,ebp
  b5cb3c:	5d                   	pop    ebp
  b5cb3d:	c2 04 00             	ret    0x4
  b5cb40:	85 c0                	test   eax,eax
  b5cb42:	7c f0                	jl     0xb5cb34
  b5cb44:	8b 4e 70             	mov    ecx,DWORD PTR [esi+0x70]
  b5cb47:	2b 4e 6c             	sub    ecx,DWORD PTR [esi+0x6c]
  b5cb4a:	c1 f9 04             	sar    ecx,0x4
  b5cb4d:	3b f9                	cmp    edi,ecx
  b5cb4f:	7d e3                	jge    0xb5cb34
  b5cb51:	8b 56 6c             	mov    edx,DWORD PTR [esi+0x6c]
  b5cb54:	c1 e7 04             	shl    edi,0x4
  b5cb57:	8d 0c 17             	lea    ecx,[edi+edx*1]
  b5cb5a:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  b5cb5d:	2b 11                	sub    edx,DWORD PTR [ecx]
  b5cb5f:	c1 fa 02             	sar    edx,0x2
  b5cb62:	3b c2                	cmp    eax,edx
  b5cb64:	7d ce                	jge    0xb5cb34
  b5cb66:	8b 09                	mov    ecx,DWORD PTR [ecx]
  b5cb68:	8b 3c 81             	mov    edi,DWORD PTR [ecx+eax*4]
  b5cb6b:	85 ff                	test   edi,edi
  b5cb6d:	7c c5                	jl     0xb5cb34
  b5cb6f:	8b 4e 60             	mov    ecx,DWORD PTR [esi+0x60]
  b5cb72:	2b 4e 5c             	sub    ecx,DWORD PTR [esi+0x5c]
  b5cb75:	b8 67 66 66 66       	mov    eax,0x66666667
  b5cb7a:	f7 e9                	imul   ecx
  b5cb7c:	c1 fa 04             	sar    edx,0x4
  b5cb7f:	8b c2                	mov    eax,edx
  b5cb81:	c1 e8 1f             	shr    eax,0x1f
  b5cb84:	03 c2                	add    eax,edx
  b5cb86:	3b f8                	cmp    edi,eax
  b5cb88:	7f aa                	jg     0xb5cb34
  b5cb8a:	8b c7                	mov    eax,edi
  b5cb8c:	5f                   	pop    edi
  b5cb8d:	5e                   	pop    esi
  b5cb8e:	5b                   	pop    ebx
  b5cb8f:	8b e5                	mov    esp,ebp
  b5cb91:	5d                   	pop    ebp
  b5cb92:	c2 04 00             	ret    0x4
