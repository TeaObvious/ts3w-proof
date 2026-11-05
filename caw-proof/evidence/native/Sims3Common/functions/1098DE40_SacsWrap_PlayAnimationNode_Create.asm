# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098de40 (SacsWrap_PlayAnimationNode_Create)
Paired Ghidra pseudocode: 1098DE40_SacsWrap_PlayAnimationNode_Create.c
Window: [0x1098de40, 0x1098de70) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098de70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098de40: 6a 00 6a 00 6a 00 6a 00 68 8c 70 b9 10 68 d8 00
1098de50: 00 00 e8 59 b0 f8 ff 83 c4 18 85 c0 74 07 8b c8
1098de60: e9 0b 19 c6 ff 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098de40 <.text+0x98ce40>:
1098de40:	6a 00                                           	push   0x0
1098de42:	6a 00                                           	push   0x0
1098de44:	6a 00                                           	push   0x0
1098de46:	6a 00                                           	push   0x0
1098de48:	68 8c 70 b9 10                                  	push   0x10b9708c
1098de4d:	68 d8 00 00 00                                  	push   0xd8
1098de52:	e8 59 b0 f8 ff                                  	call   0x10918eb0
1098de57:	83 c4 18                                        	add    esp,0x18
1098de5a:	85 c0                                           	test   eax,eax
1098de5c:	74 07                                           	je     0x1098de65
1098de5e:	8b c8                                           	mov    ecx,eax
1098de60:	e9 0b 19 c6 ff                                  	jmp    0x105ef770
1098de65:	33 c0                                           	xor    eax,eax
1098de67:	c3                                              	ret
1098de68:	cc                                              	int3
1098de69:	cc                                              	int3
1098de6a:	cc                                              	int3
1098de6b:	cc                                              	int3
1098de6c:	cc                                              	int3
1098de6d:	cc                                              	int3
1098de6e:	cc                                              	int3
1098de6f:	cc                                              	int3
