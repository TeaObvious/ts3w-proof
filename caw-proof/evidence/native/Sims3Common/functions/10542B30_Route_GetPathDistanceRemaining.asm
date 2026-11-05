# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542b30 (Route_GetPathDistanceRemaining)
Paired Ghidra pseudocode: 10542B30_Route_GetPathDistanceRemaining.c
Window: [0x10542b30, 0x10542c40) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542c40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542b30: 8b 44 24 04 8b 0d 44 89 c7 10 83 ec 08 56 57 50
10542b40: e8 ab 95 ff ff 8b f0 85 f6 0f 84 e0 00 00 00 8b
10542b50: 16 8b 42 10 8b ce ff d0 8b 86 e0 00 00 00 8b 54
10542b60: 24 18 8d 8e e0 00 00 00 3b c1 0f 84 b6 00 00 00
10542b70: 85 d2 74 09 8b 00 83 ea 01 3b c1 75 f3 3b c1 0f
10542b80: 84 a1 00 00 00 8b 78 08 85 ff 0f 84 96 00 00 00
10542b90: 0f 57 c0 6a 00 68 00 20 00 00 6a 00 8d 8e 58 01
10542ba0: 00 00 f3 0f 11 44 24 14 e8 33 b5 0c 00 84 c0 74
10542bb0: 15 8b 46 3c 25 7f cf 00 00 50 e8 51 69 0f 00 d9
10542bc0: 5c 24 0c 83 c4 04 8b 17 8b 82 2c 01 00 00 8b cf
10542bd0: ff d0 d9 5c 24 0c 8b 17 8b 82 a4 00 00 00 6a 00
10542be0: 6a 00 8b cf ff d0 d8 6c 24 0c 0f 57 c0 8d 44 24
10542bf0: 0c d8 64 24 08 f3 0f 11 44 24 08 d9 54 24 0c d9
10542c00: ee d9 c9 df f1 dd d8 77 04 8d 44 24 08 d9 00 8b
10542c10: 16 8b 42 14 d9 5c 24 0c 8b ce ff d0 d9 44 24 0c
10542c20: 5f 5e 83 c4 08 c3 8b 16 8b 42 14 8b ce ff d0 d9
10542c30: ee 5f 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542b30 <.text+0x541b30>:
10542b30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10542b34:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10542b3a:	83 ec 08                                        	sub    esp,0x8
10542b3d:	56                                              	push   esi
10542b3e:	57                                              	push   edi
10542b3f:	50                                              	push   eax
10542b40:	e8 ab 95 ff ff                                  	call   0x1053c0f0
10542b45:	8b f0                                           	mov    esi,eax
10542b47:	85 f6                                           	test   esi,esi
10542b49:	0f 84 e0 00 00 00                               	je     0x10542c2f
10542b4f:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542b51:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10542b54:	8b ce                                           	mov    ecx,esi
10542b56:	ff d0                                           	call   eax
10542b58:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
10542b5e:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10542b62:	8d 8e e0 00 00 00                               	lea    ecx,[esi+0xe0]
10542b68:	3b c1                                           	cmp    eax,ecx
10542b6a:	0f 84 b6 00 00 00                               	je     0x10542c26
10542b70:	85 d2                                           	test   edx,edx
10542b72:	74 09                                           	je     0x10542b7d
10542b74:	8b 00                                           	mov    eax,DWORD PTR [eax]
10542b76:	83 ea 01                                        	sub    edx,0x1
10542b79:	3b c1                                           	cmp    eax,ecx
10542b7b:	75 f3                                           	jne    0x10542b70
10542b7d:	3b c1                                           	cmp    eax,ecx
10542b7f:	0f 84 a1 00 00 00                               	je     0x10542c26
10542b85:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
10542b88:	85 ff                                           	test   edi,edi
10542b8a:	0f 84 96 00 00 00                               	je     0x10542c26
10542b90:	0f 57 c0                                        	xorps  xmm0,xmm0
10542b93:	6a 00                                           	push   0x0
10542b95:	68 00 20 00 00                                  	push   0x2000
10542b9a:	6a 00                                           	push   0x0
10542b9c:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
10542ba2:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10542ba8:	e8 33 b5 0c 00                                  	call   0x1060e0e0
10542bad:	84 c0                                           	test   al,al
10542baf:	74 15                                           	je     0x10542bc6
10542bb1:	8b 46 3c                                        	mov    eax,DWORD PTR [esi+0x3c]
10542bb4:	25 7f cf 00 00                                  	and    eax,0xcf7f
10542bb9:	50                                              	push   eax
10542bba:	e8 51 69 0f 00                                  	call   0x10639510
10542bbf:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10542bc3:	83 c4 04                                        	add    esp,0x4
10542bc6:	8b 17                                           	mov    edx,DWORD PTR [edi]
10542bc8:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
10542bce:	8b cf                                           	mov    ecx,edi
10542bd0:	ff d0                                           	call   eax
10542bd2:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10542bd6:	8b 17                                           	mov    edx,DWORD PTR [edi]
10542bd8:	8b 82 a4 00 00 00                               	mov    eax,DWORD PTR [edx+0xa4]
10542bde:	6a 00                                           	push   0x0
10542be0:	6a 00                                           	push   0x0
10542be2:	8b cf                                           	mov    ecx,edi
10542be4:	ff d0                                           	call   eax
10542be6:	d8 6c 24 0c                                     	fsubr  DWORD PTR [esp+0xc]
10542bea:	0f 57 c0                                        	xorps  xmm0,xmm0
10542bed:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
10542bf1:	d8 64 24 08                                     	fsub   DWORD PTR [esp+0x8]
10542bf5:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10542bfb:	d9 54 24 0c                                     	fst    DWORD PTR [esp+0xc]
10542bff:	d9 ee                                           	fldz
10542c01:	d9 c9                                           	fxch   st(1)
10542c03:	df f1                                           	fcomip st,st(1)
10542c05:	dd d8                                           	fstp   st(0)
10542c07:	77 04                                           	ja     0x10542c0d
10542c09:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10542c0d:	d9 00                                           	fld    DWORD PTR [eax]
10542c0f:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542c11:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10542c14:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
10542c18:	8b ce                                           	mov    ecx,esi
10542c1a:	ff d0                                           	call   eax
10542c1c:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
10542c20:	5f                                              	pop    edi
10542c21:	5e                                              	pop    esi
10542c22:	83 c4 08                                        	add    esp,0x8
10542c25:	c3                                              	ret
10542c26:	8b 16                                           	mov    edx,DWORD PTR [esi]
10542c28:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10542c2b:	8b ce                                           	mov    ecx,esi
10542c2d:	ff d0                                           	call   eax
10542c2f:	d9 ee                                           	fldz
10542c31:	5f                                              	pop    edi
10542c32:	5e                                              	pop    esi
10542c33:	83 c4 08                                        	add    esp,0x8
10542c36:	c3                                              	ret
10542c37:	cc                                              	int3
10542c38:	cc                                              	int3
10542c39:	cc                                              	int3
10542c3a:	cc                                              	int3
10542c3b:	cc                                              	int3
10542c3c:	cc                                              	int3
10542c3d:	cc                                              	int3
10542c3e:	cc                                              	int3
10542c3f:	cc                                              	int3
