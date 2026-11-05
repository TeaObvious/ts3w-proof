# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986c90 (ModelProxyWrap_Create)
Paired Ghidra pseudocode: 10986C90_ModelProxyWrap_Create.c
Window: [0x10986c90, 0x10986cc0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986c90: 6a 00 6a 00 6a 00 6a 00 68 54 6a b9 10 6a 78 e8
10986ca0: 0c 22 f9 ff 83 c4 18 85 c0 74 07 8b c8 e9 0e d2
10986cb0: b4 ff 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986c90 <.text+0x985c90>:
10986c90:	6a 00                                           	push   0x0
10986c92:	6a 00                                           	push   0x0
10986c94:	6a 00                                           	push   0x0
10986c96:	6a 00                                           	push   0x0
10986c98:	68 54 6a b9 10                                  	push   0x10b96a54
10986c9d:	6a 78                                           	push   0x78
10986c9f:	e8 0c 22 f9 ff                                  	call   0x10918eb0
10986ca4:	83 c4 18                                        	add    esp,0x18
10986ca7:	85 c0                                           	test   eax,eax
10986ca9:	74 07                                           	je     0x10986cb2
10986cab:	8b c8                                           	mov    ecx,eax
10986cad:	e9 0e d2 b4 ff                                  	jmp    0x104d3ec0
10986cb2:	33 c0                                           	xor    eax,eax
10986cb4:	c3                                              	ret
10986cb5:	cc                                              	int3
10986cb6:	cc                                              	int3
10986cb7:	cc                                              	int3
10986cb8:	cc                                              	int3
10986cb9:	cc                                              	int3
10986cba:	cc                                              	int3
10986cbb:	cc                                              	int3
10986cbc:	cc                                              	int3
10986cbd:	cc                                              	int3
10986cbe:	cc                                              	int3
10986cbf:	cc                                              	int3
