# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c0c90 <.text+0x3bfc90>:
  7c0c90:	dd 44 24 04          	fld    QWORD PTR [esp+0x4]
  7c0c94:	56                   	push   esi
  7c0c95:	dc 0d 00 7c 01 01    	fmul   QWORD PTR ds:0x1017c00
  7c0c9b:	e8 80 e9 7b 00       	call   0xf7f620
  7c0ca0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
  7c0ca4:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
  7c0ca8:	be 68 96 1d 01       	mov    esi,0x11d9668
  7c0cad:	d9 05 f4 7b 01 01    	fld    DWORD PTR ds:0x1017bf4
  7c0cb3:	eb 02                	jmp    0x7c0cb7
  7c0cb5:	d9 c9                	fxch   st(1)
  7c0cb7:	d9 c9                	fxch   st(1)
  7c0cb9:	e8 62 e9 7b 00       	call   0xf7f620
  7c0cbe:	8b c8                	mov    ecx,eax
  7c0cc0:	b8 5f 0b 4e 83       	mov    eax,0x834e0b5f
  7c0cc5:	f7 e9                	imul   ecx
  7c0cc7:	03 d1                	add    edx,ecx
  7c0cc9:	69 c9 a7 41 00 00    	imul   ecx,ecx,0x41a7
  7c0ccf:	c1 fa 10             	sar    edx,0x10
  7c0cd2:	8b c2                	mov    eax,edx
  7c0cd4:	c1 e8 1f             	shr    eax,0x1f
  7c0cd7:	03 c2                	add    eax,edx
  7c0cd9:	69 c0 ff ff ff 7f    	imul   eax,eax,0x7fffffff
  7c0cdf:	2b c8                	sub    ecx,eax
  7c0ce1:	85 c9                	test   ecx,ecx
  7c0ce3:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  7c0ce7:	7f 0a                	jg     0x7c0cf3
  7c0ce9:	81 c1 ff ff ff 7f    	add    ecx,0x7fffffff
  7c0cef:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
  7c0cf3:	db 44 24 08          	fild   DWORD PTR [esp+0x8]
  7c0cf7:	83 c6 04             	add    esi,0x4
  7c0cfa:	81 fe 68 98 1d 01    	cmp    esi,0x11d9868
  7c0d00:	d9 c0                	fld    st(0)
  7c0d02:	d8 ca                	fmul   st,st(2)
  7c0d04:	d9 5e fc             	fstp   DWORD PTR [esi-0x4]
  7c0d07:	7c ac                	jl     0x7c0cb5
  7c0d09:	dd d9                	fstp   st(1)
  7c0d0b:	5e                   	pop    esi
  7c0d0c:	dd 1d 68 98 1d 01    	fstp   QWORD PTR ds:0x11d9868
  7c0d12:	c3                   	ret
