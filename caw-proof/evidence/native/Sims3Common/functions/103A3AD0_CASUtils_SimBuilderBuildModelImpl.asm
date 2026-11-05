# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3ad0 (CASUtils_SimBuilderBuildModelImpl)
Paired Ghidra pseudocode: 103A3AD0_CASUtils_SimBuilderBuildModelImpl.c
Window: [0x103a3ad0, 0x103a3ae0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3ad0: e9 db f0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3ad0 <.text+0x3a2ad0>:
103a3ad0:	e9 db f0 ff ff                                  	jmp    0x103a2bb0
103a3ad5:	cc                                              	int3
103a3ad6:	cc                                              	int3
103a3ad7:	cc                                              	int3
103a3ad8:	cc                                              	int3
103a3ad9:	cc                                              	int3
103a3ada:	cc                                              	int3
103a3adb:	cc                                              	int3
103a3adc:	cc                                              	int3
103a3add:	cc                                              	int3
103a3ade:	cc                                              	int3
103a3adf:	cc                                              	int3
