# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fac0 (ShaderSet_GetParameterDefaultFloat3)
Paired Ghidra pseudocode: 1098FAC0_ShaderSet_GetParameterDefaultFloat3.c
Window: [0x1098fac0, 0x1098fb50) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fb50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fac0: 83 ec 0c 56 8b 74 24 1c 57 8b 7c 24 1c 56 8b cf
1098fad0: e8 eb 37 c0 ff 83 f8 03 74 24 8b 44 24 18 8b 0d
1098fae0: 64 72 b9 10 8b 15 68 72 b9 10 89 08 8b 0d 6c 72
1098faf0: b9 10 5f 89 50 04 89 48 08 5e 83 c4 0c c3 56 8b
1098fb00: cf e8 0a 38 c0 ff f3 0f 10 00 f3 0f 11 44 24 08
1098fb10: f3 0f 10 40 04 8b 54 24 08 f3 0f 11 44 24 0c f3
1098fb20: 0f 10 40 08 8b 44 24 18 8b 4c 24 0c 89 10 f3 0f
1098fb30: 11 44 24 10 8b 54 24 10 5f 89 48 04 89 50 08 5e
1098fb40: 83 c4 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fac0 <.text+0x98eac0>:
1098fac0:	83 ec 0c                                        	sub    esp,0xc
1098fac3:	56                                              	push   esi
1098fac4:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
1098fac8:	57                                              	push   edi
1098fac9:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
1098facd:	56                                              	push   esi
1098face:	8b cf                                           	mov    ecx,edi
1098fad0:	e8 eb 37 c0 ff                                  	call   0x105932c0
1098fad5:	83 f8 03                                        	cmp    eax,0x3
1098fad8:	74 24                                           	je     0x1098fafe
1098fada:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098fade:	8b 0d 64 72 b9 10                               	mov    ecx,DWORD PTR ds:0x10b97264
1098fae4:	8b 15 68 72 b9 10                               	mov    edx,DWORD PTR ds:0x10b97268
1098faea:	89 08                                           	mov    DWORD PTR [eax],ecx
1098faec:	8b 0d 6c 72 b9 10                               	mov    ecx,DWORD PTR ds:0x10b9726c
1098faf2:	5f                                              	pop    edi
1098faf3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1098faf6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1098faf9:	5e                                              	pop    esi
1098fafa:	83 c4 0c                                        	add    esp,0xc
1098fafd:	c3                                              	ret
1098fafe:	56                                              	push   esi
1098faff:	8b cf                                           	mov    ecx,edi
1098fb01:	e8 0a 38 c0 ff                                  	call   0x10593310
1098fb06:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098fb0a:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098fb10:	f3 0f 10 40 04                                  	movss  xmm0,DWORD PTR [eax+0x4]
1098fb15:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1098fb19:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098fb1f:	f3 0f 10 40 08                                  	movss  xmm0,DWORD PTR [eax+0x8]
1098fb24:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1098fb28:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098fb2c:	89 10                                           	mov    DWORD PTR [eax],edx
1098fb2e:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098fb34:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1098fb38:	5f                                              	pop    edi
1098fb39:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1098fb3c:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1098fb3f:	5e                                              	pop    esi
1098fb40:	83 c4 0c                                        	add    esp,0xc
1098fb43:	c3                                              	ret
1098fb44:	cc                                              	int3
1098fb45:	cc                                              	int3
1098fb46:	cc                                              	int3
1098fb47:	cc                                              	int3
1098fb48:	cc                                              	int3
1098fb49:	cc                                              	int3
1098fb4a:	cc                                              	int3
1098fb4b:	cc                                              	int3
1098fb4c:	cc                                              	int3
1098fb4d:	cc                                              	int3
1098fb4e:	cc                                              	int3
1098fb4f:	cc                                              	int3
