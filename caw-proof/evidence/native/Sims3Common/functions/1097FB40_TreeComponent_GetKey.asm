# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fb40 (TreeComponent_GetKey)
Paired Ghidra pseudocode: 1097FB40_TreeComponent_GetKey.c
Window: [0x1097fb40, 0x1097fba0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fba0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fb40: 57 8b 7c 24 0c 33 c9 3b f9 74 35 56 8b cf e8 1d
1097fb50: 28 9c ff 8b 40 08 8b 74 24 0c 8b cf 89 06 e8 0d
1097fb60: 28 9c ff 8b 48 0c 89 4e 04 8b cf e8 00 28 9c ff
1097fb70: 8b 10 8b 40 04 89 46 0c 89 56 08 8b c6 5e 5f c3
1097fb80: 8b 44 24 08 89 08 89 48 04 89 48 08 89 48 0c 5f
1097fb90: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fb40 <.text+0x97eb40>:
1097fb40:	57                                              	push   edi
1097fb41:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
1097fb45:	33 c9                                           	xor    ecx,ecx
1097fb47:	3b f9                                           	cmp    edi,ecx
1097fb49:	74 35                                           	je     0x1097fb80
1097fb4b:	56                                              	push   esi
1097fb4c:	8b cf                                           	mov    ecx,edi
1097fb4e:	e8 1d 28 9c ff                                  	call   0x10342370
1097fb53:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
1097fb56:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1097fb5a:	8b cf                                           	mov    ecx,edi
1097fb5c:	89 06                                           	mov    DWORD PTR [esi],eax
1097fb5e:	e8 0d 28 9c ff                                  	call   0x10342370
1097fb63:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
1097fb66:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
1097fb69:	8b cf                                           	mov    ecx,edi
1097fb6b:	e8 00 28 9c ff                                  	call   0x10342370
1097fb70:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097fb72:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
1097fb75:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
1097fb78:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
1097fb7b:	8b c6                                           	mov    eax,esi
1097fb7d:	5e                                              	pop    esi
1097fb7e:	5f                                              	pop    edi
1097fb7f:	c3                                              	ret
1097fb80:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097fb84:	89 08                                           	mov    DWORD PTR [eax],ecx
1097fb86:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1097fb89:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1097fb8c:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1097fb8f:	5f                                              	pop    edi
1097fb90:	c3                                              	ret
1097fb91:	cc                                              	int3
1097fb92:	cc                                              	int3
1097fb93:	cc                                              	int3
1097fb94:	cc                                              	int3
1097fb95:	cc                                              	int3
1097fb96:	cc                                              	int3
1097fb97:	cc                                              	int3
1097fb98:	cc                                              	int3
1097fb99:	cc                                              	int3
1097fb9a:	cc                                              	int3
1097fb9b:	cc                                              	int3
1097fb9c:	cc                                              	int3
1097fb9d:	cc                                              	int3
1097fb9e:	cc                                              	int3
1097fb9f:	cc                                              	int3
