# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980d90 (AnimationComponent_GetBoneLocalOrientation)
Paired Ghidra pseudocode: 10980D90_AnimationComponent_GetBoneLocalOrientation.c
Window: [0x10980d90, 0x10980e70) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980d90: 55 8b ec 83 e4 f0 8b 45 0c 83 ec 2c 85 c0 56 0f
10980da0: 84 99 00 00 00 8d 48 08 8b 01 8b 50 20 ff d2 85
10980db0: c0 0f 84 87 00 00 00 8d 70 28 8b ce e8 cf 08 9f
10980dc0: ff 8b 4d 10 3b c1 76 76 51 8b ce e8 b0 08 9f ff
10980dd0: 0f 28 40 20 0f 29 44 24 10 f3 0f 10 4c 24 10 83
10980de0: c0 20 8b 45 08 0f 29 44 24 20 f3 0f 11 4c 24 10
10980df0: f3 0f 10 4c 24 24 8b 4c 24 10 0f 29 44 24 20 f3
10980e00: 0f 11 4c 24 14 f3 0f 10 4c 24 28 8b 54 24 14 89
10980e10: 08 0f 29 44 24 20 f3 0f 10 44 24 2c 89 50 04 f3
10980e20: 0f 11 4c 24 18 8b 4c 24 18 f3 0f 11 44 24 1c 8b
10980e30: 54 24 1c 89 48 08 89 50 0c 5e 8b e5 5d c3 8b 45
10980e40: 08 8b 0d 3c 63 b9 10 8b 15 40 63 b9 10 89 08 8b
10980e50: 0d 44 63 b9 10 89 50 04 8b 15 48 63 b9 10 89 48
10980e60: 08 89 50 0c 5e 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980d90 <.text+0x97fd90>:
10980d90:	55                                              	push   ebp
10980d91:	8b ec                                           	mov    ebp,esp
10980d93:	83 e4 f0                                        	and    esp,0xfffffff0
10980d96:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10980d99:	83 ec 2c                                        	sub    esp,0x2c
10980d9c:	85 c0                                           	test   eax,eax
10980d9e:	56                                              	push   esi
10980d9f:	0f 84 99 00 00 00                               	je     0x10980e3e
10980da5:	8d 48 08                                        	lea    ecx,[eax+0x8]
10980da8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10980daa:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
10980dad:	ff d2                                           	call   edx
10980daf:	85 c0                                           	test   eax,eax
10980db1:	0f 84 87 00 00 00                               	je     0x10980e3e
10980db7:	8d 70 28                                        	lea    esi,[eax+0x28]
10980dba:	8b ce                                           	mov    ecx,esi
10980dbc:	e8 cf 08 9f ff                                  	call   0x10371690
10980dc1:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10980dc4:	3b c1                                           	cmp    eax,ecx
10980dc6:	76 76                                           	jbe    0x10980e3e
10980dc8:	51                                              	push   ecx
10980dc9:	8b ce                                           	mov    ecx,esi
10980dcb:	e8 b0 08 9f ff                                  	call   0x10371680
10980dd0:	0f 28 40 20                                     	movaps xmm0,XMMWORD PTR [eax+0x20]
10980dd4:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10980dd9:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
10980ddf:	83 c0 20                                        	add    eax,0x20
10980de2:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980de5:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10980dea:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10980df0:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
10980df6:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10980dfa:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10980dff:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10980e05:	f3 0f 10 4c 24 28                               	movss  xmm1,DWORD PTR [esp+0x28]
10980e0b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10980e0f:	89 08                                           	mov    DWORD PTR [eax],ecx
10980e11:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10980e16:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
10980e1c:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10980e1f:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10980e25:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10980e29:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10980e2f:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10980e33:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10980e36:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10980e39:	5e                                              	pop    esi
10980e3a:	8b e5                                           	mov    esp,ebp
10980e3c:	5d                                              	pop    ebp
10980e3d:	c3                                              	ret
10980e3e:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980e41:	8b 0d 3c 63 b9 10                               	mov    ecx,DWORD PTR ds:0x10b9633c
10980e47:	8b 15 40 63 b9 10                               	mov    edx,DWORD PTR ds:0x10b96340
10980e4d:	89 08                                           	mov    DWORD PTR [eax],ecx
10980e4f:	8b 0d 44 63 b9 10                               	mov    ecx,DWORD PTR ds:0x10b96344
10980e55:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10980e58:	8b 15 48 63 b9 10                               	mov    edx,DWORD PTR ds:0x10b96348
10980e5e:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10980e61:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10980e64:	5e                                              	pop    esi
10980e65:	8b e5                                           	mov    esp,ebp
10980e67:	5d                                              	pop    ebp
10980e68:	c3                                              	ret
10980e69:	cc                                              	int3
10980e6a:	cc                                              	int3
10980e6b:	cc                                              	int3
10980e6c:	cc                                              	int3
10980e6d:	cc                                              	int3
10980e6e:	cc                                              	int3
10980e6f:	cc                                              	int3
