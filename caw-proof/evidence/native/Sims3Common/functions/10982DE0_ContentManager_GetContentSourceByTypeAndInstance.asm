# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982de0 (ContentManager_GetContentSourceByTypeAndInstance)
Paired Ghidra pseudocode: 10982DE0_ContentManager_GetContentSourceByTypeAndInstance.c
Window: [0x10982de0, 0x10982ea0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982ea0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982de0: 83 ec 20 e8 e8 22 f6 ff 85 c0 75 04 83 c4 20 c3
10982df0: 8b 4c 24 24 8b 54 24 28 89 4c 24 14 8b 4c 24 2c
10982e00: 56 57 89 4c 24 24 6a 00 8d 4c 24 1c 51 89 54 24
10982e10: 28 c7 44 24 20 d4 92 b5 10 c7 44 24 10 00 00 00
10982e20: 00 c7 44 24 14 00 00 00 00 c7 44 24 18 00 00 00
10982e30: 00 c7 44 24 1c 18 65 b9 10 8b 10 8b 52 20 8d 4c
10982e40: 24 10 51 8b c8 ff d2 85 c0 8b 74 24 08 76 22 3b
10982e50: 74 24 0c 74 1c 56 e8 35 f4 df ff 8b f8 83 c4 04
10982e60: 85 ff 75 22 83 c6 10 3b 74 24 0c 75 e8 8b 74 24
10982e70: 08 85 f6 74 09 56 e8 15 60 f9 ff 83 c4 04 5f 33
10982e80: c0 5e 83 c4 20 c3 8b 44 24 08 85 c0 74 09 50 e8
10982e90: fc 5f f9 ff 83 c4 04 8b c7 5f 5e 83 c4 20 c3 cc

LINEAR DISASSEMBLY
10982de0 <.text+0x981de0>:
10982de0:	83 ec 20                                        	sub    esp,0x20
10982de3:	e8 e8 22 f6 ff                                  	call   0x108e50d0
10982de8:	85 c0                                           	test   eax,eax
10982dea:	75 04                                           	jne    0x10982df0
10982dec:	83 c4 20                                        	add    esp,0x20
10982def:	c3                                              	ret
10982df0:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10982df4:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10982df8:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
10982dfc:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10982e00:	56                                              	push   esi
10982e01:	57                                              	push   edi
10982e02:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
10982e06:	6a 00                                           	push   0x0
10982e08:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10982e0c:	51                                              	push   ecx
10982e0d:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
10982e11:	c7 44 24 20 d4 92 b5 10                         	mov    DWORD PTR [esp+0x20],0x10b592d4
10982e19:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
10982e21:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
10982e29:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
10982e31:	c7 44 24 1c 18 65 b9 10                         	mov    DWORD PTR [esp+0x1c],0x10b96518
10982e39:	8b 10                                           	mov    edx,DWORD PTR [eax]
10982e3b:	8b 52 20                                        	mov    edx,DWORD PTR [edx+0x20]
10982e3e:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10982e42:	51                                              	push   ecx
10982e43:	8b c8                                           	mov    ecx,eax
10982e45:	ff d2                                           	call   edx
10982e47:	85 c0                                           	test   eax,eax
10982e49:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10982e4d:	76 22                                           	jbe    0x10982e71
10982e4f:	3b 74 24 0c                                     	cmp    esi,DWORD PTR [esp+0xc]
10982e53:	74 1c                                           	je     0x10982e71
10982e55:	56                                              	push   esi
10982e56:	e8 35 f4 df ff                                  	call   0x10782290
10982e5b:	8b f8                                           	mov    edi,eax
10982e5d:	83 c4 04                                        	add    esp,0x4
10982e60:	85 ff                                           	test   edi,edi
10982e62:	75 22                                           	jne    0x10982e86
10982e64:	83 c6 10                                        	add    esi,0x10
10982e67:	3b 74 24 0c                                     	cmp    esi,DWORD PTR [esp+0xc]
10982e6b:	75 e8                                           	jne    0x10982e55
10982e6d:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10982e71:	85 f6                                           	test   esi,esi
10982e73:	74 09                                           	je     0x10982e7e
10982e75:	56                                              	push   esi
10982e76:	e8 15 60 f9 ff                                  	call   0x10918e90
10982e7b:	83 c4 04                                        	add    esp,0x4
10982e7e:	5f                                              	pop    edi
10982e7f:	33 c0                                           	xor    eax,eax
10982e81:	5e                                              	pop    esi
10982e82:	83 c4 20                                        	add    esp,0x20
10982e85:	c3                                              	ret
10982e86:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10982e8a:	85 c0                                           	test   eax,eax
10982e8c:	74 09                                           	je     0x10982e97
10982e8e:	50                                              	push   eax
10982e8f:	e8 fc 5f f9 ff                                  	call   0x10918e90
10982e94:	83 c4 04                                        	add    esp,0x4
10982e97:	8b c7                                           	mov    eax,edi
10982e99:	5f                                              	pop    edi
10982e9a:	5e                                              	pop    esi
10982e9b:	83 c4 20                                        	add    esp,0x20
10982e9e:	c3                                              	ret
10982e9f:	cc                                              	int3
