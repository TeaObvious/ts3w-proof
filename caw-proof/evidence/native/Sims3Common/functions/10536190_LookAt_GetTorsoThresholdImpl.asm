# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536190 (LookAt_GetTorsoThresholdImpl)
Paired Ghidra pseudocode: 10536190_LookAt_GetTorsoThresholdImpl.c
Window: [0x10536190, 0x105361a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105361a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536190: e9 ab f9 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536190 <.text+0x535190>:
10536190:	e9 ab f9 ff ff                                  	jmp    0x10535b40
10536195:	cc                                              	int3
10536196:	cc                                              	int3
10536197:	cc                                              	int3
10536198:	cc                                              	int3
10536199:	cc                                              	int3
1053619a:	cc                                              	int3
1053619b:	cc                                              	int3
1053619c:	cc                                              	int3
1053619d:	cc                                              	int3
1053619e:	cc                                              	int3
1053619f:	cc                                              	int3
