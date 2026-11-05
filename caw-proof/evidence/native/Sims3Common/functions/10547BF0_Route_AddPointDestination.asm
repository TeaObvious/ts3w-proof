# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10547bf0 (Route_AddPointDestination)
Paired Ghidra pseudocode: 10547BF0_Route_AddPointDestination.c
Window: [0x10547bf0, 0x10547d30) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x10547d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10547bf0: 55 8b ec 83 e4 f0 8b 0d 44 89 c7 10 83 ec 24 85
10547c00: c9 53 56 57 0f 84 0f 01 00 00 8b 45 08 50 e8 dd
10547c10: 44 ff ff 8b d8 85 db 0f 84 fc 00 00 00 8b 13 8b
10547c20: 42 10 8b cb ff d0 8b cb e8 73 b9 ff ff 8b f8 85
10547c30: ff 0f 84 d9 00 00 00 8b 17 8b 02 8b cf ff d0 6a
10547c40: 00 6a 00 6a 00 6a 00 68 ec ba b1 10 6a 50 e8 5d
10547c50: 12 3d 00 83 c4 18 85 c0 0f 84 a9 00 00 00 8b c8
10547c60: e8 9b 7e ff ff 8b f0 85 f6 0f 84 98 00 00 00 8d
10547c70: 4c 24 20 51 8d 4d 18 e8 a4 5e 01 00 0f 28 00 8d
10547c80: 54 24 20 52 8d 4d 24 0f 29 46 30 e8 90 5e 01 00
10547c90: 83 7d 14 00 0f 28 00 8b 45 0c 0f 29 46 40 f3 0f
10547ca0: 10 45 10 89 46 28 f3 0f 11 46 2c 74 37 e8 6e 34
10547cb0: 01 00 33 c9 89 4c 24 1c 89 4c 24 18 8b 10 8b 52
10547cc0: 78 8d 4c 24 18 51 8d 4c 24 20 51 8b 4d 14 51 8b
10547cd0: c8 ff d2 8b 44 24 18 8b 4c 24 1c 50 51 8b ce e8
10547ce0: 4c 4a ff ff 56 8b cf e8 d4 7d ff ff 8b 17 8b 42
10547cf0: 04 8b cf ff d0 8b 13 8b 42 14 8b cb ff d0 b0 01
10547d00: 5f 5e 5b 8b e5 5d c3 8b 17 8b 42 04 8b cf ff d0
10547d10: 8b 13 8b 42 14 8b cb ff d0 5f 5e 32 c0 5b 8b e5
10547d20: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10547bf0 <.text+0x546bf0>:
10547bf0:	55                                              	push   ebp
10547bf1:	8b ec                                           	mov    ebp,esp
10547bf3:	83 e4 f0                                        	and    esp,0xfffffff0
10547bf6:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10547bfc:	83 ec 24                                        	sub    esp,0x24
10547bff:	85 c9                                           	test   ecx,ecx
10547c01:	53                                              	push   ebx
10547c02:	56                                              	push   esi
10547c03:	57                                              	push   edi
10547c04:	0f 84 0f 01 00 00                               	je     0x10547d19
10547c0a:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10547c0d:	50                                              	push   eax
10547c0e:	e8 dd 44 ff ff                                  	call   0x1053c0f0
10547c13:	8b d8                                           	mov    ebx,eax
10547c15:	85 db                                           	test   ebx,ebx
10547c17:	0f 84 fc 00 00 00                               	je     0x10547d19
10547c1d:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10547c1f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10547c22:	8b cb                                           	mov    ecx,ebx
10547c24:	ff d0                                           	call   eax
10547c26:	8b cb                                           	mov    ecx,ebx
10547c28:	e8 73 b9 ff ff                                  	call   0x105435a0
10547c2d:	8b f8                                           	mov    edi,eax
10547c2f:	85 ff                                           	test   edi,edi
10547c31:	0f 84 d9 00 00 00                               	je     0x10547d10
10547c37:	8b 17                                           	mov    edx,DWORD PTR [edi]
10547c39:	8b 02                                           	mov    eax,DWORD PTR [edx]
10547c3b:	8b cf                                           	mov    ecx,edi
10547c3d:	ff d0                                           	call   eax
10547c3f:	6a 00                                           	push   0x0
10547c41:	6a 00                                           	push   0x0
10547c43:	6a 00                                           	push   0x0
10547c45:	6a 00                                           	push   0x0
10547c47:	68 ec ba b1 10                                  	push   0x10b1baec
10547c4c:	6a 50                                           	push   0x50
10547c4e:	e8 5d 12 3d 00                                  	call   0x10918eb0
10547c53:	83 c4 18                                        	add    esp,0x18
10547c56:	85 c0                                           	test   eax,eax
10547c58:	0f 84 a9 00 00 00                               	je     0x10547d07
10547c5e:	8b c8                                           	mov    ecx,eax
10547c60:	e8 9b 7e ff ff                                  	call   0x1053fb00
10547c65:	8b f0                                           	mov    esi,eax
10547c67:	85 f6                                           	test   esi,esi
10547c69:	0f 84 98 00 00 00                               	je     0x10547d07
10547c6f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10547c73:	51                                              	push   ecx
10547c74:	8d 4d 18                                        	lea    ecx,[ebp+0x18]
10547c77:	e8 a4 5e 01 00                                  	call   0x1055db20
10547c7c:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10547c7f:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10547c83:	52                                              	push   edx
10547c84:	8d 4d 24                                        	lea    ecx,[ebp+0x24]
10547c87:	0f 29 46 30                                     	movaps XMMWORD PTR [esi+0x30],xmm0
10547c8b:	e8 90 5e 01 00                                  	call   0x1055db20
10547c90:	83 7d 14 00                                     	cmp    DWORD PTR [ebp+0x14],0x0
10547c94:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
10547c97:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10547c9a:	0f 29 46 40                                     	movaps XMMWORD PTR [esi+0x40],xmm0
10547c9e:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10547ca3:	89 46 28                                        	mov    DWORD PTR [esi+0x28],eax
10547ca6:	f3 0f 11 46 2c                                  	movss  DWORD PTR [esi+0x2c],xmm0
10547cab:	74 37                                           	je     0x10547ce4
10547cad:	e8 6e 34 01 00                                  	call   0x1055b120
10547cb2:	33 c9                                           	xor    ecx,ecx
10547cb4:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
10547cb8:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
10547cbc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10547cbe:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
10547cc1:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10547cc5:	51                                              	push   ecx
10547cc6:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
10547cca:	51                                              	push   ecx
10547ccb:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
10547cce:	51                                              	push   ecx
10547ccf:	8b c8                                           	mov    ecx,eax
10547cd1:	ff d2                                           	call   edx
10547cd3:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10547cd7:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10547cdb:	50                                              	push   eax
10547cdc:	51                                              	push   ecx
10547cdd:	8b ce                                           	mov    ecx,esi
10547cdf:	e8 4c 4a ff ff                                  	call   0x1053c730
10547ce4:	56                                              	push   esi
10547ce5:	8b cf                                           	mov    ecx,edi
10547ce7:	e8 d4 7d ff ff                                  	call   0x1053fac0
10547cec:	8b 17                                           	mov    edx,DWORD PTR [edi]
10547cee:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10547cf1:	8b cf                                           	mov    ecx,edi
10547cf3:	ff d0                                           	call   eax
10547cf5:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10547cf7:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10547cfa:	8b cb                                           	mov    ecx,ebx
10547cfc:	ff d0                                           	call   eax
10547cfe:	b0 01                                           	mov    al,0x1
10547d00:	5f                                              	pop    edi
10547d01:	5e                                              	pop    esi
10547d02:	5b                                              	pop    ebx
10547d03:	8b e5                                           	mov    esp,ebp
10547d05:	5d                                              	pop    ebp
10547d06:	c3                                              	ret
10547d07:	8b 17                                           	mov    edx,DWORD PTR [edi]
10547d09:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10547d0c:	8b cf                                           	mov    ecx,edi
10547d0e:	ff d0                                           	call   eax
10547d10:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10547d12:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10547d15:	8b cb                                           	mov    ecx,ebx
10547d17:	ff d0                                           	call   eax
10547d19:	5f                                              	pop    edi
10547d1a:	5e                                              	pop    esi
10547d1b:	32 c0                                           	xor    al,al
10547d1d:	5b                                              	pop    ebx
10547d1e:	8b e5                                           	mov    esp,ebp
10547d20:	5d                                              	pop    ebp
10547d21:	c3                                              	ret
10547d22:	cc                                              	int3
10547d23:	cc                                              	int3
10547d24:	cc                                              	int3
10547d25:	cc                                              	int3
10547d26:	cc                                              	int3
10547d27:	cc                                              	int3
10547d28:	cc                                              	int3
10547d29:	cc                                              	int3
10547d2a:	cc                                              	int3
10547d2b:	cc                                              	int3
10547d2c:	cc                                              	int3
10547d2d:	cc                                              	int3
10547d2e:	cc                                              	int3
10547d2f:	cc                                              	int3
