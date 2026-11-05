# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098dc60 (SacsWrap_DecisionGraph_Create)
Paired Ghidra pseudocode: 1098DC60_SacsWrap_DecisionGraph_Create.c
Window: [0x1098dc60, 0x1098dc90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098dc90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098dc60: 6a 00 6a 00 6a 00 6a 00 68 5c 70 b9 10 6a 70 e8
1098dc70: 3c b2 f8 ff 83 c4 18 85 c0 74 07 8b c8 e9 6e 18
1098dc80: c6 ff 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098dc60 <.text+0x98cc60>:
1098dc60:	6a 00                                           	push   0x0
1098dc62:	6a 00                                           	push   0x0
1098dc64:	6a 00                                           	push   0x0
1098dc66:	6a 00                                           	push   0x0
1098dc68:	68 5c 70 b9 10                                  	push   0x10b9705c
1098dc6d:	6a 70                                           	push   0x70
1098dc6f:	e8 3c b2 f8 ff                                  	call   0x10918eb0
1098dc74:	83 c4 18                                        	add    esp,0x18
1098dc77:	85 c0                                           	test   eax,eax
1098dc79:	74 07                                           	je     0x1098dc82
1098dc7b:	8b c8                                           	mov    ecx,eax
1098dc7d:	e9 6e 18 c6 ff                                  	jmp    0x105ef4f0
1098dc82:	33 c0                                           	xor    eax,eax
1098dc84:	c3                                              	ret
1098dc85:	cc                                              	int3
1098dc86:	cc                                              	int3
1098dc87:	cc                                              	int3
1098dc88:	cc                                              	int3
1098dc89:	cc                                              	int3
1098dc8a:	cc                                              	int3
1098dc8b:	cc                                              	int3
1098dc8c:	cc                                              	int3
1098dc8d:	cc                                              	int3
1098dc8e:	cc                                              	int3
1098dc8f:	cc                                              	int3
