# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3ac0 (CASUtils_SimBuilderClearPartsImpl)
Paired Ghidra pseudocode: 103A3AC0_CASUtils_SimBuilderClearPartsImpl.c
Window: [0x103a3ac0, 0x103a3ad0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3ad0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3ac0: e9 1b f0 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3ac0 <.text+0x3a2ac0>:
103a3ac0:	e9 1b f0 ff ff                                  	jmp    0x103a2ae0
103a3ac5:	cc                                              	int3
103a3ac6:	cc                                              	int3
103a3ac7:	cc                                              	int3
103a3ac8:	cc                                              	int3
103a3ac9:	cc                                              	int3
103a3aca:	cc                                              	int3
103a3acb:	cc                                              	int3
103a3acc:	cc                                              	int3
103a3acd:	cc                                              	int3
103a3ace:	cc                                              	int3
103a3acf:	cc                                              	int3
