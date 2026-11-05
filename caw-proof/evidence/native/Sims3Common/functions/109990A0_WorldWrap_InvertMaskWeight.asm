# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109990a0 (WorldWrap_InvertMaskWeight)
Paired Ghidra pseudocode: 109990A0_WorldWrap_InvertMaskWeight.c
Window: [0x109990a0, 0x109990d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109990d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109990a0: 8b 44 24 04 8b 48 54 85 c9 74 1e 56 e8 9f d9 d1
109990b0: ff 8b f0 85 f6 74 11 6a 01 8b ce e8 00 73 85 ff
109990c0: 8b ce 5e e9 c8 73 85 ff 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
109990a0 <.text+0x9980a0>:
109990a0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
109990a4:	8b 48 54                                        	mov    ecx,DWORD PTR [eax+0x54]
109990a7:	85 c9                                           	test   ecx,ecx
109990a9:	74 1e                                           	je     0x109990c9
109990ab:	56                                              	push   esi
109990ac:	e8 9f d9 d1 ff                                  	call   0x106b6a50
109990b1:	8b f0                                           	mov    esi,eax
109990b3:	85 f6                                           	test   esi,esi
109990b5:	74 11                                           	je     0x109990c8
109990b7:	6a 01                                           	push   0x1
109990b9:	8b ce                                           	mov    ecx,esi
109990bb:	e8 00 73 85 ff                                  	call   0x101f03c0
109990c0:	8b ce                                           	mov    ecx,esi
109990c2:	5e                                              	pop    esi
109990c3:	e9 c8 73 85 ff                                  	jmp    0x101f0490
109990c8:	5e                                              	pop    esi
109990c9:	c3                                              	ret
109990ca:	cc                                              	int3
109990cb:	cc                                              	int3
109990cc:	cc                                              	int3
109990cd:	cc                                              	int3
109990ce:	cc                                              	int3
109990cf:	cc                                              	int3
