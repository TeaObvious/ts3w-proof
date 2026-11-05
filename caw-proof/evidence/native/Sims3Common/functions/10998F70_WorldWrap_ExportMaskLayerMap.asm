# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998f70 (WorldWrap_ExportMaskLayerMap)
Paired Ghidra pseudocode: 10998F70_WorldWrap_ExportMaskLayerMap.c
Window: [0x10998f70, 0x10998fa0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998f70: 8b 44 24 04 8b 48 54 85 c9 75 03 32 c0 c3 e8 cd
10998f80: da d1 ff 85 c0 74 f4 8b 4c 24 08 6a 01 51 6a 01
10998f90: 8b c8 e8 39 96 85 ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998f70 <.text+0x997f70>:
10998f70:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998f74:	8b 48 54                                        	mov    ecx,DWORD PTR [eax+0x54]
10998f77:	85 c9                                           	test   ecx,ecx
10998f79:	75 03                                           	jne    0x10998f7e
10998f7b:	32 c0                                           	xor    al,al
10998f7d:	c3                                              	ret
10998f7e:	e8 cd da d1 ff                                  	call   0x106b6a50
10998f83:	85 c0                                           	test   eax,eax
10998f85:	74 f4                                           	je     0x10998f7b
10998f87:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10998f8b:	6a 01                                           	push   0x1
10998f8d:	51                                              	push   ecx
10998f8e:	6a 01                                           	push   0x1
10998f90:	8b c8                                           	mov    ecx,eax
10998f92:	e8 39 96 85 ff                                  	call   0x101f25d0
10998f97:	c3                                              	ret
10998f98:	cc                                              	int3
10998f99:	cc                                              	int3
10998f9a:	cc                                              	int3
10998f9b:	cc                                              	int3
10998f9c:	cc                                              	int3
10998f9d:	cc                                              	int3
10998f9e:	cc                                              	int3
10998f9f:	cc                                              	int3
