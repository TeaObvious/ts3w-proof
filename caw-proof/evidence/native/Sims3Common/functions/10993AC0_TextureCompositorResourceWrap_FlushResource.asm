# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993ac0 (TextureCompositorResourceWrap_FlushResource)
Paired Ghidra pseudocode: 10993AC0_TextureCompositorResourceWrap_FlushResource.c
Window: [0x10993ac0, 0x10993b50) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993ac0: 83 ec 14 56 e8 87 f1 a6 ff 8b f0 85 f6 74 77 8b
10993ad0: 44 24 20 8b 4c 24 24 8b 54 24 28 89 44 24 14 8b
10993ae0: 44 24 1c 89 4c 24 08 89 54 24 0c 89 44 24 10 c7
10993af0: 44 24 04 00 00 00 00 e8 d4 15 f5 ff 8b 10 8b 52
10993b00: 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 14 51 8d 4c
10993b10: 24 1c 51 8b c8 ff d2 84 c0 74 2b 8b 4c 24 04 85
10993b20: c9 74 1c 8b 01 8b 50 0c 68 d6 0b 42 03 ff d2 85
10993b30: c0 74 08 50 8b ce e8 e5 f2 b2 ff 8b 4c 24 04 8b
10993b40: 01 8b 50 04 ff d2 5e 83 c4 14 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10993ac0 <.text+0x992ac0>:
10993ac0:	83 ec 14                                        	sub    esp,0x14
10993ac3:	56                                              	push   esi
10993ac4:	e8 87 f1 a6 ff                                  	call   0x10402c50
10993ac9:	8b f0                                           	mov    esi,eax
10993acb:	85 f6                                           	test   esi,esi
10993acd:	74 77                                           	je     0x10993b46
10993acf:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10993ad3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10993ad7:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
10993adb:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
10993adf:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10993ae3:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10993ae7:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
10993aeb:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10993aef:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
10993af7:	e8 d4 15 f5 ff                                  	call   0x108e50d0
10993afc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10993afe:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10993b01:	6a 00                                           	push   0x0
10993b03:	6a 00                                           	push   0x0
10993b05:	6a 00                                           	push   0x0
10993b07:	6a 00                                           	push   0x0
10993b09:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10993b0d:	51                                              	push   ecx
10993b0e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10993b12:	51                                              	push   ecx
10993b13:	8b c8                                           	mov    ecx,eax
10993b15:	ff d2                                           	call   edx
10993b17:	84 c0                                           	test   al,al
10993b19:	74 2b                                           	je     0x10993b46
10993b1b:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993b1f:	85 c9                                           	test   ecx,ecx
10993b21:	74 1c                                           	je     0x10993b3f
10993b23:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10993b25:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10993b28:	68 d6 0b 42 03                                  	push   0x3420bd6
10993b2d:	ff d2                                           	call   edx
10993b2f:	85 c0                                           	test   eax,eax
10993b31:	74 08                                           	je     0x10993b3b
10993b33:	50                                              	push   eax
10993b34:	8b ce                                           	mov    ecx,esi
10993b36:	e8 e5 f2 b2 ff                                  	call   0x104c2e20
10993b3b:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10993b3f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10993b41:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10993b44:	ff d2                                           	call   edx
10993b46:	5e                                              	pop    esi
10993b47:	83 c4 14                                        	add    esp,0x14
10993b4a:	c3                                              	ret
10993b4b:	cc                                              	int3
10993b4c:	cc                                              	int3
10993b4d:	cc                                              	int3
10993b4e:	cc                                              	int3
10993b4f:	cc                                              	int3
