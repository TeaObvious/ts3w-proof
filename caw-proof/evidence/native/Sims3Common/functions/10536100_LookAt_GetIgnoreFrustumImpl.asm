# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536100 (LookAt_GetIgnoreFrustumImpl)
Paired Ghidra pseudocode: 10536100_LookAt_GetIgnoreFrustumImpl.c
Window: [0x10536100, 0x10536110) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536100: e9 fb f6 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536100 <.text+0x535100>:
10536100:	e9 fb f6 ff ff                                  	jmp    0x10535800
10536105:	cc                                              	int3
10536106:	cc                                              	int3
10536107:	cc                                              	int3
10536108:	cc                                              	int3
10536109:	cc                                              	int3
1053610a:	cc                                              	int3
1053610b:	cc                                              	int3
1053610c:	cc                                              	int3
1053610d:	cc                                              	int3
1053610e:	cc                                              	int3
1053610f:	cc                                              	int3
