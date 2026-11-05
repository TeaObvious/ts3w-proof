# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998eb0 (WorldWrap_ImportBlendLayerMap)
Paired Ghidra pseudocode: 10998EB0_WorldWrap_ImportBlendLayerMap.c
Window: [0x10998eb0, 0x10998f00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998eb0: 8b 44 24 04 8b 48 54 85 c9 75 03 33 c0 c3 56 e8
10998ec0: 8c db d1 ff 8b f0 85 f6 74 25 8b 4c 24 10 8b 54
10998ed0: 24 0c 6a 00 51 52 8b ce e8 33 95 85 ff 84 c0 74
10998ee0: 0e 8b ce e8 a8 75 85 ff b8 01 00 00 00 5e c3 33
10998ef0: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998eb0 <.text+0x997eb0>:
10998eb0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998eb4:	8b 48 54                                        	mov    ecx,DWORD PTR [eax+0x54]
10998eb7:	85 c9                                           	test   ecx,ecx
10998eb9:	75 03                                           	jne    0x10998ebe
10998ebb:	33 c0                                           	xor    eax,eax
10998ebd:	c3                                              	ret
10998ebe:	56                                              	push   esi
10998ebf:	e8 8c db d1 ff                                  	call   0x106b6a50
10998ec4:	8b f0                                           	mov    esi,eax
10998ec6:	85 f6                                           	test   esi,esi
10998ec8:	74 25                                           	je     0x10998eef
10998eca:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10998ece:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10998ed2:	6a 00                                           	push   0x0
10998ed4:	51                                              	push   ecx
10998ed5:	52                                              	push   edx
10998ed6:	8b ce                                           	mov    ecx,esi
10998ed8:	e8 33 95 85 ff                                  	call   0x101f2410
10998edd:	84 c0                                           	test   al,al
10998edf:	74 0e                                           	je     0x10998eef
10998ee1:	8b ce                                           	mov    ecx,esi
10998ee3:	e8 a8 75 85 ff                                  	call   0x101f0490
10998ee8:	b8 01 00 00 00                                  	mov    eax,0x1
10998eed:	5e                                              	pop    esi
10998eee:	c3                                              	ret
10998eef:	33 c0                                           	xor    eax,eax
10998ef1:	5e                                              	pop    esi
10998ef2:	c3                                              	ret
10998ef3:	cc                                              	int3
10998ef4:	cc                                              	int3
10998ef5:	cc                                              	int3
10998ef6:	cc                                              	int3
10998ef7:	cc                                              	int3
10998ef8:	cc                                              	int3
10998ef9:	cc                                              	int3
10998efa:	cc                                              	int3
10998efb:	cc                                              	int3
10998efc:	cc                                              	int3
10998efd:	cc                                              	int3
10998efe:	cc                                              	int3
10998eff:	cc                                              	int3
