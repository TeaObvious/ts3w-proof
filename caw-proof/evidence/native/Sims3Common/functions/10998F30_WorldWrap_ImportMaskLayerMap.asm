# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998f30 (WorldWrap_ImportMaskLayerMap)
Paired Ghidra pseudocode: 10998F30_WorldWrap_ImportMaskLayerMap.c
Window: [0x10998f30, 0x10998f70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998f70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998f30: 8b 44 24 04 8b 48 54 85 c9 75 03 32 c0 c3 56 e8
10998f40: 0c db d1 ff 8b f0 85 f6 74 1f 8b 4c 24 0c 6a 01
10998f50: 51 6a 01 8b ce e8 b6 94 85 ff 84 c0 74 0b 8b ce
10998f60: e8 2b 75 85 ff b0 01 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
10998f30 <.text+0x997f30>:
10998f30:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998f34:	8b 48 54                                        	mov    ecx,DWORD PTR [eax+0x54]
10998f37:	85 c9                                           	test   ecx,ecx
10998f39:	75 03                                           	jne    0x10998f3e
10998f3b:	32 c0                                           	xor    al,al
10998f3d:	c3                                              	ret
10998f3e:	56                                              	push   esi
10998f3f:	e8 0c db d1 ff                                  	call   0x106b6a50
10998f44:	8b f0                                           	mov    esi,eax
10998f46:	85 f6                                           	test   esi,esi
10998f48:	74 1f                                           	je     0x10998f69
10998f4a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10998f4e:	6a 01                                           	push   0x1
10998f50:	51                                              	push   ecx
10998f51:	6a 01                                           	push   0x1
10998f53:	8b ce                                           	mov    ecx,esi
10998f55:	e8 b6 94 85 ff                                  	call   0x101f2410
10998f5a:	84 c0                                           	test   al,al
10998f5c:	74 0b                                           	je     0x10998f69
10998f5e:	8b ce                                           	mov    ecx,esi
10998f60:	e8 2b 75 85 ff                                  	call   0x101f0490
10998f65:	b0 01                                           	mov    al,0x1
10998f67:	5e                                              	pop    esi
10998f68:	c3                                              	ret
10998f69:	32 c0                                           	xor    al,al
10998f6b:	5e                                              	pop    esi
10998f6c:	c3                                              	ret
10998f6d:	cc                                              	int3
10998f6e:	cc                                              	int3
10998f6f:	cc                                              	int3
