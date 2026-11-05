# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fda0 (Camera_GetObjectFollowId)
Paired Ghidra pseudocode: 1052FDA0_Camera_GetObjectFollowId.c
Window: [0x1052fda0, 0x1052fe30) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fe30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fda0: 56 57 e8 89 c8 22 00 85 c0 74 71 8b c8 e8 ce 7c
1052fdb0: 40 00 85 c0 74 66 8b c8 e8 93 cb 22 00 8b f0 85
1052fdc0: f6 74 59 8b 06 8b 50 0c 68 89 dd 0f 11 8b ce ff
1052fdd0: d2 8b f8 8b 06 8b 50 0c 68 db 4e 39 4d 8b ce ff
1052fde0: d2 85 ff 74 1e 8b 8f 1c 08 00 00 85 c9 74 0b 8b
1052fdf0: 41 08 8b 49 0c 5f 8b d1 5e c3 33 c0 33 c9 5f 8b
1052fe00: d1 5e c3 85 c0 74 15 8b 88 64 06 00 00 85 c9 74
1052fe10: e9 8b 41 08 8b 49 0c 5f 8b d1 5e c3 5f 33 c0 33
1052fe20: d2 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052fda0 <.text+0x52eda0>:
1052fda0:	56                                              	push   esi
1052fda1:	57                                              	push   edi
1052fda2:	e8 89 c8 22 00                                  	call   0x1075c630
1052fda7:	85 c0                                           	test   eax,eax
1052fda9:	74 71                                           	je     0x1052fe1c
1052fdab:	8b c8                                           	mov    ecx,eax
1052fdad:	e8 ce 7c 40 00                                  	call   0x10937a80
1052fdb2:	85 c0                                           	test   eax,eax
1052fdb4:	74 66                                           	je     0x1052fe1c
1052fdb6:	8b c8                                           	mov    ecx,eax
1052fdb8:	e8 93 cb 22 00                                  	call   0x1075c950
1052fdbd:	8b f0                                           	mov    esi,eax
1052fdbf:	85 f6                                           	test   esi,esi
1052fdc1:	74 59                                           	je     0x1052fe1c
1052fdc3:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fdc5:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fdc8:	68 89 dd 0f 11                                  	push   0x110fdd89
1052fdcd:	8b ce                                           	mov    ecx,esi
1052fdcf:	ff d2                                           	call   edx
1052fdd1:	8b f8                                           	mov    edi,eax
1052fdd3:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052fdd5:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1052fdd8:	68 db 4e 39 4d                                  	push   0x4d394edb
1052fddd:	8b ce                                           	mov    ecx,esi
1052fddf:	ff d2                                           	call   edx
1052fde1:	85 ff                                           	test   edi,edi
1052fde3:	74 1e                                           	je     0x1052fe03
1052fde5:	8b 8f 1c 08 00 00                               	mov    ecx,DWORD PTR [edi+0x81c]
1052fdeb:	85 c9                                           	test   ecx,ecx
1052fded:	74 0b                                           	je     0x1052fdfa
1052fdef:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1052fdf2:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
1052fdf5:	5f                                              	pop    edi
1052fdf6:	8b d1                                           	mov    edx,ecx
1052fdf8:	5e                                              	pop    esi
1052fdf9:	c3                                              	ret
1052fdfa:	33 c0                                           	xor    eax,eax
1052fdfc:	33 c9                                           	xor    ecx,ecx
1052fdfe:	5f                                              	pop    edi
1052fdff:	8b d1                                           	mov    edx,ecx
1052fe01:	5e                                              	pop    esi
1052fe02:	c3                                              	ret
1052fe03:	85 c0                                           	test   eax,eax
1052fe05:	74 15                                           	je     0x1052fe1c
1052fe07:	8b 88 64 06 00 00                               	mov    ecx,DWORD PTR [eax+0x664]
1052fe0d:	85 c9                                           	test   ecx,ecx
1052fe0f:	74 e9                                           	je     0x1052fdfa
1052fe11:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
1052fe14:	8b 49 0c                                        	mov    ecx,DWORD PTR [ecx+0xc]
1052fe17:	5f                                              	pop    edi
1052fe18:	8b d1                                           	mov    edx,ecx
1052fe1a:	5e                                              	pop    esi
1052fe1b:	c3                                              	ret
1052fe1c:	5f                                              	pop    edi
1052fe1d:	33 c0                                           	xor    eax,eax
1052fe1f:	33 d2                                           	xor    edx,edx
1052fe21:	5e                                              	pop    esi
1052fe22:	c3                                              	ret
1052fe23:	cc                                              	int3
1052fe24:	cc                                              	int3
1052fe25:	cc                                              	int3
1052fe26:	cc                                              	int3
1052fe27:	cc                                              	int3
1052fe28:	cc                                              	int3
1052fe29:	cc                                              	int3
1052fe2a:	cc                                              	int3
1052fe2b:	cc                                              	int3
1052fe2c:	cc                                              	int3
1052fe2d:	cc                                              	int3
1052fe2e:	cc                                              	int3
1052fe2f:	cc                                              	int3
