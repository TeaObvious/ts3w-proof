# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536150 (LookAt_SetEventHandlerImpl)
Paired Ghidra pseudocode: 10536150_LookAt_SetEventHandlerImpl.c
Window: [0x10536150, 0x10536160) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536150: e9 ab f8 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536150 <.text+0x535150>:
10536150:	e9 ab f8 ff ff                                  	jmp    0x10535a00
10536155:	cc                                              	int3
10536156:	cc                                              	int3
10536157:	cc                                              	int3
10536158:	cc                                              	int3
10536159:	cc                                              	int3
1053615a:	cc                                              	int3
1053615b:	cc                                              	int3
1053615c:	cc                                              	int3
1053615d:	cc                                              	int3
1053615e:	cc                                              	int3
1053615f:	cc                                              	int3
