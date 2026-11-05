# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540c60 (RouteManager_BeginPortalRouting)
Paired Ghidra pseudocode: 10540C60_RouteManager_BeginPortalRouting.c
Window: [0x10540c60, 0x10540cb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540c60: 8b 4c 24 5c 8b 54 24 60 56 57 83 ec 10 8b c4 89
10540c70: 08 8b 4c 24 7c 89 50 04 8b 94 24 80 00 00 00 89
10540c80: 48 08 83 ec 50 89 50 0c 8b 44 24 70 8b fc b9 14
10540c90: 00 00 00 8d 74 24 74 f3 a5 8b 4c 24 6c 50 51 e8
10540ca0: 9c d8 ff ff 83 c4 68 5f 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540c60 <.text+0x53fc60>:
10540c60:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
10540c64:	8b 54 24 60                                     	mov    edx,DWORD PTR [esp+0x60]
10540c68:	56                                              	push   esi
10540c69:	57                                              	push   edi
10540c6a:	83 ec 10                                        	sub    esp,0x10
10540c6d:	8b c4                                           	mov    eax,esp
10540c6f:	89 08                                           	mov    DWORD PTR [eax],ecx
10540c71:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
10540c75:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10540c78:	8b 94 24 80 00 00 00                            	mov    edx,DWORD PTR [esp+0x80]
10540c7f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10540c82:	83 ec 50                                        	sub    esp,0x50
10540c85:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10540c88:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
10540c8c:	8b fc                                           	mov    edi,esp
10540c8e:	b9 14 00 00 00                                  	mov    ecx,0x14
10540c93:	8d 74 24 74                                     	lea    esi,[esp+0x74]
10540c97:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10540c99:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
10540c9d:	50                                              	push   eax
10540c9e:	51                                              	push   ecx
10540c9f:	e8 9c d8 ff ff                                  	call   0x1053e540
10540ca4:	83 c4 68                                        	add    esp,0x68
10540ca7:	5f                                              	pop    edi
10540ca8:	5e                                              	pop    esi
10540ca9:	c3                                              	ret
10540caa:	cc                                              	int3
10540cab:	cc                                              	int3
10540cac:	cc                                              	int3
10540cad:	cc                                              	int3
10540cae:	cc                                              	int3
10540caf:	cc                                              	int3
