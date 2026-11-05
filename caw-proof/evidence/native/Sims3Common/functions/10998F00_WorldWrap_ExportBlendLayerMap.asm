# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998f00 (WorldWrap_ExportBlendLayerMap)
Paired Ghidra pseudocode: 10998F00_WorldWrap_ExportBlendLayerMap.c
Window: [0x10998f00, 0x10998f30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998f00: 8b 44 24 04 8b 48 54 85 c9 75 03 33 c0 c3 e8 3d
10998f10: db d1 ff 85 c0 74 f4 8b 4c 24 0c 8b 54 24 08 6a
10998f20: 00 51 52 8b c8 e8 a6 96 85 ff 0f b6 c0 c3 cc cc

LINEAR DISASSEMBLY
10998f00 <.text+0x997f00>:
10998f00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998f04:	8b 48 54                                        	mov    ecx,DWORD PTR [eax+0x54]
10998f07:	85 c9                                           	test   ecx,ecx
10998f09:	75 03                                           	jne    0x10998f0e
10998f0b:	33 c0                                           	xor    eax,eax
10998f0d:	c3                                              	ret
10998f0e:	e8 3d db d1 ff                                  	call   0x106b6a50
10998f13:	85 c0                                           	test   eax,eax
10998f15:	74 f4                                           	je     0x10998f0b
10998f17:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10998f1b:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10998f1f:	6a 00                                           	push   0x0
10998f21:	51                                              	push   ecx
10998f22:	52                                              	push   edx
10998f23:	8b c8                                           	mov    ecx,eax
10998f25:	e8 a6 96 85 ff                                  	call   0x101f25d0
10998f2a:	0f b6 c0                                        	movzx  eax,al
10998f2d:	c3                                              	ret
10998f2e:	cc                                              	int3
10998f2f:	cc                                              	int3
