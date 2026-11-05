# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581a30 (World_ObjectSetFogAreaEffect)
Paired Ghidra pseudocode: 10581A30_World_ObjectSetFogAreaEffect.c
Window: [0x10581a30, 0x10581bc0) (400 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581a30: 55 8b ec 83 e4 f0 f3 0f 10 05 0c 04 c3 10 83 ec
10581a40: 74 0f 2f 45 18 53 56 57 0f 87 e8 00 00 00 0f 2f
10581a50: 45 1c 0f 87 de 00 00 00 e8 43 87 1a 00 85 c0 0f
10581a60: 84 48 01 00 00 8b 75 0c 8b 5d 08 56 53 8b c8 e8
10581a70: 3c 91 1a 00 85 c0 0f 84 31 01 00 00 8b 0d 98 d9
10581a80: c8 10 51 8b c8 e8 16 53 1a 00 8b f8 85 ff 0f 84
10581a90: 19 01 00 00 8d 4c 24 30 c7 44 24 30 b3 63 9b 09
10581aa0: c7 44 24 34 00 00 00 00 89 5c 24 38 89 74 24 3c
10581ab0: e8 fb ee ff ff 8d 54 24 20 52 8b cf 8b f0 e8 ed
10581ac0: 87 1c 00 50 8d 4c 24 18 e8 43 bc b5 ff d9 00 f3
10581ad0: 0f 10 45 10 d9 1e d9 40 04 d9 5e 04 d9 40 08 f3
10581ae0: 0f 11 46 0c f3 0f 10 45 14 d9 5e 08 f3 0f 11 46
10581af0: 10 f3 0f 10 45 18 f3 0f 11 46 14 f3 0f 10 45 1c
10581b00: f3 0f 11 46 18 f3 0f 10 45 20 8d 44 24 30 f3 0f
10581b10: 11 46 1c f3 0f 10 45 24 50 f3 0f 11 46 20 e8 bd
10581b20: 83 f0 ff 83 c4 04 8d 4c 24 30 e8 d1 3f b2 ff 5f
10581b30: 5e 5b 8b e5 5d c3 0f 57 c0 8b 4d 08 8b 55 0c 8d
10581b40: 44 24 30 50 c7 44 24 34 b3 63 9b 09 89 4c 24 3c
10581b50: 89 54 24 40 c7 44 24 38 bc 0f c3 10 f3 0f 11 44
10581b60: 24 44 f3 0f 11 44 24 48 f3 0f 11 44 24 4c f3 0f
10581b70: 11 44 24 64 f3 0f 11 44 24 60 f3 0f 11 44 24 5c
10581b80: f3 0f 11 44 24 58 f3 0f 11 44 24 54 f3 0f 11 44
10581b90: 24 50 e8 49 83 f0 ff 8b 4c 24 38 83 c4 04 85 c9
10581ba0: 74 0b 8b 11 8b 12 8d 44 24 40 50 ff d2 5f 5e 5b
10581bb0: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581a30 <.text+0x580a30>:
10581a30:	55                                              	push   ebp
10581a31:	8b ec                                           	mov    ebp,esp
10581a33:	83 e4 f0                                        	and    esp,0xfffffff0
10581a36:	f3 0f 10 05 0c 04 c3 10                         	movss  xmm0,DWORD PTR ds:0x10c3040c
10581a3e:	83 ec 74                                        	sub    esp,0x74
10581a41:	0f 2f 45 18                                     	comiss xmm0,DWORD PTR [ebp+0x18]
10581a45:	53                                              	push   ebx
10581a46:	56                                              	push   esi
10581a47:	57                                              	push   edi
10581a48:	0f 87 e8 00 00 00                               	ja     0x10581b36
10581a4e:	0f 2f 45 1c                                     	comiss xmm0,DWORD PTR [ebp+0x1c]
10581a52:	0f 87 de 00 00 00                               	ja     0x10581b36
10581a58:	e8 43 87 1a 00                                  	call   0x1072a1a0
10581a5d:	85 c0                                           	test   eax,eax
10581a5f:	0f 84 48 01 00 00                               	je     0x10581bad
10581a65:	8b 75 0c                                        	mov    esi,DWORD PTR [ebp+0xc]
10581a68:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
10581a6b:	56                                              	push   esi
10581a6c:	53                                              	push   ebx
10581a6d:	8b c8                                           	mov    ecx,eax
10581a6f:	e8 3c 91 1a 00                                  	call   0x1072abb0
10581a74:	85 c0                                           	test   eax,eax
10581a76:	0f 84 31 01 00 00                               	je     0x10581bad
10581a7c:	8b 0d 98 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d998
10581a82:	51                                              	push   ecx
10581a83:	8b c8                                           	mov    ecx,eax
10581a85:	e8 16 53 1a 00                                  	call   0x10726da0
10581a8a:	8b f8                                           	mov    edi,eax
10581a8c:	85 ff                                           	test   edi,edi
10581a8e:	0f 84 19 01 00 00                               	je     0x10581bad
10581a94:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10581a98:	c7 44 24 30 b3 63 9b 09                         	mov    DWORD PTR [esp+0x30],0x99b63b3
10581aa0:	c7 44 24 34 00 00 00 00                         	mov    DWORD PTR [esp+0x34],0x0
10581aa8:	89 5c 24 38                                     	mov    DWORD PTR [esp+0x38],ebx
10581aac:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
10581ab0:	e8 fb ee ff ff                                  	call   0x105809b0
10581ab5:	8d 54 24 20                                     	lea    edx,[esp+0x20]
10581ab9:	52                                              	push   edx
10581aba:	8b cf                                           	mov    ecx,edi
10581abc:	8b f0                                           	mov    esi,eax
10581abe:	e8 ed 87 1c 00                                  	call   0x1074a2b0
10581ac3:	50                                              	push   eax
10581ac4:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10581ac8:	e8 43 bc b5 ff                                  	call   0x100dd710
10581acd:	d9 00                                           	fld    DWORD PTR [eax]
10581acf:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10581ad4:	d9 1e                                           	fstp   DWORD PTR [esi]
10581ad6:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
10581ad9:	d9 5e 04                                        	fstp   DWORD PTR [esi+0x4]
10581adc:	d9 40 08                                        	fld    DWORD PTR [eax+0x8]
10581adf:	f3 0f 11 46 0c                                  	movss  DWORD PTR [esi+0xc],xmm0
10581ae4:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10581ae9:	d9 5e 08                                        	fstp   DWORD PTR [esi+0x8]
10581aec:	f3 0f 11 46 10                                  	movss  DWORD PTR [esi+0x10],xmm0
10581af1:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
10581af6:	f3 0f 11 46 14                                  	movss  DWORD PTR [esi+0x14],xmm0
10581afb:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
10581b00:	f3 0f 11 46 18                                  	movss  DWORD PTR [esi+0x18],xmm0
10581b05:	f3 0f 10 45 20                                  	movss  xmm0,DWORD PTR [ebp+0x20]
10581b0a:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10581b0e:	f3 0f 11 46 1c                                  	movss  DWORD PTR [esi+0x1c],xmm0
10581b13:	f3 0f 10 45 24                                  	movss  xmm0,DWORD PTR [ebp+0x24]
10581b18:	50                                              	push   eax
10581b19:	f3 0f 11 46 20                                  	movss  DWORD PTR [esi+0x20],xmm0
10581b1e:	e8 bd 83 f0 ff                                  	call   0x10489ee0
10581b23:	83 c4 04                                        	add    esp,0x4
10581b26:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10581b2a:	e8 d1 3f b2 ff                                  	call   0x100a5b00
10581b2f:	5f                                              	pop    edi
10581b30:	5e                                              	pop    esi
10581b31:	5b                                              	pop    ebx
10581b32:	8b e5                                           	mov    esp,ebp
10581b34:	5d                                              	pop    ebp
10581b35:	c3                                              	ret
10581b36:	0f 57 c0                                        	xorps  xmm0,xmm0
10581b39:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10581b3c:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
10581b3f:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10581b43:	50                                              	push   eax
10581b44:	c7 44 24 34 b3 63 9b 09                         	mov    DWORD PTR [esp+0x34],0x99b63b3
10581b4c:	89 4c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ecx
10581b50:	89 54 24 40                                     	mov    DWORD PTR [esp+0x40],edx
10581b54:	c7 44 24 38 bc 0f c3 10                         	mov    DWORD PTR [esp+0x38],0x10c30fbc
10581b5c:	f3 0f 11 44 24 44                               	movss  DWORD PTR [esp+0x44],xmm0
10581b62:	f3 0f 11 44 24 48                               	movss  DWORD PTR [esp+0x48],xmm0
10581b68:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
10581b6e:	f3 0f 11 44 24 64                               	movss  DWORD PTR [esp+0x64],xmm0
10581b74:	f3 0f 11 44 24 60                               	movss  DWORD PTR [esp+0x60],xmm0
10581b7a:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
10581b80:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
10581b86:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
10581b8c:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
10581b92:	e8 49 83 f0 ff                                  	call   0x10489ee0
10581b97:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
10581b9b:	83 c4 04                                        	add    esp,0x4
10581b9e:	85 c9                                           	test   ecx,ecx
10581ba0:	74 0b                                           	je     0x10581bad
10581ba2:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10581ba4:	8b 12                                           	mov    edx,DWORD PTR [edx]
10581ba6:	8d 44 24 40                                     	lea    eax,[esp+0x40]
10581baa:	50                                              	push   eax
10581bab:	ff d2                                           	call   edx
10581bad:	5f                                              	pop    edi
10581bae:	5e                                              	pop    esi
10581baf:	5b                                              	pop    ebx
10581bb0:	8b e5                                           	mov    esp,ebp
10581bb2:	5d                                              	pop    ebp
10581bb3:	c3                                              	ret
10581bb4:	cc                                              	int3
10581bb5:	cc                                              	int3
10581bb6:	cc                                              	int3
10581bb7:	cc                                              	int3
10581bb8:	cc                                              	int3
10581bb9:	cc                                              	int3
10581bba:	cc                                              	int3
10581bbb:	cc                                              	int3
10581bbc:	cc                                              	int3
10581bbd:	cc                                              	int3
10581bbe:	cc                                              	int3
10581bbf:	cc                                              	int3
