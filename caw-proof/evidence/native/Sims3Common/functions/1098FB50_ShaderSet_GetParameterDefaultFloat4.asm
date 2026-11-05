# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fb50 (ShaderSet_GetParameterDefaultFloat4)
Paired Ghidra pseudocode: 1098FB50_ShaderSet_GetParameterDefaultFloat4.c
Window: [0x1098fb50, 0x1098fbf0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fbf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fb50: 83 ec 10 56 8b 74 24 20 57 8b 7c 24 20 56 8b cf
1098fb60: e8 5b 37 c0 ff 83 f8 04 74 2d 8b 44 24 1c 8b 0d
1098fb70: 70 72 b9 10 8b 15 74 72 b9 10 89 08 8b 0d 78 72
1098fb80: b9 10 89 50 04 8b 15 7c 72 b9 10 5f 89 48 08 89
1098fb90: 50 0c 5e 83 c4 10 c3 56 8b cf e8 71 37 c0 ff f3
1098fba0: 0f 10 00 f3 0f 11 44 24 08 f3 0f 10 40 04 8b 4c
1098fbb0: 24 08 f3 0f 11 44 24 0c f3 0f 10 40 08 8b 54 24
1098fbc0: 0c f3 0f 11 44 24 10 f3 0f 10 40 0c 8b 44 24 1c
1098fbd0: 89 08 8b 4c 24 10 89 50 04 f3 0f 11 44 24 14 8b
1098fbe0: 54 24 14 5f 89 48 08 89 50 0c 5e 83 c4 10 c3 cc

LINEAR DISASSEMBLY
1098fb50 <.text+0x98eb50>:
1098fb50:	83 ec 10                                        	sub    esp,0x10
1098fb53:	56                                              	push   esi
1098fb54:	8b 74 24 20                                     	mov    esi,DWORD PTR [esp+0x20]
1098fb58:	57                                              	push   edi
1098fb59:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
1098fb5d:	56                                              	push   esi
1098fb5e:	8b cf                                           	mov    ecx,edi
1098fb60:	e8 5b 37 c0 ff                                  	call   0x105932c0
1098fb65:	83 f8 04                                        	cmp    eax,0x4
1098fb68:	74 2d                                           	je     0x1098fb97
1098fb6a:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098fb6e:	8b 0d 70 72 b9 10                               	mov    ecx,DWORD PTR ds:0x10b97270
1098fb74:	8b 15 74 72 b9 10                               	mov    edx,DWORD PTR ds:0x10b97274
1098fb7a:	89 08                                           	mov    DWORD PTR [eax],ecx
1098fb7c:	8b 0d 78 72 b9 10                               	mov    ecx,DWORD PTR ds:0x10b97278
1098fb82:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1098fb85:	8b 15 7c 72 b9 10                               	mov    edx,DWORD PTR ds:0x10b9727c
1098fb8b:	5f                                              	pop    edi
1098fb8c:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1098fb8f:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1098fb92:	5e                                              	pop    esi
1098fb93:	83 c4 10                                        	add    esp,0x10
1098fb96:	c3                                              	ret
1098fb97:	56                                              	push   esi
1098fb98:	8b cf                                           	mov    ecx,edi
1098fb9a:	e8 71 37 c0 ff                                  	call   0x10593310
1098fb9f:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098fba3:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098fba9:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
1098fbae:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098fbb2:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098fbb8:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
1098fbbd:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1098fbc1:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098fbc7:	f3 0f 10 40 0c                                  	movss  xmm0,DWORD PTR [eax+0xc]
1098fbcc:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1098fbd0:	89 08                                           	mov    DWORD PTR [eax],ecx
1098fbd2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1098fbd6:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1098fbd9:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098fbdf:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1098fbe3:	5f                                              	pop    edi
1098fbe4:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1098fbe7:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1098fbea:	5e                                              	pop    esi
1098fbeb:	83 c4 10                                        	add    esp,0x10
1098fbee:	c3                                              	ret
1098fbef:	cc                                              	int3
