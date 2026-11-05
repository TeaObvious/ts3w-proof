# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999970 (CAW_WorldPreSaveGate)
Paired Ghidra pseudocode: 10999970_CAW_WorldPreSaveGate.c
Window: [0x10999970, 0x10999af0) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999af0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999970: 83 ec 2c 53 8b 1d 50 11 c7 10 57 8b f9 8b 4f 20
10999980: 85 c9 89 7c 24 0c 0f 84 55 01 00 00 85 db 0f 84
10999990: 4d 01 00 00 55 56 6a 01 e8 a3 36 8a ff 8b 68 04
109999a0: 2b 28 b9 00 00 00 00 c1 fd 02 89 44 24 20 c6 44
109999b0: 24 13 00 89 4c 24 18 74 60 eb 09 eb 03 8d 49 00
109999c0: 8b 44 24 20 8b 00 8b 04 88 85 c0 74 36 8b 78 4c
109999d0: 8b 70 48 6a 04 57 56 8b cb e8 02 2a 99 ff 84 c0
109999e0: 74 1d 8b 4c 24 14 51 6a 00 6a 04 57 56 57 56 8b
109999f0: cb e8 fa 04 9a ff 84 c0 74 05 c6 44 24 13 01 8b
10999a00: 7c 24 14 8b 4c 24 18 83 c1 01 3b cd 89 4c 24 18
10999a10: 72 ae 80 7c 24 13 00 75 0a 5e 5d 5f b0 01 5b 83
10999a20: c4 2c c3 6a 01 6a 05 8d 4c 24 2c c6 47 24 00 e8
10999a30: 6c d2 f8 ff e8 67 49 b4 ff 80 7f 24 00 8b f0 0f
10999a40: 85 91 00 00 00 8b 2d a4 b2 aa 10 eb 03 8d 49 00
10999a50: 8d 4c 24 24 e8 57 d0 f8 ff d9 5c 24 20 33 db 83
10999a60: 7c 24 34 01 89 5c 24 24 89 5c 24 28 89 5c 24 2c
10999a70: 89 5c 24 30 75 08 0f 31 89 54 24 28 eb 13 8d 54
10999a80: 24 18 52 ff d5 8b 4c 24 1c 8b 44 24 18 89 4c 24
10999a90: 28 d9 ee 83 ec 08 d9 5c 24 04 89 44 24 2c d9 44
10999aa0: 24 28 d9 1c 24 e8 f6 cf 9e ff d9 ee 8b 57 20 d9
10999ab0: 54 24 04 d9 1c 24 52 e8 a4 ea ff ff 83 c4 0c 3b
10999ac0: f3 74 09 56 e8 17 4e ff ff 83 c4 04 80 7f 24 00
10999ad0: 0f 84 7a ff ff ff 8a 47 25 5e 5d 5f 5b 83 c4 2c
10999ae0: c3 5f 32 c0 5b 83 c4 2c c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999970 <.text+0x998970>:
10999970:	83 ec 2c                                        	sub    esp,0x2c
10999973:	53                                              	push   ebx
10999974:	8b 1d 50 11 c7 10                               	mov    ebx,DWORD PTR ds:0x10c71150
1099997a:	57                                              	push   edi
1099997b:	8b f9                                           	mov    edi,ecx
1099997d:	8b 4f 20                                        	mov    ecx,DWORD PTR [edi+0x20]
10999980:	85 c9                                           	test   ecx,ecx
10999982:	89 7c 24 0c                                     	mov    DWORD PTR [esp+0xc],edi
10999986:	0f 84 55 01 00 00                               	je     0x10999ae1
1099998c:	85 db                                           	test   ebx,ebx
1099998e:	0f 84 4d 01 00 00                               	je     0x10999ae1
10999994:	55                                              	push   ebp
10999995:	56                                              	push   esi
10999996:	6a 01                                           	push   0x1
10999998:	e8 a3 36 8a ff                                  	call   0x1023d040
1099999d:	8b 68 04                                        	mov    ebp,DWORD PTR [eax+0x4]
109999a0:	2b 28                                           	sub    ebp,DWORD PTR [eax]
109999a2:	b9 00 00 00 00                                  	mov    ecx,0x0
109999a7:	c1 fd 02                                        	sar    ebp,0x2
109999aa:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
109999ae:	c6 44 24 13 00                                  	mov    BYTE PTR [esp+0x13],0x0
109999b3:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
109999b7:	74 60                                           	je     0x10999a19
109999b9:	eb 09                                           	jmp    0x109999c4
109999bb:	eb 03                                           	jmp    0x109999c0
109999bd:	8d 49 00                                        	lea    ecx,[ecx+0x0]
109999c0:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
109999c4:	8b 00                                           	mov    eax,DWORD PTR [eax]
109999c6:	8b 04 88                                        	mov    eax,DWORD PTR [eax+ecx*4]
109999c9:	85 c0                                           	test   eax,eax
109999cb:	74 36                                           	je     0x10999a03
109999cd:	8b 78 4c                                        	mov    edi,DWORD PTR [eax+0x4c]
109999d0:	8b 70 48                                        	mov    esi,DWORD PTR [eax+0x48]
109999d3:	6a 04                                           	push   0x4
109999d5:	57                                              	push   edi
109999d6:	56                                              	push   esi
109999d7:	8b cb                                           	mov    ecx,ebx
109999d9:	e8 02 2a 99 ff                                  	call   0x1032c3e0
109999de:	84 c0                                           	test   al,al
109999e0:	74 1d                                           	je     0x109999ff
109999e2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109999e6:	51                                              	push   ecx
109999e7:	6a 00                                           	push   0x0
109999e9:	6a 04                                           	push   0x4
109999eb:	57                                              	push   edi
109999ec:	56                                              	push   esi
109999ed:	57                                              	push   edi
109999ee:	56                                              	push   esi
109999ef:	8b cb                                           	mov    ecx,ebx
109999f1:	e8 fa 04 9a ff                                  	call   0x10339ef0
109999f6:	84 c0                                           	test   al,al
109999f8:	74 05                                           	je     0x109999ff
109999fa:	c6 44 24 13 01                                  	mov    BYTE PTR [esp+0x13],0x1
109999ff:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10999a03:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10999a07:	83 c1 01                                        	add    ecx,0x1
10999a0a:	3b cd                                           	cmp    ecx,ebp
10999a0c:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
10999a10:	72 ae                                           	jb     0x109999c0
10999a12:	80 7c 24 13 00                                  	cmp    BYTE PTR [esp+0x13],0x0
10999a17:	75 0a                                           	jne    0x10999a23
10999a19:	5e                                              	pop    esi
10999a1a:	5d                                              	pop    ebp
10999a1b:	5f                                              	pop    edi
10999a1c:	b0 01                                           	mov    al,0x1
10999a1e:	5b                                              	pop    ebx
10999a1f:	83 c4 2c                                        	add    esp,0x2c
10999a22:	c3                                              	ret
10999a23:	6a 01                                           	push   0x1
10999a25:	6a 05                                           	push   0x5
10999a27:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10999a2b:	c6 47 24 00                                     	mov    BYTE PTR [edi+0x24],0x0
10999a2f:	e8 6c d2 f8 ff                                  	call   0x10926ca0
10999a34:	e8 67 49 b4 ff                                  	call   0x104de3a0
10999a39:	80 7f 24 00                                     	cmp    BYTE PTR [edi+0x24],0x0
10999a3d:	8b f0                                           	mov    esi,eax
10999a3f:	0f 85 91 00 00 00                               	jne    0x10999ad6
10999a45:	8b 2d a4 b2 aa 10                               	mov    ebp,DWORD PTR ds:0x10aab2a4
10999a4b:	eb 03                                           	jmp    0x10999a50
10999a4d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10999a50:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10999a54:	e8 57 d0 f8 ff                                  	call   0x10926ab0
10999a59:	d9 5c 24 20                                     	fstp   DWORD PTR [esp+0x20]
10999a5d:	33 db                                           	xor    ebx,ebx
10999a5f:	83 7c 24 34 01                                  	cmp    DWORD PTR [esp+0x34],0x1
10999a64:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
10999a68:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
10999a6c:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
10999a70:	89 5c 24 30                                     	mov    DWORD PTR [esp+0x30],ebx
10999a74:	75 08                                           	jne    0x10999a7e
10999a76:	0f 31                                           	rdtsc
10999a78:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
10999a7c:	eb 13                                           	jmp    0x10999a91
10999a7e:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10999a82:	52                                              	push   edx
10999a83:	ff d5                                           	call   ebp
10999a85:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10999a89:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10999a8d:	89 4c 24 28                                     	mov    DWORD PTR [esp+0x28],ecx
10999a91:	d9 ee                                           	fldz
10999a93:	83 ec 08                                        	sub    esp,0x8
10999a96:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10999a9a:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
10999a9e:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10999aa2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10999aa5:	e8 f6 cf 9e ff                                  	call   0x10386aa0
10999aaa:	d9 ee                                           	fldz
10999aac:	8b 57 20                                        	mov    edx,DWORD PTR [edi+0x20]
10999aaf:	d9 54 24 04                                     	fst    DWORD PTR [esp+0x4]
10999ab3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10999ab6:	52                                              	push   edx
10999ab7:	e8 a4 ea ff ff                                  	call   0x10998560
10999abc:	83 c4 0c                                        	add    esp,0xc
10999abf:	3b f3                                           	cmp    esi,ebx
10999ac1:	74 09                                           	je     0x10999acc
10999ac3:	56                                              	push   esi
10999ac4:	e8 17 4e ff ff                                  	call   0x1098e8e0
10999ac9:	83 c4 04                                        	add    esp,0x4
10999acc:	80 7f 24 00                                     	cmp    BYTE PTR [edi+0x24],0x0
10999ad0:	0f 84 7a ff ff ff                               	je     0x10999a50
10999ad6:	8a 47 25                                        	mov    al,BYTE PTR [edi+0x25]
10999ad9:	5e                                              	pop    esi
10999ada:	5d                                              	pop    ebp
10999adb:	5f                                              	pop    edi
10999adc:	5b                                              	pop    ebx
10999add:	83 c4 2c                                        	add    esp,0x2c
10999ae0:	c3                                              	ret
10999ae1:	5f                                              	pop    edi
10999ae2:	32 c0                                           	xor    al,al
10999ae4:	5b                                              	pop    ebx
10999ae5:	83 c4 2c                                        	add    esp,0x2c
10999ae8:	c3                                              	ret
10999ae9:	cc                                              	int3
10999aea:	cc                                              	int3
10999aeb:	cc                                              	int3
10999aec:	cc                                              	int3
10999aed:	cc                                              	int3
10999aee:	cc                                              	int3
10999aef:	cc                                              	int3
