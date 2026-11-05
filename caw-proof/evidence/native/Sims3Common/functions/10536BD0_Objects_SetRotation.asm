# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536bd0 (Objects_SetRotation)
Paired Ghidra pseudocode: 10536BD0_Objects_SetRotation.c
Window: [0x10536bd0, 0x10536da0) (464 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536bd0: 55 8b ec 83 e4 f0 83 ec 64 53 56 57 e8 bf 35 1f
10536be0: 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 c0 3f 1f 00
10536bf0: 8b f0 85 f6 0f 84 9b 01 00 00 a1 c4 0c c8 10 50
10536c00: 8b ce e8 99 01 1f 00 85 c0 74 0d 8b 50 08 8d 48
10536c10: 08 8b 42 28 ff d0 eb 19 8b 0d 98 d9 c8 10 51 8b
10536c20: ce e8 7a 01 1f 00 85 c0 74 07 8b c8 e8 1f 1b 21
10536c30: 00 8b 15 08 04 c7 10 52 8b ce e8 61 01 1f 00 85
10536c40: c0 74 04 83 48 2c 10 a1 98 d9 c8 10 50 8b ce e8
10536c50: 4c 01 1f 00 85 c0 0f 84 c3 00 00 00 0f 57 c0 f3
10536c60: 0f 10 0d d4 b0 ac 10 f3 0f 11 44 24 1c f3 0f 11
10536c70: 44 24 18 f3 0f 11 44 24 10 f3 0f 11 4c 24 14 0f
10536c80: 28 44 24 10 f3 0f 10 0d fc df aa 10 0f 29 44 24
10536c90: 20 f3 0f 10 45 10 0f c6 c0 00 0f c6 c9 00 0f 5e
10536ca0: c1 0f 29 44 24 10 d9 44 24 10 0f 29 44 24 10 d9
10536cb0: fe 8d 4c 24 30 51 8b c8 d9 5c 24 10 d9 44 24 14
10536cc0: d9 ff f3 0f 10 4c 24 10 0f 28 44 24 24 0f 28 d0
10536cd0: 0f c6 d0 aa 0f 28 d8 0f c6 d8 55 0f c6 c9 00 0f
10536ce0: 59 d1 0f 59 d9 0f c6 c0 00 0f 59 c1 0f 29 44 24
10536cf0: 64 0f 29 54 24 44 0f 29 5c 24 54 0f c6 c3 10 d9
10536d00: 5c 24 10 f3 0f 10 4c 24 10 0f c6 c9 00 0f c6 d1
10536d10: 32 0f c6 c2 88 0f 29 44 24 34 e8 71 41 21 00 8b
10536d20: 15 3c d9 c8 10 52 8b ce e8 73 00 1f 00 8b f8 a1
10536d30: 78 d9 c8 10 50 8b ce e8 64 00 1f 00 85 ff 8b d8
10536d40: 75 46 85 db 74 0b 8b cb e8 23 dd 20 00 84 c0 75
10536d50: 37 8b 0d 08 04 c7 10 51 8b ce e8 41 00 1f 00 85
10536d60: c0 74 25 8b ce e8 b6 08 43 00 85 c0 74 1a 8b 10
10536d70: 8b c8 8b 42 0c 68 0e 6b 56 90 ff d0 85 c0 74 08
10536d80: 56 8b c8 e8 f8 c4 b5 ff 85 db 74 09 8b 13 8b 42
10536d90: 38 8b cb ff d0 5f 5e 5b 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
10536bd0 <.text+0x535bd0>:
10536bd0:	55                                              	push   ebp
10536bd1:	8b ec                                           	mov    ebp,esp
10536bd3:	83 e4 f0                                        	and    esp,0xfffffff0
10536bd6:	83 ec 64                                        	sub    esp,0x64
10536bd9:	53                                              	push   ebx
10536bda:	56                                              	push   esi
10536bdb:	57                                              	push   edi
10536bdc:	e8 bf 35 1f 00                                  	call   0x1072a1a0
10536be1:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10536be4:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10536be7:	51                                              	push   ecx
10536be8:	52                                              	push   edx
10536be9:	8b c8                                           	mov    ecx,eax
10536beb:	e8 c0 3f 1f 00                                  	call   0x1072abb0
10536bf0:	8b f0                                           	mov    esi,eax
10536bf2:	85 f6                                           	test   esi,esi
10536bf4:	0f 84 9b 01 00 00                               	je     0x10536d95
10536bfa:	a1 c4 0c c8 10                                  	mov    eax,ds:0x10c80cc4
10536bff:	50                                              	push   eax
10536c00:	8b ce                                           	mov    ecx,esi
10536c02:	e8 99 01 1f 00                                  	call   0x10726da0
10536c07:	85 c0                                           	test   eax,eax
10536c09:	74 0d                                           	je     0x10536c18
10536c0b:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10536c0e:	8d 48 08                                        	lea    ecx,[eax+0x8]
10536c11:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
10536c14:	ff d0                                           	call   eax
10536c16:	eb 19                                           	jmp    0x10536c31
10536c18:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
10536c1e:	51                                              	push   ecx
10536c1f:	8b ce                                           	mov    ecx,esi
10536c21:	e8 7a 01 1f 00                                  	call   0x10726da0
10536c26:	85 c0                                           	test   eax,eax
10536c28:	74 07                                           	je     0x10536c31
10536c2a:	8b c8                                           	mov    ecx,eax
10536c2c:	e8 1f 1b 21 00                                  	call   0x10748750
10536c31:	8b 15 08 04 c7 10                               	mov    edx,DWORD PTR ds:0x10c70408
10536c37:	52                                              	push   edx
10536c38:	8b ce                                           	mov    ecx,esi
10536c3a:	e8 61 01 1f 00                                  	call   0x10726da0
10536c3f:	85 c0                                           	test   eax,eax
10536c41:	74 04                                           	je     0x10536c47
10536c43:	83 48 2c 10                                     	or     DWORD PTR [eax+0x2c],0x10
10536c47:	a1 98 d9 c8 10                                  	mov    eax,ds:0x10c8d998
10536c4c:	50                                              	push   eax
10536c4d:	8b ce                                           	mov    ecx,esi
10536c4f:	e8 4c 01 1f 00                                  	call   0x10726da0
10536c54:	85 c0                                           	test   eax,eax
10536c56:	0f 84 c3 00 00 00                               	je     0x10536d1f
10536c5c:	0f 57 c0                                        	xorps  xmm0,xmm0
10536c5f:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
10536c67:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10536c6d:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10536c73:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10536c79:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10536c7f:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10536c84:	f3 0f 10 0d fc df aa 10                         	movss  xmm1,DWORD PTR ds:0x10aadffc
10536c8c:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10536c91:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10536c96:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10536c9a:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10536c9e:	0f 5e c1                                        	divps  xmm0,xmm1
10536ca1:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10536ca6:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
10536caa:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10536caf:	d9 fe                                           	fsin
10536cb1:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10536cb5:	51                                              	push   ecx
10536cb6:	8b c8                                           	mov    ecx,eax
10536cb8:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
10536cbc:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
10536cc0:	d9 ff                                           	fcos
10536cc2:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
10536cc8:	0f 28 44 24 24                                  	movaps xmm0,XMMWORD PTR [esp+0x24]
10536ccd:	0f 28 d0                                        	movaps xmm2,xmm0
10536cd0:	0f c6 d0 aa                                     	shufps xmm2,xmm0,0xaa
10536cd4:	0f 28 d8                                        	movaps xmm3,xmm0
10536cd7:	0f c6 d8 55                                     	shufps xmm3,xmm0,0x55
10536cdb:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10536cdf:	0f 59 d1                                        	mulps  xmm2,xmm1
10536ce2:	0f 59 d9                                        	mulps  xmm3,xmm1
10536ce5:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
10536ce9:	0f 59 c1                                        	mulps  xmm0,xmm1
10536cec:	0f 29 44 24 64                                  	movaps XMMWORD PTR [esp+0x64],xmm0
10536cf1:	0f 29 54 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm2
10536cf6:	0f 29 5c 24 54                                  	movaps XMMWORD PTR [esp+0x54],xmm3
10536cfb:	0f c6 c3 10                                     	shufps xmm0,xmm3,0x10
10536cff:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
10536d03:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
10536d09:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10536d0d:	0f c6 d1 32                                     	shufps xmm2,xmm1,0x32
10536d11:	0f c6 c2 88                                     	shufps xmm0,xmm2,0x88
10536d15:	0f 29 44 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm0
10536d1a:	e8 71 41 21 00                                  	call   0x1074ae90
10536d1f:	8b 15 3c d9 c8 10                               	mov    edx,DWORD PTR ds:0x10c8d93c
10536d25:	52                                              	push   edx
10536d26:	8b ce                                           	mov    ecx,esi
10536d28:	e8 73 00 1f 00                                  	call   0x10726da0
10536d2d:	8b f8                                           	mov    edi,eax
10536d2f:	a1 78 d9 c8 10                                  	mov    eax,ds:0x10c8d978
10536d34:	50                                              	push   eax
10536d35:	8b ce                                           	mov    ecx,esi
10536d37:	e8 64 00 1f 00                                  	call   0x10726da0
10536d3c:	85 ff                                           	test   edi,edi
10536d3e:	8b d8                                           	mov    ebx,eax
10536d40:	75 46                                           	jne    0x10536d88
10536d42:	85 db                                           	test   ebx,ebx
10536d44:	74 0b                                           	je     0x10536d51
10536d46:	8b cb                                           	mov    ecx,ebx
10536d48:	e8 23 dd 20 00                                  	call   0x10744a70
10536d4d:	84 c0                                           	test   al,al
10536d4f:	75 37                                           	jne    0x10536d88
10536d51:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
10536d57:	51                                              	push   ecx
10536d58:	8b ce                                           	mov    ecx,esi
10536d5a:	e8 41 00 1f 00                                  	call   0x10726da0
10536d5f:	85 c0                                           	test   eax,eax
10536d61:	74 25                                           	je     0x10536d88
10536d63:	8b ce                                           	mov    ecx,esi
10536d65:	e8 b6 08 43 00                                  	call   0x10967620
10536d6a:	85 c0                                           	test   eax,eax
10536d6c:	74 1a                                           	je     0x10536d88
10536d6e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10536d70:	8b c8                                           	mov    ecx,eax
10536d72:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10536d75:	68 0e 6b 56 90                                  	push   0x90566b0e
10536d7a:	ff d0                                           	call   eax
10536d7c:	85 c0                                           	test   eax,eax
10536d7e:	74 08                                           	je     0x10536d88
10536d80:	56                                              	push   esi
10536d81:	8b c8                                           	mov    ecx,eax
10536d83:	e8 f8 c4 b5 ff                                  	call   0x10093280
10536d88:	85 db                                           	test   ebx,ebx
10536d8a:	74 09                                           	je     0x10536d95
10536d8c:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10536d8e:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
10536d91:	8b cb                                           	mov    ecx,ebx
10536d93:	ff d0                                           	call   eax
10536d95:	5f                                              	pop    edi
10536d96:	5e                                              	pop    esi
10536d97:	5b                                              	pop    ebx
10536d98:	8b e5                                           	mov    esp,ebp
10536d9a:	5d                                              	pop    ebp
10536d9b:	c3                                              	ret
10536d9c:	cc                                              	int3
10536d9d:	cc                                              	int3
10536d9e:	cc                                              	int3
10536d9f:	cc                                              	int3
