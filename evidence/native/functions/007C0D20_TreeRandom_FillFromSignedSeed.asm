# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c0d20 <.text+0x3bfd20>:
  7c0d20:	db 44 24 04          	fild   DWORD PTR [esp+0x4]
  7c0d24:	56                   	push   esi
  7c0d25:	d9 05 f4 7b 01 01    	fld    DWORD PTR ds:0x1017bf4
  7c0d2b:	be 68 96 1d 01       	mov    esi,0x11d9668
  7c0d30:	eb 02                	jmp    0x7c0d34
  7c0d32:	d9 c9                	fxch   st(1)
  7c0d34:	d9 c9                	fxch   st(1)
  7c0d36:	e8 e5 e8 7b 00       	call   0xf7f620
  7c0d3b:	8b c8                	mov    ecx,eax
  7c0d3d:	b8 5f 0b 4e 83       	mov    eax,0x834e0b5f
  7c0d42:	f7 e9                	imul   ecx
  7c0d44:	03 d1                	add    edx,ecx
  7c0d46:	69 c9 a7 41 00 00    	imul   ecx,ecx,0x41a7
  7c0d4c:	c1 fa 10             	sar    edx,0x10
  7c0d4f:	8b c2                	mov    eax,edx
  7c0d51:	c1 e8 1f             	shr    eax,0x1f
  7c0d54:	03 c2                	add    eax,edx
  7c0d56:	69 c0 ff ff ff 7f    	imul   eax,eax,0x7fffffff
  7c0d5c:	2b c8                	sub    ecx,eax
  7c0d5e:	85 c9                	test   ecx,ecx
  7c0d60:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  7c0d64:	7f 0a                	jg     0x7c0d70
  7c0d66:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
  7c0d6c:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  7c0d70:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
  7c0d74:	83 c6 04             	add    esi,0x4
  7c0d77:	81 fe 68 98 1d 01    	cmp    esi,0x11d9868
  7c0d7d:	d9 c0                	fld    st(0)
  7c0d7f:	d8 ca                	fmul   st,st(2)
  7c0d81:	d9 5e fc             	fstp   DWORD PTR [esi-0x4]
  7c0d84:	7c ac                	jl     0x7c0d32
  7c0d86:	dd d9                	fstp   st(1)
  7c0d88:	5e                   	pop    esi
  7c0d89:	dd 1d 68 98 1d 01    	fstp   QWORD PTR ds:0x11d9868
  7c0d8f:	c3                   	ret
