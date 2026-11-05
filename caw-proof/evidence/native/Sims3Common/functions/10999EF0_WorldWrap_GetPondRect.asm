# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999ef0 (WorldWrap_GetPondRect)
Paired Ghidra pseudocode: 10999EF0_WorldWrap_GetPondRect.c
Window: [0x10999ef0, 0x10999ff0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999ff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999ef0: 55 8b ec 83 e4 f0 83 ec 2c 56 8b 75 08 85 f6 0f
10999f00: 84 e4 00 00 00 8b ce e8 a4 ae 89 ff 8b 4d 0c 3b
10999f10: c8 0f 83 d2 00 00 00 8d 44 24 20 50 51 8b ce e8
10999f20: 9c ae 89 ff 84 c0 0f 84 bd 00 00 00 f3 0f 2a 44
10999f30: 24 20 f3 0f 2a 4c 24 24 f3 0f 2a 54 24 2c 8b 45
10999f40: 10 f3 0f 11 44 24 1c f3 0f 11 44 24 18 f3 0f 11
10999f50: 4c 24 14 f3 0f 11 44 24 10 0f 28 4c 24 10 f3 0f
10999f60: 2a 44 24 28 0f 29 4c 24 20 f3 0f 11 54 24 14 f3
10999f70: 0f 10 54 24 20 f3 0f 11 44 24 10 0f 29 4c 24 20
10999f80: f3 0f 10 4c 24 24 f3 0f 11 44 24 1c f3 0f 11 44
10999f90: 24 18 0f 28 44 24 10 f3 0f 11 4c 24 14 8b 54 24
10999fa0: 14 0f 29 44 24 20 f3 0f 10 4c 24 20 f3 0f 11 54
10999fb0: 24 10 8b 4c 24 10 89 08 89 50 04 8b 45 14 0f 29
10999fc0: 44 24 20 f3 0f 10 44 24 24 f3 0f 11 4c 24 10 8b
10999fd0: 4c 24 10 f3 0f 11 44 24 14 8b 54 24 14 89 08 89
10999fe0: 50 04 b0 01 5e 8b e5 5d c3 32 c0 5e 8b e5 5d c3

LINEAR DISASSEMBLY
10999ef0 <.text+0x998ef0>:
10999ef0:	55                                              	push   ebp
10999ef1:	8b ec                                           	mov    ebp,esp
10999ef3:	83 e4 f0                                        	and    esp,0xfffffff0
10999ef6:	83 ec 2c                                        	sub    esp,0x2c
10999ef9:	56                                              	push   esi
10999efa:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
10999efd:	85 f6                                           	test   esi,esi
10999eff:	0f 84 e4 00 00 00                               	je     0x10999fe9
10999f05:	8b ce                                           	mov    ecx,esi
10999f07:	e8 a4 ae 89 ff                                  	call   0x10234db0
10999f0c:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
10999f0f:	3b c8                                           	cmp    ecx,eax
10999f11:	0f 83 d2 00 00 00                               	jae    0x10999fe9
10999f17:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10999f1b:	50                                              	push   eax
10999f1c:	51                                              	push   ecx
10999f1d:	8b ce                                           	mov    ecx,esi
10999f1f:	e8 9c ae 89 ff                                  	call   0x10234dc0
10999f24:	84 c0                                           	test   al,al
10999f26:	0f 84 bd 00 00 00                               	je     0x10999fe9
10999f2c:	f3 0f 2a 44 24 20                               	cvtsi2ss xmm0,DWORD PTR [esp+0x20]
10999f32:	f3 0f 2a 4c 24 24                               	cvtsi2ss xmm1,DWORD PTR [esp+0x24]
10999f38:	f3 0f 2a 54 24 2c                               	cvtsi2ss xmm2,DWORD PTR [esp+0x2c]
10999f3e:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
10999f41:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10999f47:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10999f4d:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10999f53:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10999f59:	0f 28 4c 24 10                                  	movaps xmm1,XMMWORD PTR [esp+0x10]
10999f5e:	f3 0f 2a 44 24 28                               	cvtsi2ss xmm0,DWORD PTR [esp+0x28]
10999f64:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
10999f69:	f3 0f 11 54 24 14                               	movss  DWORD PTR [esp+0x14],xmm2
10999f6f:	f3 0f 10 54 24 20                               	movss  xmm2,DWORD PTR [esp+0x20]
10999f75:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10999f7b:	0f 29 4c 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm1
10999f80:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
10999f86:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10999f8c:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10999f92:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10999f97:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10999f9d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10999fa1:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10999fa6:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
10999fac:	f3 0f 11 54 24 10                               	movss  DWORD PTR [esp+0x10],xmm2
10999fb2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10999fb6:	89 08                                           	mov    DWORD PTR [eax],ecx
10999fb8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10999fbb:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10999fbe:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10999fc3:	f3 0f 10 44 24 24                               	movss  xmm0,DWORD PTR [esp+0x24]
10999fc9:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10999fcf:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10999fd3:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10999fd9:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10999fdd:	89 08                                           	mov    DWORD PTR [eax],ecx
10999fdf:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10999fe2:	b0 01                                           	mov    al,0x1
10999fe4:	5e                                              	pop    esi
10999fe5:	8b e5                                           	mov    esp,ebp
10999fe7:	5d                                              	pop    ebp
10999fe8:	c3                                              	ret
10999fe9:	32 c0                                           	xor    al,al
10999feb:	5e                                              	pop    esi
10999fec:	8b e5                                           	mov    esp,ebp
10999fee:	5d                                              	pop    ebp
10999fef:	c3                                              	ret
