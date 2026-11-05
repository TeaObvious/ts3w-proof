# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ffb0 (SimBuilderWrap_ApplyBoneDeltas)
Paired Ghidra pseudocode: 1098FFB0_SimBuilderWrap_ApplyBoneDeltas.c
Window: [0x1098ffb0, 0x1098ffc0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ffc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ffb0: 8b 4c 24 04 e9 e7 c3 a4 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ffb0 <.text+0x98efb0>:
1098ffb0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098ffb4:	e9 e7 c3 a4 ff                                  	jmp    0x103dc3a0
1098ffb9:	cc                                              	int3
1098ffba:	cc                                              	int3
1098ffbb:	cc                                              	int3
1098ffbc:	cc                                              	int3
1098ffbd:	cc                                              	int3
1098ffbe:	cc                                              	int3
1098ffbf:	cc                                              	int3
