# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986ce0 (ModelProxyWrap_GetKey)
Paired Ghidra pseudocode: 10986CE0_ModelProxyWrap_GetKey.c
Window: [0x10986ce0, 0x10986d20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986d20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986ce0: 83 ec 10 8b 44 24 18 8b 48 28 8b 50 2c 56 8b 74
10986cf0: 24 18 89 4c 24 04 8b 48 30 89 54 24 08 8b 50 34
10986d00: 8d 44 24 04 56 50 89 4c 24 14 89 54 24 18 e8 2d
10986d10: 30 00 00 83 c4 08 8b c6 5e 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10986ce0 <.text+0x985ce0>:
10986ce0:	83 ec 10                                        	sub    esp,0x10
10986ce3:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10986ce7:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
10986cea:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
10986ced:	56                                              	push   esi
10986cee:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
10986cf2:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10986cf6:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
10986cf9:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
10986cfd:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
10986d00:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10986d04:	56                                              	push   esi
10986d05:	50                                              	push   eax
10986d06:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
10986d0a:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
10986d0e:	e8 2d 30 00 00                                  	call   0x10989d40
10986d13:	83 c4 08                                        	add    esp,0x8
10986d16:	8b c6                                           	mov    eax,esi
10986d18:	5e                                              	pop    esi
10986d19:	83 c4 10                                        	add    esp,0x10
10986d1c:	c3                                              	ret
10986d1d:	cc                                              	int3
10986d1e:	cc                                              	int3
10986d1f:	cc                                              	int3
