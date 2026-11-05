# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105361f0 (LookAt_GetAttenuatorPitchImpl)
Paired Ghidra pseudocode: 105361F0_LookAt_GetAttenuatorPitchImpl.c
Window: [0x105361f0, 0x10536200) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105361f0: e9 0b fb ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105361f0 <.text+0x5351f0>:
105361f0:	e9 0b fb ff ff                                  	jmp    0x10535d00
105361f5:	cc                                              	int3
105361f6:	cc                                              	int3
105361f7:	cc                                              	int3
105361f8:	cc                                              	int3
105361f9:	cc                                              	int3
105361fa:	cc                                              	int3
105361fb:	cc                                              	int3
105361fc:	cc                                              	int3
105361fd:	cc                                              	int3
105361fe:	cc                                              	int3
105361ff:	cc                                              	int3
