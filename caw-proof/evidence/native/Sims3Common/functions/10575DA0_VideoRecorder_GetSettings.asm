# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10575da0 (VideoRecorder_GetSettings)
Paired Ghidra pseudocode: 10575DA0_VideoRecorder_GetSettings.c
Window: [0x10575da0, 0x10575e70) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x10575e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10575da0: 83 ec 3c e8 c8 73 25 00 8b c8 33 c0 85 c9 89 04
10575db0: 24 0f 84 af 00 00 00 8b 01 8b 40 08 33 d2 89 54
10575dc0: 24 04 89 54 24 08 89 54 24 0c 89 54 24 10 89 54
10575dd0: 24 14 89 54 24 18 56 8d 54 24 08 52 ff d0 8b 4c
10575de0: 24 08 8b 44 24 10 8b 54 24 0c 89 4c 24 20 8b 4c
10575df0: 24 14 89 44 24 28 8b 44 24 1c 89 54 24 24 8b 54
10575e00: 24 18 89 4c 24 2c 33 c9 84 c0 0f 95 c1 89 54 24
10575e10: 30 33 d2 84 e4 0f 95 c2 33 c0 38 44 24 1e 89 4c
10575e20: 24 34 0f 95 c0 89 54 24 38 89 44 24 3c e8 ee 52
10575e30: fe ff 8b f0 8b 16 8b 92 8c 00 00 00 6a 08 8d 44
10575e40: 24 08 50 8b ce ff d2 8b 06 8b 80 a4 00 00 00 6a
10575e50: 08 6a 00 8d 4c 24 28 51 8d 54 24 10 52 8b ce ff
10575e60: d0 8b 44 24 04 5e 83 c4 3c c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10575da0 <.text+0x574da0>:
10575da0:	83 ec 3c                                        	sub    esp,0x3c
10575da3:	e8 c8 73 25 00                                  	call   0x107cd170
10575da8:	8b c8                                           	mov    ecx,eax
10575daa:	33 c0                                           	xor    eax,eax
10575dac:	85 c9                                           	test   ecx,ecx
10575dae:	89 04 24                                        	mov    DWORD PTR [esp],eax
10575db1:	0f 84 af 00 00 00                               	je     0x10575e66
10575db7:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10575db9:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
10575dbc:	33 d2                                           	xor    edx,edx
10575dbe:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10575dc2:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
10575dc6:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
10575dca:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
10575dce:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
10575dd2:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10575dd6:	56                                              	push   esi
10575dd7:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10575ddb:	52                                              	push   edx
10575ddc:	ff d0                                           	call   eax
10575dde:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10575de2:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10575de6:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10575dea:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
10575dee:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10575df2:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
10575df6:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10575dfa:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
10575dfe:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
10575e02:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
10575e06:	33 c9                                           	xor    ecx,ecx
10575e08:	84 c0                                           	test   al,al
10575e0a:	0f 95 c1                                        	setne  cl
10575e0d:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
10575e11:	33 d2                                           	xor    edx,edx
10575e13:	84 e4                                           	test   ah,ah
10575e15:	0f 95 c2                                        	setne  dl
10575e18:	33 c0                                           	xor    eax,eax
10575e1a:	38 44 24 1e                                     	cmp    BYTE PTR [esp+0x1e],al
10575e1e:	89 4c 24 34                                     	mov    DWORD PTR [esp+0x34],ecx
10575e22:	0f 95 c0                                        	setne  al
10575e25:	89 54 24 38                                     	mov    DWORD PTR [esp+0x38],edx
10575e29:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
10575e2d:	e8 ee 52 fe ff                                  	call   0x1055b120
10575e32:	8b f0                                           	mov    esi,eax
10575e34:	8b 16                                           	mov    edx,DWORD PTR [esi]
10575e36:	8b 92 8c 00 00 00                               	mov    edx,DWORD PTR [edx+0x8c]
10575e3c:	6a 08                                           	push   0x8
10575e3e:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10575e42:	50                                              	push   eax
10575e43:	8b ce                                           	mov    ecx,esi
10575e45:	ff d2                                           	call   edx
10575e47:	8b 06                                           	mov    eax,DWORD PTR [esi]
10575e49:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
10575e4f:	6a 08                                           	push   0x8
10575e51:	6a 00                                           	push   0x0
10575e53:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10575e57:	51                                              	push   ecx
10575e58:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10575e5c:	52                                              	push   edx
10575e5d:	8b ce                                           	mov    ecx,esi
10575e5f:	ff d0                                           	call   eax
10575e61:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10575e65:	5e                                              	pop    esi
10575e66:	83 c4 3c                                        	add    esp,0x3c
10575e69:	c3                                              	ret
10575e6a:	cc                                              	int3
10575e6b:	cc                                              	int3
10575e6c:	cc                                              	int3
10575e6d:	cc                                              	int3
10575e6e:	cc                                              	int3
10575e6f:	cc                                              	int3
