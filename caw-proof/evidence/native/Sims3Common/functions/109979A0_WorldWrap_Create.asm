# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109979a0 (WorldWrap_Create)
Paired Ghidra pseudocode: 109979A0_WorldWrap_Create.c
Window: [0x109979a0, 0x109979d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109979d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109979a0: 6a 00 6a 00 6a 00 6a 00 68 68 dc ad 10 6a 00 6a
109979b0: 10 68 e0 03 00 00 e8 15 15 f8 ff 83 c4 20 85 c0
109979c0: 74 07 8b c8 e9 f7 3e 8a ff 33 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
109979a0 <.text+0x9969a0>:
109979a0:	6a 00                                           	push   0x0
109979a2:	6a 00                                           	push   0x0
109979a4:	6a 00                                           	push   0x0
109979a6:	6a 00                                           	push   0x0
109979a8:	68 68 dc ad 10                                  	push   0x10addc68
109979ad:	6a 00                                           	push   0x0
109979af:	6a 10                                           	push   0x10
109979b1:	68 e0 03 00 00                                  	push   0x3e0
109979b6:	e8 15 15 f8 ff                                  	call   0x10918ed0
109979bb:	83 c4 20                                        	add    esp,0x20
109979be:	85 c0                                           	test   eax,eax
109979c0:	74 07                                           	je     0x109979c9
109979c2:	8b c8                                           	mov    ecx,eax
109979c4:	e9 f7 3e 8a ff                                  	jmp    0x1023b8c0
109979c9:	33 c0                                           	xor    eax,eax
109979cb:	c3                                              	ret
109979cc:	cc                                              	int3
109979cd:	cc                                              	int3
109979ce:	cc                                              	int3
109979cf:	cc                                              	int3
