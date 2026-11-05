# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098fda0 (SimBuilderWrap_Create)
Paired Ghidra pseudocode: 1098FDA0_SimBuilderWrap_Create.c
Window: [0x1098fda0, 0x1098fdd0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098fdd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098fda0: 6a 00 6a 00 6a 00 6a 00 68 ac 72 b9 10 68 80 02
1098fdb0: 00 00 e8 f9 90 f8 ff 83 c4 18 85 c0 74 07 8b c8
1098fdc0: e9 bb f6 a4 ff 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098fda0 <.text+0x98eda0>:
1098fda0:	6a 00                                           	push   0x0
1098fda2:	6a 00                                           	push   0x0
1098fda4:	6a 00                                           	push   0x0
1098fda6:	6a 00                                           	push   0x0
1098fda8:	68 ac 72 b9 10                                  	push   0x10b972ac
1098fdad:	68 80 02 00 00                                  	push   0x280
1098fdb2:	e8 f9 90 f8 ff                                  	call   0x10918eb0
1098fdb7:	83 c4 18                                        	add    esp,0x18
1098fdba:	85 c0                                           	test   eax,eax
1098fdbc:	74 07                                           	je     0x1098fdc5
1098fdbe:	8b c8                                           	mov    ecx,eax
1098fdc0:	e9 bb f6 a4 ff                                  	jmp    0x103df480
1098fdc5:	33 c0                                           	xor    eax,eax
1098fdc7:	c3                                              	ret
1098fdc8:	cc                                              	int3
1098fdc9:	cc                                              	int3
1098fdca:	cc                                              	int3
1098fdcb:	cc                                              	int3
1098fdcc:	cc                                              	int3
1098fdcd:	cc                                              	int3
1098fdce:	cc                                              	int3
1098fdcf:	cc                                              	int3
