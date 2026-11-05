# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536120 (LookAt_GetHoldJointLimitsImpl)
Paired Ghidra pseudocode: 10536120_LookAt_GetHoldJointLimitsImpl.c
Window: [0x10536120, 0x10536130) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536120: e9 ab f7 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536120 <.text+0x535120>:
10536120:	e9 ab f7 ff ff                                  	jmp    0x105358d0
10536125:	cc                                              	int3
10536126:	cc                                              	int3
10536127:	cc                                              	int3
10536128:	cc                                              	int3
10536129:	cc                                              	int3
1053612a:	cc                                              	int3
1053612b:	cc                                              	int3
1053612c:	cc                                              	int3
1053612d:	cc                                              	int3
1053612e:	cc                                              	int3
1053612f:	cc                                              	int3
