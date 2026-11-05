# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980ce0 (AnimationComponent_GetBoneLocalPosition)
Paired Ghidra pseudocode: 10980CE0_AnimationComponent_GetBoneLocalPosition.c
Window: [0x10980ce0, 0x10980d90) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980ce0: 55 8b ec 83 e4 f0 8b 45 0c 83 ec 2c 85 c0 56 74
10980cf0: 7d 8d 48 08 8b 01 8b 50 20 ff d2 85 c0 74 6f 8d
10980d00: 70 28 8b ce e8 87 09 9f ff 8b 4d 10 3b c1 76 5e
10980d10: 51 8b ce e8 68 09 9f ff 0f 28 40 10 83 c0 10 8b
10980d20: 45 08 0f 29 44 24 10 f3 0f 10 4c 24 10 0f 29 44
10980d30: 24 20 f3 0f 11 4c 24 10 f3 0f 10 4c 24 24 8b 4c
10980d40: 24 10 0f 29 44 24 20 f3 0f 10 44 24 28 89 08 f3
10980d50: 0f 11 4c 24 14 8b 54 24 14 f3 0f 11 44 24 18 8b
10980d60: 4c 24 18 89 50 04 89 48 08 5e 8b e5 5d c3 8b 45
10980d70: 08 8b 15 24 63 b9 10 8b 0d 28 63 b9 10 89 10 8b
10980d80: 15 2c 63 b9 10 89 48 04 89 50 08 5e 8b e5 5d c3

LINEAR DISASSEMBLY
10980ce0 <.text+0x97fce0>:
10980ce0:	55                                              	push   ebp
10980ce1:	8b ec                                           	mov    ebp,esp
10980ce3:	83 e4 f0                                        	and    esp,0xfffffff0
10980ce6:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10980ce9:	83 ec 2c                                        	sub    esp,0x2c
10980cec:	85 c0                                           	test   eax,eax
10980cee:	56                                              	push   esi
10980cef:	74 7d                                           	je     0x10980d6e
10980cf1:	8d 48 08                                        	lea    ecx,[eax+0x8]
10980cf4:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10980cf6:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
10980cf9:	ff d2                                           	call   edx
10980cfb:	85 c0                                           	test   eax,eax
10980cfd:	74 6f                                           	je     0x10980d6e
10980cff:	8d 70 28                                        	lea    esi,[eax+0x28]
10980d02:	8b ce                                           	mov    ecx,esi
10980d04:	e8 87 09 9f ff                                  	call   0x10371690
10980d09:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
10980d0c:	3b c1                                           	cmp    eax,ecx
10980d0e:	76 5e                                           	jbe    0x10980d6e
10980d10:	51                                              	push   ecx
10980d11:	8b ce                                           	mov    ecx,esi
10980d13:	e8 68 09 9f ff                                  	call   0x10371680
10980d18:	0f 28 40 10                                     	movaps xmm0,XMMWORD PTR [eax+0x10]
10980d1c:	83 c0 10                                        	add    eax,0x10
10980d1f:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980d22:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10980d27:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
10980d2d:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10980d32:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10980d38:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
10980d3e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10980d42:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10980d47:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
10980d4d:	89 08                                           	mov    DWORD PTR [eax],ecx
10980d4f:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
10980d55:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10980d59:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10980d5f:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10980d63:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10980d66:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10980d69:	5e                                              	pop    esi
10980d6a:	8b e5                                           	mov    esp,ebp
10980d6c:	5d                                              	pop    ebp
10980d6d:	c3                                              	ret
10980d6e:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980d71:	8b 15 24 63 b9 10                               	mov    edx,DWORD PTR ds:0x10b96324
10980d77:	8b 0d 28 63 b9 10                               	mov    ecx,DWORD PTR ds:0x10b96328
10980d7d:	89 10                                           	mov    DWORD PTR [eax],edx
10980d7f:	8b 15 2c 63 b9 10                               	mov    edx,DWORD PTR ds:0x10b9632c
10980d85:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10980d88:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10980d8b:	5e                                              	pop    esi
10980d8c:	8b e5                                           	mov    esp,ebp
10980d8e:	5d                                              	pop    ebp
10980d8f:	c3                                              	ret
