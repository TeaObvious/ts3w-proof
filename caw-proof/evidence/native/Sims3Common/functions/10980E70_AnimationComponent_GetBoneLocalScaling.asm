# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980e70 (AnimationComponent_GetBoneLocalScaling)
Paired Ghidra pseudocode: 10980E70_AnimationComponent_GetBoneLocalScaling.c
Window: [0x10980e70, 0x10980f20) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980e70: 55 8b ec 83 e4 f0 8b 45 0c 83 ec 2c 85 c0 56 74
10980e80: 7d 8d 48 08 8b 01 8b 50 20 ff d2 85 c0 74 6f 8d
10980e90: 70 28 8b ce e8 f7 07 9f ff 8b 4d 10 3b c1 76 5e
10980ea0: 51 8b ce e8 d8 07 9f ff 0f 28 40 30 83 c0 30 8b
10980eb0: 45 08 0f 29 44 24 10 f3 0f 10 4c 24 10 0f 29 44
10980ec0: 24 20 f3 0f 11 4c 24 10 f3 0f 10 4c 24 24 8b 4c
10980ed0: 24 10 0f 29 44 24 20 f3 0f 10 44 24 28 89 08 f3
10980ee0: 0f 11 4c 24 14 8b 54 24 14 f3 0f 11 44 24 18 8b
10980ef0: 4c 24 18 89 50 04 89 48 08 5e 8b e5 5d c3 8b 45
10980f00: 08 8b 15 30 63 b9 10 8b 0d 34 63 b9 10 89 10 8b
10980f10: 15 38 63 b9 10 89 48 04 89 50 08 5e 8b e5 5d c3

LINEAR DISASSEMBLY
10980e70 <.text+0x97fe70>:
10980e70:	55                                              	push   ebp
10980e71:	8b ec                                           	mov    ebp,esp
10980e73:	83 e4 f0                                        	and    esp,0xfffffff0
10980e76:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10980e79:	83 ec 2c                                        	sub    esp,0x2c
10980e7c:	85 c0                                           	test   eax,eax
10980e7e:	56                                              	push   esi
10980e7f:	74 7d                                           	je     0x10980efe
10980e81:	8d 48 08                                        	lea    ecx,[eax+0x8]
10980e84:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10980e86:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
10980e89:	ff d2                                           	call   edx
10980e8b:	85 c0                                           	test   eax,eax
10980e8d:	74 6f                                           	je     0x10980efe
10980e8f:	8d 70 28                                        	lea    esi,[eax+0x28]
10980e92:	8b ce                                           	mov    ecx,esi
10980e94:	e8 f7 07 9f ff                                  	call   0x10371690
10980e99:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10980e9c:	3b c1                                           	cmp    eax,ecx
10980e9e:	76 5e                                           	jbe    0x10980efe
10980ea0:	51                                              	push   ecx
10980ea1:	8b ce                                           	mov    ecx,esi
10980ea3:	e8 d8 07 9f ff                                  	call   0x10371680
10980ea8:	0f 28 40 30                                     	movaps xmm0,XMMWORD PTR [eax+0x30]
10980eac:	83 c0 30                                        	add    eax,0x30
10980eaf:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980eb2:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10980eb7:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
10980ebd:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10980ec2:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10980ec8:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
10980ece:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10980ed2:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10980ed7:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
10980edd:	89 08                                           	mov    DWORD PTR [eax],ecx
10980edf:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10980ee5:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10980ee9:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10980eef:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10980ef3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10980ef6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10980ef9:	5e                                              	pop    esi
10980efa:	8b e5                                           	mov    esp,ebp
10980efc:	5d                                              	pop    ebp
10980efd:	c3                                              	ret
10980efe:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980f01:	8b 15 30 63 b9 10                               	mov    edx,DWORD PTR ds:0x10b96330
10980f07:	8b 0d 34 63 b9 10                               	mov    ecx,DWORD PTR ds:0x10b96334
10980f0d:	89 10                                           	mov    DWORD PTR [eax],edx
10980f0f:	8b 15 38 63 b9 10                               	mov    edx,DWORD PTR ds:0x10b96338
10980f15:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10980f18:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10980f1b:	5e                                              	pop    esi
10980f1c:	8b e5                                           	mov    esp,ebp
10980f1e:	5d                                              	pop    ebp
10980f1f:	c3                                              	ret
