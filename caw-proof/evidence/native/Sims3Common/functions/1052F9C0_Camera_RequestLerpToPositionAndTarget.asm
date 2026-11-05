# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f9c0 (Camera_RequestLerpToPositionAndTarget)
Paired Ghidra pseudocode: 1052F9C0_Camera_RequestLerpToPositionAndTarget.c
Window: [0x1052f9c0, 0x1052fb10) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fb10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f9c0: 55 8b ec 83 e4 f0 83 ec 24 f3 0f 10 4d 1c f3 0f
1052f9d0: 10 45 14 f3 0f 11 4c 24 0c f3 0f 10 4d 18 f3 0f
1052f9e0: 11 4c 24 08 f3 0f 10 4d 10 f3 0f 11 44 24 10 f3
1052f9f0: 0f 11 44 24 04 0f 28 44 24 04 f3 0f 11 4c 24 0c
1052fa00: f3 0f 10 4d 0c 53 0f 29 44 24 18 f3 0f 10 45 08
1052fa10: f3 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44
1052fa20: 24 08 0f 28 44 24 08 56 57 0f 29 44 24 10 e8 fd
1052fa30: cb 22 00 85 c0 0f 84 c1 00 00 00 8b c8 e8 3e 80
1052fa40: 40 00 85 c0 0f 84 b2 00 00 00 8b c8 e8 ff ce 22
1052fa50: 00 8b f0 85 f6 0f 84 a1 00 00 00 8b 06 8b 50 0c
1052fa60: 68 89 dd 0f 11 8b ce ff d2 8b f8 8b 06 8b 50 0c
1052fa70: 68 db 4e 39 4d 8b ce ff d2 8b d8 8b 06 8b 50 0c
1052fa80: 68 9b 61 bc 14 8b ce ff d2 85 ff 74 29 8b 45 24
1052fa90: d9 45 20 6a 01 6a 00 6a 01 50 51 d9 1c 24 8d 4c
1052faa0: 24 34 51 8d 54 24 28 52 8b cf e8 a1 71 23 00 5f
1052fab0: 5e 5b 8b e5 5d c3 85 db 74 26 8b cb e8 1f cc 23
1052fac0: 00 d9 45 20 51 d9 1c 24 8d 44 24 24 50 8d 4c 24
1052fad0: 18 51 8b cb e8 a7 cd 23 00 5f 5e 5b 8b e5 5d c3
1052fae0: 85 c0 74 18 d9 45 20 51 d9 1c 24 8d 54 24 24 52
1052faf0: 8d 4c 24 18 51 8b c8 e8 74 a5 22 00 5f 5e 5b 8b
1052fb00: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f9c0 <.text+0x52e9c0>:
1052f9c0:	55                                              	push   ebp
1052f9c1:	8b ec                                           	mov    ebp,esp
1052f9c3:	83 e4 f0                                        	and    esp,0xfffffff0
1052f9c6:	83 ec 24                                        	sub    esp,0x24
1052f9c9:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
1052f9ce:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
1052f9d3:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1052f9d9:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
1052f9de:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1052f9e4:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1052f9e9:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1052f9ef:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1052f9f5:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
1052f9fa:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1052fa00:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
1052fa05:	53                                              	push   ebx
1052fa06:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
1052fa0b:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
1052fa10:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1052fa16:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1052fa1c:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1052fa22:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
1052fa27:	56                                              	push   esi
1052fa28:	57                                              	push   edi
1052fa29:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1052fa2e:	e8 fd cb 22 00                                  	call   0x1075c630
1052fa33:	85 c0                                           	test   eax,eax
1052fa35:	0f 84 c1 00 00 00                               	je     0x1052fafc
1052fa3b:	8b c8                                           	mov    ecx,eax
1052fa3d:	e8 3e 80 40 00                                  	call   0x10937a80
1052fa42:	85 c0                                           	test   eax,eax
1052fa44:	0f 84 b2 00 00 00                               	je     0x1052fafc
1052fa4a:	8b c8                                           	mov    ecx,eax
1052fa4c:	e8 ff ce 22 00                                  	call   0x1075c950
1052fa51:	8b f0                                           	mov    esi,eax
1052fa53:	85 f6                                           	test   esi,esi
1052fa55:	0f 84 a1 00 00 00                               	je     0x1052fafc
1052fa5b:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fa5d:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fa60:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fa65:	8b ce                                           	mov    ecx,esi
1052fa67:	ff d2                                           	call   edx
1052fa69:	8b f8                                           	mov    edi,eax
1052fa6b:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fa6d:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fa70:	68 db 4e 39 4d                                  	push   0x4d394edb
1052fa75:	8b ce                                           	mov    ecx,esi
1052fa77:	ff d2                                           	call   edx
1052fa79:	8b d8                                           	mov    ebx,eax
1052fa7b:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fa7d:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fa80:	68 9b 61 bc 14                                  	push   0x14bc619b
1052fa85:	8b ce                                           	mov    ecx,esi
1052fa87:	ff d2                                           	call   edx
1052fa89:	85 ff                                           	test   edi,edi
1052fa8b:	74 29                                           	je     0x1052fab6
1052fa8d:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
1052fa90:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
1052fa93:	6a 01                                           	push   0x1
1052fa95:	6a 00                                           	push   0x0
1052fa97:	6a 01                                           	push   0x1
1052fa99:	50                                              	push   eax
1052fa9a:	51                                              	push   ecx
1052fa9b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052fa9e:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
1052faa2:	51                                              	push   ecx
1052faa3:	8d 54 24 28                                     	lea    edx,[esp+0x28]
1052faa7:	52                                              	push   edx
1052faa8:	8b cf                                           	mov    ecx,edi
1052faaa:	e8 a1 71 23 00                                  	call   0x10766c50
1052faaf:	5f                                              	pop    edi
1052fab0:	5e                                              	pop    esi
1052fab1:	5b                                              	pop    ebx
1052fab2:	8b e5                                           	mov    esp,ebp
1052fab4:	5d                                              	pop    ebp
1052fab5:	c3                                              	ret
1052fab6:	85 db                                           	test   ebx,ebx
1052fab8:	74 26                                           	je     0x1052fae0
1052faba:	8b cb                                           	mov    ecx,ebx
1052fabc:	e8 1f cc 23 00                                  	call   0x1076c6e0
1052fac1:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
1052fac4:	51                                              	push   ecx
1052fac5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052fac8:	8d 44 24 24                                     	lea    eax,[esp+0x24]
1052facc:	50                                              	push   eax
1052facd:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1052fad1:	51                                              	push   ecx
1052fad2:	8b cb                                           	mov    ecx,ebx
1052fad4:	e8 a7 cd 23 00                                  	call   0x1076c880
1052fad9:	5f                                              	pop    edi
1052fada:	5e                                              	pop    esi
1052fadb:	5b                                              	pop    ebx
1052fadc:	8b e5                                           	mov    esp,ebp
1052fade:	5d                                              	pop    ebp
1052fadf:	c3                                              	ret
1052fae0:	85 c0                                           	test   eax,eax
1052fae2:	74 18                                           	je     0x1052fafc
1052fae4:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
1052fae7:	51                                              	push   ecx
1052fae8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1052faeb:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1052faef:	52                                              	push   edx
1052faf0:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1052faf4:	51                                              	push   ecx
1052faf5:	8b c8                                           	mov    ecx,eax
1052faf7:	e8 74 a5 22 00                                  	call   0x1075a070
1052fafc:	5f                                              	pop    edi
1052fafd:	5e                                              	pop    esi
1052fafe:	5b                                              	pop    ebx
1052faff:	8b e5                                           	mov    esp,ebp
1052fb01:	5d                                              	pop    ebp
1052fb02:	c3                                              	ret
1052fb03:	cc                                              	int3
1052fb04:	cc                                              	int3
1052fb05:	cc                                              	int3
1052fb06:	cc                                              	int3
1052fb07:	cc                                              	int3
1052fb08:	cc                                              	int3
1052fb09:	cc                                              	int3
1052fb0a:	cc                                              	int3
1052fb0b:	cc                                              	int3
1052fb0c:	cc                                              	int3
1052fb0d:	cc                                              	int3
1052fb0e:	cc                                              	int3
1052fb0f:	cc                                              	int3
