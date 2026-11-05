# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536030 (LookAt_SetTargetSlotNameHashImpl)
Paired Ghidra pseudocode: 10536030_LookAt_SetTargetSlotNameHashImpl.c
Window: [0x10536030, 0x10536040) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536030: e9 3b f4 ff ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536030 <.text+0x535030>:
10536030:	e9 3b f4 ff ff                                  	jmp    0x10535470
10536035:	cc                                              	int3
10536036:	cc                                              	int3
10536037:	cc                                              	int3
10536038:	cc                                              	int3
10536039:	cc                                              	int3
1053603a:	cc                                              	int3
1053603b:	cc                                              	int3
1053603c:	cc                                              	int3
1053603d:	cc                                              	int3
1053603e:	cc                                              	int3
1053603f:	cc                                              	int3
