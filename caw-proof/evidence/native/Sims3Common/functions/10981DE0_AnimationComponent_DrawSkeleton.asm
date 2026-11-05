# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10981de0 (AnimationComponent_DrawSkeleton)
Paired Ghidra pseudocode: 10981DE0_AnimationComponent_DrawSkeleton.c
Window: [0x10981de0, 0x10982070) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10981de0: 55 8b ec 83 e4 f0 81 ec d4 00 00 00 53 8b 5d 08
10981df0: 8b 43 08 8b 50 20 8d 4b 08 56 57 ff d2 85 c0 0f
10981e00: 84 5f 02 00 00 8d 48 28 e8 83 f8 9e ff 8b f0 8d
10981e10: 44 24 2c 50 56 8d 4c 24 18 c7 44 24 34 d0 63 b9
10981e20: 10 e8 fa f0 ff ff 8b 4c 24 2c 8b 7c 24 10 51 8d
10981e30: 94 24 a4 00 00 00 52 56 57 e8 f2 a1 a6 ff 83 c4
10981e40: 10 85 f6 0f 8e f8 00 00 00 8b 45 34 8d 4f 20 83
10981e50: c0 08 eb 0c 8d a4 24 00 00 00 00 eb 03 8d 49 00
10981e60: f3 0f 10 40 04 f3 0f 10 48 14 f3 0f 10 50 24 f3
10981e70: 0f 10 58 34 f3 0f 11 44 24 5c f3 0f 10 00 f3 0f
10981e80: 11 4c 24 4c f3 0f 10 48 10 f3 0f 11 54 24 3c f3
10981e90: 0f 10 50 20 f3 0f 11 5c 24 1c f3 0f 10 58 30 f3
10981ea0: 0f 11 44 24 58 f3 0f 10 40 fc f3 0f 11 4c 24 48
10981eb0: f3 0f 10 48 0c f3 0f 11 54 24 38 f3 0f 10 50 1c
10981ec0: f3 0f 11 5c 24 18 f3 0f 10 58 2c f3 0f 11 44 24
10981ed0: 54 f3 0f 10 40 f8 f3 0f 11 4c 24 44 f3 0f 10 48
10981ee0: 08 f3 0f 11 54 24 34 f3 0f 10 50 18 f3 0f 11 5c
10981ef0: 24 14 f3 0f 10 58 28 f3 0f 11 44 24 50 0f 28 44
10981f00: 24 50 f3 0f 11 4c 24 40 0f 28 4c 24 40 f3 0f 11
10981f10: 54 24 30 0f 28 54 24 30 f3 0f 11 5c 24 10 0f 28
10981f20: 5c 24 10 0f 29 41 e0 0f 29 49 f0 0f 29 11 0f 29
10981f30: 59 10 83 c0 40 83 c1 40 83 ee 01 0f 85 1f ff ff
10981f40: ff 8b 45 10 f3 0f 10 40 0c f3 0f 11 44 24 1c f3
10981f50: 0f 10 40 08 f3 0f 11 44 24 18 f3 0f 10 40 04 f3
10981f60: 0f 11 44 24 14 f3 0f 10 00 f3 0f 11 44 24 10 0f
10981f70: 28 44 24 10 0f 29 44 24 60 f3 0f 10 40 1c f3 0f
10981f80: 11 44 24 1c f3 0f 10 40 18 f3 0f 11 44 24 18 f3
10981f90: 0f 10 40 14 f3 0f 11 44 24 14 f3 0f 10 40 10 f3
10981fa0: 0f 11 44 24 10 0f 28 44 24 10 8b 4d 2c 8b 55 28
10981fb0: 0f 29 44 24 70 f3 0f 10 40 2c f3 0f 11 44 24 1c
10981fc0: f3 0f 10 40 28 f3 0f 11 44 24 18 f3 0f 10 40 24
10981fd0: f3 0f 11 44 24 14 f3 0f 10 40 20 f3 0f 11 44 24
10981fe0: 10 0f 28 44 24 10 0f 29 84 24 80 00 00 00 f3 0f
10981ff0: 10 40 3c f3 0f 11 44 24 1c f3 0f 10 40 38 57 f3
10982000: 0f 11 44 24 1c f3 0f 10 40 34 f3 0f 11 44 24 18
10982010: f3 0f 10 40 30 8b 45 30 50 8b 45 24 51 8b 4d 20
10982020: 52 8b 55 1c 50 8b 45 18 51 8b 4d 14 52 50 8b 45
10982030: 0c 51 8d 94 24 84 00 00 00 52 50 f3 0f 11 44 24
10982040: 3c 0f 28 44 24 3c 53 0f 29 84 24 c0 00 00 00 e8
10982050: 9c 1b db ff 83 c4 30 85 ff 74 09 57 e8 2f 6e f9
10982060: ff 83 c4 04 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10981de0 <.text+0x980de0>:
10981de0:	55                                              	push   ebp
10981de1:	8b ec                                           	mov    ebp,esp
10981de3:	83 e4 f0                                        	and    esp,0xfffffff0
10981de6:	81 ec d4 00 00 00                               	sub    esp,0xd4
10981dec:	53                                              	push   ebx
10981ded:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
10981df0:	8b 43 08                                        	mov    eax,DWORD PTR [ebx+0x8]
10981df3:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
10981df6:	8d 4b 08                                        	lea    ecx,[ebx+0x8]
10981df9:	56                                              	push   esi
10981dfa:	57                                              	push   edi
10981dfb:	ff d2                                           	call   edx
10981dfd:	85 c0                                           	test   eax,eax
10981dff:	0f 84 5f 02 00 00                               	je     0x10982064
10981e05:	8d 48 28                                        	lea    ecx,[eax+0x28]
10981e08:	e8 83 f8 9e ff                                  	call   0x10371690
10981e0d:	8b f0                                           	mov    esi,eax
10981e0f:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
10981e13:	50                                              	push   eax
10981e14:	56                                              	push   esi
10981e15:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10981e19:	c7 44 24 34 d0 63 b9 10                         	mov    DWORD PTR [esp+0x34],0x10b963d0
10981e21:	e8 fa f0 ff ff                                  	call   0x10980f20
10981e26:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10981e2a:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
10981e2e:	51                                              	push   ecx
10981e2f:	8d 94 24 a4 00 00 00                            	lea    edx,[esp+0xa4]
10981e36:	52                                              	push   edx
10981e37:	56                                              	push   esi
10981e38:	57                                              	push   edi
10981e39:	e8 f2 a1 a6 ff                                  	call   0x103ec030
10981e3e:	83 c4 10                                        	add    esp,0x10
10981e41:	85 f6                                           	test   esi,esi
10981e43:	0f 8e f8 00 00 00                               	jle    0x10981f41
10981e49:	8b 45 34                                        	mov    eax,DWORD PTR [ebp+0x34]
10981e4c:	8d 4f 20                                        	lea    ecx,[edi+0x20]
10981e4f:	83 c0 08                                        	add    eax,0x8
10981e52:	eb 0c                                           	jmp    0x10981e60
10981e54:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
10981e5b:	eb 03                                           	jmp    0x10981e60
10981e5d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
10981e60:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
10981e65:	f3 0f 10 48 14                                  	movss  xmm1,DWORD PTR [eax+0x14]
10981e6a:	f3 0f 10 50 24                                  	movss  xmm2,DWORD PTR [eax+0x24]
10981e6f:	f3 0f 10 58 34                                  	movss  xmm3,DWORD PTR [eax+0x34]
10981e74:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
10981e7a:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10981e7e:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
10981e84:	f3 0f 10 48 10                                  	movss  xmm1,DWORD PTR [eax+0x10]
10981e89:	f3 0f 11 54 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm2
10981e8f:	f3 0f 10 50 20                                  	movss  xmm2,DWORD PTR [eax+0x20]
10981e94:	f3 0f 11 5c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm3
10981e9a:	f3 0f 10 58 30                                  	movss  xmm3,DWORD PTR [eax+0x30]
10981e9f:	f3 0f 11 44 24 58                               	movss  DWORD PTR [esp+0x58],xmm0
10981ea5:	f3 0f 10 40 fc                                  	movss  xmm0,DWORD PTR [eax-0x4]
10981eaa:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
10981eb0:	f3 0f 10 48 0c                                  	movss  xmm1,DWORD PTR [eax+0xc]
10981eb5:	f3 0f 11 54 24 38                               	movss  DWORD PTR [esp+0x38],xmm2
10981ebb:	f3 0f 10 50 1c                                  	movss  xmm2,DWORD PTR [eax+0x1c]
10981ec0:	f3 0f 11 5c 24 18                               	movss  DWORD PTR [esp+0x18],xmm3
10981ec6:	f3 0f 10 58 2c                                  	movss  xmm3,DWORD PTR [eax+0x2c]
10981ecb:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
10981ed1:	f3 0f 10 40 f8                                  	movss  xmm0,DWORD PTR [eax-0x8]
10981ed6:	f3 0f 11 4c 24 44                               	movss  DWORD PTR [esp+0x44],xmm1
10981edc:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10981ee1:	f3 0f 11 54 24 34                               	movss  DWORD PTR [esp+0x34],xmm2
10981ee7:	f3 0f 10 50 18                                  	movss  xmm2,DWORD PTR [eax+0x18]
10981eec:	f3 0f 11 5c 24 14                               	movss  DWORD PTR [esp+0x14],xmm3
10981ef2:	f3 0f 10 58 28                                  	movss  xmm3,DWORD PTR [eax+0x28]
10981ef7:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
10981efd:	0f 28 44 24 50                                  	movaps xmm0,XMMWORD PTR [esp+0x50]
10981f02:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [esp+0x40],xmm1
10981f08:	0f 28 4c 24 40                                  	movaps xmm1,XMMWORD PTR [esp+0x40]
10981f0d:	f3 0f 11 54 24 30                               	movss  DWORD PTR [esp+0x30],xmm2
10981f13:	0f 28 54 24 30                                  	movaps xmm2,XMMWORD PTR [esp+0x30]
10981f18:	f3 0f 11 5c 24 10                               	movss  DWORD PTR [esp+0x10],xmm3
10981f1e:	0f 28 5c 24 10                                  	movaps xmm3,XMMWORD PTR [esp+0x10]
10981f23:	0f 29 41 e0                                     	movaps XMMWORD PTR [ecx-0x20],xmm0
10981f27:	0f 29 49 f0                                     	movaps XMMWORD PTR [ecx-0x10],xmm1
10981f2b:	0f 29 11                                        	movaps XMMWORD PTR [ecx],xmm2
10981f2e:	0f 29 59 10                                     	movaps XMMWORD PTR [ecx+0x10],xmm3
10981f32:	83 c0 40                                        	add    eax,0x40
10981f35:	83 c1 40                                        	add    ecx,0x40
10981f38:	83 ee 01                                        	sub    esi,0x1
10981f3b:	0f 85 1f ff ff ff                               	jne    0x10981e60
10981f41:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
10981f44:	f3 0f 10 40 0c                                  	movss  xmm0,DWORD PTR [eax+0xc]
10981f49:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10981f4f:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
10981f54:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10981f5a:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
10981f5f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10981f65:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10981f69:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10981f6f:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10981f74:	0f 29 44 24 60                                  	movaps XMMWORD PTR [esp+0x60],xmm0
10981f79:	f3 0f 10 40 1c                                  	movss  xmm0,DWORD PTR [eax+0x1c]
10981f7e:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10981f84:	f3 0f 10 40 18                                  	movss  xmm0,DWORD PTR [eax+0x18]
10981f89:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10981f8f:	f3 0f 10 40 14                                  	movss  xmm0,DWORD PTR [eax+0x14]
10981f94:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10981f9a:	f3 0f 10 40 10                                  	movss  xmm0,DWORD PTR [eax+0x10]
10981f9f:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10981fa5:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10981faa:	8b 4d 2c                                        	mov    ecx,DWORD PTR [ebp+0x2c]
10981fad:	8b 55 28                                        	mov    edx,DWORD PTR [ebp+0x28]
10981fb0:	0f 29 44 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm0
10981fb5:	f3 0f 10 40 2c                                  	movss  xmm0,DWORD PTR [eax+0x2c]
10981fba:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10981fc0:	f3 0f 10 40 28                                  	movss  xmm0,DWORD PTR [eax+0x28]
10981fc5:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10981fcb:	f3 0f 10 40 24                                  	movss  xmm0,DWORD PTR [eax+0x24]
10981fd0:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10981fd6:	f3 0f 10 40 20                                  	movss  xmm0,DWORD PTR [eax+0x20]
10981fdb:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10981fe1:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10981fe6:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [esp+0x80],xmm0
10981fee:	f3 0f 10 40 3c                                  	movss  xmm0,DWORD PTR [eax+0x3c]
10981ff3:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10981ff9:	f3 0f 10 40 38                                  	movss  xmm0,DWORD PTR [eax+0x38]
10981ffe:	57                                              	push   edi
10981fff:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10982005:	f3 0f 10 40 34                                  	movss  xmm0,DWORD PTR [eax+0x34]
1098200a:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10982010:	f3 0f 10 40 30                                  	movss  xmm0,DWORD PTR [eax+0x30]
10982015:	8b 45 30                                        	mov    eax,DWORD PTR [ebp+0x30]
10982018:	50                                              	push   eax
10982019:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
1098201c:	51                                              	push   ecx
1098201d:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
10982020:	52                                              	push   edx
10982021:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
10982024:	50                                              	push   eax
10982025:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
10982028:	51                                              	push   ecx
10982029:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
1098202c:	52                                              	push   edx
1098202d:	50                                              	push   eax
1098202e:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10982031:	51                                              	push   ecx
10982032:	8d 94 24 84 00 00 00                            	lea    edx,[esp+0x84]
10982039:	52                                              	push   edx
1098203a:	50                                              	push   eax
1098203b:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
10982041:	0f 28 44 24 3c                                  	movaps xmm0,XMMWORD PTR [esp+0x3c]
10982046:	53                                              	push   ebx
10982047:	0f 29 84 24 c0 00 00 00                         	movaps XMMWORD PTR [esp+0xc0],xmm0
1098204f:	e8 9c 1b db ff                                  	call   0x10733bf0
10982054:	83 c4 30                                        	add    esp,0x30
10982057:	85 ff                                           	test   edi,edi
10982059:	74 09                                           	je     0x10982064
1098205b:	57                                              	push   edi
1098205c:	e8 2f 6e f9 ff                                  	call   0x10918e90
10982061:	83 c4 04                                        	add    esp,0x4
10982064:	5f                                              	pop    edi
10982065:	5e                                              	pop    esi
10982066:	5b                                              	pop    ebx
10982067:	8b e5                                           	mov    esp,ebp
10982069:	5d                                              	pop    ebp
1098206a:	c3                                              	ret
1098206b:	cc                                              	int3
1098206c:	cc                                              	int3
1098206d:	cc                                              	int3
1098206e:	cc                                              	int3
1098206f:	cc                                              	int3
