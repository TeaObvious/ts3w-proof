# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074caf0 (ScriptCore.Route::Route_GetObstructionAtPoint)
Paired Ghidra pseudocode: 0074CAF0_ScriptCore_Route_Route_GetObstructionAtPoint.c
Window: [0x0074caf0, 0x0074cc70) (384 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074cc70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074caf0: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 24 85
0074cb00: c9 53 56 57 0f 84 bc 00 00 00 8b 45 08 50 e8 9d
0074cb10: e9 ff ff 8b f0 85 f6 0f 84 a9 00 00 00 8b 16 8b
0074cb20: 42 10 8b ce ff d0 80 be f4 00 00 00 00 f3 0f 10
0074cb30: 4d 14 f3 0f 10 45 0c 8b 4e 40 8b 56 44 8b 46 48
0074cb40: f3 0f 11 4c 24 18 f3 0f 10 4d 10 f3 0f 11 44 24
0074cb50: 1c f3 0f 11 4c 24 14 f3 0f 11 44 24 10 0f 28 44
0074cb60: 24 10 89 4c 24 10 8b 4e 4c 0f 29 44 24 20 89 54
0074cb70: 24 14 89 44 24 18 89 4c 24 1c 74 08 8b 86 ec 00
0074cb80: 00 00 eb 13 8d 86 e0 00 00 00 39 00 74 07 8b 10
0074cb90: 8b 42 08 eb 02 33 c0 6a 02 8d 4c 24 14 51 8d 54
0074cba0: 24 28 52 6a 00 50 e8 45 95 0f 00 8b f8 8b 06 8b
0074cbb0: da 8b 50 14 83 c4 14 8b ce ff d2 8b c7 8b d3 5f
0074cbc0: 5e 5b 8b e5 5d c3 5f 5e 33 c0 33 d2 5b 8b e5 5d
0074cbd0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
0074cbe0: 56 8b 74 24 08 8b 56 08 57 8b f9 8b 4e 10 8b 47
0074cbf0: 28 51 50 52 e8 77 13 d9 ff 83 c4 0c 8b ce 50 e8
0074cc00: ec ad 08 00 d9 47 2c 8b 46 10 50 51 8b 4e 08 d9
0074cc10: 1c 24 51 e8 78 17 d9 ff 83 c4 0c 8b ce 50 e8 cd
0074cc20: ad 08 00 8b 56 10 8b 46 08 52 6a 07 50 e8 3e 13
0074cc30: d9 ff 83 c4 0c 8b ce 50 e8 b3 ad 08 00 8b 4e 10
0074cc40: 8b 46 08 51 6a 07 8d 57 0c 52 50 e8 60 14 d9 ff
0074cc50: 83 c4 10 8b ce 50 e8 95 ad 08 00 8b 17 8b 42 1c
0074cc60: 56 8b cf ff d0 5f 5e c2 04 00 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074caf0 <.text+0x34baf0>:
  74caf0:	55                                              	push   ebp
  74caf1:	8b ec                                           	mov    ebp,esp
  74caf3:	83 e4 f0                                        	and    esp,0xfffffff0
  74caf6:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74cafc:	83 ec 24                                        	sub    esp,0x24
  74caff:	85 c9                                           	test   ecx,ecx
  74cb01:	53                                              	push   ebx
  74cb02:	56                                              	push   esi
  74cb03:	57                                              	push   edi
  74cb04:	0f 84 bc 00 00 00                               	je     0x74cbc6
  74cb0a:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  74cb0d:	50                                              	push   eax
  74cb0e:	e8 9d e9 ff ff                                  	call   0x74b4b0
  74cb13:	8b f0                                           	mov    esi,eax
  74cb15:	85 f6                                           	test   esi,esi
  74cb17:	0f 84 a9 00 00 00                               	je     0x74cbc6
  74cb1d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74cb1f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74cb22:	8b ce                                           	mov    ecx,esi
  74cb24:	ff d0                                           	call   eax
  74cb26:	80 be f4 00 00 00 00                            	cmp    BYTE PTR [esi+0xf4],0x0
  74cb2d:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  74cb32:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  74cb37:	8b 4e 40                                        	mov    ecx,DWORD PTR [esi+0x40]
  74cb3a:	8b 56 44                                        	mov    edx,DWORD PTR [esi+0x44]
  74cb3d:	8b 46 48                                        	mov    eax,DWORD PTR [esi+0x48]
  74cb40:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  74cb46:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  74cb4b:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  74cb51:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  74cb57:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  74cb5d:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  74cb62:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  74cb66:	8b 4e 4c                                        	mov    ecx,DWORD PTR [esi+0x4c]
  74cb69:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  74cb6e:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  74cb72:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  74cb76:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
  74cb7a:	74 08                                           	je     0x74cb84
  74cb7c:	8b 86 ec 00 00 00                               	mov    eax,DWORD PTR [esi+0xec]
  74cb82:	eb 13                                           	jmp    0x74cb97
  74cb84:	8d 86 e0 00 00 00                               	lea    eax,[esi+0xe0]
  74cb8a:	39 00                                           	cmp    DWORD PTR [eax],eax
  74cb8c:	74 07                                           	je     0x74cb95
  74cb8e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74cb90:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  74cb93:	eb 02                                           	jmp    0x74cb97
  74cb95:	33 c0                                           	xor    eax,eax
  74cb97:	6a 02                                           	push   0x2
  74cb99:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  74cb9d:	51                                              	push   ecx
  74cb9e:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  74cba2:	52                                              	push   edx
  74cba3:	6a 00                                           	push   0x0
  74cba5:	50                                              	push   eax
  74cba6:	e8 45 95 0f 00                                  	call   0x8460f0
  74cbab:	8b f8                                           	mov    edi,eax
  74cbad:	8b 06                                           	mov    eax,DWORD PTR [esi]
  74cbaf:	8b da                                           	mov    ebx,edx
  74cbb1:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  74cbb4:	83 c4 14                                        	add    esp,0x14
  74cbb7:	8b ce                                           	mov    ecx,esi
  74cbb9:	ff d2                                           	call   edx
  74cbbb:	8b c7                                           	mov    eax,edi
  74cbbd:	8b d3                                           	mov    edx,ebx
  74cbbf:	5f                                              	pop    edi
  74cbc0:	5e                                              	pop    esi
  74cbc1:	5b                                              	pop    ebx
  74cbc2:	8b e5                                           	mov    esp,ebp
  74cbc4:	5d                                              	pop    ebp
  74cbc5:	c3                                              	ret
  74cbc6:	5f                                              	pop    edi
  74cbc7:	5e                                              	pop    esi
  74cbc8:	33 c0                                           	xor    eax,eax
  74cbca:	33 d2                                           	xor    edx,edx
  74cbcc:	5b                                              	pop    ebx
  74cbcd:	8b e5                                           	mov    esp,ebp
  74cbcf:	5d                                              	pop    ebp
  74cbd0:	c3                                              	ret
  74cbd1:	cc                                              	int3
  74cbd2:	cc                                              	int3
  74cbd3:	cc                                              	int3
  74cbd4:	cc                                              	int3
  74cbd5:	cc                                              	int3
  74cbd6:	cc                                              	int3
  74cbd7:	cc                                              	int3
  74cbd8:	cc                                              	int3
  74cbd9:	cc                                              	int3
  74cbda:	cc                                              	int3
  74cbdb:	cc                                              	int3
  74cbdc:	cc                                              	int3
  74cbdd:	cc                                              	int3
  74cbde:	cc                                              	int3
  74cbdf:	cc                                              	int3
  74cbe0:	56                                              	push   esi
  74cbe1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  74cbe5:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  74cbe8:	57                                              	push   edi
  74cbe9:	8b f9                                           	mov    edi,ecx
  74cbeb:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
  74cbee:	8b 47 28                                        	mov    eax,DWORD PTR [edi+0x28]
  74cbf1:	51                                              	push   ecx
  74cbf2:	50                                              	push   eax
  74cbf3:	52                                              	push   edx
  74cbf4:	e8 77 13 d9 ff                                  	call   0x4ddf70
  74cbf9:	83 c4 0c                                        	add    esp,0xc
  74cbfc:	8b ce                                           	mov    ecx,esi
  74cbfe:	50                                              	push   eax
  74cbff:	e8 ec ad 08 00                                  	call   0x7d79f0
  74cc04:	d9 47 2c                                        	fld    DWORD PTR [edi+0x2c]
  74cc07:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  74cc0a:	50                                              	push   eax
  74cc0b:	51                                              	push   ecx
  74cc0c:	8b 4e 08                                        	mov    ecx,DWORD PTR [esi+0x8]
  74cc0f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  74cc12:	51                                              	push   ecx
  74cc13:	e8 78 17 d9 ff                                  	call   0x4de390
  74cc18:	83 c4 0c                                        	add    esp,0xc
  74cc1b:	8b ce                                           	mov    ecx,esi
  74cc1d:	50                                              	push   eax
  74cc1e:	e8 cd ad 08 00                                  	call   0x7d79f0
  74cc23:	8b 56 10                                        	mov    edx,DWORD PTR [esi+0x10]
  74cc26:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  74cc29:	52                                              	push   edx
  74cc2a:	6a 07                                           	push   0x7
  74cc2c:	50                                              	push   eax
  74cc2d:	e8 3e 13 d9 ff                                  	call   0x4ddf70
  74cc32:	83 c4 0c                                        	add    esp,0xc
  74cc35:	8b ce                                           	mov    ecx,esi
  74cc37:	50                                              	push   eax
  74cc38:	e8 b3 ad 08 00                                  	call   0x7d79f0
  74cc3d:	8b 4e 10                                        	mov    ecx,DWORD PTR [esi+0x10]
  74cc40:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  74cc43:	51                                              	push   ecx
  74cc44:	6a 07                                           	push   0x7
  74cc46:	8d 57 0c                                        	lea    edx,[edi+0xc]
  74cc49:	52                                              	push   edx
  74cc4a:	50                                              	push   eax
  74cc4b:	e8 60 14 d9 ff                                  	call   0x4de0b0
  74cc50:	83 c4 10                                        	add    esp,0x10
  74cc53:	8b ce                                           	mov    ecx,esi
  74cc55:	50                                              	push   eax
  74cc56:	e8 95 ad 08 00                                  	call   0x7d79f0
  74cc5b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  74cc5d:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  74cc60:	56                                              	push   esi
  74cc61:	8b cf                                           	mov    ecx,edi
  74cc63:	ff d0                                           	call   eax
  74cc65:	5f                                              	pop    edi
  74cc66:	5e                                              	pop    esi
  74cc67:	c2 04 00                                        	ret    0x4
  74cc6a:	cc                                              	int3
  74cc6b:	cc                                              	int3
  74cc6c:	cc                                              	int3
  74cc6d:	cc                                              	int3
  74cc6e:	cc                                              	int3
  74cc6f:	cc                                              	int3
