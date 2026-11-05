# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1006aad0 (CAW_TerrainApplyBrushAndComputeBounds)
Paired Ghidra pseudocode: 1006AAD0_CAW_TerrainApplyBrushAndComputeBounds.c
Window: [0x1006aad0, 0x1006acb0) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x1006acb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1006aad0: 83 ec 24 53 55 56 8b 35 c4 00 c7 10 33 db 3b f3
1006aae0: 8b e9 74 20 8b ce e8 f5 f4 39 00 89 45 2c 8b 4e
1006aaf0: 54 3b cb 74 0a e8 56 bf 64 00 89 45 30 eb 08 89
1006ab00: 5d 30 eb 03 89 5d 2c 8b 74 24 34 b8 ff ff ff 7f
1006ab10: 89 46 2c 89 46 28 b8 00 00 00 80 89 46 34 89 46
1006ab20: 30 56 8d 44 24 38 50 b9 00 e5 c0 10 e8 ff 49 42
1006ab30: 00 8b 44 24 34 3d 04 e5 c0 10 75 0b 5e 5d 32 c0
1006ab40: 5b 83 c4 24 c2 04 00 8b 0d f0 e4 c0 10 8b 15 f4
1006ab50: e4 c0 10 0f 57 c0 57 8d 78 14 a1 f8 e4 c0 10 89
1006ab60: 4c 24 18 8b 0d fc e4 c0 10 89 74 24 10 89 7c 24
1006ab70: 14 89 54 24 1c 89 44 24 20 89 4c 24 24 f3 0f 11
1006ab80: 44 24 30 f3 0f 11 44 24 2c 38 5f 14 74 51 6a 05
1006ab90: b9 00 e9 c6 10 e8 86 27 8c 00 85 c0 74 22 f3 0f
1006aba0: 10 47 18 f3 0f 58 47 2c f3 0f 11 47 2c f3 0f 10
1006abb0: 0d b0 37 ab 10 0f 2f c1 72 2a f3 0f 5c c1 eb 1f
1006abc0: f3 0f 10 47 2c f3 0f 5c 47 18 0f 57 c9 0f 2f c8
1006abd0: f3 0f 11 47 2c 76 0d f3 0f 58 05 b0 37 ab 10 f3
1006abe0: 0f 11 47 2c f3 0f 10 46 0c 0f 2e 46 04 9f f6 c4
1006abf0: 44 7a 0f f3 0f 10 46 10 0f 2e 46 08 9f f6 c4 44
1006ac00: 7b 17 d9 46 10 d8 66 08 d9 46 0c d8 66 04 d9 f3
1006ac10: d8 05 b4 37 ab 10 d9 5f 30 8b 4c 24 10 f3 0f 10
1006ac20: 45 10 f3 0f 10 49 0c 8b 55 14 f3 0f 59 c8 f3 0f
1006ac30: 2c c1 3b c2 f3 0f 10 49 10 f3 0f 59 c8 f3 0f 2c
1006ac40: c9 73 04 3b ca 72 0c 5f 5e 5d 32 c0 5b 83 c4 24
1006ac50: c2 04 00 8d 54 24 10 52 51 50 8b cd e8 1f f7 ff
1006ac60: ff 8b 4c 24 20 8b 44 24 18 8b 7c 24 1c 8b d1 2b
1006ac70: d0 85 d2 8b 54 24 24 7e 14 8b da 2b df 85 db 7e
1006ac80: 0c 83 e8 01 83 ef 01 83 c1 01 83 c2 01 89 7e 2c
1006ac90: 5f 89 46 28 89 4e 30 89 56 34 5e 5d b0 01 5b 83
1006aca0: c4 24 c2 04 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1006aad0 <.text+0x69ad0>:
1006aad0:	83 ec 24                                        	sub    esp,0x24
1006aad3:	53                                              	push   ebx
1006aad4:	55                                              	push   ebp
1006aad5:	56                                              	push   esi
1006aad6:	8b 35 c4 00 c7 10                               	mov    esi,DWORD PTR ds:0x10c700c4
1006aadc:	33 db                                           	xor    ebx,ebx
1006aade:	3b f3                                           	cmp    esi,ebx
1006aae0:	8b e9                                           	mov    ebp,ecx
1006aae2:	74 20                                           	je     0x1006ab04
1006aae4:	8b ce                                           	mov    ecx,esi
1006aae6:	e8 f5 f4 39 00                                  	call   0x10409fe0
1006aaeb:	89 45 2c                                        	mov    DWORD PTR [ebp+0x2c],eax
1006aaee:	8b 4e 54                                        	mov    ecx,DWORD PTR [esi+0x54]
1006aaf1:	3b cb                                           	cmp    ecx,ebx
1006aaf3:	74 0a                                           	je     0x1006aaff
1006aaf5:	e8 56 bf 64 00                                  	call   0x106b6a50
1006aafa:	89 45 30                                        	mov    DWORD PTR [ebp+0x30],eax
1006aafd:	eb 08                                           	jmp    0x1006ab07
1006aaff:	89 5d 30                                        	mov    DWORD PTR [ebp+0x30],ebx
1006ab02:	eb 03                                           	jmp    0x1006ab07
1006ab04:	89 5d 2c                                        	mov    DWORD PTR [ebp+0x2c],ebx
1006ab07:	8b 74 24 34                                     	mov    esi,DWORD PTR [esp+0x34]
1006ab0b:	b8 ff ff ff 7f                                  	mov    eax,0x7fffffff
1006ab10:	89 46 2c                                        	mov    DWORD PTR [esi+0x2c],eax
1006ab13:	89 46 28                                        	mov    DWORD PTR [esi+0x28],eax
1006ab16:	b8 00 00 00 80                                  	mov    eax,0x80000000
1006ab1b:	89 46 34                                        	mov    DWORD PTR [esi+0x34],eax
1006ab1e:	89 46 30                                        	mov    DWORD PTR [esi+0x30],eax
1006ab21:	56                                              	push   esi
1006ab22:	8d 44 24 38                                     	lea    eax,[esp+0x38]
1006ab26:	50                                              	push   eax
1006ab27:	b9 00 e5 c0 10                                  	mov    ecx,0x10c0e500
1006ab2c:	e8 ff 49 42 00                                  	call   0x1048f530
1006ab31:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1006ab35:	3d 04 e5 c0 10                                  	cmp    eax,0x10c0e504
1006ab3a:	75 0b                                           	jne    0x1006ab47
1006ab3c:	5e                                              	pop    esi
1006ab3d:	5d                                              	pop    ebp
1006ab3e:	32 c0                                           	xor    al,al
1006ab40:	5b                                              	pop    ebx
1006ab41:	83 c4 24                                        	add    esp,0x24
1006ab44:	c2 04 00                                        	ret    0x4
1006ab47:	8b 0d f0 e4 c0 10                               	mov    ecx,DWORD PTR ds:0x10c0e4f0
1006ab4d:	8b 15 f4 e4 c0 10                               	mov    edx,DWORD PTR ds:0x10c0e4f4
1006ab53:	0f 57 c0                                        	xorps  xmm0,xmm0
1006ab56:	57                                              	push   edi
1006ab57:	8d 78 14                                        	lea    edi,[eax+0x14]
1006ab5a:	a1 f8 e4 c0 10                                  	mov    eax,ds:0x10c0e4f8
1006ab5f:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1006ab63:	8b 0d fc e4 c0 10                               	mov    ecx,DWORD PTR ds:0x10c0e4fc
1006ab69:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
1006ab6d:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
1006ab71:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
1006ab75:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
1006ab79:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
1006ab7d:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
1006ab83:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
1006ab89:	38 5f 14                                        	cmp    BYTE PTR [edi+0x14],bl
1006ab8c:	74 51                                           	je     0x1006abdf
1006ab8e:	6a 05                                           	push   0x5
1006ab90:	b9 00 e9 c6 10                                  	mov    ecx,0x10c6e900
1006ab95:	e8 86 27 8c 00                                  	call   0x1092d320
1006ab9a:	85 c0                                           	test   eax,eax
1006ab9c:	74 22                                           	je     0x1006abc0
1006ab9e:	f3 0f 10 47 18                                  	movss  xmm0,DWORD PTR [edi+0x18]
1006aba3:	f3 0f 58 47 2c                                  	addss  xmm0,DWORD PTR [edi+0x2c]
1006aba8:	f3 0f 11 47 2c                                  	movss  DWORD PTR [edi+0x2c],xmm0
1006abad:	f3 0f 10 0d b0 37 ab 10                         	movss  xmm1,DWORD PTR ds:0x10ab37b0
1006abb5:	0f 2f c1                                        	comiss xmm0,xmm1
1006abb8:	72 2a                                           	jb     0x1006abe4
1006abba:	f3 0f 5c c1                                     	subss  xmm0,xmm1
1006abbe:	eb 1f                                           	jmp    0x1006abdf
1006abc0:	f3 0f 10 47 2c                                  	movss  xmm0,DWORD PTR [edi+0x2c]
1006abc5:	f3 0f 5c 47 18                                  	subss  xmm0,DWORD PTR [edi+0x18]
1006abca:	0f 57 c9                                        	xorps  xmm1,xmm1
1006abcd:	0f 2f c8                                        	comiss xmm1,xmm0
1006abd0:	f3 0f 11 47 2c                                  	movss  DWORD PTR [edi+0x2c],xmm0
1006abd5:	76 0d                                           	jbe    0x1006abe4
1006abd7:	f3 0f 58 05 b0 37 ab 10                         	addss  xmm0,DWORD PTR ds:0x10ab37b0
1006abdf:	f3 0f 11 47 2c                                  	movss  DWORD PTR [edi+0x2c],xmm0
1006abe4:	f3 0f 10 46 0c                                  	movss  xmm0,DWORD PTR [esi+0xc]
1006abe9:	0f 2e 46 04                                     	ucomiss xmm0,DWORD PTR [esi+0x4]
1006abed:	9f                                              	lahf
1006abee:	f6 c4 44                                        	test   ah,0x44
1006abf1:	7a 0f                                           	jp     0x1006ac02
1006abf3:	f3 0f 10 46 10                                  	movss  xmm0,DWORD PTR [esi+0x10]
1006abf8:	0f 2e 46 08                                     	ucomiss xmm0,DWORD PTR [esi+0x8]
1006abfc:	9f                                              	lahf
1006abfd:	f6 c4 44                                        	test   ah,0x44
1006ac00:	7b 17                                           	jnp    0x1006ac19
1006ac02:	d9 46 10                                        	fld    DWORD PTR [esi+0x10]
1006ac05:	d8 66 08                                        	fsub   DWORD PTR [esi+0x8]
1006ac08:	d9 46 0c                                        	fld    DWORD PTR [esi+0xc]
1006ac0b:	d8 66 04                                        	fsub   DWORD PTR [esi+0x4]
1006ac0e:	d9 f3                                           	fpatan
1006ac10:	d8 05 b4 37 ab 10                               	fadd   DWORD PTR ds:0x10ab37b4
1006ac16:	d9 5f 30                                        	fstp   DWORD PTR [edi+0x30]
1006ac19:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1006ac1d:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
1006ac22:	f3 0f 10 49 0c                                  	movss  xmm1,DWORD PTR [ecx+0xc]
1006ac27:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
1006ac2a:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
1006ac2e:	f3 0f 2c c1                                     	cvttss2si eax,xmm1
1006ac32:	3b c2                                           	cmp    eax,edx
1006ac34:	f3 0f 10 49 10                                  	movss  xmm1,DWORD PTR [ecx+0x10]
1006ac39:	f3 0f 59 c8                                     	mulss  xmm1,xmm0
1006ac3d:	f3 0f 2c c9                                     	cvttss2si ecx,xmm1
1006ac41:	73 04                                           	jae    0x1006ac47
1006ac43:	3b ca                                           	cmp    ecx,edx
1006ac45:	72 0c                                           	jb     0x1006ac53
1006ac47:	5f                                              	pop    edi
1006ac48:	5e                                              	pop    esi
1006ac49:	5d                                              	pop    ebp
1006ac4a:	32 c0                                           	xor    al,al
1006ac4c:	5b                                              	pop    ebx
1006ac4d:	83 c4 24                                        	add    esp,0x24
1006ac50:	c2 04 00                                        	ret    0x4
1006ac53:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1006ac57:	52                                              	push   edx
1006ac58:	51                                              	push   ecx
1006ac59:	50                                              	push   eax
1006ac5a:	8b cd                                           	mov    ecx,ebp
1006ac5c:	e8 1f f7 ff ff                                  	call   0x1006a380
1006ac61:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1006ac65:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1006ac69:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
1006ac6d:	8b d1                                           	mov    edx,ecx
1006ac6f:	2b d0                                           	sub    edx,eax
1006ac71:	85 d2                                           	test   edx,edx
1006ac73:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1006ac77:	7e 14                                           	jle    0x1006ac8d
1006ac79:	8b da                                           	mov    ebx,edx
1006ac7b:	2b df                                           	sub    ebx,edi
1006ac7d:	85 db                                           	test   ebx,ebx
1006ac7f:	7e 0c                                           	jle    0x1006ac8d
1006ac81:	83 e8 01                                        	sub    eax,0x1
1006ac84:	83 ef 01                                        	sub    edi,0x1
1006ac87:	83 c1 01                                        	add    ecx,0x1
1006ac8a:	83 c2 01                                        	add    edx,0x1
1006ac8d:	89 7e 2c                                        	mov    DWORD PTR [esi+0x2c],edi
1006ac90:	5f                                              	pop    edi
1006ac91:	89 46 28                                        	mov    DWORD PTR [esi+0x28],eax
1006ac94:	89 4e 30                                        	mov    DWORD PTR [esi+0x30],ecx
1006ac97:	89 56 34                                        	mov    DWORD PTR [esi+0x34],edx
1006ac9a:	5e                                              	pop    esi
1006ac9b:	5d                                              	pop    ebp
1006ac9c:	b0 01                                           	mov    al,0x1
1006ac9e:	5b                                              	pop    ebx
1006ac9f:	83 c4 24                                        	add    esp,0x24
1006aca2:	c2 04 00                                        	ret    0x4
1006aca5:	cc                                              	int3
1006aca6:	cc                                              	int3
1006aca7:	cc                                              	int3
1006aca8:	cc                                              	int3
1006aca9:	cc                                              	int3
1006acaa:	cc                                              	int3
1006acab:	cc                                              	int3
1006acac:	cc                                              	int3
1006acad:	cc                                              	int3
1006acae:	cc                                              	int3
1006acaf:	cc                                              	int3
