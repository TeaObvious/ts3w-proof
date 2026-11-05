# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569ec0 (ThumbnailManager_LookupBBPreviewBound)
Paired Ghidra pseudocode: 10569EC0_ThumbnailManager_LookupBBPreviewBound.c
Window: [0x10569ec0, 0x10569fb0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569ec0: 55 8b ec 83 e4 f0 8b 0d 50 11 c7 10 83 ec 5c 85
10569ed0: c9 56 75 07 33 c0 5e 8b e5 5d c3 8d 44 24 30 50
10569ee0: 8b 45 0c 8d 54 24 14 52 8b 55 08 50 52 e8 5e d7
10569ef0: db ff 84 c0 74 de e8 25 12 ff ff 8b f0 85 f6 74
10569f00: d3 0f 28 44 24 10 0f 29 44 24 20 f3 0f 10 4c 24
10569f10: 20 0f 29 44 24 20 f3 0f 11 4c 24 48 f3 0f 10 4c
10569f20: 24 24 0f 29 44 24 20 f3 0f 10 44 24 28 f3 0f 11
10569f30: 44 24 50 0f 28 44 24 30 0f 29 44 24 20 f3 0f 11
10569f40: 4c 24 4c f3 0f 10 4c 24 20 0f 29 44 24 20 f3 0f
10569f50: 11 4c 24 54 f3 0f 10 4c 24 24 0f 29 44 24 20 f3
10569f60: 0f 10 44 24 28 c7 44 24 0c 00 00 00 00 f3 0f 11
10569f70: 4c 24 58 f3 0f 11 44 24 5c 8b 06 8b 90 8c 00 00
10569f80: 00 6a 06 8d 4c 24 10 51 8b ce ff d2 8b 06 8b 80
10569f90: a8 00 00 00 6a 06 6a 00 8d 4c 24 50 51 8d 54 24
10569fa0: 18 52 8b ce ff d0 8b 44 24 0c 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
10569ec0 <.text+0x568ec0>:
10569ec0:	55                                              	push   ebp
10569ec1:	8b ec                                           	mov    ebp,esp
10569ec3:	83 e4 f0                                        	and    esp,0xfffffff0
10569ec6:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569ecc:	83 ec 5c                                        	sub    esp,0x5c
10569ecf:	85 c9                                           	test   ecx,ecx
10569ed1:	56                                              	push   esi
10569ed2:	75 07                                           	jne    0x10569edb
10569ed4:	33 c0                                           	xor    eax,eax
10569ed6:	5e                                              	pop    esi
10569ed7:	8b e5                                           	mov    esp,ebp
10569ed9:	5d                                              	pop    ebp
10569eda:	c3                                              	ret
10569edb:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10569edf:	50                                              	push   eax
10569ee0:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10569ee3:	8d 54 24 14                                     	lea    edx,[esp+0x14]
10569ee7:	52                                              	push   edx
10569ee8:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
10569eeb:	50                                              	push   eax
10569eec:	52                                              	push   edx
10569eed:	e8 5e d7 db ff                                  	call   0x10327650
10569ef2:	84 c0                                           	test   al,al
10569ef4:	74 de                                           	je     0x10569ed4
10569ef6:	e8 25 12 ff ff                                  	call   0x1055b120
10569efb:	8b f0                                           	mov    esi,eax
10569efd:	85 f6                                           	test   esi,esi
10569eff:	74 d3                                           	je     0x10569ed4
10569f01:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10569f06:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10569f0b:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
10569f11:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10569f16:	f3 0f 11 4c 24 48                               	movss  DWORD PTR [esp+0x48],xmm1
10569f1c:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
10569f22:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10569f27:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
10569f2d:	f3 0f 11 44 24 50                               	movss  DWORD PTR [esp+0x50],xmm0
10569f33:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
10569f38:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10569f3d:	f3 0f 11 4c 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm1
10569f43:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [esp+0x20]
10569f49:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10569f4e:	f3 0f 11 4c 24 54                               	movss  DWORD PTR [esp+0x54],xmm1
10569f54:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
10569f5a:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10569f5f:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
10569f65:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
10569f6d:	f3 0f 11 4c 24 58                               	movss  DWORD PTR [esp+0x58],xmm1
10569f73:	f3 0f 11 44 24 5c                               	movss  DWORD PTR [esp+0x5c],xmm0
10569f79:	8b 06                                           	mov    eax,DWORD PTR [esi]
10569f7b:	8b 90 8c 00 00 00                               	mov    edx,DWORD PTR [eax+0x8c]
10569f81:	6a 06                                           	push   0x6
10569f83:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10569f87:	51                                              	push   ecx
10569f88:	8b ce                                           	mov    ecx,esi
10569f8a:	ff d2                                           	call   edx
10569f8c:	8b 06                                           	mov    eax,DWORD PTR [esi]
10569f8e:	8b 80 a8 00 00 00                               	mov    eax,DWORD PTR [eax+0xa8]
10569f94:	6a 06                                           	push   0x6
10569f96:	6a 00                                           	push   0x0
10569f98:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
10569f9c:	51                                              	push   ecx
10569f9d:	8d 54 24 18                                     	lea    edx,[esp+0x18]
10569fa1:	52                                              	push   edx
10569fa2:	8b ce                                           	mov    ecx,esi
10569fa4:	ff d0                                           	call   eax
10569fa6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10569faa:	5e                                              	pop    esi
10569fab:	8b e5                                           	mov    esp,ebp
10569fad:	5d                                              	pop    ebp
10569fae:	c3                                              	ret
10569faf:	cc                                              	int3
