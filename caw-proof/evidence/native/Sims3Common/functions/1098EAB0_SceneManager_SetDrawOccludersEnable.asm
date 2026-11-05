# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098eab0 (SceneManager_SetDrawOccludersEnable)
Paired Ghidra pseudocode: 1098EAB0_SceneManager_SetDrawOccludersEnable.c
Window: [0x1098eab0, 0x1098ead0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ead0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098eab0: 83 7c 24 08 00 8b 4c 24 04 53 0f 95 c3 e8 6e f9
1098eac0: b4 ff 88 98 08 01 00 00 5b c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098eab0 <.text+0x98dab0>:
1098eab0:	83 7c 24 08 00                                  	cmp    DWORD PTR [esp+0x8],0x0
1098eab5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098eab9:	53                                              	push   ebx
1098eaba:	0f 95 c3                                        	setne  bl
1098eabd:	e8 6e f9 b4 ff                                  	call   0x104de430
1098eac2:	88 98 08 01 00 00                               	mov    BYTE PTR [eax+0x108],bl
1098eac8:	5b                                              	pop    ebx
1098eac9:	c3                                              	ret
1098eaca:	cc                                              	int3
1098eacb:	cc                                              	int3
1098eacc:	cc                                              	int3
1098eacd:	cc                                              	int3
1098eace:	cc                                              	int3
1098eacf:	cc                                              	int3
