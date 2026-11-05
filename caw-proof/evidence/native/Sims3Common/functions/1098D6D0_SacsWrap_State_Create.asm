# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d6d0 (SacsWrap_State_Create)
Paired Ghidra pseudocode: 1098D6D0_SacsWrap_State_Create.c
Window: [0x1098d6d0, 0x1098d700) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d6d0: 6a 00 6a 00 6a 00 6a 00 68 f0 6f b9 10 6a 58 e8
1098d6e0: cc b7 f8 ff 83 c4 18 85 c0 74 07 8b c8 e9 2e 1d
1098d6f0: c6 ff 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d6d0 <.text+0x98c6d0>:
1098d6d0:	6a 00                                           	push   0x0
1098d6d2:	6a 00                                           	push   0x0
1098d6d4:	6a 00                                           	push   0x0
1098d6d6:	6a 00                                           	push   0x0
1098d6d8:	68 f0 6f b9 10                                  	push   0x10b96ff0
1098d6dd:	6a 58                                           	push   0x58
1098d6df:	e8 cc b7 f8 ff                                  	call   0x10918eb0
1098d6e4:	83 c4 18                                        	add    esp,0x18
1098d6e7:	85 c0                                           	test   eax,eax
1098d6e9:	74 07                                           	je     0x1098d6f2
1098d6eb:	8b c8                                           	mov    ecx,eax
1098d6ed:	e9 2e 1d c6 ff                                  	jmp    0x105ef420
1098d6f2:	33 c0                                           	xor    eax,eax
1098d6f4:	c3                                              	ret
1098d6f5:	cc                                              	int3
1098d6f6:	cc                                              	int3
1098d6f7:	cc                                              	int3
1098d6f8:	cc                                              	int3
1098d6f9:	cc                                              	int3
1098d6fa:	cc                                              	int3
1098d6fb:	cc                                              	int3
1098d6fc:	cc                                              	int3
1098d6fd:	cc                                              	int3
1098d6fe:	cc                                              	int3
1098d6ff:	cc                                              	int3
