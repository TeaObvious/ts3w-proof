# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105360d0 (LookAt_GetLookAwaySpeedImpl)
Paired Ghidra pseudocode: 105360D0_LookAt_GetLookAwaySpeedImpl.c
Window: [0x105360d0, 0x105360e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x105360e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105360d0: e9 4b f6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105360d0 <.text+0x5350d0>:
105360d0:	e9 4b f6 ff ff                                  	jmp    0x10535720
105360d5:	cc                                              	int3
105360d6:	cc                                              	int3
105360d7:	cc                                              	int3
105360d8:	cc                                              	int3
105360d9:	cc                                              	int3
105360da:	cc                                              	int3
105360db:	cc                                              	int3
105360dc:	cc                                              	int3
105360dd:	cc                                              	int3
105360de:	cc                                              	int3
105360df:	cc                                              	int3
