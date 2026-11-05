# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x008aaa00, 0x008aaac2).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Disassembly of section .text:

008aaa00 <.text+0x4a9a00>:
  8aaa00:	51                   	push   ecx
  8aaa01:	8b 41 18             	mov    eax,DWORD PTR [ecx+0x18]
  8aaa04:	83 f8 06             	cmp    eax,0x6
  8aaa07:	f3 0f 10 1c 81       	movss  xmm3,DWORD PTR [ecx+eax*4]
  8aaa0c:	0f 57 d2             	xorps  xmm2,xmm2
  8aaa0f:	77 65                	ja     0x8aaa76
  8aaa11:	ff 24 85 c4 aa 8a 00 	jmp    DWORD PTR [eax*4+0x8aaac4]
  8aaa18:	d9 e8                	fld1
  8aaa1a:	59                   	pop    ecx
  8aaa1b:	c3                   	ret
  8aaa1c:	0f 57 d2             	xorps  xmm2,xmm2
  8aaa1f:	f3 0f 10 05 f8 98 f9 	movss  xmm0,DWORD PTR ds:0xf998f8
  8aaa26:	00
  8aaa27:	0f 28 ca             	movaps xmm1,xmm2
  8aaa2a:	eb 6d                	jmp    0x8aaa99
  8aaa2c:	f3 0f 10 41 2c       	movss  xmm0,DWORD PTR [ecx+0x2c]
  8aaa31:	0f 2e c2             	ucomiss xmm0,xmm2
  8aaa34:	9f                   	lahf
  8aaa35:	f6 c4 44             	test   ah,0x44
  8aaa38:	7a 06                	jp     0x8aaa40
  8aaa3a:	d9 41 28             	fld    DWORD PTR [ecx+0x28]
  8aaa3d:	d9 59 2c             	fstp   DWORD PTR [ecx+0x2c]
  8aaa40:	f3 0f 10 49 2c       	movss  xmm1,DWORD PTR [ecx+0x2c]
  8aaa45:	f3 0f 10 41 24       	movss  xmm0,DWORD PTR [ecx+0x24]
  8aaa4a:	eb 34                	jmp    0x8aaa80
  8aaa4c:	d9 41 24             	fld    DWORD PTR [ecx+0x24]
  8aaa4f:	59                   	pop    ecx
  8aaa50:	c3                   	ret
  8aaa51:	f3 0f 10 41 30       	movss  xmm0,DWORD PTR [ecx+0x30]
  8aaa56:	0f 57 d2             	xorps  xmm2,xmm2
  8aaa59:	0f 2e c2             	ucomiss xmm0,xmm2
  8aaa5c:	9f                   	lahf
  8aaa5d:	f6 c4 44             	test   ah,0x44
  8aaa60:	7a 06                	jp     0x8aaa68
  8aaa62:	d9 41 28             	fld    DWORD PTR [ecx+0x28]
  8aaa65:	d9 59 30             	fstp   DWORD PTR [ecx+0x30]
  8aaa68:	f3 0f 10 49 30       	movss  xmm1,DWORD PTR [ecx+0x30]
  8aaa6d:	0f 28 c2             	movaps xmm0,xmm2
  8aaa70:	eb 17                	jmp    0x8aaa89
  8aaa72:	d9 ee                	fldz
  8aaa74:	59                   	pop    ecx
  8aaa75:	c3                   	ret
  8aaa76:	f3 0f 10 0c 24       	movss  xmm1,DWORD PTR [esp]
  8aaa7b:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [esp]
  8aaa80:	0f 2e c2             	ucomiss xmm0,xmm2
  8aaa83:	9f                   	lahf
  8aaa84:	f6 c4 44             	test   ah,0x44
  8aaa87:	7a 10                	jp     0x8aaa99
  8aaa89:	f3 0f 10 25 9c 22 fc 	movss  xmm4,DWORD PTR ds:0xfc229c
  8aaa90:	00
  8aaa91:	0f 2f e1             	comiss xmm4,xmm1
  8aaa94:	76 03                	jbe    0x8aaa99
  8aaa96:	0f 28 c8             	movaps xmm1,xmm0
  8aaa99:	0f 2e da             	ucomiss xmm3,xmm2
  8aaa9c:	9f                   	lahf
  8aaa9d:	f6 c4 44             	test   ah,0x44
  8aaaa0:	7b 11                	jnp    0x8aaab3
  8aaaa2:	f3 0f 5c c1          	subss  xmm0,xmm1
  8aaaa6:	f3 0f 59 41 20       	mulss  xmm0,DWORD PTR [ecx+0x20]
  8aaaab:	f3 0f 5e c3          	divss  xmm0,xmm3
  8aaaaf:	f3 0f 58 c1          	addss  xmm0,xmm1
  8aaab3:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  8aaab8:	d9 04 24             	fld    DWORD PTR [esp]
  8aaabb:	f3 0f 11 41 28       	movss  DWORD PTR [ecx+0x28],xmm0
  8aaac0:	59                   	pop    ecx
  8aaac1:	c3                   	ret
